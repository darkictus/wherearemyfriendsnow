class User < ActiveRecord::Base
	def self.from_omniauth(auth)
		where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
	end

	def self.create_from_omniauth(auth)
		create! do |user|
			user.provider = auth["provider"]
			user.uid = auth["uid"]
			user.authtoken = auth["credentials"]["token"]
			user.authsecret = auth["credentials"]["secret"]
			user.authhash = auth.to_json.to_s
			user.name = auth["info"]["name"]
			user.email = auth["info"]["email"]
		end
	end
end
