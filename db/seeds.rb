# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times {
  article = Article.new(
    title:    Faker::Company.name,
    content:  Faker::Quotes::Shakespeare.hamlet_quote + Faker::Quotes::Shakespeare.as_you_like_it_quote,
    url:      Faker::Internet.url,
    author:   Faker::Name.name,
    rating: rand(0..5)
    )
  article.save!
}
