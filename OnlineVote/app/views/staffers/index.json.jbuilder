json.array!(@staffers) do |staffer|
  json.extract! staffer, :id, :name, :email, :password_digest
  json.url staffer_url(staffer, format: :json)
end
