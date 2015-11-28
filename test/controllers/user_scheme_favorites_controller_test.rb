require 'test_helper'

class UserSchemeFavoritesControllerTest < ActionController::TestCase
  setup do
    @user_scheme_favorite = user_scheme_favorites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_scheme_favorites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_scheme_favorite" do
    assert_difference('UserSchemeFavorite.count') do
      post :create, user_scheme_favorite: { scheme_id: @user_scheme_favorite.scheme_id, user_id: @user_scheme_favorite.user_id }
    end

    assert_redirected_to user_scheme_favorite_path(assigns(:user_scheme_favorite))
  end

  test "should show user_scheme_favorite" do
    get :show, id: @user_scheme_favorite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_scheme_favorite
    assert_response :success
  end

  test "should update user_scheme_favorite" do
    patch :update, id: @user_scheme_favorite, user_scheme_favorite: { scheme_id: @user_scheme_favorite.scheme_id, user_id: @user_scheme_favorite.user_id }
    assert_redirected_to user_scheme_favorite_path(assigns(:user_scheme_favorite))
  end

  test "should destroy user_scheme_favorite" do
    assert_difference('UserSchemeFavorite.count', -1) do
      delete :destroy, id: @user_scheme_favorite
    end

    assert_redirected_to user_scheme_favorites_path
  end
end
