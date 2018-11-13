class WorkGroupsController < ApplicationController
  before_action :set_work_group, only: [:show, :edit, :update, :destroy]

  # GET /work_groups
  # GET /work_groups.json
  def index
    @work_groups = WorkGroup.all
  end

  # GET /work_groups/1
  # GET /work_groups/1.json
  def show
  end

  # GET /work_groups/new
  def new
    @work_group = WorkGroup.new
  end

  # GET /work_groups/1/edit
  def edit
  end

  # POST /work_groups
  # POST /work_groups.json
  def create
    @work_group = WorkGroup.new(work_group_params)

    respond_to do |format|
      if @work_group.save
        format.html { redirect_to @work_group, notice: 'Work group was successfully created.' }
        format.json { render :show, status: :created, location: @work_group }
      else
        format.html { render :new }
        format.json { render json: @work_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_groups/1
  # PATCH/PUT /work_groups/1.json
  def update
    respond_to do |format|
      if @work_group.update(work_group_params)
        format.html { redirect_to @work_group, notice: 'Work group was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_group }
      else
        format.html { render :edit }
        format.json { render json: @work_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_groups/1
  # DELETE /work_groups/1.json
  def destroy
    @work_group.destroy
    respond_to do |format|
      format.html { redirect_to work_groups_url, notice: 'Work group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_group
      @work_group = WorkGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_group_params
      params.require(:work_group).permit(:WorkTypeID, :StageID, :TaskTypeID, :RoleID, :EnvironmentID, :PortID, :WorkGroupOrder)
    end
end
