json.extract! comic, :id, :name, :image, :sinopsis, :generos, :is_active, :created_at, :updated_at
json.url comic_url(comic, format: :json)
