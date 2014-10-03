json.array!(@stories) do |story|
  json.extract! story, :id, :user, :url, :description
  json.url story_url(story, format: :json)
end
