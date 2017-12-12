class ZutatsController < ApplicationController
  before_action :set_zutat, only: [:show, :edit, :update, :destroy]

  # GET /zutats
  # GET /zutats.json
  def index
    @zutats = Zutat.all
  end

  # GET /zutats/1
  # GET /zutats/1.json
  def show
  end

  # GET /zutats/new
  def new
    @zutat = Zutat.new
  end

  # GET /zutats/1/edit
  def edit
  end

  # POST /zutats
  # POST /zutats.json
  def create
    @zutat = Zutat.new(zutat_params)

    respond_to do |format|
      if @zutat.save
        format.html { redirect_to @zutat, notice: 'Zutat was successfully created.' }
        format.json { render :show, status: :created, location: @zutat }
      else
        format.html { render :new }
        format.json { render json: @zutat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zutats/1
  # PATCH/PUT /zutats/1.json
  def update
    respond_to do |format|
      if @zutat.update(zutat_params)
        format.html { redirect_to @zutat, notice: 'Zutat was successfully updated.' }
        format.json { render :show, status: :ok, location: @zutat }
      else
        format.html { render :edit }
        format.json { render json: @zutat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zutats/1
  # DELETE /zutats/1.json
  def destroy
    @zutat.destroy
    respond_to do |format|
      format.html { redirect_to zutats_url, notice: 'Zutat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zutat
      @zutat = Zutat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zutat_params
      params.require(:zutat).permit(:zutat_name, :zutat_bemerkung, :ernaehrungs_id)
    end
end
