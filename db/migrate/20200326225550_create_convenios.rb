class CreateConvenios < ActiveRecord::Migration[5.1]
  def change
    create_table :convenios do |t|
      t.string :cnpj
      t.string :razao_social, limit: 100
      t.string :fantasia, limit: 100
      t.string :estado, limit: 2
      t.string :cep, limit: 8
      t.string :fone1, limit: 20
      t.string :fone2, limit: 20
      t.string :email, limit: 120
      t.boolean :ativo

      t.timestamps
    end
  end
end
