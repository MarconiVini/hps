class DashboardController < ApplicationController
  def index
    start_date = params[:data_inicial].to_date
    end_date = params[:data_final].to_date

    @estadia = Estadia.where(data_saida: start_date..end_date)
  end

  def usuario_por_tipo
    grouped_tipo_veiculo = Veiculo.joins(:tipo_veiculo).group(:tipo_veiculo).count
    @users_by_type = {}

    grouped_tipo_veiculo.each do |tipo_veiculo|
      @users_by_type[tipo_veiculo[0].tipo] = tipo_veiculo[1]
    end
    respond_to do |format|
      format.json { render json: @users_by_type }
    end
  end

  def grafico
    #renderGraphs
  end

  # Only allow a list of trusted parameters through.
  def estadia_params
    params.require(:estadia).permit(:vaga_id, :usuario_id, :veiculo_id, :cliente_id, :data_entrada, :data_saida, :valor)
  end
end
