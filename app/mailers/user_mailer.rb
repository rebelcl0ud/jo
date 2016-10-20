class UserMailer < ActionMailer::Base
  
  default from: "no-reply@rebelcl0udmedia.com"


# what is received by person using contact form
  def message_sent#(name, email)
    #@name = name
    #@email = email
    #mail(to: email, subject: 'Message Sent')
    mail(to: "rebelcl0udmedia@gmail.com", subject: "testing")
  end

end