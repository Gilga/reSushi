json.extract! rezept, :id, :rezept_id, :rezept_name, :rezept_bemerkung, :created_at, :updated_at
json.url rezept_url(rezept, format: :json)
