class ChangeUsuarioCargoId < ActiveRecord::Migration[5.1]
  def change
    remove_column :usuarios, :cargos_codcargo
    add_reference :usuarios, :cargo, foreign_key: true
  end
end
