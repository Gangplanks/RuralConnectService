require 'test_helper'

class SchemesControllerTest < ActionController::TestCase
  setup do
    @scheme = schemes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schemes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scheme" do
    assert_difference('Scheme.count') do
      post :create, scheme: { age_eligible: @scheme.age_eligible, avail_from: @scheme.avail_from, beneficiaries: @scheme.beneficiaries, community_eligible: @scheme.community_eligible, department: @scheme.department, description: @scheme.description, funding_pattern: @scheme.funding_pattern, income_eligible: @scheme.income_eligible, jurisdiction: @scheme.jurisdiction, name: @scheme.name, others_eligible: @scheme.others_eligible, valid_from: @scheme.valid_from, valid_till: @scheme.valid_till }
    end

    assert_redirected_to scheme_path(assigns(:scheme))
  end

  test "should show scheme" do
    get :show, id: @scheme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scheme
    assert_response :success
  end

  test "should update scheme" do
    patch :update, id: @scheme, scheme: { age_eligible: @scheme.age_eligible, avail_from: @scheme.avail_from, beneficiaries: @scheme.beneficiaries, community_eligible: @scheme.community_eligible, department: @scheme.department, description: @scheme.description, funding_pattern: @scheme.funding_pattern, income_eligible: @scheme.income_eligible, jurisdiction: @scheme.jurisdiction, name: @scheme.name, others_eligible: @scheme.others_eligible, valid_from: @scheme.valid_from, valid_till: @scheme.valid_till }
    assert_redirected_to scheme_path(assigns(:scheme))
  end

  test "should destroy scheme" do
    assert_difference('Scheme.count', -1) do
      delete :destroy, id: @scheme
    end

    assert_redirected_to schemes_path
  end
end
