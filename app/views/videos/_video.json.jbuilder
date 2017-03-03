json.extract! video, :id, :wistia, :title, :description, :created_at, :updated_at
json.url video_url(video, format: :json)