require 'test_helper'

class CommunityQuestionsControllerTest < ActionController::TestCase
  setup do
    @community_question = community_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:community_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create community_question" do
    assert_difference('CommunityQuestion.count') do
      post :create, community_question: { communityId: @community_question.communityId, question: @community_question.question, userId: @community_question.userId }
    end

    assert_redirected_to community_question_path(assigns(:community_question))
  end

  test "should show community_question" do
    get :show, id: @community_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @community_question
    assert_response :success
  end

  test "should update community_question" do
    patch :update, id: @community_question, community_question: { communityId: @community_question.communityId, question: @community_question.question, userId: @community_question.userId }
    assert_redirected_to community_question_path(assigns(:community_question))
  end

  test "should destroy community_question" do
    assert_difference('CommunityQuestion.count', -1) do
      delete :destroy, id: @community_question
    end

    assert_redirected_to community_questions_path
  end
end
