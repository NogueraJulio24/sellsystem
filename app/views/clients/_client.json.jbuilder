json.extract! client, :id, :name, :lastname, :document, :phone, :email, :smartphone, :address_id, :date_of_birth, :created_at, :updated_at
json.url client_url(client, format: :json)
