class InscriptionsController < ApplicationController
  before_action :set_inscription, only: %i[ show edit update destroy ]
  load_and_authorize_resource
  # GET /inscriptions or /inscriptions.json
  def index
    @inscriptions = Inscription.all
    @inscriptions = Inscription.order(:name).page params[:page]
  end

  # GET /inscriptions/1 or /inscriptions/1.json
  def show
  end

  # GET /inscriptions/new
  def new
    @inscription = Inscription.new
  end

  # GET /inscriptions/1/edit
  def edit
  end

  # POST /inscriptions or /inscriptions.json
  def create
    @inscription = Inscription.new(inscription_params)

    respond_to do |format|
      if @inscription.save
        format.html { redirect_to @inscription, notice: "Inscription was successfully created." }
        format.json { render :show, status: :created, location: @inscription }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inscriptions/1 or /inscriptions/1.json
  def update
    respond_to do |format|
      if @inscription.update(inscription_params)
        format.html { redirect_to @inscription, notice: "Inscription was successfully updated." }
        format.json { render :show, status: :ok, location: @inscription }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inscriptions/1 or /inscriptions/1.json
  def destroy
    @inscription.destroy
    respond_to do |format|
      format.html { redirect_to inscriptions_url, notice: "Inscription was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscription
      @inscription = Inscription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inscription_params
      params.require(:inscription).permit(:state, :payment, :event_id, :user_id)
    end
end
