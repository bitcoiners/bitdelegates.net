require 'rest_client'
API_KEY = 'key-ddc1b16b2665e26d9604cb122d1dae77'
API_URL = "https://api:key-ddc1b16b2665e26d9604cb122d1dae77@api.mailgun.net/v2/bitdelegates.net"


class DelegateMailer < ActionMailer::Base
  default from: "mailer@bitdelegates.net"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.delegate_mailer.alert_notification.subject
  #
  def alert_notification #(record)
    #@record = record
    @greeting = "BitDelegates Alert"

    mail to: "bitcoiner@yandex.com", subject: "Success! You did it."
  end

def alert
  RestClient.post "https://api:key-ddc1b16b2665e26d9604cb122d1dae77"\
  "@api.mailgun.net/v2/bitdelegates.net/messages",
  :from => "<mailer@bitdelegates.net>",
  :to => "slavixtube@yandex.com",
  :subject => "BitDelegates Alert",
  :html => "<b>HTML</b> version of the body!"
end


end
