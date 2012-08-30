require 'test_helper'

class Web::MembersControllerTest < ActionController::TestCase
  setup do
    @attrs = attributes_for :user
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    post :create, user: @attrs
    assert_response :redirect
    assert User.find_by_email(@attrs[:email])
  end

end
