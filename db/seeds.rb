# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# Limpiar la base de datos (esto eliminará todos los recursos y categorías)
# Recurso.destroy_all
# Category.destroy_all

# Crear categorías
categories = [
  { name: "Ciencia" },
  { name: "Tecnología" },
  { name: "Arte" },
  { name: "Ingeniería" },
  { name: "Matemáticas" }
]

categories.each do |category_data|
  Category.find_or_create_by(name: category_data[:name])
end

# Crear recursos de prueba con imágenes
Recurso.create!(
  titulo: "Introducción a la Física",
  descripcion: "Un recurso básico para aprender física.",
  url: "http://ejemplo.com/ciencia",
  category_id: 1,
  steam_area: "Ciencia",
  resource_type: "PDF",
  image: File.open(Rails.root.join("app/assets/images/default.jpg"))
)

Recurso.create!(
  titulo: "Curso de Programación en Python",
  descripcion: "Un curso completo de Python.",
  url: "http://ejemplo.com/python",
  category_id: 2,
  steam_area: "Tecnología",
  resource_type: "Curso",
  image: File.open(Rails.root.join("app/assets/images/default.jpg"))
)

Recurso.create!(
  titulo: "Razonamiento Lógic Matemático",
  descripcion: "Los mejores 300 ejercicios de razonamiento lógico matemático a nivel Secundaria",
  url: "file:///C:/Users/leonh/Downloads/razonamiento-logico-matematico-para-secundaria-me.pdf",
  category_id: 2,
  steam_area: "Tecnología",
  resource_type: "Curso",
  image: File.open(Rails.root.join("app/assets/images/default.jpg"))
)

puts "Se crearon #{Recurso.count} recursos."
