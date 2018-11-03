class Users::SessionsController < Devise::SessionsController
	def show
		render json: current_user, :only => [:id, :email]
	end
end
