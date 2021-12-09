# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
restaurants = [
    {
        name: "renaldis",
        location: "lakeview",
        res_type: "bar",
        image: 'https://media.istockphoto.com/photos/modern-restaurant-interior-design-picture-id12111097191?k=20&m=12111097191&s=612x612&w=0&h=KiZX7NBZVCK9MlSh9BJ8hZNSJcTIMbNSSV2yusw2NmM='
    },
    {
        name: 'toco',
        location: 'wicker park',
        res_type: 'casual',
        image: 'https://www.gordonramsayrestaurants.com/assets/Uploads/_resampled/CroppedFocusedImage16001090100-100-Casual-6.jpg'
    },
    {
        name: 'atlantic',
        location: 'Edgartown',
        res_type: 'fine dining',
        image: 'https://i.ndtvimg.com/i/20110-10/restaurant_6210x7100_919998996109.jpg'
    }
]

restaurants.map do |res|
    Restaurant.find_or_create_by(name: res[:name]) do |r|
        r.name = res[:name]
        r.location = res[:location]
        r.res_type = res[:res_type]
        r.image = res[:image]
    puts("restaurant #{r[:name]} was created")
    end
end

reviews = [
    {
        restaurant_id: 1,
        mark: 7,
        content: "Good food, not very clean" 
    },
    {
        restaurant_id: 2,
        mark: 9,
        content: "Good food, service could be better" 
    },
    {
        restaurant_id: 7,
        mark: 10,
        content: "Great food!" 
    },
    {
        restaurant_id: 1,
        mark: 1,
        content: "Terrible experience" 
    },
    {
        restaurant_id: 2,
        mark: 10,
        content: "Excellent overall" 
    },
    {
        restaurant_id: 7,
        mark: 7,
        content: "so and so, for the money they should do better"
    }
    
]
reviews.map do |review|
    Review.find_or_create_by(restaurant_id: review[:restaurant_id], content: review[:content], mark: review[:mark]) do |r|
        r.restaurant_id = review[:restaurant_id]
        r.content = review[:content]
        r.mark = review[:mark]
        puts ("review for restorant  ")
    end
end

#{Restaurant.find_by(id: review[:restaurant_id]).name}

