class ContactMailer < ActionMailer::Base
  # contact email
  default to: "rebelcl0udmedia@gmail.com"


# what is being sent from contact form
  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(from: email, subject: 'Contact Request')
  end



end
