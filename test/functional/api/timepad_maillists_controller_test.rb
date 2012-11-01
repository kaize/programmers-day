require 'test_helper'

class Api::TimepadMaillistsControllerTest < ActionController::TestCase
  test "should import lists" do
    list = {
      id: generate(:integer),
      name: generate(:name),
      itemsCount: generate(:integer)
    }

    lists = [list]
    TimepadMaillistsImporter.stubs(:run).returns(lists)

    put :import, format: :json
    assert_response :success
  end
end

