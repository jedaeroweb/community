json.extract! user, :id, :name, :phone, :created_at, :updated_at
json.url admin_user_url(user, format: :json)
