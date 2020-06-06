require 'pry'

class DashboardController < ApplicationController
  def index
    start_date = params[:data_inicial].to_date
    end_date = params[:data_final].to_date
    
    binding.pry
    
    @estadia = Estadia.where(data_saida: start_date..end_date)
  end

  def grafico

  end

  # Only allow a list of trusted parameters through.
  def estadia_params
    params.require(:estadia).permit(:vaga_id, :usuario_id, :veiculo_id, :cliente_id, :data_entrada, :data_saida, :valor)
  end
end