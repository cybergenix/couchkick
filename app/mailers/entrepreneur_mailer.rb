class EntrepreneurMailer < ActionMailer::Base
  default from: "tiagom87@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.entrepreneur_mailer.welcome.subject
  #
  def welcome(entrepreneur)
    @entrepreneur = entrepreneur
    mail to: @entrepreneur.email, subject: 'Welcome to couchkick!'
  end
end
