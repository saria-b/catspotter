json.extract! cat, :id, :picture, :date_spotted, :location, :colour, :description, :rating, :would_pat_again, :created_at, :updated_at
json.url cat_url(cat, format: :json)
