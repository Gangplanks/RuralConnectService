require 'test_helper'

class CommunityUserMappingsControllerTest < ActionController::TestCase
  setup do
    @community_user_mapping = community_user_mappings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:community_user_mappings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create community_user_mapping" do
    assert_difference('CommunityUserMapping.count') do
      post :create, community_user_mapping: { communityId: @community_user_mapping.communityId, userId: @community_user_mapping.userId }
    end

    assert_redirected_to community_user_mapping_path(assigns(:community_user_mapping))
  end

  test "should show community_user_mapping" do
    get :show, id: @community_user_mapping
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @community_user_mapping
    assert_response :success
  end

  test "should update community_user_mapping" do
    patch :update, id: @community_user_mapping, community_user_mapping: { communityId: @community_user_mapping.communityId, userId: @community_user_mapping.userId }
    assert_redirected_to community_user_mapping_path(assigns(:community_user_mapping))
  end

  test "should destroy community_user_mapping" do
    assert_difference('CommunityUserMapping.count', -1) do
      delete :destroy, id: @community_user_mapping
    end

    assert_redirected_to community_user_mappings_path
  end
end
