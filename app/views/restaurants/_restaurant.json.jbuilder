json.extract! restaurant, :id, :name, :adsress, :phone_number, :category, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
