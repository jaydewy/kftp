# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# create default User ****CHANGE PASSWORD WHEN DEPLOYED TO PRODUCTION****
User.create(email: "admin@example.com", password: "admin", confirmed_at: Time.current)

Event.create(name: "Sample Event", start_date: Date.current + 1.day, end_date: Date.current + 2.days, active: true)

SiteType.create(name: "Regular")

Fee.create(name: "Sample Fee", amount: 10.00, site_type_id: 1, event_id: 1)

Lot.create(name: "Sample Lot", site_type_id: 1)

Camper.create(last_name: "Testerson", first_name: "Test", email: "camper@example.com")