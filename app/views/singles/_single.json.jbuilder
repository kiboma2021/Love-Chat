json.extract! single, :id, :name, :bio, :age, :liked, :created_at, :updated_at
json.url single_url(single, format: :json)
