json.extract! clinicas_veterinaria, :id, :nome, :telefone, :email, :endereco, :created_at, :updated_at
json.url clinicas_veterinaria_url(clinicas_veterinaria, format: :json)
