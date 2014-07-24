# Preview all emails at http://localhost:3000/rails/mailers/delegate_mailer
class DelegateMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/delegate_mailer/alert_notification
  def alert_notification
    DelegateMailer.alert_notification
  end

end
