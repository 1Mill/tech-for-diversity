Rails.application.routes.draw do
	scope 'api/v1/', defaults: {format: :json} do
		devise_for :users,
	    	path_names: {
		  		sign_in: 'login',
		  		sign_out: 'logout',
		  		registration: 'signup'
		  	}

		devise_scope :user do
			get 'users/current', :to => 'users/sessions#show'
		end
	end
end
