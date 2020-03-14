class CreatePlanos < ActiveRecord::Migration[5.1]
  def change
    create_table :planos do |t|
      t.text :descricao
      t.decimal :valor
      t.boolean :ativo

      t.timestamps
    end
  end
end
