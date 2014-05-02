Rails.application.config.middleware.use OmniAuth::Builder do 
	#provide :foursquare, "API_KEY", "API_SECRET"
	provider :foursquare, "NS25KR4IGZIMEKHQANNJHNGUW52VBC1TWBD15DJFWBGYUFYH", "2RZSBZBFJS3HRFO0QF0HRZOEMDTU3XOHO3EIZ0MJMAUQCXU0"
end