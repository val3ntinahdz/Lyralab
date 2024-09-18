class Recurso < ApplicationRecord
  CATEGORIES = %w[Ciencia Tecnología Ingeniería Matemáticas Arte]

  validates :titulo, presence: true
  validates :categoria, inclusion: { in: CATEGORIES }
  validates :url, presence: true, uniqueness: true, format: URI::regexp(%w[http https])
end
