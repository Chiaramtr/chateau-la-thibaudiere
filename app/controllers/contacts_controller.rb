class ContactsController < ApplicationController
before_action :contact_params, only: [:new, :create]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(:contact)
    @contact.request = request
      if @contact.deliver
        render json: {message: "Email sent successfully"}
      else
        render json: @contact.errors
      end
    end


  def contact_params
    params.require(:contact).permit(:first_name,:last_name, :email, :message)
  end
end
