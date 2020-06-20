class Veiculo < ApplicationRecord
  belongs_to :tipo_veiculo
  belongs_to :cliente
  
  def description
    "#{placa} - #{modelo} - #{marca} - #{cor}"
  end

  def id_composto
    "#{id}:#{cliente_id}"
  end

  def self.get_options
    todos_veiculos = Veiculo.all.select(:id, :cliente_id, :placa)
    opcoes = "<option value='0' data-cliente='0'>Selecione</option>"
    todos_veiculos.each do |veiculo|
      opcoes << "<option value='#{veiculo.id}' data-cliente='#{veiculo.cliente_id}'>#{veiculo.placa}</option>"
    end

    opcoes
  end
end
