class RezeptsController < ApplicationController
  before_action :set_rezept, only: [:show, :edit, :update, :destroy]

  # GET /rezepts
  # GET /rezepts.json
  def index
    @rezepts = Rezept.all
  end

  # GET /rezepts/1
  # GET /rezepts/1.json
  def show
  end

  # GET /rezepts/new
  def new
    @rezept = Rezept.new
  end

  # GET /rezepts/1/edit
  def edit
  end

  # POST /rezepts
  # POST /rezepts.json
  def create
    @rezept = Rezept.new(rezept_params)

    respond_to do |format|
      if @rezept.save
        format.html { redirect_to @rezept, notice: 'Rezept was successfully created.' }
        format.json { render :show, status: :created, location: @rezept }
      else
        format.html { render :new }
        format.json { render json: @rezept.errors, status: :unprocessable_entity }
      end
    end
  end

  def hello
      render text: "life without sushi c'mon think about it!"
  end

  # PATCH/PUT /rezepts/1
  # PATCH/PUT /rezepts/1.json
  def update
    respond_to do |format|
      if @rezept.update(rezept_params)
        format.html { redirect_to @rezept, notice: 'Rezept was successfully updated.' }
        format.json { render :show, status: :ok, location: @rezept }
      else
        format.html { render :edit }
        format.json { render json: @rezept.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rezepts/1
  # DELETE /rezepts/1.json
  def destroy
    @rezept.destroy
    respond_to do |format|
      format.html { redirect_to rezepts_url, notice: 'Rezept was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rezept
      @rezept = Rezept.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rezept_params
      params.require(:rezept).permit(:rezept_id, :rezept_name, :rezept_bemerkung)
    end
end

