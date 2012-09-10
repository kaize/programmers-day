require 'test_helper'

class Api::UsersControllerTest < ActionController::TestCase
  setup do
    @user = create :user
  end

  test "should get index" do
    get :index, format: :xlsx
    assert_response :success
  end

end

