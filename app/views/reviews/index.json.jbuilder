json.array!(@reviews) do |review|
  json.extract! review, :id, :user_id, :scheme_id, :type, :content
  json.url review_url(review, format: :json)
end
