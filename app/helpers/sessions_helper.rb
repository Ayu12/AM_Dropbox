module SessionsHelper

	def login(user)
		session[:user_id] = user.id
		self.current_user = user
	end

	def current_user(user)
		@current_user = user
		@current_user ||= user.find(session[:user_id]) if session[:user_id]
	end

	def logged_in?
		!current_user.nil?
	end

	def logout
		session[:user_id] = nil
		self.current_user = nil
	end

	def current_user?(user)
		user ==current_user
	end

	def deny_access
		redirect_to login_path, :notice => "Logged out"
	end

end
