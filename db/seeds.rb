# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Loan.destroy_all

File.open("db/smartWalletData.txt", "r") do |f|
  f.each_line do |line|
    name, amoung, date, description = line.chomp.split(";")
    Loan.create!(:name => name, :amoung => amoung, :date => date, :description => description, :user_id => 1)
  end
end