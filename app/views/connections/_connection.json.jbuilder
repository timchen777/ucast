json.extract! connection, :id, :post_id, :category_id, :created_at, :updated_at
json.url connection_url(connection, format: :json)