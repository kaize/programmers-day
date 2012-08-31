require 'test_helper'

class MemberMailerTest < ActionMailer::TestCase
  def setup
    @member = create :user
  end

  def test_welcome_email
    email = MemberMailer.welcome(@member).deliver
    assert !ActionMailer::Base.deliveries.empty?
    assert_equal [@member.email], email.to
  end

end
