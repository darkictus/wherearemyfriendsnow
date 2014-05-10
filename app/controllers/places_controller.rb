class PlacesController < ApplicationController
	def index
		if current_user
		@foursquare_user = User.find(session[:user_id]) if session[:user_id]
		@client = Foursquare2::Client.new(:oauth_token => @foursquare_user.token,:api_version => '20131231' ) if @foursquare_user


		places = @client.recent_checkins 
		 @places = places.map do |place|
			{:lat => place["venue"]["location"]["lat"] ,
			 :lng => place["venue"]["location"]["lng"],  
			 :placename => place["venue"]["name"], 
			 :uname => 	place["user"]["firstName"] + " "+ place["user"]["lastName"],
			 :image => 	place["user"]["photo"]["prefix"] + "64x64" +
						place["user"]["photo"]["suffix"]
			 }
			 
	  end

	end
	end
end
