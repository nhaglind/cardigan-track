class CardigansController < ApplicationController
  before_action :set_cardigan, only: [:show, :edit, :update, :destroy]

  # GET /cardigans
  # GET /cardigans.json
  def index
    @cardigans = Cardigan.all
  end

  # GET /cardigans/1
  # GET /cardigans/1.json
  def show
  end

  # GET /cardigans/new
  def new
    @cardigan = Cardigan.new
  end

  # GET /cardigans/1/edit
  def edit
  end

  # POST /cardigans
  # POST /cardigans.json
  def create
    @cardigan = Cardigan.new(cardigan_params)

    respond_to do |format|
      if @cardigan.save
        format.html { redirect_to @cardigan, notice: 'Cardigan was successfully created.' }
        format.json { render :show, status: :created, location: @cardigan }
      else
        format.html { render :new }
        format.json { render json: @cardigan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cardigans/1
  # PATCH/PUT /cardigans/1.json
  def update
    respond_to do |format|
      if @cardigan.update(cardigan_params)
        format.html { redirect_to @cardigan, notice: 'Cardigan was successfully updated.' }
        format.json { render :show, status: :ok, location: @cardigan }
      else
        format.html { render :edit }
        format.json { render json: @cardigan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cardigans/1
  # DELETE /cardigans/1.json
  def destroy
    @cardigan.destroy
    respond_to do |format|
      format.html { redirect_to cardigans_url, notice: 'Cardigan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cardigan
      @cardigan = Cardigan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cardigan_params
      params.require(:cardigan).permit(:brand, :color)
    end
end
