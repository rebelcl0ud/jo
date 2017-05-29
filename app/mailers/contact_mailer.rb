class ContactMailer < ActionMailer::Base
  # contact email
  default from: "no-reply@rebelcl0ud.herokuapp.com"


# what is being sent from contact form
  def contact_email(contact)
   @contact = contact
   mail(to: ENV['GMAIL_ADDRESS'], 
        subject: 'Contact Form Inquiry',
        message: @contact.message)
  end

# what is received by person using contact form
  def message_sent(contact)
    @contact = contact
    mail(to: @contact.email, 
         subject: "Contact Form Received",
         message: @contact.message)
  end
end

