json.extract! event, :id, :name, :state, :start_date, :end_date, :cost, :category_id, :created_at, :updated_at
json.url event_url(event, format: :json)
