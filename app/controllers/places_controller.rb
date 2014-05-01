class PlacesController < ApplicationController
	def index
		@info_foursquare = request.env["omniauth.auth"]
	end
end
