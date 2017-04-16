json.extract! lobbymessage, :id, :iduser, :messagecontent, :created_at, :updated_at
json.url lobbymessage_url(lobbymessage, format: :json)
