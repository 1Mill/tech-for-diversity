class ApplicationController < ActionController::API
	include ActionController::MimeResponds
	include CanCan::ControllerAdditions

	rescue_from CanCan::AccessDenied do |exception|
		render json: { message: exception.message }, status: :forbidden
	end

	respond_to :json
end
