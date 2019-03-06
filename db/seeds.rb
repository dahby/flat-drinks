# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Maker.destroy_all
Drink.destroy_all
User.destroy_all

makers = [
  { name: "Seattle Bucha", location: "Seattle, WA" },
  { name: "Portland Beer Inc", location: "Portland, OR" },
  { name: "Jet City Wines", location: "Seattle, WA" },
  { name: "Cidertastic", location: "Bellevue, WA" },
  { name: "All the Tea", location: "Boise, ID" },
  { name: "Beer Beer Beer", location: "Phoenix, AZ" }
]

makers.each {|maker| Maker.create(maker)}

drinks = [
  { name: "Best Beer" },
  { name: "Just plain ol' water" },
  { name: "Concious Cola" },
  { name: "Whispy Wine" },
  { name: "Better Bourbon" },
  { name: "Candid Cider" },
  { name: "Intense IPA" },
  { name: "Tasty Tea" },
  { name: "Killer Kombucha" },
  { name: "Silly Soda" },
  { name: "Vicious Vodka" },
  { name: "Lucious Latte"}
]


# ---------------
# DRINK MAKERS:
# Once you set up your tables and associations the way you want them, you can
# uncomment the following method to associate drinks with a maker!
# Just uncomment line 47 and run `rake db:seed` again in your terminal.
# (******Note****** If you try to do this before you set up proper associations, it will error.)
# ---------------
# drinks = drinks.map {|drink| drink.merge({ maker_id: Maker.all.sample.id })}
# ---------------

drinks.each {|drink| Drink.create(drink)}

User.create(name: "Chris")
User.create(name: "David")
User.create(name: "Niky")