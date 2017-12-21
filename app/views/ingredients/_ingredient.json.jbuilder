json.extract! ingredient, :id, :name, :description, :image, :nutrition_id, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
