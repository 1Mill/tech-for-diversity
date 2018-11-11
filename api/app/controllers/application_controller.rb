class ApplicationController < ActionController::API
	include ActionController::MimeResponds
	include Pundit
	protect_from_forgery

	respond_to :json
end
