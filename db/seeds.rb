# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(username:  "富安",
    email: "admin@example.jp",
    password:  "19990211",
    password_confirmation: "19990211",
    occupation: "サラリーマン",
    award: "ご自由にお使いください",
    admin: true)
