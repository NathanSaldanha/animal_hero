json.extract! animal, :id, :nome, :raca, :especie, :sexo, :peso, :data_nascimento, :situacao, :created_at, :updated_at
json.url animal_url(animal, format: :json)