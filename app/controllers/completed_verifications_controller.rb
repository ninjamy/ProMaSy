class CompletedVerificationsController < ApplicationController
  before_action :set_completed_verification, only: [:show, :edit, :update, :destroy]

  # GET /completed_verifications
  # GET /completed_verifications.json
  def index
    @completed_verifications = CompletedVerification.all
  end

  # GET /completed_verifications/1
  # GET /completed_verifications/1.json
  def show
  end

  # GET /completed_verifications/new
  def new
    @completed_verification = CompletedVerification.new
  end

  # GET /completed_verifications/1/edit
  def edit
  end

  # POST /completed_verifications
  # POST /completed_verifications.json
  def create
    @completed_verification = CompletedVerification.new(completed_verification_params)

    respond_to do |format|
      if @completed_verification.save
        format.html { redirect_to @completed_verification, notice: 'Completed verification was successfully created.' }
        format.json { render :show, status: :created, location: @completed_verification }
      else
        format.html { render :new }
        format.json { render json: @completed_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /completed_verifications/1
  # PATCH/PUT /completed_verifications/1.json
  def update
    respond_to do |format|
      if @completed_verification.update(completed_verification_params)
        format.html { redirect_to @completed_verification, notice: 'Completed verification was successfully updated.' }
        format.json { render :show, status: :ok, location: @completed_verification }
      else
        format.html { render :edit }
        format.json { render json: @completed_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /completed_verifications/1
  # DELETE /completed_verifications/1.json
  def destroy
    @completed_verification.destroy
    respond_to do |format|
      format.html { redirect_to completed_verifications_url, notice: 'Completed verification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_completed_verification
      @completed_verification = CompletedVerification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def completed_verification_params
      params.require(:completed_verification).permit(:work_id, :criteria_description, :is_completed, :date_completed, :added_by, :completed_by, :importance_level)
    end
end
