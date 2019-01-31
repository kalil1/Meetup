class PalyersController < ApplicationController
  before_action :set_palyer, only: [:show, :edit, :update, :destroy]

  # GET /palyers
  # GET /palyers.json
  def index
    @palyers = Palyer.all
  end

  # GET /palyers/1
  # GET /palyers/1.json
  def show
  end

  # GET /palyers/new
  def new
    @palyer = Palyer.new
  end

  # GET /palyers/1/edit
  def edit
  end

  # POST /palyers
  # POST /palyers.json
  def create
    @palyer = Palyer.new(palyer_params)

    respond_to do |format|
      if @palyer.save
        format.html { redirect_to @palyer, notice: 'Palyer was successfully created.' }
        format.json { render :show, status: :created, location: @palyer }
      else
        format.html { render :new }
        format.json { render json: @palyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palyers/1
  # PATCH/PUT /palyers/1.json
  def update
    respond_to do |format|
      if @palyer.update(palyer_params)
        format.html { redirect_to @palyer, notice: 'Palyer was successfully updated.' }
        format.json { render :show, status: :ok, location: @palyer }
      else
        format.html { render :edit }
        format.json { render json: @palyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palyers/1
  # DELETE /palyers/1.json
  def destroy
    @palyer.destroy
    respond_to do |format|
      format.html { redirect_to palyers_url, notice: 'Palyer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palyer
      @palyer = Palyer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palyer_params
      params.require(:palyer).permit(:name, :rank)
    end
end
