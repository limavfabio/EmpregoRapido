json.extract! user, :id, :name, :profile_picture, :bio, :location, :twitter, :github, :website, :created_at, :updated_at
json.url user_url(user, format: :json)
