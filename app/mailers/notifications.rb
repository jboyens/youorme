class Notifications < ActionMailer::Base
  default from: "no-reply@fooninja.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.pickup_set.subject
  #
  def pickup_set to, pickup, kid, who_did_it
    @kid = kid
    @who_did_it = who_did_it

    subject = I18n.t('notifications.pickup_set.subject', :kid => kid.name)

    mail to: to.email, subject: subject
  end
end
