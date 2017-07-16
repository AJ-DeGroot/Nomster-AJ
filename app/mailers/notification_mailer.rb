class NotificationMailer < ApplicationMailer
  default from: "no-reply@homsterapp.com"

  def comment_added
    mail(to: "alan.michael.degroot@hotmail.com",
      subject: "A Comment has been added")
  end
end
