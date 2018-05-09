# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all

cat1 = Cat.create!(name: 'franklin',color: 'Orange', birthdate: Date.today, sex: 'M', description: 'franklin the male orange cat was born today' )
cat2 = Cat.create!(name: 'olivia',color: 'Black', birthdate: Date.today-1, sex: 'F', description: 'Olivia is sarcastic but loving' )
