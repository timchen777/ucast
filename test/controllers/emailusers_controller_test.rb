require 'test_helper'

class EmailusersControllerTest < ActionController::TestCase
  setup do
    @emailuser = emailusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emailusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emailuser" do
    assert_difference('Emailuser.count') do
      post :create, emailuser: { email: @emailuser.email, login: @emailuser.login, name: @emailuser.name }
    end

    assert_redirected_to emailuser_path(assigns(:emailuser))
  end

  test "should show emailuser" do
    get :show, id: @emailuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emailuser
    assert_response :success
  end

  test "should update emailuser" do
    patch :update, id: @emailuser, emailuser: { email: @emailuser.email, login: @emailuser.login, name: @emailuser.name }
    assert_redirected_to emailuser_path(assigns(:emailuser))
  end

  test "should destroy emailuser" do
    assert_difference('Emailuser.count', -1) do
      delete :destroy, id: @emailuser
    end

    assert_redirected_to emailusers_path
  end
end
