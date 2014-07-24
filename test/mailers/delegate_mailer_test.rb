require 'test_helper'

class DelegateMailerTest < ActionMailer::TestCase
  test "alert_notification" do
    mail = DelegateMailer.alert_notification
    assert_equal "Alert notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
