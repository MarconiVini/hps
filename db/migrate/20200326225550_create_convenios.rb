class CreateConvenios < ActiveRecord::Migration[5.1]
  def change
    create_table :convenios do |t|
      t.string :cnpj
      t.string :razao_social, limit: 200
      t.string :fantasia, limit: 200
      t.string :estado, limit: 100
      t.string :cep, limit: 100
      t.string :fone1, limit: 100
      t.string :fone2, limit: 100
      t.string :email, limit: 120
      t.boolean :ativo

      t.timestamps
    end
  end
end
