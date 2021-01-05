class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
      if @contact.deliver
        render json: {message: "Email sent successfully"}
      else
        render json: @contact.errors
      end
    end


  def contact_params
    params.require(:contact).permit(:name, :last_name, :email, :message)
  end
end
