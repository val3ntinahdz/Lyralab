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
Recurso.create!([
  {
    titulo: "ChatGPT: Master Free AI Tools to Supercharge Productivity",
    descripcion: "Master ChatGPT's Free AI to Excel at Work & Life. Leverage ChatGPT's free AI to excel at planning, project management, writing, data analytics, marketing, social media, machine learning, and more for work and life.",
    url: "https://www.coursera.org/specializations/chatgpt-free-ai-tools-to-excel",
    category_id: 2,
    steam_area: "Tecnología",
    resource_type: "Curso"
  },
  {
    titulo: "Introduction to Computer Science and Programming",
    descripcion: "An entry-level course taught by MIT that provides a comprehensive introduction to computer science using Python.",
    url: "https://ocw.mit.edu/courses/6-00sc-introduction-to-computer-science-and-programming-spring-2011/",
    category_id: 2,
    steam_area: "Tecnología",
    resource_type: "Curso"
  },
  {
    titulo: "Women in Science: 50 Fearless Pioneers Who Changed the World",
    descripcion: "A beautifully illustrated book that highlights the contributions of women in science, technology, engineering, and math.",
    url: "https://www.goodreads.com/book/show/28502860-women-in-science",
    category_id: 4,
    steam_area: "Ciencia",
    resource_type: "Libro"
  },
  {
    titulo: "Coursera: Data Science Specialization",
    descripcion: "Ten-course introduction to data science, developed and taught by leading data scientists.",
    url: "https://www.coursera.org/specializations/jhu-data-science",
    category_id: 2,
    steam_area: "Tecnología",
    resource_type: "Curso"
  },
  {
    titulo: "R for Data Science",
    descripcion: "A hands-on book that helps you use R to transform and visualize data in meaningful ways.",
    url: "https://r4ds.had.co.nz/",
    category_id: 2,
    steam_area: "Matemáticas",
    resource_type: "Libro"
  },
  {
    titulo: "Udemy: Python for Data Science and Machine Learning Bootcamp",
    descripcion: "Learn how to use Python for analyzing data, visualizing information, and building machine learning models.",
    url: "https://www.udemy.com/course/python-for-data-science-and-machine-learning-bootcamp/",
    category_id: 2,
    steam_area: "Tecnología",
    resource_type: "Curso"
  },
  {
    titulo: "Crash Course Astronomy",
    descripcion: "An engaging YouTube series that teaches astronomy concepts in a fun and easy-to-understand way.",
    url: "https://www.youtube.com/playlist?list=PL8dPuuaLjXtPAJr1ysd5yGIyiSFuh0mIL",
    category_id: 1,
    steam_area: "Ciencia",
    resource_type: "Vídeo"
  },
  {
    titulo: "Interactive 3D Solar System",
    descripcion: "Explore the solar system with this interactive, educational 3D model.",
    url: "https://solarsystem.nasa.gov/planets/overview/",
    category_id: 1,
    steam_area: "Ciencia",
    resource_type: "Herramienta"
  },
  {
    titulo: "edX: Introduction to Data Science",
    descripcion: "Gain knowledge on data science tools, techniques, and key trends through this free online course.",
    url: "https://www.edx.org/course/introduction-to-data-science-2",
    category_id: 2,
    steam_area: "Matemáticas",
    resource_type: "Curso"
  },
  {
    titulo: "Mathematics for Machine Learning",
    descripcion: "Learn about the essential mathematics that underpin machine learning with this Coursera course.",
    url: "https://www.coursera.org/specializations/mathematics-machine-learning",
    category_id: 2,
    steam_area: "Matemáticas",
    resource_type: "Curso"
  },
  {
    titulo: "The Feynman Lectures on Physics",
    descripcion: "The definitive introductory physics series, available free online.",
    url: "https://www.feynmanlectures.caltech.edu/",
    category_id: 1,
    steam_area: "Ciencia",
    resource_type: "Libro"
  },
  {
    titulo: "Khan Academy: Biology",
    descripcion: "Comprehensive biology tutorials covering everything from cell structure to evolution.",
    url: "https://www.khanacademy.org/science/biology",
    category_id: 1,
    steam_area: "Ciencia",
    resource_type: "Curso"
  },
  {
    titulo: "Codeacademy: Learn to Code for Free",
    descripcion: "A platform offering free coding lessons in multiple programming languages like Python, JavaScript, and more.",
    url: "https://www.codecademy.com/learn",
    category_id: 2,
    steam_area: "Tecnología",
    resource_type: "Curso"
  },
  {
    titulo: "NASA's Space Place",
    descripcion: "Interactive activities and games designed to introduce younger audiences to the wonders of space.",
    url: "https://spaceplace.nasa.gov/",
    category_id: 1,
    steam_area: "Ciencia",
    resource_type: "Herramienta"
  },
  {
    titulo: "Deep Learning with Python",
    descripcion: "This book introduces deep learning and neural networks using the Python library Keras.",
    url: "https://www.manning.com/books/deep-learning-with-python",
    category_id: 2,
    steam_area: "Tecnología",
    resource_type: "Libro"
  },
  {
    titulo: "Wolfram Alpha",
    descripcion: "A powerful computation engine that helps with solving complex mathematics, plotting graphs, and much more.",
    url: "https://www.wolframalpha.com/",
    category_id: 2,
    steam_area: "Matemáticas",
    resource_type: "Herramienta"
  },
  {
    titulo: "Coursera: Machine Learning by Andrew Ng",
    descripcion: "One of the most popular and highly-rated machine learning courses taught by Stanford Professor Andrew Ng.",
    url: "https://www.coursera.org/learn/machine-learning",
    category_id: 2,
    steam_area: "Tecnología",
    resource_type: "Curso"
  },
  {
    titulo: "How to Think Like a Mathematician",
    descripcion: "A highly accessible guide to thinking about mathematics more critically and analytically.",
    url: "https://www.amazon.com/How-Think-Like-Mathematician-Companion/dp/0521719781",
    category_id: 2,
    steam_area: "Matemáticas",
    resource_type: "Libro"
  },
  {
    titulo: "Codewars",
    descripcion: "A platform for coding practice where you can challenge yourself with programming exercises in multiple languages.",
    url: "https://www.codewars.com/",
    category_id: 2,
    steam_area: "Tecnología",
    resource_type: "Herramienta"
  }
])

puts "Se crearon #{Recurso.count} recursos."
