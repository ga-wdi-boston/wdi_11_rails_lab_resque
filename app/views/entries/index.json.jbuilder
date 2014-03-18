json.array!(@entries) do |entry|
  json.extract! entry, :id, :name, :email, :body
  json.url entry_url(entry, format: :json)
end
