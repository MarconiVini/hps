class DropLojasTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :lojas
  end
end
