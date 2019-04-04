# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "start seed"

u1 = User.create(name: "MC", username: "mcmc", password: "", email: "", phone: 1, location: "" )
u2 = User.create(name: "Katie", username: "kp", password: "", email: "", phone: 1, location: "" )
u3 = User.create(name: "Sivan", username: "sa", password: "", email: "", phone: 1, location: "" )

r1 = Restaurant.create(name: "bakersfield", image_url: "", url: "", review_count: 5, rating: 10, categories: "", location: "")
r2 = Restaurant.create(name: "dandelion market", image_url: "", url: "", review_count: 5, rating: 10, categories: "", location: "")
r3 = Restaurant.create(name: "jennies icecream", image_url: "", url: "", review_count: 5, rating: 10, categories: "", location: "")

o1 = Offer.create(restaurant_id: 1, offer: "FREE TACOS", earn_month: "April", redeem_month: "May")
o2 = Offer.create(restaurant_id: 1, offer: "FREE QUESO", earn_month: "May", redeem_month: "June")
o3 = Offer.create(restaurant_id: 2, offer: "FREE APP", earn_month: "May", redeem_month: "June")
o4 = Offer.create(restaurant_id: 2, offer: "FREE WINE", earn_month: "May", redeem_month: "June")
o5 = Offer.create(restaurant_id: 2, offer: "FREE TUNA", earn_month: "May", redeem_month: "June")
o6 = Offer.create(restaurant_id: 3, offer: "FREE ICE CREAM", earn_month: "October", redeem_month: "November")

cu1 = CouponUser.create(offer_id: 1, user_id: 1, active: false, status: "inactive")
cu2 = CouponUser.create(offer_id: 1, user_id: 2, active: false, status: "inactive")
cu2 = CouponUser.create(offer_id: 1, user_id: 3, active: false, status: "inactive")
cu2 = CouponUser.create(offer_id: 2, user_id: 2, active: false, status: "inactive")
cu2 = CouponUser.create(offer_id: 3, user_id: 2, active: false, status: "inactive")
cu2 = CouponUser.create(offer_id: 4, user_id: 2, active: false, status: "inactive")
cu2 = CouponUser.create(offer_id: 6, user_id: 2, active: false, status: "inactive")
cu2 = CouponUser.create(offer_id: 5, user_id: 3, active: false, status: "inactive")


puts "end seed"
