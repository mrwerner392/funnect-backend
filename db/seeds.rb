# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

matt = User.create(first_name: 'Matt', username: 'matt18', password: '18', age: 27, gender: 'Male', bio: 'I made this', college: 'Williams College', occupation: 'Software Engineer')
