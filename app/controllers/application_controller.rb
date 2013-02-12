class ApplicationController < ActionController::Base
  before_filter :authenticate
  
  protect_from_forgery
  
  def authenticate
	  #this line just password protects the whole site.
	  #don't forget to remove it once you get sessions set up for admin users and are ready
	  #to really push the site live
	  authenticate_or_request_with_http_basic do |username, password|
		username == "ryan" && password == "testingtesting"
	  end
	warden.custom_failure! if performed?
   end
end
