require 'test_helper'

class ClassLocationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_location" do
    assert_difference('ClassLocation.count') do
      post :create, :class_location => { }
    end

    assert_redirected_to class_location_path(assigns(:class_location))
  end

  test "should show class_location" do
    get :show, :id => class_locations(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => class_locations(:one).to_param
    assert_response :success
  end

  test "should update class_location" do
    put :update, :id => class_locations(:one).to_param, :class_location => { }
    assert_redirected_to class_location_path(assigns(:class_location))
  end

  test "should destroy class_location" do
    assert_difference('ClassLocation.count', -1) do
      delete :destroy, :id => class_locations(:one).to_param
    end

    assert_redirected_to class_locations_path
  end
end
