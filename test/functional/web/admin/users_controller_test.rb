require 'test_helper'

class Web::Admin::UsersControllerTest < ActionController::TestCase

  setup do
    @admin = create :admin
    sign_in @admin

    @user = create :user
    @attrs = attributes_for :user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a user" do
    post :create, user: @attrs
    assert_response :redirect

    user = User.find_by_email @attrs[:email]
    assert user
  end

  test "should get edit" do
    get :edit, id: @user.id
    assert_response :success
  end

  test "should update a user" do
    put :update, id: @user.id, user: @attrs
    assert_response :redirect

    @user.reload
    assert_equal @attrs[:email], @user.email
  end

  test "should destroy a user" do
    delete :destroy, id: @user.id
    assert_response :redirect

    assert_nil User.find_by_id(@user.id)
  end

end
