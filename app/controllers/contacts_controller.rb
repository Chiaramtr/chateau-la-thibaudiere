class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.email = params[:email]
    @contact.message = params[:message]
    if @contact.deliver
      render json: {message: "Email sent successfully"}
    else
      render :create
    end
  end


  def contact_params
    params.require(:contact).permit(:name, :last_name, :email, :message)
  end
end
