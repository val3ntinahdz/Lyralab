class Recurso < ApplicationRecord
  belongs_to :category
  
  validates :titulo, presence: true
  validates :url, presence: true, uniqueness: true, format: URI::regexp(%w[http https])
end
