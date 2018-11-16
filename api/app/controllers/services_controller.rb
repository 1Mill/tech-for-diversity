class ServicesController < ApplicationController
  before_action :set_project, only: [:index, :create]
  before_action :set_service, only: [:show, :update, :destroy]

  # GET /services
  # GET /services.json
  def index
    @services = @project.services.all
  end

  # GET /services/1
  # GET /services/1.json
  def show
  end

  # POST /services
  # POST /services.json
  def create
    @service = @project.services.new(service_params)

    if @service.save
      render :show, status: :created, location: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    if @service.update(service_params)
      render :show, status: :ok, location: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:project_id, :name)
    end
end
