class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@sithlord.pl"
  default :to => "sebmar1992@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[CONTACT FORM] #{message.subject}")
  end

end