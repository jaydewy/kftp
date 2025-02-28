# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# # create default event
# ae = Event.create(name: "Test Fair", start_date: "2024/09/01", end_date: "2024/09/03", active: true)

# # create discounts
# Discount.create(name: "No Discount")
# Discount.create(name: "Friend of the Fair", amount: 1)

# # create extras
# Extra.create(name: "Adult Weekend", charge: 40, event: ae)
# Extra.create(name: "Adult Daily", charge: 15, event: ae)
# Extra.create(name: "Parking Daily", charge: 10, event: ae)

# # create payment methods
# PaymentMethod.create(name: "Cash")
# PaymentMethod.create(name: "Debit")
# PaymentMethod.create(name: "Cheque")
# PaymentMethod.create(name: "Money Order")
# PaymentMethod.create(name: "Interac e-transfer")

# # create site types
# st_reg = SiteType.create(name: "Regular")
# st_ove = SiteType.create(name: "Oversize")
# st_sma = SiteType.create(name: "Small")
# st_hal = SiteType.create(name: "Half")

# # create fees (for lots)
# fee_reg = Fee.create(name: "Regular", amount: 150, event: ae, site_type: st_reg)

# # create all lots for Kinmount Fair, as of August 23rd 2022
# Lot.create(name: "1", site_type: st_reg)
# Lot.create(name: "2", site_type: st_reg)
# Lot.create(name: "3", site_type: st_reg)
# Lot.create(name: "4", site_type: st_reg)
# Lot.create(name: "5", site_type: st_reg)
# Lot.create(name: "6", site_type: st_reg)
# Lot.create(name: "7", site_type: st_reg)
# Lot.create(name: "8", site_type: st_ove)
# Lot.create(name: "9", site_type: st_reg)

# create default User ****CHANGE PASSWORD WHEN DEPLOYED TO PRODUCTION****
User.create(email: "admin@example.com", password: "admin", confirmed_at: Time.current)