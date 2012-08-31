require 'test_helper'

class Web::Admin::NewsControllerTest < ActionController::TestCase
  setup do
    @news = create :news
    @attrs = attributes_for :news
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should edit news" do
    get :edit, id: @news.id
    assert_response :success
  end

  test "should create news" do
    post :create, news: @attrs
    assert_response :redirect

    assert News.find_by_name(@attrs[:name])
  end

  test "should update news" do
    put :update, id: @news.id, news: @attrs
    assert_response :redirect

    @news.reload
    assert_equal @attrs[:name], @news.name
  end

  test "should destroy news" do
    delete :destroy, id: @news.id
    assert_response :redirect

    assert_nil News.find_by_id(@news)
  end

end
