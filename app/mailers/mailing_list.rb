class MailingList < ActionMailer::Base
  default :from => "noreply@elsadorfman.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailing_list.new_subscriber.subject
  #
  def new_subscriber(subscriber)
    @subscriber = subscriber
    mail :to => "matthewcarlone@gmail.com", :subject => 'Get your postcards ready, Elsa, because you have a new subscriber at elsadorfman.com!'
  end
end
