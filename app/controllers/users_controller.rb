class UsersController < ApplicationController
  def index
  	logger.debug "User: in index"
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
      session[:user_id] = @user.id
      flash[:notice]= 'Succesfully Signed Up'
      redirect_to root_url, location: @user 
  	  	else
  			render :new

  end
  end

  def signup
  	@user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
  	params.require(:user).permit(:firstname, :lastname, :email, :password)
  end

end
