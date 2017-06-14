# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#prevent duplication of data
if Resume.count == 0
    Resume.create([{name: 'Denis Bell', phone: '555-555-5555'},{name: 'Emanuel Brown', phone: '555-555-5555'}])
end