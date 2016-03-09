# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


g1 = Group.create(name: "Gruppe 1", description: "My new cool group")
g2 = Group.create(name: "Gruppe 2", description: "My new cool group")
g3 = Group.create(name: "Gruppe 3", description: "My new cool group")
g4 = Group.create(name: "Gruppe 4", description: "My new cool group")

Service.create(user_login: "Martin", login_password: "test@gmail.com", name: "Netflix", group_id: g1.id)
Service.create(user_login: "Ann", login_password: "test1@gmail.com", name: "Hulu", group_id: g1.id)
Service.create(user_login: "Marco", login_password: "test2@gmail.com", name: "Spotify", group_id: g2.id)
Service.create(user_login: "Steffen", login_password: "test3@gmail.com", name: "HBO", group_id: g2.id)

mateo = User.create(name: 'Mateo',  email: 'test1@gmail.com', password: '1234', password_confirmation: '1234')
martin = User.create(name: 'Martin', email: 'test2@gmail.com', password: '1234', password_confirmation: '1234')
ann = User.create(name: 'Ann', email: 'test3@email.com', password: '1234', password_confirmation: '1234')
marco = User.create(name: 'Marco',  email: 'marco@email.com', password: 'marco', password_confirmation: 'marco')
