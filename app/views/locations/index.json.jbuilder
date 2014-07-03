json.array!(@locations) do |location|
  json.extract! location, :id, :address, :zip, :city, :tenant_firstname, :tenant_lastname, :tenant_since, :user_id, :tenant_email
  json.url location_url(location, format: :json)
end
