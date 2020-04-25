class CreateEstadia < ActiveRecord::Migration[5.1]
  def change
    create_table :estadia do |t|
      t.integer :vagas_codvaga
      t.integer :loja_codestab
      t.integer :usuarios_id
      t.integer :veiculos_codveic
      t.integer :clientes_codclie
      t.date :data_entrada
      t.date :data_saida
      t.decimal :valor

      t.timestamps
    end
  end
end
