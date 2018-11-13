class EditHistoriesController < ApplicationController
  before_action :set_edit_history, only: [:show, :edit, :update, :destroy]

  # GET /edit_histories
  # GET /edit_histories.json
  def index
    @edit_histories = EditHistory.all
  end

  # GET /edit_histories/1
  # GET /edit_histories/1.json
  def show
  end

  # GET /edit_histories/new
  def new
    @edit_history = EditHistory.new
  end

  # GET /edit_histories/1/edit
  def edit
  end

  # POST /edit_histories
  # POST /edit_histories.json
  def create
    @edit_history = EditHistory.new(edit_history_params)

    respond_to do |format|
      if @edit_history.save
        format.html { redirect_to @edit_history, notice: 'Edit history was successfully created.' }
        format.json { render :show, status: :created, location: @edit_history }
      else
        format.html { render :new }
        format.json { render json: @edit_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edit_histories/1
  # PATCH/PUT /edit_histories/1.json
  def update
    respond_to do |format|
      if @edit_history.update(edit_history_params)
        format.html { redirect_to @edit_history, notice: 'Edit history was successfully updated.' }
        format.json { render :show, status: :ok, location: @edit_history }
      else
        format.html { render :edit }
        format.json { render json: @edit_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edit_histories/1
  # DELETE /edit_histories/1.json
  def destroy
    @edit_history.destroy
    respond_to do |format|
      format.html { redirect_to edit_histories_url, notice: 'Edit history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edit_history
      @edit_history = EditHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def edit_history_params
      params.require(:edit_history).permit(:TableName, :OldValue, :NewValue, :ColumName)
    end
end
