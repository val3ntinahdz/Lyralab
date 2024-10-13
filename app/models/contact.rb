class Contact < ApplicationRecord
  validates :email, :message, :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
