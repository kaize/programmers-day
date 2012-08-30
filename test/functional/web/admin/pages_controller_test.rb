require 'test_helper'

class Web::Admin::PagesControllerTest < ActionController::TestCase
  setup do
    @page = create :page
    @attrs = attributes_for :page
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page.id
    assert_response :success
  end

  test "should post create" do
    post :create, page: @attrs
    assert_response :redirect

    assert Page.find_by_uri(@attrs[:uri])
  end

  test "should put update" do
    put :update, id: @page.id, page: @attrs
    assert_response :redirect

    @page.reload
    assert_equal @attrs[:name], @page.name
  end

  test "should delete destroy" do
    delete :destroy, id: @page.id
    assert_response :redirect

    assert_nil Page.find_by_id(@page)
  end

end
