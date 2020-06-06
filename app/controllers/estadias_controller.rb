class EstadiasController < ApplicationController
  before_action :set_estadia, only: [:show, :edit, :update, :destroy]

  # GET /estadia
  # GET /estadia.json
  def index
    @estadia = Estadia.all
  end

  def dashboard

  end

  # GET /estadia/1
  # GET /estadia/1.json
  def show
  end

  # GET /estadia/new
  def new
    @estadia = Estadia.new
  end

  # GET /estadia/1/edit
  def edit
  end

  # POST /estadia
  # POST /estadia.json
  def create
    @estadia = Estadia.new(estadia_params)

    respond_to do |format|
      if @estadia.save
        format.html { redirect_to @estadia, notice: 'Estadia was successfully created.' }
        format.json { render :show, status: :created, location: @estadia }
      else
        format.html { render :new }
        format.json { render json: @estadia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estadia/1
  # PATCH/PUT /estadia/1.json
  def update
    respond_to do |format|
      if @estadia.update(estadia_params)
        format.html { redirect_to @estadia, notice: 'Estadia was successfully updated.' }
        format.json { render :show, status: :ok, location: @estadia }
      else
        format.html { render :edit }
        format.json { render json: @estadia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estadia/1
  # DELETE /estadia/1.json
  def destroy
    @estadia.destroy
    respond_to do |format|
      format.html { redirect_to estadia_url, notice: 'Estadia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estadia
      @estadia = Estadia.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estadia_params
      params.require(:estadia).permit(:vaga_id, :usuario_id, :veiculo_id, :cliente_id, :data_entrada, :data_saida, :valor)
    end
end
