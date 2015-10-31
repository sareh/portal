json.array!(@services) do |service|
  json.extract! service, :id, :name, :image, :url, :description, :user_id, :service_type_id
  json.url service_url(service, format: :json)
end
