# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

User.destroy_all
ProjectTechnology.destroy_all
Project.destroy_all
Technology.destroy_all


puts "Creando Usuarios"

user = User.create(
  github: "https://github.com/dvaron2099",
  linkedin: "www.linkedin.com/in/davidvaronduarte",
  number: "+573232313535",
  email: "varondavid20@gmail.com"
)

file = URI.open("/root/code/dvaron2099/varondavid/app/assets/images/David Varon.jpg")
user.photo.attach(io: file, filename: "David Varon.jpg" , content_type: "image/jpg")

puts "Usuario creado con éxito"

puts "Creando Tecnologias"

puts "Ruby"
ruby = Technology.create(name: "Ruby")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/ruby.png")
ruby.photo.attach(io: URI.open(uploaded_image['url']), filename: "ruby.png", content_type: "image/png")

puts "Ruby on Rails"
rails = Technology.create(name: "Ruby on Rails")

file = URI.open("https://miro.medium.com/v2/resize:fit:450/1*MtuURq-9Fe3MZM5IZqQgyw.png")
rails.photo.attach(io: file, filename: "1*MtuURq-9Fe3MZM5IZqQgyw.png" , content_type: "image/png")

puts "JavaScript"
javascript = Technology.create(name: "JavaScript")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/javascript.png")
javascript.photo.attach(io: URI.open(uploaded_image['url']), filename: "javascript.png", content_type: "image/png")

puts "HTML"
html = Technology.create(name: "HTML")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/html.png")
html.photo.attach(io: URI.open(uploaded_image['url']), filename: "html.png", content_type: "image/png")

puts "CSS"
css = Technology.create(name: "CSS")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/css.png")
css.photo.attach(io: URI.open(uploaded_image['url']), filename: "css.png", content_type: "image/png")

puts "Sass"
sass = Technology.create(name: "Sass")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/sass.png")
sass.photo.attach(io: URI.open(uploaded_image['url']), filename: "sass.png", content_type: "image/png")

puts "Git"
git = Technology.create(name: "Git")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/git.png")
git.photo.attach(io: URI.open(uploaded_image['url']), filename: "git.png", content_type: "image/png")

puts "GitHub"
github = Technology.create(name: "GitHub")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/github.png")
github.photo.attach(io: URI.open(uploaded_image['url']), filename: "github.png", content_type: "image/png")

puts "Python"
python = Technology.create(name: "Python")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/python.png")
python.photo.attach(io: URI.open(uploaded_image['url']), filename: "python.png", content_type: "image/png")

puts "Bootstrap"
bootstrap = Technology.create(name: "Bootstrap")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/bootstrap.png")
bootstrap.photo.attach(io: URI.open(uploaded_image['url']), filename: "bootstrap.png", content_type: "image/png")

puts "SQL"
sql = Technology.create(name: "SQL")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/sql.png")
sql.photo.attach(io: URI.open(uploaded_image['url']), filename: "sql.png", content_type: "image/png")

puts "Node.js"
node = Technology.create(name: "Node.js")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/node.png")
node.photo.attach(io: URI.open(uploaded_image['url']), filename: "node.png", content_type: "image/png")

puts "Heroku"
heroku = Technology.create(name: "Heroku")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/heroku.png")
heroku.photo.attach(io: URI.open(uploaded_image['url']), filename: "heroku.png", content_type: "image/png")

puts "Creando Proyectos"
puts ""
puts "Eventik"
eventik = Project.create(
  name: "Eventik",
  description_es: "Esta aplicación web está diseñada para crear eventos. Los usuarios pueden visualizar proveedores de servicios, entablar conversaciones con ellos y conocer su ubicación a través de Mapbox.",
  description_en: "This web application is designed for creating events. Users can view service providers, engage in conversations with them, and discover their locations through Mapbox.",
  repo: "https://github.com/dvaron2099/eventik",
  link: "https://www.eventik.me/"
)

ProjectTechnology.create(project_id: eventik.id, technology_id: ruby.id)
ProjectTechnology.create(project_id: eventik.id, technology_id: rails.id)
ProjectTechnology.create(project_id: eventik.id, technology_id: javascript.id)
ProjectTechnology.create(project_id: eventik.id, technology_id: html.id)
ProjectTechnology.create(project_id: eventik.id, technology_id: css.id)
ProjectTechnology.create(project_id: eventik.id, technology_id: git.id)
ProjectTechnology.create(project_id: eventik.id, technology_id: github.id)
ProjectTechnology.create(project_id: eventik.id, technology_id: sass.id)
ProjectTechnology.create(project_id: eventik.id, technology_id: sql.id)
ProjectTechnology.create(project_id: eventik.id, technology_id: bootstrap.id)
ProjectTechnology.create(project_id: eventik.id, technology_id: heroku.id)

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/Eventik/eventik_1.jpeg")
eventik.photos.attach(io: URI.open(uploaded_image['url']), filename: "eventik_1.jpeg", content_type: "image/jpeg")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/Eventik/eventik_2.jpeg")
eventik.photos.attach(io: URI.open(uploaded_image['url']), filename: "eventik_2.jpeg", content_type: "image/jpeg")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/Eventik/eventik_3.jpeg")
eventik.photos.attach(io: URI.open(uploaded_image['url']), filename: "eventik_3.jpeg", content_type: "image/jpeg")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/Eventik/eventik_4.jpeg")
eventik.photos.attach(io: URI.open(uploaded_image['url']), filename: "eventik_4.jpeg", content_type: "image/jpeg")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/Eventik/eventik_5.jpeg")
eventik.photos.attach(io: URI.open(uploaded_image['url']), filename: "eventik_5.jpeg", content_type: "image/jpeg")

