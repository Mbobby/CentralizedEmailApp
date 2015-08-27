# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

carlos = User.create(first_name: 'Carlos', last_name: 'Bueno', username: "Carlos", email: 'carlos@email.com',
 password: 'Carlos1', password_confirmation: 'Carlos1')
freida = User.create(first_name: 'Frieda', last_name: 'Bueno', username: "Freida", email: 'freida@email.com',
 password: 'Freida1', password_confirmation: 'Freida1')
julian = User.create(first_name: 'Julian', last_name: 'Bueno', username: "Julian", email: 'julian@email.com',
 password: 'Julian1', password_confirmation: 'Julian1')
bobby = User.create(first_name: 'Bobby', last_name: 'Bobby', username: "BoBBy", email: 'BoBbY@email.com',
 password: 'bobby', password_confirmation: 'bobby')

email1 = Email.new(authorId: carlos.id, title: "Hello World 1", body: "This is first email from Carlos")
email2 = Email.new(authorId: freida.id, title: "Hello World 2", body: "This is first email from Freida")
email3 = Email.new(authorId: julian.id, title: "Hello World 3", body: "This is first email from Julian")
email4 = Email.new(authorId: bobby.id, title: "Hello World 3", body: "This is first email from Julian")

email1.users << freida
email1.users << julian
email1.save

email2.users << carlos
email2.users << julian
email2.users << bobby
email2.save


email3.users << carlos
email3.users << freida
email3.users << julian
email3.save

email4.users << carlos
email4.users << freida
email4.users << julian
email4.save