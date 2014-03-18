json.array!(@notes) do |note|
  json.extract! note, :id, :email, :content
  json.url note_url(note, format: :json)
end
