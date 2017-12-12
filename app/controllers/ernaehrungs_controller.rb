class ErnaehrungsController < ApplicationController
  before_action :set_ernaehrung, only: [:show, :edit, :update, :destroy]

  # GET /ernaehrungs
  # GET /ernaehrungs.json
  def index
    @ernaehrungs = Ernaehrung.all
  end

  # GET /ernaehrungs/1
  # GET /ernaehrungs/1.json
  def show
  end

  # GET /ernaehrungs/new
  def new
    @ernaehrung = Ernaehrung.new
  end

  # GET /ernaehrungs/1/edit
  def edit
  end

  # POST /ernaehrungs
  # POST /ernaehrungs.json
  def create
    @ernaehrung = Ernaehrung.new(ernaehrung_params)

    respond_to do |format|
      if @ernaehrung.save
        format.html { redirect_to @ernaehrung, notice: 'Ernaehrung was successfully created.' }
        format.json { render :show, status: :created, location: @ernaehrung }
      else
        format.html { render :new }
        format.json { render json: @ernaehrung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ernaehrungs/1
  # PATCH/PUT /ernaehrungs/1.json
  def update
    respond_to do |format|
      if @ernaehrung.update(ernaehrung_params)
        format.html { redirect_to @ernaehrung, notice: 'Ernaehrung was successfully updated.' }
        format.json { render :show, status: :ok, location: @ernaehrung }
      else
        format.html { render :edit }
        format.json { render json: @ernaehrung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ernaehrungs/1
  # DELETE /ernaehrungs/1.json
  def destroy
    @ernaehrung.destroy
    respond_to do |format|
      format.html { redirect_to ernaehrungs_url, notice: 'Ernaehrung was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ernaehrung
      @ernaehrung = Ernaehrung.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ernaehrung_params
      params.require(:ernaehrung).permit(:ernaehrung_bez, :ernaehrung_bemerkung)
    end
end
