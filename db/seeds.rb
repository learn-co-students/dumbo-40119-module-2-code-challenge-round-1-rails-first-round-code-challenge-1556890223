# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all


v1 = Vendor.create(name: "Insomnia Cookies")
v2 = Vendor.create(name: "Cookies Cream")
v3 = Vendor.create(name: "Carvel")
v4 = Vendor.create(name: "Gregory's Coffee")
v5 = Vendor.create(name: "Duane Park Patisserie")
v6 = Vendor.create(name: "Tribeca Treats")


s1 = Sweet.create(name: "Chocolate Chip Cookie")
s2 = Sweet.create(name: "Chocolate Chunk Cookie")
s3 = Sweet.create(name: "M&Ms Cookie")
s4 = Sweet.create(name: "White Chocolate Cookie")
s5 = Sweet.create(name: "Brownie")
s6 = Sweet.create(name: "Peanut Butter Icecream Cake")


puts "done"
