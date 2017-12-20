json.extract! recipe, :id, :price, :name, :description, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
