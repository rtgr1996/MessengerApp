# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username:"user1",password:"user1")
User.create(username:"user2",password:"user2")
User.create(username:"user3",password:"user3")
User.create(username:"user4",password:"user4")

Message.create(body:"hello everybody",user_id:1)

Message.create(body:"hey new guy",user_id:2)
Message.create(body:"hello all",user_id:3)