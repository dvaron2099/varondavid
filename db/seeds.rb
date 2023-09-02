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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693622226/my%20web/David_Varon_b33ofn.jpg")
user.photo.attach(io: file, filename: "David_Varon_b33ofn.jpg" , content_type: "image/jpg")

puts "Usuario creado con éxito"

puts "Creando Tecnologias"

puts "Ruby"
ruby = Technology.create(name: "Ruby")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693622563/my%20web/Technologies/ruby_vol7iz.png")
ruby.photo.attach(io: file, filename: "ruby_vol7iz.png" , content_type: "image/png")

puts "Ruby on Rails"
rails = Technology.create(name: "Ruby on Rails")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693628740/my%20web/Technologies/rails-removebg-preview_dti2pm.png")
rails.photo.attach(io: file, filename: "rails-removebg-preview_dti2pm.png" , content_type: "image/png")

puts "JavaScript"
javascript = Technology.create(name: "JavaScript")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693622560/my%20web/Technologies/javascript_wz0nud.png")
javascript.photo.attach(io: file, filename: "javascript_wz0nud.png" , content_type: "image/png")

puts "HTML"
html = Technology.create(name: "HTML")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693622558/my%20web/Technologies/html_mxjinc.png")
html.photo.attach(io: file, filename: "html_mxjinc.png" , content_type: "image/png")

puts "CSS"
css = Technology.create(name: "CSS")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693622553/my%20web/Technologies/css_vjylgs.png")
css.photo.attach(io: file, filename: "css_vjylgs.png" , content_type: "image/png")

puts "Sass"
sass = Technology.create(name: "Sass")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693622564/my%20web/Technologies/sass_uhvzf6.png")
sass.photo.attach(io: file, filename: "sass_uhvzf6.png" , content_type: "image/png")

puts "Git"
git = Technology.create(name: "Git")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693622555/my%20web/Technologies/git_arhfwe.png")
git.photo.attach(io: file, filename: "sass_uhvzf6.png" , content_type: "image/png")

puts "GitHub"
github = Technology.create(name: "GitHub")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693622557/my%20web/Technologies/github_joo3pd.png")
github.photo.attach(io: file, filename: "github_joo3pd.png" , content_type: "image/png")

puts "Python"
python = Technology.create(name: "Python")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693622562/my%20web/Technologies/python_z3326t.png")
python.photo.attach(io: file, filename: "python_z3326t.png" , content_type: "image/png")

puts "Bootstrap"
bootstrap = Technology.create(name: "Bootstrap")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693622553/my%20web/Technologies/bootstrap_iuiq5n.png")
bootstrap.photo.attach(io: file, filename: "bootstrap_iuiq5n.png" , content_type: "image/png")

puts "SQL"
sql = Technology.create(name: "SQL")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693622565/my%20web/Technologies/sql_vbxxvb.png")
sql.photo.attach(io: file, filename: "sql_vbxxvb.png" , content_type: "image/png")

puts "Node.js"
node = Technology.create(name: "Node.js")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693622561/my%20web/Technologies/node_p9vxtq.png")
node.photo.attach(io: file, filename: "node_p9vxtq.png" , content_type: "image/png")

puts "Heroku"
heroku = Technology.create(name: "Heroku")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693622558/my%20web/Technologies/heroku_pbwmmy.png")
heroku.photo.attach(io: file, filename: "heroku_pbwmmy.png" , content_type: "image/png")

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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624645/my%20web/Projects/eventik/eventik_1_vbtcv0.jpg")
eventik.photos.attach(io: file, filename: "eventik_1_vbtcv0.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624647/my%20web/Projects/eventik/eventik_2_c8kq7u.jpg")
eventik.photos.attach(io: file, filename: "eventik_2_c8kq7u.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624649/my%20web/Projects/eventik/eventik_3_s3b6pw.jpg")
eventik.photos.attach(io: file, filename: "eventik_3_s3b6pw.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624650/my%20web/Projects/eventik/eventik_4_gvsgum.jpg")
eventik.photos.attach(io: file, filename: "eventik_4_gvsgum.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624652/my%20web/Projects/eventik/eventik_5_wuvobb.jpg")
eventik.photos.attach(io: file, filename: "eventik_5_wuvobb.jpg" , content_type: "image/jpg")

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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624641/my%20web/Projects/tendencias/tendencias_1_x7kapw.jpg")
tendencias.photos.attach(io: file, filename: "tendencias_1_x7kapw.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624643/my%20web/Projects/tendencias/tendencias_2_bpzqtf.jpg")
tendencias.photos.attach(io: file, filename: "tendencias_2_bpzqtf.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624665/my%20web/Projects/tendencias/tendencias_3_brhbf5.jpg")
tendencias.photos.attach(io: file, filename: "tendencias_3_brhbf5.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624663/my%20web/Projects/tendencias/tendencias_4_ydcflf.jpg")
tendencias.photos.attach(io: file, filename: "tendencias_4_ydcflf.jpg" , content_type: "image/jpg")

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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624654/my%20web/Projects/getdressed/getdressed_1_fge2ct.jpg")
getdressed.photos.attach(io: file, filename: "getdressed_1_fge2ct.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624658/my%20web/Projects/getdressed/getdressed_2_kqe2pk.jpg")
getdressed.photos.attach(io: file, filename: "getdressed_2_kqe2pk.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624660/my%20web/Projects/getdressed/getdressed_3_l8vnpv.jpg")
getdressed.photos.attach(io: file, filename: "getdressed_3_l8vnpv.jpg" , content_type: "image/jpg")

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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624637/my%20web/Projects/snake/snake_1_n1av0j.jpg")
snake.photos.attach(io: file, filename: "snake_1_n1av0j.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624639/my%20web/Projects/snake/snake_2_wpgug3.jpg")
snake.photos.attach(io: file, filename: "snake_2_wpgug3.jpg" , content_type: "image/jpg")

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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1693624617/my%20web/Projects/blogapi/blogapi_1_wyzqxm.jpg")
blogapi.photos.attach(io: file, filename: "blogapi_1_wyzqxm.jpg" , content_type: "image/jpg")

puts 'Seed finalizada'
