class AllProjectsController < ApplicationController
	def index
		@projects = Project.all.includes(:languages)
		render 'projects/index'
	end
end
