json.extract! globalmessage, :id, :username, :content, :created_at, :updated_at
json.url globalmessage_url(globalmessage, format: :json)
