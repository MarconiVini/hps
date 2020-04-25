class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.integer :cargos_codcargo
      t.string :nome
      t.string :senha

      t.timestamps
    end
  end
end
