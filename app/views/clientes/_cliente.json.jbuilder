json.extract! cliente, :id, :cnpj, :razao_social, :fantasia, :estado, :cep, :fone1, :fone2, :email, :ativo, :plano_id, :convenio_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
