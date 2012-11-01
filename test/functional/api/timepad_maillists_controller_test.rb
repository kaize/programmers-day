require 'test_helper'

class Api::TimepadMaillistsControllerTest < ActionController::TestCase
  setup do
    @maillist = create :timepad_maillist

    @list = {
      id: @maillist.original_id,
      name: @maillist.name,
      itemsCount: @maillist.items_count
    }

    TimepadMaillistsImporter.stubs(:run).returns([@list])
  end

  test "should import lists" do
    put :import, format: :json
    assert_response :success
  end
end

