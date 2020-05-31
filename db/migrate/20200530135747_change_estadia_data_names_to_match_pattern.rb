class ChangeEstadiaDataNamesToMatchPattern < ActiveRecord::Migration[5.1]
  def change
    remove_column :estadias, :vagas_codvaga
    add_reference :estadias, :vagas, foreign_key: true

    remove_column :estadias, :loja_codestab

    remove_column :estadias, :veiculos_codveic
    add_reference :estadias, :veiculos, foreign_key: true

    remove_column :estadias, :clientes_codclie
    add_reference :estadias, :clientes, foreign_key: true
  end
end
