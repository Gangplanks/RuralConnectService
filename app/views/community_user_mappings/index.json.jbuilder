json.array!(@community_user_mappings) do |community_user_mapping|
  json.extract! community_user_mapping, :id, :userId, :communityId
  json.url community_user_mapping_url(community_user_mapping, format: :json)
end
