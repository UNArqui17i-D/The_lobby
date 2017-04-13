json.extract! message, :id, :iduser, :name, :content, :created_at, :updated_at
json.url message_url(message, format: :json)
