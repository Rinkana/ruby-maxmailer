require 'test_helper'

class MailbuildersControllerTest < ActionController::TestCase
  setup do
    @mailbuilder = mailbuilders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailbuilders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailbuilder" do
    assert_difference('Mailbuilder.count') do
      post :create, mailbuilder: {  }
    end

    assert_redirected_to mailbuilder_path(assigns(:mailbuilder))
  end

  test "should show mailbuilder" do
    get :show, id: @mailbuilder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mailbuilder
    assert_response :success
  end

  test "should update mailbuilder" do
    patch :update, id: @mailbuilder, mailbuilder: {  }
    assert_redirected_to mailbuilder_path(assigns(:mailbuilder))
  end

  test "should destroy mailbuilder" do
    assert_difference('Mailbuilder.count', -1) do
      delete :destroy, id: @mailbuilder
    end

    assert_redirected_to mailbuilders_path
  end
end
