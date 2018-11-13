class LevelOfEffortsController < ApplicationController
  before_action :set_level_of_effort, only: [:show, :edit, :update, :destroy]

  # GET /level_of_efforts
  # GET /level_of_efforts.json
  def index
    @level_of_efforts = LevelOfEffort.all
  end

  # GET /level_of_efforts/1
  # GET /level_of_efforts/1.json
  def show
  end

  # GET /level_of_efforts/new
  def new
    @level_of_effort = LevelOfEffort.new
  end

  # GET /level_of_efforts/1/edit
  def edit
  end

  # POST /level_of_efforts
  # POST /level_of_efforts.json
  def create
    @level_of_effort = LevelOfEffort.new(level_of_effort_params)

    respond_to do |format|
      if @level_of_effort.save
        format.html { redirect_to @level_of_effort, notice: 'Level of effort was successfully created.' }
        format.json { render :show, status: :created, location: @level_of_effort }
      else
        format.html { render :new }
        format.json { render json: @level_of_effort.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /level_of_efforts/1
  # PATCH/PUT /level_of_efforts/1.json
  def update
    respond_to do |format|
      if @level_of_effort.update(level_of_effort_params)
        format.html { redirect_to @level_of_effort, notice: 'Level of effort was successfully updated.' }
        format.json { render :show, status: :ok, location: @level_of_effort }
      else
        format.html { render :edit }
        format.json { render json: @level_of_effort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /level_of_efforts/1
  # DELETE /level_of_efforts/1.json
  def destroy
    @level_of_effort.destroy
    respond_to do |format|
      format.html { redirect_to level_of_efforts_url, notice: 'Level of effort was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level_of_effort
      @level_of_effort = LevelOfEffort.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def level_of_effort_params
      params.require(:level_of_effort).permit(:PortID, :LOEMin, :LOEMax)
    end
end
