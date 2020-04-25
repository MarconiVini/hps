class CreateVeiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :veiculos do |t|
      t.integer :tipoveiculo_codtipoveiculo
      t.string :placa
      t.string :modelo
      t.string :marca
      t.string :cor

      t.timestamps
    end
  end
end
