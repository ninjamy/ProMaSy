class TimeLinesController < ApplicationController
  before_action :set_time_line, only: [:show, :edit, :update, :destroy]

  # GET /time_lines
  # GET /time_lines.json
  def index
    @time_lines = TimeLine.all
  end

  # GET /time_lines/1
  # GET /time_lines/1.json
  def show
  end

  # GET /time_lines/new
  def new
    @time_line = TimeLine.new
  end

  # GET /time_lines/1/edit
  def edit
  end

  # POST /time_lines
  # POST /time_lines.json
  def create
    @time_line = TimeLine.new(time_line_params)

    respond_to do |format|
      if @time_line.save
        format.html { redirect_to @time_line, notice: 'Time line was successfully created.' }
        format.json { render :show, status: :created, location: @time_line }
      else
        format.html { render :new }
        format.json { render json: @time_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_lines/1
  # PATCH/PUT /time_lines/1.json
  def update
    respond_to do |format|
      if @time_line.update(time_line_params)
        format.html { redirect_to @time_line, notice: 'Time line was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_line }
      else
        format.html { render :edit }
        format.json { render json: @time_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_lines/1
  # DELETE /time_lines/1.json
  def destroy
    @time_line.destroy
    respond_to do |format|
      format.html { redirect_to time_lines_url, notice: 'Time line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_line
      @time_line = TimeLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_line_params
      params.require(:time_line).permit(:work_id, :remaing_hours, :stage_id, :task_id, :task_status_id)
    end
end
