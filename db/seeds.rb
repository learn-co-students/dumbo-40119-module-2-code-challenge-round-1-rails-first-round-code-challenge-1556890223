# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Stock.destroy_all
Vendor.destroy_all
Sweet.destroy_all

vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]

vendors.each do |vendor|
  Vendor.create(name: vendor)
end

sweets.each do |sweet|
  Sweet.create(name: sweet)
end

vs1 = Stock.create(vendor_id:Vendor.first.id,sweet_id:Sweet.first.id)
vs2 = Stock.create(vendor_id:Vendor.second.id,sweet_id:Sweet.second.id)
vs3 = Stock.create(vendor_id:Vendor.third.id,sweet_id:Sweet.third.id)
vs4 = Stock.create(vendor_id:Vendor.fourth.id,sweet_id:Sweet.fourth.id)
vs5 = Stock.create(vendor_id:Vendor.fifth.id,sweet_id:Sweet.fifth.id)
vs6 = Stock.create(vendor_id:Vendor.last.id,sweet_id:Sweet.last.id)

puts "Done"