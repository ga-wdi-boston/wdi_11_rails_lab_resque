json.array!(@guests) do |guest|
  json.extract! guest, :id, :name, :email, :note
  json.url guest_url(guest, format: :json)
end
