require 'test_helper'

class Web::Admin::UsersControllerTest < ActionController::TestCase
  setup do
    @user = create :user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should delete user" do
    delete :destroy, id: @user.id
    assert_response :redirect

    user = User.find_by_id(@user.id)
    assert_nil user
  end

end
