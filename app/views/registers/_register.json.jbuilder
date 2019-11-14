json.extract! register, :id, :firstname, :lastname, :date_of_birth, :marital_status, :gender, :created_at, :updated_at
json.url register_url(register, format: :json)
