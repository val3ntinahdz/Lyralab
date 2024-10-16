class Recurso < ApplicationRecord
  belongs_to :category
  has_one_attached :image

  validates :titulo, presence: true
  validates :category_id, presence: true
  validates :url, presence: true
  validates :steam_area, presence: true, inclusion: { in: %w[ Ciencia Tecnología Ingeniería Arte Matemáticas ] }
  validates :resource_type, inclusion: { in: %w[ Artículo Vídeo PDF Libro Curso Herramienta ] }
end
