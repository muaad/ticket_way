json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :location, :latitude, :longitude, :start_time, :end_time, :is_free, :capacity, :sold_out, :public, :category_id, :account_id
  json.url event_url(event, format: :json)
end
