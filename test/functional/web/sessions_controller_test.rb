require 'test_helper'

class Web::SessionsControllerTest < ActionController::TestCase
  setup do
    @admin = create :admin
    @attrs = { email: @admin.email, password: @admin.password }
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session" do
    post :create, session: @attrs
    assert_response :redirect
    assert signed_in?
  end

  test "should destroy session" do
    sign_in @admin
    delete :destroy
    assert_response :redirect
    assert !signed_in?
  end
end
