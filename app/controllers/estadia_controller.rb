class EstadiaController < ApplicationController
  before_action :set_estadium, only: [:show, :edit, :update, :destroy]

  # GET /estadia
  # GET /estadia.json
  def index
    @estadia = Estadium.all
  end

  # GET /estadia/1
  # GET /estadia/1.json
  def show
  end

  # GET /estadia/new
  def new
    @estadium = Estadium.new
  end

  # GET /estadia/1/edit
  def edit
  end

  # POST /estadia
  # POST /estadia.json
  def create
    @estadium = Estadium.new(estadium_params)

    respond_to do |format|
      if @estadium.save
        format.html { redirect_to @estadium, notice: 'Estadium was successfully created.' }
        format.json { render :show, status: :created, location: @estadium }
      else
        format.html { render :new }
        format.json { render json: @estadium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estadia/1
  # PATCH/PUT /estadia/1.json
  def update
    respond_to do |format|
      if @estadium.update(estadium_params)
        format.html { redirect_to @estadium, notice: 'Estadium was successfully updated.' }
        format.json { render :show, status: :ok, location: @estadium }
      else
        format.html { render :edit }
        format.json { render json: @estadium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estadia/1
  # DELETE /estadia/1.json
  def destroy
    @estadium.destroy
    respond_to do |format|
      format.html { redirect_to estadia_url, notice: 'Estadium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estadium
      @estadium = Estadium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estadium_params
      params.require(:estadium).permit(:vagas_codvaga, :loja_codestab, :usuarios_id, :veiculos_codveic, :clientes_codclie, :data_entrada, :data_saida, :valor)
    end
end
