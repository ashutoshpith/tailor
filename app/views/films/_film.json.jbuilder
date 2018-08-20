json.extract! film, :id, :name, :duration, :budget, :status, :created_at, :updated_at
json.url film_url(film, format: :json)
