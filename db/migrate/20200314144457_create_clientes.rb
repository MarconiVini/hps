class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :cnpj
      t.string :razao_social
      t.string :fantasia
      t.string :estado
      t.string :cep
      t.string :fone1
      t.string :fone2
      t.string :email
      t.boolean :ativo
      t.belongs_to :plano
      t.integer :convenio_id

      t.timestamps
    end
  end
end
