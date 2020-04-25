class CreateLojas < ActiveRecord::Migration[5.1]
  def change
    create_table :lojas do |t|
      t.string :cnpj
      t.string :razao_social
      t.string :fantasia
      t.string :estado
      t.string :cep

      t.timestamps
    end
  end
end
