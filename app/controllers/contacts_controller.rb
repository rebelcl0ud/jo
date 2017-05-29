class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

#what will be executed after hitting submit button on form
  def create
    @contact = Contact.new(contact_params)
    if @contact.invalid?
      flash[:error] = 'missing info - please try again'
    else
      ContactMailer.contact_email(@contact).deliver_now && ContactMailer.message_sent(@contact).deliver_now
      flash[:notice] = 'message sent!'
    end
    redirect_to root_path
  end

private

#values pulled from the form-- w/o params user input would be unknown/ empty records would be stored in the db
#permit secures form of db being injected with anything unwanted
def contact_params
  params.require(:contact).permit(:name, :email, :message)
end


end
