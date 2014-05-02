Rails.application.config.middleware.use OmniAuth::Builder do 
	#provide :foursquare, "API_KEY", "API_SECRET"
	provider :foursquare, "UXQJUKSEPFLXCMWAYG3LCUN4EVMIBRT4QBHMTRZWYNRTVCWH", "R2LT0QC52L5J5VH3JPRT01QZLURXWIAU5DB4XFYOHK3ONBWA"
	
end