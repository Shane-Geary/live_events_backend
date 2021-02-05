# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

concert = Category.create(name: "Concert")
sport_event = Category.create(name: "Sport Event")
theatre = Category.create(name: "Theatre")

Ticket.create(title: "Evolution Tour", date: "March 3rd", main_act: "Excision", category_id: concert.id)