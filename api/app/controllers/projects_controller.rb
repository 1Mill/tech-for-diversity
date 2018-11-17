class ProjectsController < ApplicationController
  load_and_authorize_resource
  before_action :set_user, only: [:index, :create]
  before_action :set_project, only: [:show, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = @user.projects.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = @user.projects.new(project_params)

    if @project.save
      render :show, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    if @project.update(project_params)
      render :show, status: :ok, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:user_id, :company, :stage, :name_first, :name_last, :email, :phone, :address_street_1, :address_street_2, :address_city, :address_state, :address_zipcode, :company_kind, :mission_statement, :who_you_are, :who_you_help, :what_you_do, :current_services, :update_frequency, :domain_registered)
    end
end
