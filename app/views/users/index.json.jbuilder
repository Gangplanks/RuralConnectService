json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :age, :income, :community, :occupation, :state
  json.url user_url(user, format: :json)
end
