class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #this line just password protects the whole site.
  #don't forget to remove it once you get sessions set up for admin users and are ready
  #to really push the site live
  http_basic_authenticate_with name: "ryan", password: "testingtesting"
end
