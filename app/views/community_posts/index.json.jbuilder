json.array!(@community_posts) do |community_post|
  json.extract! community_post, :id, :user_id, :community_id, :type, :content
  json.url community_post_url(community_post, format: :json)
end
