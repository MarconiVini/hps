class AddUsadoToVaga < ActiveRecord::Migration[5.1]
  def change
    add_column :vagas, :ocupada, :boolean
  end
end
