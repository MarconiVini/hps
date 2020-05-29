class AddConvenioRefToClientes < ActiveRecord::Migration[5.1]
  def change
    remove_column :clientes, :convenio_id 
    add_reference :clientes, :convenio, foreign_key: true
  end
end
