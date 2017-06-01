# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.new
u1.email = "l@l.com"
u1.password = "12341234"
u1.first_name = "Leanne"
u1.username = "leanne"
u1.save

u2 = User.new
u2.email = "a@a.com"
u2.password = "12341234"
u2.first_name = "Alice"
u2.username = "alice"
u2.save

u3 = User.new
u3.email = "m@m.com"
u3.password = "12341234"
u3.first_name = "Mark"
u3.username = "mark"
u3.save

puts "#{User.count} users in the database"

MealTime.destroy_all

mt1 = MealTime.new
mt1.time = "Breakfast"
mt1.save

mt2 = MealTime.new
mt2.time = "Morning Snack"
mt2.save

mt3 = MealTime.new
mt3.time = "Lunch"
mt3.save

mt4 = MealTime.new
mt4.time = "Afternoon Snack"
mt4.save

mt5 = MealTime.new
mt5.time = "Dinner"
mt5.save

mt6 = MealTime.new
mt6.time = "Post-Dinner Snack"
mt6.save

puts "#{MealTime.count} meal times in the database"

Meal.destroy_all

m1 = Meal.new
m1.name = "Chicken Piccata"
m1.image = "http://cdn-img.health.com/sites/default/files/styles/2000x2000/public/styles/main/public/sb10066792a-001.jpg?itok=MadjifYD"
m1.user = u1
m1.save

m2 = Meal.new
m2.name = "Chocolate Overnight Oats"
m2.image = "http://cdn-img.health.com/sites/default/files/styles/2000x2000/public/styles/main/public/sb10066792a-001.jpg?itok=MadjifYD"
m2.user = u1
m2.save

m3 = Meal.new
m3.name = "Buffalo Chicken Meatballs"
m3.image = "http://cdn-img.health.com/sites/default/files/styles/2000x2000/public/styles/main/public/sb10066792a-001.jpg?itok=MadjifYD"
m3.user = u2
m3.save

m4 = Meal.new
m4.name = "Zoodles with Turkey"
m4.image = "http://cdn-img.health.com/sites/default/files/styles/2000x2000/public/styles/main/public/sb10066792a-001.jpg?itok=MadjifYD"
m4.user = u1
m4.save

m5 = Meal.new
m5.name = "Almond Crusted Chicken with Cherry Tomatoes"
m5.image = "http://cdn-img.health.com/sites/default/files/styles/2000x2000/public/styles/main/public/sb10066792a-001.jpg?itok=MadjifYD"
m5.user = u2
m5.save

m6 = Meal.new
m6.name = "Ham and Swiss Omelette"
m6.image = "http://cdn-img.health.com/sites/default/files/styles/2000x2000/public/styles/main/public/sb10066792a-001.jpg?itok=MadjifYD"
m6.user = u2
m6.save

puts "#{Meal.count} meals in the database"

#Plans

d1 = Date.new(2017,5,31)

d2 = Date.new(2017,5,31)

d3 = Date.new(2017,5,31)

d4 = Date.new(2017,5,31)

d5 = Date.new(2017,5,31)

d6 = Date.new(2017,5,31)

puts "#{Date.count} dates in the database"
