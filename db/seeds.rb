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
  role: 1,
  description: "Drink till you stink!",
  remote_photo_url: 'https://res.cloudinary.com/discwhk4f/image/upload/v1551781659/wx0p5qp2g5obwlw8evau.jpg')

shane = User.create!(
  email: "shane@gmail.com",
  password: "test123",
  password_confirmation: "test123",
  first_name: "Shane",
  last_name: "Neagle",
  username: "ShaneTheProblematic",
  location: "Leuven",
  role: 1,
  description: "Drinking wine in the train is okay!",
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


# brewery = Brewery.create([{ name: 'BrewDog', remote_photo_url: 'https://res.cloudinary.com/discwhk4f/image/upload/v1552399282/bangor_beer_co.png', address: "20, Putterie, 1000 Bruxelles", description: "No-nonsense chain bar specialising in the Scottish brewery's craft beers, with regular guest brews.
# ", email: "brusselsbar10@brewdog2.com", phone_number: "867-5309", user: user123 }, { name: 'Brussels Beer Project', remote_photo_url: 'https://res.cloudinary.com/discwhk4f/image/upload/v1552399310/Battery_Steele.jpg', address: "20, Putterie, 1000 Bruxelles", description: "No-nonsense chain bar specialising in the Scottish brewery's craft beers, with regular guest brews.
# ", email: "brusselsbar@bbp.com", phone_number: "867-5309", user: roman }, { name: "Roman's Bar", remote_photo_url: 'https://res.cloudinary.com/discwhk4f/image/upload/v1552399333/Mason_s_Brewing.jpg', address: "20, Putterie, 1000 Bruxelles", description: "No-nonsense chain bar specialising in the Scottish brewery's craft beers, with regular guest brews.
# ", email: "brussels1@bre111wdog.com", phone_number: "867-5309", user: user123 }])

# url_stock_photo = [
# "https://res.cloudinary.com/discwhk4f/image/upload/v1552315324/426624_1200x1200.jpg",
# "https://res.cloudinary.com/discwhk4f/image/upload/v1552315605/OSH-Low-Alcohol-Lifestyle-1.jpg",
# "https://res.cloudinary.com/discwhk4f/image/upload/v1552315497/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzA3OC81MzQvb3JpZ2luYWwvYXNzb3J0ZWQtYmVlci1mbGlnaHQuanBlZw.jpg"
# ]

# url_user_beer_photo = [
# "https://res.cloudinary.com/discwhk4f/image/upload/v1552315359/Cerverja_Brahma__28tamanhos_29.jpg",
# "https://res.cloudinary.com/discwhk4f/image/upload/v1552315408/Mexican-beer.jpg",
# "https://res.cloudinary.com/discwhk4f/image/upload/v1552315965/19-beer-and-microbrewery-tour.jpg",
# "https://res.cloudinary.com/discwhk4f/image/upload/v1552315881/D0qvEOyW0AAckw5.jpg"
# ]

# url_brewery_photo = [
# "https://res.cloudinary.com/discwhk4f/image/upload/v1552399282/bangor_beer_co.png",
# "https://res.cloudinary.com/discwhk4f/image/upload/v1552399310/Battery_Steele.jpg",
# "https://res.cloudinary.com/discwhk4f/image/upload/v1552399333/Mason_s_Brewing.jpg",
# "https://res.cloudinary.com/discwhk4f/image/upload/v1552399339/Orono_Brewing.png",
# "https://res.cloudinary.com/discwhk4f/image/upload/v1552399352/Tumbledown.jpg"
# ]

# review_contents = [
#   "Well I did kinda liked this one!",
#   "Wow what a taste!!!",
#   "Only drinking this beer to make room in my fridge..."
# ]

## Breweries from tasting ##

brussels_beer_project = Brewery.create!(
  name: "Brussels Beer Project",
  remote_photo_url: "https://res.cloudinary.com/discwhk4f/image/upload/v1552989356/BBP.jpg",
  website: "https://www.beerproject.be/en/",
  description: "The story of Brussels Beer Project is some years -not centuries- old. The project was born in 2013 by the action of two beer enthusiasts, Olivier & Sébastien. This time, no abbeys, we preferred Brussels : cosmopolitan, contemporary, vibrant. Our mission ? Wake Belgian beer up, dust it and get it out of middle-ages.",
  address: "Rue Antoine Dansaert 188, 1000 Brussels",
  email: "keepintouch@beerproject.be",
  phone_number: "02 502 28 56",
  user: shane
  )

lermitage = Brewery.create!(
  name: "L'ermitage Nano Brewery",
  remote_photo_url: "https://res.cloudinary.com/discwhk4f/image/upload/v1552989161/IMG_1533.jpg",
  website: "https://ermitagenanobrasserie.be/",
  description: "A lovely atmosphere where you can enjoy quality beers brewed in the heart of Europe- Brussels.",
  address: "24 Rue Lambert Crickx, 1070 Brussels",
  email: "info@ermitagenanobrasserie.be",
  phone_number: "+32 2 520 51 11",
  user: roman
  )

# Beers from tasting##

bloody_orange_ipa = Beer.create!(
  name: "Bloody Orange IPA",
  brewery: lermitage,
  kind: "IPA",
  size: "33cl",
  alcohol_percentage: 6.7,
  description: "Our Bloody Orange IPA recalls a time when ales shipped from England to India were highly hopped to preserve their distinct taste during the long journey. The result is a hop lover’s dream with a fruity aroma, set off by a dry malt middle, and long hop finish.",
  remote_photo_url: "https://res.cloudinary.com/discwhk4f/image/upload/v1552925136/IMG_1530.jpg"
  )

ipa_de_papa = Beer.create!(
  name: "IPA de Papa",
  brewery: lermitage,
  kind: "IPA",
  size: "33cl",
  alcohol_percentage: 4.5,
  description: "Cask; Regular.A perfectly balanced ale, characterised by its fresh hoppy taste and a clean bitter finish.",
  remote_photo_url: "https://res.cloudinary.com/discwhk4f/image/upload/v1552925132/IMG_1521.jpg"
  )

delta_ipa = Beer.create!(
  name: "Delta IPA",
  brewery: brussels_beer_project,
  kind: "IPA",
  size: "33cl",
  alcohol_percentage: "6.5",
  description: "Delta’s our 1st elected beer: an exotic view of Brussels, bitter and lively!",
  remote_photo_url: "https://res.cloudinary.com/discwhk4f/image/upload/v1552925139/IMG_1538.jpg"
  )

grosse_bertha = Beer.create!(
  name: "Grosse Bertha",
  brewery: brussels_beer_project,
  kind: "Belgian Hefeweizen",
  size: "33cl",
  alcohol_percentage: 7,
  description: "Grosse Bertha came to Brussels from Munich and fell in love with Mr. Tripel!",
  remote_photo_url: "https://res.cloudinary.com/discwhk4f/image/upload/v1552987191/Image_from_iOS_3.jpg"
  )

jungle_joy = Beer.create!(
  name: "Jungle Joy",
  brewery: brussels_beer_project,
  kind: "Passion & Mango Dubbel",
  size: "33cl",
  alcohol_percentage: 6.6,
  description: "Welcome to the tropics & its exuberance. Fully loaded on mango & passion fruits, she’s as gourmande as a beer can be!",
  remote_photo_url: "https://res.cloudinary.com/discwhk4f/image/upload/v1552925142/IMG_1549.jpg"
  )

baby_lone = Beer.create!(
  name: "Baby Lone",
  brewery: brussels_beer_project,
  kind: "Bread Bitter",
  size: "33cl",
  alcohol_percentage: 7,
  description: "Babylone travels back to the future - brewed with bread like in old times & fresh new world hops!",
  remote_photo_url: "https://res.cloudinary.com/discwhk4f/image/upload/v1552925141/IMG_1543.jpg"
  )

# batches from beer tastings #

batch1_bloody_orange_ipa = Batch.create!(
  bottled_date: "21/10/2018",
  brewery: lermitage,
  description: "Fruity love, packed into a bottle.",
  quantity: 58,
  beer: bloody_orange_ipa,
  brewingstart: "18/10/2018",
  stepone: "Milling the Grain",
  steponedescription: "Grain is crushed to extract fermentable sugars, producing a product called 'grist'.",
  steptwo: "Mash Conversion",
  steptwodescription: "Grist is mixed with heated water, producing 'mash'.",
  stepthree: "Lautering",
  stepthreedescription: "Grain husks are separated from the mash, producing 'wart'.",
  stepfour: "The boil",
  stepfourdescription: "Wort is boiled, followed by the adding of hops.",
  stepfive: "Wort Separation & Cooling",
  stepfivedescription: "Malt and hop particles are removed from the wort as the wort cools.",
  stepsix: "Primary fermentation",
  stepsixdescription: "Yeast is added to the wort to convert sugar into alcohol and to create both flavor and carbon dioxide.",
  stepseven: "Secondary Fermentation",
  stepsevendescription: "Beer reaches maximal maturity",
  ingredientone: "Water",
  ingredientonedesc: "Spa Natural Mineral Water. Origin: Belgium.",
  ingredienttwo: "Grain",
  ingredienttwodesc: "BESTMALZ Biscuit Malt. Origin: Germany.",
  ingredientthree: "Hops",
  ingredientthreedesc: "Citra Leaf Hops- features higher alpha acids and total oil contents with a low percentage of co-humulone. Origin: USA.",
  ingredientfour: "Yeast",
  ingredientfourdesc: "Danstar American West Coast Yeast.",
  brewer: "Johnny T"
  )

batch1_ipa_de_papa = Batch.create!(
  bottled_date: "21/10/2018",
  brewery: lermitage,
  description: "Fruity love, packed into a bottle.",
  quantity: 58,
  beer: ipa_de_papa,
  brewingstart: "18/10/2018",
  stepone: "Milling the Grain",
  steponedescription: "Grain is crushed to extract fermentable sugars, producing a product called 'grist'.",
  steptwo: "Mash Conversion",
  steptwodescription: "Grist is mixed with heated water, producing 'mash'.",
  stepthree: "Lautering",
  stepthreedescription: "Grain husks are separated from the mash, producing 'wart'.",
  stepfour: "The boil",
  stepfourdescription: "Wort is boiled, followed by the adding of hops.",
  stepfive: "Wort Separation & Cooling",
  stepfivedescription: "Malt and hop particles are removed from the wort as the wort cools.",
  stepsix: "Primary fermentation",
  stepsixdescription: "Yeast is added to the wort to convert sugar into alcohol and to create both flavor and carbon dioxide.",
  stepseven: "Secondary Fermentation",
  stepsevendescription: "Beer reaches maximal maturity",
  ingredientone: "Water",
  ingredientonedesc: "Spa Natural Mineral Water. Origin: Belgium.",
  ingredienttwo: "Grain",
  ingredienttwodesc: "BESTMALZ Biscuit Malt. Origin: Germany.",
  ingredientthree: "Hops",
  ingredientthreedesc: "Citra Leaf Hops- features higher alpha acids and total oil contents with a low percentage of co-humulone. Origin: USA.",
  ingredientfour: "Yeast",
  ingredientfourdesc: "Danstar American West Coast Yeast.",
  brewer: "Johnny T"
  )

batch1_delta_ipa = Batch.create!(
  bottled_date: "21/10/2018",
  brewery: brussels_beer_project,
  description: "Fruity love, packed into a bottle.",
  quantity: 58,
  beer: delta_ipa,
  brewingstart: "18/10/2018",
  stepone: "Milling the Grain",
  steponedescription: "Grain is crushed to extract fermentable sugars, producing a product called 'grist'.",
  steptwo: "Mash Conversion",
  steptwodescription: "Grist is mixed with heated water, producing 'mash'.",
  stepthree: "Lautering",
  stepthreedescription: "Grain husks are separated from the mash, producing 'wart'.",
  stepfour: "The boil",
  stepfourdescription: "Wort is boiled, followed by the adding of hops.",
  stepfive: "Wort Separation & Cooling",
  stepfivedescription: "Malt and hop particles are removed from the wort as the wort cools.",
  stepsix: "Primary fermentation",
  stepsixdescription: "Yeast is added to the wort to convert sugar into alcohol and to create both flavor and carbon dioxide.",
  stepseven: "Secondary Fermentation",
  stepsevendescription: "Beer reaches maximal maturity",
  ingredientone: "Water",
  ingredientonedesc: "Spa Natural Mineral Water. Origin: Belgium.",
  ingredienttwo: "Grain",
  ingredienttwodesc: "BESTMALZ Biscuit Malt. Origin: Germany.",
  ingredientthree: "Hops",
  ingredientthreedesc: "Citra Leaf Hops- features higher alpha acids and total oil contents with a low percentage of co-humulone. Origin: USA.",
  ingredientfour: "Yeast",
  ingredientfourdesc: "Danstar American West Coast Yeast.",
  brewer: "Johnny T"
  )

batch1_grosse_bertha = Batch.create!(
  bottled_date: "21/10/2018",
  brewery: brussels_beer_project,
  description: "Fruity love, packed into a bottle.",
  quantity: 58,
  beer: grosse_bertha,
  brewingstart: "18/10/2018",
  stepone: "Milling the Grain",
  steponedescription: "Grain is crushed to extract fermentable sugars, producing a product called 'grist'.",
  steptwo: "Mash Conversion",
  steptwodescription: "Grist is mixed with heated water, producing 'mash'.",
  stepthree: "Lautering",
  stepthreedescription: "Grain husks are separated from the mash, producing 'wart'.",
  stepfour: "The boil",
  stepfourdescription: "Wort is boiled, followed by the adding of hops.",
  stepfive: "Wort Separation & Cooling",
  stepfivedescription: "Malt and hop particles are removed from the wort as the wort cools.",
  stepsix: "Primary fermentation",
  stepsixdescription: "Yeast is added to the wort to convert sugar into alcohol and to create both flavor and carbon dioxide.",
  stepseven: "Secondary Fermentation",
  stepsevendescription: "Beer reaches maximal maturity",
  ingredientone: "Water",
  ingredientonedesc: "Spa Natural Mineral Water. Origin: Belgium.",
  ingredienttwo: "Grain",
  ingredienttwodesc: "BESTMALZ Biscuit Malt. Origin: Germany.",
  ingredientthree: "Hops",
  ingredientthreedesc: "Citra Leaf Hops- features higher alpha acids and total oil contents with a low percentage of co-humulone. Origin: USA.",
  ingredientfour: "Yeast",
  ingredientfourdesc: "Danstar American West Coast Yeast.",
  brewer: "Johnny T"
  )

batch1_jungle_joy = Batch.create!(
  bottled_date: "21/10/2018",
  brewery: brussels_beer_project,
  description: "Fruity love, packed into a bottle.",
  quantity: 58,
  beer: jungle_joy,
  brewingstart: "18/10/2018",
  stepone: "Milling the Grain",
  steponedescription: "Grain is crushed to extract fermentable sugars, producing a product called 'grist'.",
  steptwo: "Mash Conversion",
  steptwodescription: "Grist is mixed with heated water, producing 'mash'.",
  stepthree: "Lautering",
  stepthreedescription: "Grain husks are separated from the mash, producing 'wart'.",
  stepfour: "The boil",
  stepfourdescription: "Wort is boiled, followed by the adding of hops.",
  stepfive: "Wort Separation & Cooling",
  stepfivedescription: "Malt and hop particles are removed from the wort as the wort cools.",
  stepsix: "Primary fermentation",
  stepsixdescription: "Yeast is added to the wort to convert sugar into alcohol and to create both flavor and carbon dioxide.",
  stepseven: "Secondary Fermentation",
  stepsevendescription: "Beer reaches maximal maturity",
  ingredientone: "Water",
  ingredientonedesc: "Spa Natural Mineral Water. Origin: Belgium.",
  ingredienttwo: "Grain",
  ingredienttwodesc: "BESTMALZ Biscuit Malt. Origin: Germany.",
  ingredientthree: "Hops",
  ingredientthreedesc: "Citra Leaf Hops- features higher alpha acids and total oil contents with a low percentage of co-humulone. Origin: USA.",
  ingredientfour: "Yeast",
  ingredientfourdesc: "Danstar American West Coast Yeast.",
  brewer: "Johnny T"
  )

batch1_baby_lone = Batch.create!(
  bottled_date: "21/10/2018",
  brewery: brussels_beer_project,
  description: "Fruity love, packed into a bottle.",
  quantity: 58,
  beer: baby_lone,
  brewingstart: "18/10/2018",
  stepone: "Milling the Grain",
  steponedescription: "Grain is crushed to extract fermentable sugars, producing a product called 'grist'.",
  steptwo: "Mash Conversion",
  steptwodescription: "Grist is mixed with heated water, producing 'mash'.",
  stepthree: "Lautering",
  stepthreedescription: "Grain husks are separated from the mash, producing 'wart'.",
  stepfour: "The boil",
  stepfourdescription: "Wort is boiled, followed by the adding of hops.",
  stepfive: "Wort Separation & Cooling",
  stepfivedescription: "Malt and hop particles are removed from the wort as the wort cools.",
  stepsix: "Primary fermentation",
  stepsixdescription: "Yeast is added to the wort to convert sugar into alcohol and to create both flavor and carbon dioxide.",
  stepseven: "Secondary Fermentation",
  stepsevendescription: "Beer reaches maximal maturity",
  ingredientone: "Water",
  ingredientonedesc: "Spa Natural Mineral Water. Origin: Belgium.",
  ingredienttwo: "Grain",
  ingredienttwodesc: "BESTMALZ Biscuit Malt. Origin: Germany.",
  ingredientthree: "Hops",
  ingredientthreedesc: "Citra Leaf Hops- features higher alpha acids and total oil contents with a low percentage of co-humulone. Origin: USA.",
  ingredientfour: "Yeast",
  ingredientfourdesc: "Danstar American West Coast Yeast.",
  brewer: "Johnny T"
  )

# reviews from beer tastings #

review_bloody_orange_ipa = ReviewBatch.create!(
  content: "Soft pour, medium-low carbonation with a smooth hoppy taste followed by sweet orange tanginess. Foamy head with extremely light amber color. Initial taste is great, after taste is better. Orange tanginess really compliments the hoppy aromas and makes for an incredible beer.",
  rating: 4,
  batch: batch1_bloody_orange_ipa,
  user: shane
  )

review_ipa_de_papa = ReviewBatch.create!(
  content: "Aroma is the best side of this beer. You will find even hops there. Appearance and colour a bit like ordinary lager. Some sweetness and sour in taste, a bit of malts and no hops. Very flat in mouth, nothing special. Too low bitterness for IPA.
Aroma: 5/10 Appearance: 2/5 Taste: 4/10 Palate: 3/5 Overall: 7/20",
  rating: 2,
  batch: batch1_ipa_de_papa,
  user: shane
  )

review_delta_ipa = ReviewBatch.create!(
  content: "Light amber color, with an immediately smooth flow due to low carbonation. Mildly bitter flavor, was expecting much more from the hops. I’m a hoppy IPA guy, and this beer just didn’t do it for me.",
  rating: 2,
  batch: batch1_delta_ipa,
  user: roman
  )

review_grosse_bertha = ReviewBatch.create!(
  content: "I definitely want to support a Belgian Hefeweizen, and I do, but this beer didn’t knock my socks off. Very flat hefeweizen with unusually low carbonation. My thought is that for now, Belgium should let Germany stick to the Hefeweizens, and Belgium should do what Belgium does best: the tripels!",
  rating: 3,
  batch: batch1_grosse_bertha,
  user: roman
  )

revew_jungle_joy = ReviewBatch.create!(
  content: "Little darker amber color. Taste is a little fruity but not really my thing. The aftertaste tastes pretty strong.",
  rating: 4,
  batch: batch1_jungle_joy,
  user: roman
  )

review_baby_lone = ReviewBatch.create!(
  content: "Dark amber color. Smells funky, roasting and “uplifting”. It tastes strong, not my thing",
  rating: 3,
  batch: batch1_baby_lone,
  user: roman
  )



# 10.times do |i|
#   beer = Beer.new
#   beer.name = "Maes #{i}"
#   beer.kind = "pilsner"
#   beer.alcohol_percentage = [5.2, 8.7, 6.5, 5].sample
#   beer.remote_photo_url = url_stock_photo.sample
#   beer.description = 'shit beer'
#   beer.size = '25cl'
#   beer.brewery = Brewery.all.sample
#   beer.save!
# end

# 10.times do |i|
#   batch = Batch.new
#   batch.bottled_date = "2#{i}/10/2018"
#   batch.beer = Beer.all.sample
#   batch.brewery = Brewery.all.sample
#   batch.save!
#   review_brewery = ReviewBrewery.new
#   review_brewery.content = "atmosphere is cool #{i}"
#   review_brewery.rating = (0..5).to_a.sample
#   review_brewery.posted = true
#   review_brewery.brewery = Brewery.all.sample
#   review_brewery.remote_photo_url = url_user_beer_photo.sample
#   review_brewery.user = User.all.sample
#   review_brewery.save!
#   comment_brewery = CommentBrewery.new
#   comment_brewery.content = "Hey cool- I was there last weekend #{i}!"
#   comment_brewery.user = User.first
#   comment_brewery.review_brewery = ReviewBrewery.last
#   comment_brewery.save!
#   review_batch = ReviewBatch.new
#   review_batch.content = review_contents.sample
#   review_batch.rating = (0..5).to_a.sample
#   review_batch.posted = true
#   review_batch.batch = Batch.last
#   review_batch.user = User.all.sample
#   review_batch.save!
#   comment_batch = CommentBatch.new
#   comment_batch.content = "Yeah I'm not a fan of this batch either. #{i}"
#   comment_batch.review_batch = ReviewBatch.last
#   comment_batch.user = User.first
#   comment_batch.save!
#   comment_batch = CommentBatch.new
#   comment_batch.content = "You lil drinker #{i}"
#   comment_batch.review_batch = ReviewBatch.last
#   comment_batch.user = User.first
#   comment_batch.save!
# end

