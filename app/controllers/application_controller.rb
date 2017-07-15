class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #include SessionsHelper

  #private
  #def foo
  #@current_user = User.find(session[:user_id]) if session[:user_id]
  #helper_method :current_user
#end



#def authorize
#	redirect_to login_url, alert: "Not authorized" if current_user.nil?
#end
end
