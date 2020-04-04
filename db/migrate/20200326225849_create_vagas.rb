class CreateVagas < ActiveRecord::Migration[5.1]
  def change
    create_table :vagas do |t|
      t.string :quadra, limit: 10
      t.string :tipo, limit: 15

      t.timestamps
    end
  end
end
