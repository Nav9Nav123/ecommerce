# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.create!(email: 'admin@example.com',
             password: 'password',
             password_confirmation: 'password',
             admin: true)

Category.create!(heading: 'Pizza', body: "It's so good dough!", display: true)
Category.create!(heading: 'Pasta', body)

25.times do |i|
    Product.create!(
        name: "Pizza",
        description: "Lorem ipsum bbq chicken ",
        price: 11.99,
        catering: true
    )
end
