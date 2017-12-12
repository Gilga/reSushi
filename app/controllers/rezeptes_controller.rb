class RezeptesController < ApplicationController
  before_action :set_rezepte, only: [:show, :edit, :update, :destroy]

  # GET /rezeptes
  # GET /rezeptes.json
  def index
    @rezeptes = Rezepte.all
  end

  # GET /rezeptes/1
  # GET /rezeptes/1.json
  def show
  end

  # GET /rezeptes/new
  def new
    @rezepte = Rezepte.new
  end

  # GET /rezeptes/1/edit
  def edit
  end

  # POST /rezeptes
  # POST /rezeptes.json
  def create
    @rezepte = Rezepte.new(rezepte_params)

    respond_to do |format|
      if @rezepte.save
        format.html { redirect_to @rezepte, notice: 'Rezepte was successfully created.' }
        format.json { render :show, status: :created, location: @rezepte }
      else
        format.html { render :new }
        format.json { render json: @rezepte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rezeptes/1
  # PATCH/PUT /rezeptes/1.json
  def update
    respond_to do |format|
      if @rezepte.update(rezepte_params)
        format.html { redirect_to @rezepte, notice: 'Rezepte was successfully updated.' }
        format.json { render :show, status: :ok, location: @rezepte }
      else
        format.html { render :edit }
        format.json { render json: @rezepte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rezeptes/1
  # DELETE /rezeptes/1.json
  def destroy
    @rezepte.destroy
    respond_to do |format|
      format.html { redirect_to rezeptes_url, notice: 'Rezepte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rezepte
      @rezepte = Rezepte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rezepte_params
      params.require(:rezepte).permit(:preis, :rezepte_name, :rezepte_bemerkung, :zutat_id)
    end
end
