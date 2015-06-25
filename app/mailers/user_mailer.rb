class UserMailer < ActionMailer::Base
  default from: "do-not-reply@mail-etc.net"

  def contact_email(contact)
    @contact = contact
    mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website Contact")
  end
end