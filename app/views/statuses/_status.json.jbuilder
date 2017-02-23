json.extract! status, :id, :online, :vote_count, :user_id, :created_at, :updated_at
json.url status_url(status, format: :json)