json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :phone, :password_digest, :user_type
  json.url user_url(user, format: :json)
end
