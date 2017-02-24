json.extract! emailuser, :id, :name, :email, :login, :created_at, :updated_at
json.url emailuser_url(emailuser, format: :json)