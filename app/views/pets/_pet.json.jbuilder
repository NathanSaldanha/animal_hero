json.extract! pet, :id, :name, :species, :birth_date, :ong_id, :user_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
