class CreateTipoVeiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_veiculos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
