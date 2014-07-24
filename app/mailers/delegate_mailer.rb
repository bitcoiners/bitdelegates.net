class DelegateMailer < ActionMailer::Base
  default from: "mailer@bitdelegates.net"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.delegate_mailer.alert_notification.subject
  #
  def alert_notification(record)
    @record = record
    @greeting = "BitDelegates Alert"

    mail to: "bitcoiner@yandex.com", subject: "Success! You did it."
  end


end
