json.extract! post1, :id, :title, :content, :category_id, :user_id, :created_at, :updated_at
json.url post1_url(post1, format: :json)