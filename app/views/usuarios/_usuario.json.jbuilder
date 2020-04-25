json.extract! usuario, :id, :cargos_codcargo, :nome, :senha, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
