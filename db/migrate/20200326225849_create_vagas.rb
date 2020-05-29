class CreateVagas < ActiveRecord::Migration[5.1]
  def change
    create_table :vagas do |t|
      t.string :quadra, limit: 200
      t.string :tipo, limit: 200

      t.timestamps
    end
  end
end
