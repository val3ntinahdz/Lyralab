class Recurso < ApplicationRecord
  belongs_to :category
  has_one_attached :image

  validates :titulo, presence: true
  validates :url, presence: true, uniqueness: true, format: URI::regexp(%w[http https])
end
