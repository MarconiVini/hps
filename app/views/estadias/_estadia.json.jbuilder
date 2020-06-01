json.extract! estadia, :id, :loja_id, :usuario_id, :veiculo_id, :cliente_id, :data_entrada, :data_saida, :valor, :created_at, :updated_at
json.url estadia_url(estadia, format: :json)
