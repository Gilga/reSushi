json.extract! rezepte, :id, :preis, :rezepte_name, :rezepte_bemerkung, :zutat_id, :created_at, :updated_at
json.url rezepte_url(rezepte, format: :json)
