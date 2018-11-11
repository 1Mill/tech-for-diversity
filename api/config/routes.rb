Rails.application.routes.draw do
	scope 'api/v1/', defaults: {format: :json} do
		devise_for :users,
		controllers: {sessions: 'users/sessions'},
		path: '/auth',
	    	path_names: {
	  		sign_in: 'login',
	  		sign_out: 'logout',
	  		registration: 'signup'
	  	}

		devise_scope :user do
			get 'auth/current', :to => 'users/sessions#show'
		end

		resources :users, :shallow => true do
			resources :projects
		end
	end
end
