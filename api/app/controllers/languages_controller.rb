class LanguagesController < ApplicationController
  before_action :set_project, only: [:index, :create]
  before_action :set_language, only: [:show, :update, :destroy]

  # GET /languages
  # GET /languages.json
  def index
    @languages = @project.languages.all
  end

  # GET /languages/1
  # GET /languages/1.json
  def show
  end

  # POST /languages
  # POST /languages.json
  def create
    @language = @project.languages.new(language_params)

    if @language.save
      render :show, status: :created, location: @language
    else
      render json: @language.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /languages/1
  # PATCH/PUT /languages/1.json
  def update
    if @language.update(language_params)
      render :show, status: :ok, location: @language
    else
      render json: @language.errors, status: :unprocessable_entity
    end
  end

  # DELETE /languages/1
  # DELETE /languages/1.json
  def destroy
    @language.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_language
      @language = Language.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def language_params
      params.require(:language).permit(:project_id, :name)
    end
end
