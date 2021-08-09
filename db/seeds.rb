# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

["Prepaid", "COD"].each do |pm|
  PaymentMode.find_or_create_by(name: pm)
end

[{"Regular" => 10}, {"Speed Post" => 20}].each do |s|
  Service.find_or_create_by(name: s.keys[0], cost_per_kg: s.values[0])
end

["Sent", "In-transit", "Delivered"].each do |status|
  Status.find_or_create_by(name: status)
end
