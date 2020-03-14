json.extract! cliente, :id, :nome, :cpf, :telefone, :endereco, :veiculo_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
