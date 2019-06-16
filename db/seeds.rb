# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database"

User.destroy_all
Regist.destroy_all

puts 'Creating fake users...'

admin = User.new(
  email: 'admin@gmail.com',
  password: "123456",
)
admin.save!

puts 'Finished creating fake users!'

puts 'Creating fake regists'

regist1 = Regist.new(user: admin, caixa: 0, five: 1, ten: 1, twenty: 1, fifty: 1, hund: 1, two_hund: 1, five_hund: 1, coin: 1, reforco: 1, payment: 1, caixa_value: 1)
regist1.save!

regist2 = Regist.new(user: admin, caixa: 1, five: 1, ten: 1, twenty: 1, fifty: 1, hund: 1, two_hund: 1, five_hund: 1, coin: 1, reforco: 1, payment: 1, caixa_value: 1)
regist2.save!

regist3 = Regist.new(user: admin, caixa: 2, five: 1, ten: 1, twenty: 1, fifty: 1, hund: 1, two_hund: 1, five_hund: 1, coin: 1, reforco: 1, payment: 1, caixa_value: 1)
regist3.save!

puts 'Finished creating fake regists'
