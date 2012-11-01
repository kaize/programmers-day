require 'test_helper'

class TimepadMaillistsImporterTest < ActiveSupport::TestCase
  setup do
    @maillist = create :timepad_maillist

    @list = {
      id: @maillist.id,
      name: @maillist.name,
      itemsCount: @maillist.items_count
    }

    Timepad.maillist.stubs(:get_list).returns([@list])
  end

  test "should export items" do
    response = TimepadMaillistsImporter.run

    list = response.pop
    assert_equal list, @list
  end
end


