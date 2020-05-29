class AddVeiculoRefToTipoVeiculo < ActiveRecord::Migration[5.1]
  def change
    remove_column :veiculos, :tipoveiculo_codtipoveiculo
    add_reference :veiculos, :tipo_veiculo, foreign_key: true
  end
end
