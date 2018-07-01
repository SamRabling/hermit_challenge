# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genres = Genre.create!([
    {name:"Drawing", description:"Art created using dry materials like graphite and charcoal"},
    {name:"Photography", description:"Art created using camerias or light capturing devices"},
    {name:"Fashion", description:"Art created using fabric or unusual materials like plastic"},
    {name:"Graphic Design", description:"Art created using digital tools like Photoshop or Illustrator"},
    {name:"Painting", description:"Art created using physical materials like acrylic or watercolors"},
    {name:"Scuplture", description:"Art created using 3D physical materials like metal or clay"}
])

users = User.create!([
    {name:"Bender", email:"bender@planetexpress.com", password:"asdasdasd"},
    {name:"Fry", email:"fry@planetexpress.com", password:"asdasdasd"}

])