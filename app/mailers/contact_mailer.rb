class ContactMailer < ApplicationMailer
  default to: 'valentinaleonh8@gmail.com'

  def contact_email(contact)
    @contact = contact
    mail(from: @contact.email, subject: 'Nuevo Mensaje de Contacto')
  end
end
