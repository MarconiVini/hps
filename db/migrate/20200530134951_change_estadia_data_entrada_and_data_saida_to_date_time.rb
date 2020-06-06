class ChangeEstadiaDataEntradaAndDataSaidaToDateTime < ActiveRecord::Migration[5.1]
  def change
    remove_column :estadias, :data_entrada
    add_column :estadias, :data_entrada, :datetime

    remove_column :estadias, :data_saida
    add_column :estadias, :data_saida, :datetime
  end
end
