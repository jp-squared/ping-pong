require 'test_helper'

class StaffersControllerTest < ActionController::TestCase
  setup do
    @staffer = staffers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staffers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staffer" do
    assert_difference('Staffer.count') do
      post :create, staffer: { email: @staffer.email, name: @staffer.name, password_digest: @staffer.password_digest }
    end

    assert_redirected_to staffer_path(assigns(:staffer))
  end

  test "should show staffer" do
    get :show, id: @staffer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staffer
    assert_response :success
  end

  test "should update staffer" do
    patch :update, id: @staffer, staffer: { email: @staffer.email, name: @staffer.name, password_digest: @staffer.password_digest }
    assert_redirected_to staffer_path(assigns(:staffer))
  end

  test "should destroy staffer" do
    assert_difference('Staffer.count', -1) do
      delete :destroy, id: @staffer
    end

    assert_redirected_to staffers_path
  end
end
