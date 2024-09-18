class Category < ApplicationRecord
  has_many :recursos, dependent: :destroy
end
