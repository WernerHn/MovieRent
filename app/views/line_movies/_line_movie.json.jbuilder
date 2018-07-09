json.extract! line_movie, :id, :movie_id, :cart_id, :created_at, :updated_at
json.url line_movie_url(line_movie, format: :json)
