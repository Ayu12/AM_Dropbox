Rails.application.routes.draw do
  

	root 'users#index'
  get "/app/views/users/signup.html.erb", to: "users#signup", as: "signup"
  #	get 'users/new'

  #	post 'users/create'
	
	#get 'users/signup'

 	#get 'documents/index'

  #get 'documents/new'

  #post 'documents/create'
  ##post 'users/login' as: 'login_users'

  #get 'sessions/new'

 	#post 'sessions/create'

	resources :users do
    #resources :documents
    resources  :sessions

end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
