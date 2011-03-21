require 'test_helper'

class SkitsControllerTest < ActionController::TestCase
  setup do
    @skit = skits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skit" do
    assert_difference('Skit.count') do
      post :create, :skit => @skit.attributes
    end

    assert_redirected_to skit_path(assigns(:skit))
  end

  test "should show skit" do
    get :show, :id => @skit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @skit.to_param
    assert_response :success
  end

  test "should update skit" do
    put :update, :id => @skit.to_param, :skit => @skit.attributes
    assert_redirected_to skit_path(assigns(:skit))
  end

  test "should destroy skit" do
    assert_difference('Skit.count', -1) do
      delete :destroy, :id => @skit.to_param
    end

    assert_redirected_to skits_path
  end
end
