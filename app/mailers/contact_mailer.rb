class ContactMailer < ApplicationMailer
  def send_mail(contact)
    @contact = contact
    mail(to: Rails.application.credentials.gmail[:user_name], subject: "お問合せ内容")
  end
end
