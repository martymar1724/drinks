# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.create([{email:'test@gmail.com'}, { password_digest: '123' }])
Group.create([{ name: 'Group 1'}])
Service.create([{ login_name: 'hellomartinclausen@gmail.com'}, {login_password: '123'}, { url: 'www.hotmail.com'}])