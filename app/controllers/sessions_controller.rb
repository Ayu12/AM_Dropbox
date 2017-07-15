class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: = "Logged in!"
  	else
  		flash.now.alert = "email or password is invalid"
  end

  def destroy
  	session[:user_id] = nil
    #logout
  	redirect_to root_url, notice: "Logged out!"
  end
end
