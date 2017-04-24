json.extract! user, :id, :name, :sex, :age, :email, :tel, :created_at, :updated_at
json.url user_url(user, format: :json)
