json.array!(@user_scheme_favorites) do |user_scheme_favorite|
  json.extract! user_scheme_favorite, :id, :user_id, :scheme_id
  json.url user_scheme_favorite_url(user_scheme_favorite, format: :json)
end
