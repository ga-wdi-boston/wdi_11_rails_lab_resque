json.array!(@posts) do |post|
  json.extract! post, :id, :author, :email, :content
  json.url post_url(post, format: :json)
end
