require 'test_helper'

class TimepadItemsExporterTest < ActiveSupport::TestCase
  setup do
    @user = create :user
    @user.subscribe = true

    @maillist = create :timepad_maillist

    @response = { result: 'ok' }
    Timepad.maillist.stubs(:add_items).returns(@response)
  end

  test "should export items" do
    response = TimepadItemsExporter.run(@maillist.id)
    assert_equal response, @response
  end

end

