json.array!(@community_questions) do |community_question|
  json.extract! community_question, :id, :userId, :communityId, :question
  json.url community_question_url(community_question, format: :json)
end
