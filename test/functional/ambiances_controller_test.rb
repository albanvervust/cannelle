require 'test_helper'

class AmbiancesControllerTest < ActionController::TestCase
  setup do
    @ambiance = ambiances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ambiances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ambiance" do
    assert_difference('Ambiance.count') do
      post :create, :ambiance => @ambiance.attributes
    end

    assert_redirected_to ambiance_path(assigns(:ambiance))
  end

  test "should show ambiance" do
    get :show, :id => @ambiance.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ambiance.to_param
    assert_response :success
  end

  test "should update ambiance" do
    put :update, :id => @ambiance.to_param, :ambiance => @ambiance.attributes
    assert_redirected_to ambiance_path(assigns(:ambiance))
  end

  test "should destroy ambiance" do
    assert_difference('Ambiance.count', -1) do
      delete :destroy, :id => @ambiance.to_param
    end

    assert_redirected_to ambiances_path
  end
end
