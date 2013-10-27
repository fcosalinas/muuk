# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
user1 = User.create(first_name: 'Sebastián', last_name:'Lewin', email: 'slewinr@gmail.com', birth_date: '1987-04-21', city:'Santiago', country: 'Chile', address: 'Cardenal Newman 667', gender:'Female')
user2 = User.create(first_name: 'María Victoria', last_name: 'Kash', email: 'mariapuppe@deutsch.de', birth_date: '1993-11-22', city: 'München', country:'Deutschland', address: 'Ja Ja 666', gender: 'Unknown')