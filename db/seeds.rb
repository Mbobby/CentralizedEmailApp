# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

carlos = User.create(first_name: 'Carlos', last_name: 'Bueno', email: 'carlos@email.com',
 password: 'Carlos1', password_confirmation: 'Carlos1')
freida = User.create(first_name: 'Frieda', last_name: 'Bueno', email: 'freida@email.com',
 password: 'Freida1', password_confirmation: 'Freida1')
julian = User.create(first_name: 'Julian', last_name: 'Bueno', email: 'julian@email.com',
 password: 'Julian1', password_confirmation: 'Julian1')

email1 = Email.new(authorId: 1, title: "Hello World 1", body: "This is first email from Carlos")
email2 = Email.create(authorId: 2, title: "Hello World 2", body: "This is first email from Freida")
email3 = Email.create(authorId: 3, title: "Hello World 3", body: "This is first email from Julian")

email1.users << carlos
email1.users << freida
email1.users << julian

email1.save
