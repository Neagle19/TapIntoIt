# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
roman = User.create!(
  email: "romanvanloo@icloud.com",
  password: "test123",
  password_confirmation: "test123",
  first_name: "Roman",
  last_name: "Van Loo",
  username: "RomanTheLegend",
  location: "Putte",
  description: "Drink till you stink!",
  remote_photo_url: 'https://res.cloudinary.com/discwhk4f/image/upload/v1551781659/wx0p5qp2g5obwlw8evau.jpg')

user123 = User.create!(
  email: "tester123456@test.com",
  password: "test123",
  password_confirmation: "test123",
  first_name: "Dirk",
  last_name: "Van Loo",
  username: "DirkTheDrinker",
  location: "Brussels",
  description: "Waddup, I love beer!",
  role: 1,
  photo: 'https://res.cloudinary.com/discwhk4f/image/upload/v1551781659/wx0p5qp2g5obwlw8evau.jpg')

  #remote_photo_url: 'https://res.cloudinary.com/discwhk4f/image/upload/v1551781659/wx0p5qp2g5obwlw8evau.jpg')


brewery = Brewery.create([{ name: 'BrewDog', remote_photo_url: 'https://res.cloudinary.com/discwhk4f/image/upload/v1552399282/bangor_beer_co.png', address: "20, Putterie, 1000 Bruxelles", description: "No-nonsense chain bar specialising in the Scottish brewery's craft beers, with regular guest brews.
", email: "brusselsbar10@brewdog2.com", phone_number: "867-5309" }, { name: 'Brussels Beer Project', remote_photo_url: 'https://res.cloudinary.com/discwhk4f/image/upload/v1552399310/Battery_Steele.jpg', address: "20, Putterie, 1000 Bruxelles", description: "No-nonsense chain bar specialising in the Scottish brewery's craft beers, with regular guest brews.
", email: "brusselsbar@bbp.com", phone_number: "867-5309"}, { name: "Roman's Bar", remote_photo_url: 'https://res.cloudinary.com/discwhk4f/image/upload/v1552399333/Mason_s_Brewing.jpg', address: "20, Putterie, 1000 Bruxelles", description: "No-nonsense chain bar specialising in the Scottish brewery's craft beers, with regular guest brews.
", email: "brussels1@bre111wdog.com", phone_number: "867-5309" }])

url_stock_photo = [
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315324/426624_1200x1200.jpg",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315605/OSH-Low-Alcohol-Lifestyle-1.jpg",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315497/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzA3OC81MzQvb3JpZ2luYWwvYXNzb3J0ZWQtYmVlci1mbGlnaHQuanBlZw.jpg"
]

url_user_beer_photo = [
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315359/Cerverja_Brahma__28tamanhos_29.jpg",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315408/Mexican-beer.jpg",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315965/19-beer-and-microbrewery-tour.jpg",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315881/D0qvEOyW0AAckw5.jpg"
]

url_brewery_photo = [
"https://res.cloudinary.com/discwhk4f/image/upload/v1552399282/bangor_beer_co.png",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552399310/Battery_Steele.jpg",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552399333/Mason_s_Brewing.jpg",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552399339/Orono_Brewing.png",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552399352/Tumbledown.jpg"
]

review_contents = [
  "Well I did kinda liked this one!"
  "Wow what a taste!!!"
  "Only drinking this beer to make room in my fridge..."
]

10.times do |i|
  batch = Batch.new
  batch.bottled_date = "2#{i}/10/2018"
  batch.brewery = Brewery.all.sample
  batch.save!
  beer = Beer.new
  beer.name = "Maes #{i}"
  beer.kind = "pilsner"
  beer.alcohol_percentage = [5.2, 8.7, 6.5, 5].sample
  beer.remote_photo_url = url_stock_photo.sample
  beer.description = 'shit beer'
  beer.size = '25cl'
  beer.batch = Batch.last
  beer.brewery = beer.batch.brewery
  beer.save!
  review_brewery = ReviewBrewery.new
  review_brewery.content = "atmosphere is cool #{i}"
  review_brewery.rating = (0..5).to_a.sample
  review_brewery.posted = true
  review_brewery.brewery = Brewery.all.sample
  review_brewery.remote_photo_url = url_user_beer_photo.sample
  review_brewery.user = User.all.sample
  review_brewery.save!
  comment_brewery = CommentBrewery.new
  comment_brewery.content = "Hey cool- I was there last weekend #{i}!"
  comment_brewery.user = User.first
  comment_brewery.review_brewery = ReviewBrewery.last
  comment_brewery.save!
  review_beer = ReviewBeer.new
  review_beer.content = review_contents.sample
  review_beer.rating = (0..5).to_a.sample
  review_beer.posted = true
  review_beer.remote_photo_url = url_user_beer_photo.sample
  review_beer.beer = Beer.last
  review_beer.user = User.all.sample
  review_beer.save!
  comment_beer = CommentBeer.new
  comment_beer.content = "Yeah I'm not a fan of this beer either. #{i}"
  comment_beer.review_beer = ReviewBeer.last
  comment_beer.user = User.first
  comment_beer.save!
  comment_beer = CommentBeer.new
  comment_beer.content = "You lil drinker #{i}"
  comment_beer.review_beer = ReviewBeer.last
  comment_beer.user = User.first
  comment_beer.save!
end

