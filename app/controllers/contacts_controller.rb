class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)

    if @contact.valid? && @contact.save
      ContactMailer.contact_email(@contact).deliver_now
      flash[:notice] = "Tu mensaje ha sido enviado. ¡Gracias!"
      redirect_to root_path
    else
      flash[:alert] = "Por favor, revisa los errores en el formulario."
      redirect_to root_path
    end
  end

  private

  def contact_params
    params.permit(:name, :email, :message)
  end
end