puts ""
puts "Tendencias"
tendencias = Project.create(
  name: "Tendencias y Diseños",
  description_es: "Esta página web está dirigida a la empresa T&D (Tendencia y Diseños), con sede en la ciudad de Cúcuta, en el departamento de Norte de Santander.",
  description_en: "This website is aimed at the company T&D (Trends and Designs), based in the city of Cúcuta, in the department of Norte de Santander.",
  repo: "https://github.com/dvaron2099/tendencias_y_dise-os"
)

ProjectTechnology.create(project_id: tendencias.id, technology_id: ruby.id)
ProjectTechnology.create(project_id: tendencias.id, technology_id: rails.id)
ProjectTechnology.create(project_id: tendencias.id, technology_id: javascript.id)
ProjectTechnology.create(project_id: tendencias.id, technology_id: html.id)
ProjectTechnology.create(project_id: tendencias.id, technology_id: css.id)
ProjectTechnology.create(project_id: tendencias.id, technology_id: git.id)
ProjectTechnology.create(project_id: tendencias.id, technology_id: github.id)
ProjectTechnology.create(project_id: tendencias.id, technology_id: sass.id)
ProjectTechnology.create(project_id: tendencias.id, technology_id: sql.id)
ProjectTechnology.create(project_id: tendencias.id, technology_id: bootstrap.id)
ProjectTechnology.create(project_id: tendencias.id, technology_id: heroku.id)

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/tendencias/tendencias_1.jpeg")
tendencias.photos.attach(io: URI.open(uploaded_image['url']), filename: "tendencias_1.jpeg", content_type: "image/jpeg")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/tendencias/tendencias_2.jpeg")
tendencias.photos.attach(io: URI.open(uploaded_image['url']), filename: "tendencias_2.jpeg", content_type: "image/jpeg")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/tendencias/tendencias_3.jpeg")
tendencias.photos.attach(io: URI.open(uploaded_image['url']), filename: "tendencias_3.jpeg", content_type: "image/jpeg")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/tendencias/tendencias_4.jpeg")
tendencias.photos.attach(io: URI.open(uploaded_image['url']), filename: "tendencias_4.jpeg", content_type: "image/jpeg")

puts ""
puts "GetDressed"
getdressed = Project.create(
  name: "GetDressed",
  description_es: "Esta aplicación está diseñada como un prototipo para el alquiler de ropa.",
  description_en: "This application is designed as a prototype for clothing rental.",
  repo: "https://github.com/dvaron2099/Get-Dressed"
)

ProjectTechnology.create(project_id: getdressed.id, technology_id: ruby.id)
ProjectTechnology.create(project_id: getdressed.id, technology_id: rails.id)
ProjectTechnology.create(project_id: getdressed.id, technology_id: javascript.id)
ProjectTechnology.create(project_id: getdressed.id, technology_id: html.id)
ProjectTechnology.create(project_id: getdressed.id, technology_id: css.id)
ProjectTechnology.create(project_id: getdressed.id, technology_id: git.id)
ProjectTechnology.create(project_id: getdressed.id, technology_id: github.id)
ProjectTechnology.create(project_id: getdressed.id, technology_id: sql.id)
ProjectTechnology.create(project_id: getdressed.id, technology_id: bootstrap.id)
ProjectTechnology.create(project_id: getdressed.id, technology_id: heroku.id)

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/GetDressed/getdressed_1.jpeg")
getdressed.photos.attach(io: URI.open(uploaded_image['url']), filename: "getdressed_1.jpeg", content_type: "image/jpeg")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/GetDressed/getdressed_2.jpeg")
getdressed.photos.attach(io: URI.open(uploaded_image['url']), filename: "getdressed_2.jpeg", content_type: "image/jpeg")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/GetDressed/getdressed_3.jpeg")
getdressed.photos.attach(io: URI.open(uploaded_image['url']), filename: "getdressed_3.jpeg", content_type: "image/jpeg")

puts ""
puts "Snake"
snake = Project.create(
  name: "Snake",
  description_es: "Este proyecto consiste en el famoso juego Snake, desarrollado utilizando la gema Ruby2D y con pruebas realizadas mediante la gema minitest.",
  description_en: "This project involves the well-known Snake game, developed using the Ruby2D gem and tested using the minitest gem.",
  repo: "https://github.com/dvaron2099/snake_ruby"
)

ProjectTechnology.create(project_id: snake.id, technology_id: ruby.id)
ProjectTechnology.create(project_id: snake.id, technology_id: git.id)
ProjectTechnology.create(project_id: snake.id, technology_id: github.id)

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/snake/snake_1.jpeg")
snake.photos.attach(io: URI.open(uploaded_image['url']), filename: "snake_1.jpeg", content_type: "image/jpeg")

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/snake/snake_2.jpeg")
snake.photos.attach(io: URI.open(uploaded_image['url']), filename: "snake_2.jpeg", content_type: "image/jpeg")

puts ""
puts "blogapi"
blogapi = Project.create(
  name: "blogapi",
  description_es: "Este proyecto consiste en la creación de una API y su posterior testing utilizando RSpec para Rails.",
  description_en: "This project involves the creation of an API and its subsequent testing using RSpec for Rails.",
  repo: "https://github.com/dvaron2099/blogapi"
)

ProjectTechnology.create(project_id: blogapi.id, technology_id: ruby.id)
ProjectTechnology.create(project_id: blogapi.id, technology_id: rails.id)
ProjectTechnology.create(project_id: blogapi.id, technology_id: git.id)
ProjectTechnology.create(project_id: blogapi.id, technology_id: github.id)

uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/varondavid/app/assets/images/blogapi/blogapi_1.jpeg")
blogapi.photos.attach(io: URI.open(uploaded_image['url']), filename: "blogapi_1.jpeg", content_type: "image/jpeg")
