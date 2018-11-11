class ApplicationController < ActionController::API
	include ActionController::MimeResponds

	include Pundit
	rescue_from Pundit::NotAuthorizedError, :with => :user_not_authorized

	respond_to :json

	private

	def user_not_authorized
		render json: {}, status: :unauthorized
	end
end
