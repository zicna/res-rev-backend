puts "📃 Seeding data..."


restaurants = [
    {
        name: "renaldis",
        description: '',
        location: "lakeview",
        res_type: "bar",
        image: 'https://www.renaldispizza.com/wp-content/uploads/2018/08/renaldis-8595-logo-full-1024x683.jpg'
    },
    {
        name: 'Mi Tocaya Antojería',
        description: "Few chefs share the talent and drive that Diana Dávila exhibits while showcasing a dazzling display of small Mexican dishes in Logan Square. Dávila isn’t shy about risks; she isn’t pandering to the typical American diner. This isn’t a place to fill up on chips and salsa with a pitcher of margaritas; Dávila left her previous job after owners tried to force those expectations. That’s not to say there’s not a taste of the familiar with a stellar steak burrito and fried oyster tacos. But customers should dive into unique items like peanut butter rabanos and tlacoyo, the latter which represents Dávila’s obsession with pre-Hispanic Mexico.",
        location: 'Chicago, IL',
        res_type: 'casual dining',
        image: 'https://image.shutterstock.com/image-photo/mexican-food-many-dishes-cuisine-260nw-1539082802.jpg'
    },
    {
        name: 'atlantic',
        description: 'Atlantic Fish & Chophouse is very excited to open once again for the 2021 Season. We will be serving lunch and dinner as well as take out beginning April 1st! Just note, we do not take reservations.',
        location: 'Edgartown, MA',
        res_type: 'fine dining',
        image: 'https://s3.amazonaws.com/bucket2.rpmrestaurants.com/wp-content/uploads/RPM_Steak_Chicago_Private_Dining_Room.jpg',
    },
    {
        name: 'RPM',
        description: "Located in Chicago's River North neighborhood, RPM Steak is an updated take on the classic steakhouse and features a contemporary, chef-driven menu, an award-winning wine list and a well-curated craft cocktail program.",
        location: 'Chicago, IL',
        res_type: 'fine dining',
        image: 'https://s3.amazonaws.com/bucket2.rpmrestaurants.com/wp-content/uploads/RPM_Steak_Chicago_Private_Dining_Room.jpg'
    },
    {
        name: 'Paradise Pub',
        description: '',
        location: 'Des Plaines, IL',
        res_type: 'fast food',
        image: 'https://s3-media0.fl.yelpcdn.com/bphoto/8AnsXktxOK_A2Vf_xaNCrQ/o.jpg'
    },
    {
        name: 'Short Fuse Brewing Company',
        description: '',
        location: 'Schiller Park, IL',
        res_type: 'casual dining',
        image: 'https://s3-media0.fl.yelpcdn.com/bphoto/Og6n0mpIRQJlGBvtsHdAmA/o.jpg'
    },
    {
        name: 'Smoque BBQ',
        description: 'With two smokers to prep meaty St. Louis-style and baby-back ribs, tender brisket, apple-and-oak-smoked pulled pork, and more, this destination on the Northwest Side neighborhood of Irving Park delivers barbecue in the style of Kansas City and Memphis. Last summer, owner Barry Sorkin converted his parking lot into a patio covered with a tent.',
        location: 'Chicago, IL',
        res_type: 'casual dining',
        image: 'https://cdn.vox-cdn.com/uploads/chorus_image/image/62582355/upload.0.0.0.0.0.jpg'
    },
    {
        name: 'Honey Butter Fried Chicken',
        description: 'A perennial North Side favorite, Honey Butter Fried Chicken comes from a pair of talented chefs who threw underground dinner parties. These crisp and skinless pieces of meat come with the restaurant’s signature honey butter. But beyond the food, Christine Cikowksi and Josh Kulp are committed to improving restaurant working conditions and have championed a business model where employees receive health care benefits. That explains prices that are higher than the average counter service joint, but HBFC reports strong worker retention, which is a rarity in the industry.',
        location: 'Chicago, IL',
        res_type: 'casual dining',
        image: 'https://cdn.vox-cdn.com/uploads/chorus_image/image/62582357/HBFC_Meal.0.0.0.jpg'
    },
    {
        name: "Pat's Pizza and Ristorante",
        description: 'Chicago thin-crust pizza is having a moment, with the city rebelling over the notion that this is only a deep-dish town. (Settle down deep-dish fans, the thick slices are still awesome.) Pat’s Pizza in Lakeview has a storied history in popularizing tavern-style pies. This family-owned spot sports some of the crispiest, thinnest pizzas around. Pat’s uses its own sausage blend for their pizza, which also helps set this place apart. Available for carryout, delivery, patio, and indoor dining.',
        location: 'Chicago, IL',
        res_type: 'casual dining',
        image: 'https://cdn.vox-cdn.com/uploads/chorus_image/image/69083755/50317166956_dd2c3a0d33_h.0.jpg'
    }

]

restaurants.map do |res|
    Restaurant.find_or_create_by(name: res[:name]) do |r|
        r.name = res[:name]
        r.location = res[:location]
        r.description = res[:description]
        r.res_type = res[:res_type]
        r.image = res[:image]
    puts("restaurant #{r[:name]} was created")
    end
end

reviews = [
    {
        restaurant_id: 1,
        mark: 2,
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dictum aliquet tempor. Curabitur laoreet arcu et ex tempor gravida. Maecenas posuere at metus vitae lacinia. Donec vehicula luctus sem, quis volutpat justo pretium nec. Sed ultricies, diam et fermentum dictum, libero enim ullamcorper arcu, eget tempus ligula nisi ut tortor." 
    },
    {
        restaurant_id: 1,
        mark: 10,
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dictum aliquet tempor. Curabitur laoreet arcu et ex tempor gravida. Maecenas posuere at metus vitae lacinia. Donec vehicula luctus sem, quis volutpat justo pretium nec. Sed ultricies, diam et fermentum dictum, libero enim ullamcorper arcu, eget tempus ligula nisi ut tortor." 
    },
    {
        restaurant_id: 1,
        mark: 3,
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dictum aliquet tempor. Curabitur laoreet arcu et ex tempor gravida. Maecenas posuere at metus vitae lacinia. Donec vehicula luctus sem, quis volutpat justo pretium nec. Sed ultricies, diam et fermentum dictum, libero enim ullamcorper arcu, eget tempus ligula nisi ut tortor.!" 
    },
    {
        restaurant_id: 1,
        mark: 5,
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dictum aliquet tempor. Curabitur laoreet arcu et ex tempor gravida. Maecenas posuere at metus vitae lacinia. Donec vehicula luctus sem, quis volutpat justo pretium nec. Sed ultricies, diam et fermentum dictum, libero enim ullamcorper arcu, eget tempus ligula nisi ut tortor." 
    },
    {
        restaurant_id: 2,
        mark: 10,
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dictum aliquet tempor. Curabitur laoreet arcu et ex tempor gravida. Maecenas posuere at metus vitae lacinia. Donec vehicula luctus sem, quis volutpat justo pretium nec. Sed ultricies, diam et fermentum dictum, libero enim ullamcorper arcu, eget tempus ligula nisi ut tortor." 
    },
    {
        restaurant_id: 7,
        mark: 7,
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dictum aliquet tempor. Curabitur laoreet arcu et ex tempor gravida. Maecenas posuere at metus vitae lacinia. Donec vehicula luctus sem, quis volutpat justo pretium nec. Sed ultricies, diam et fermentum dictum, libero enim ullamcorper arcu, eget tempus ligula nisi ut tortor."
    },
    {
        restaurant_id: 3,
        mark: 7,
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dictum aliquet tempor. Curabitur laoreet arcu et ex tempor gravida. Maecenas posuere at metus vitae lacinia. Donec vehicula luctus sem, quis volutpat justo pretium nec. Sed ultricies, diam et fermentum dictum, libero enim ullamcorper arcu, eget tempus ligula nisi ut tortor." 
    },
    {
        restaurant_id: 3,
        mark: 9,
        content: "Good food, service could be better" 
    },
    {
        restaurant_id: 3,
        mark: 10,
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dictum aliquet tempor. Curabitur laoreet arcu et ex tempor gravida. Maecenas posuere at metus vitae lacinia. Donec vehicula luctus sem, quis volutpat justo pretium nec. Sed ultricies, diam et fermentum dictum, libero enim ullamcorper arcu, eget tempus ligula nisi ut tortor." 
    },
    {
        restaurant_id: 3,
        mark: 1,
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dictum aliquet tempor. Curabitur laoreet arcu et ex tempor gravida. Maecenas posuere at metus vitae lacinia. Donec vehicula luctus sem, quis volutpat justo pretium nec. Sed ultricies, diam et fermentum dictum, libero enim ullamcorper arcu, eget tempus ligula nisi ut tortor." 
    },
    {
        restaurant_id: 3,
        mark: 10,
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dictum aliquet tempor. Curabitur laoreet arcu et ex tempor gravida. Maecenas posuere at metus vitae lacinia. Donec vehicula luctus sem, quis volutpat justo pretium nec. Sed ultricies, diam et fermentum dictum, libero enim ullamcorper arcu, eget tempus ligula nisi ut tortor." 
    },
    {
        restaurant_id: 3,
        mark: 7,
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dictum aliquet tempor. Curabitur laoreet arcu et ex tempor gravida. Maecenas posuere at metus vitae lacinia. Donec vehicula luctus sem, quis volutpat justo pretium nec. Sed ultricies, diam et fermentum dictum, libero enim ullamcorper arcu, eget tempus ligula nisi ut tortor."
    }
    
]
# reviews.map do |review|
#     Review.find_or_create_by(restaurant_id: review[:restaurant_id], content: review[:content], mark: review[:mark]) do |r|
#         r.restaurant_id = review[:restaurant_id]
#         r.content = review[:content]
#         r.mark = review[:mark]
#         puts ("review for restorant  ")
#     end
# end
# ! *********************************************************************************
# ! RANDOM NUMBERS IN RUBY
# rand()
# * => random float number in range [0.0 - 1.0]

# rand(5)
# * rand(n), n is integer
# * => random integer number in range [0, n)

# rand(1..5)
# * rand(x..y), x,y are integers
# * => generate random number in range from x(included) to  y (not included)

# rand(1...10)
# * rand(x...y), x,y are integers
# * => generate random integer number in range from x(included) to  y (included)
# ! *********************************************************************************


res_count = Restaurant.all.length
review_count = 0

(res_count * 6 ).times do
    Review.create(
        restaurant_id: rand_res_id = rand(1...res_count),
        mark: rand(1...10),
        content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dictum aliquet tempor. Curabitur laoreet arcu et ex tempor gravida. Maecenas posuere at metus vitae lacinia. Donec vehicula luctus sem, quis volutpat justo pretium nec.'
    )
end

puts "✅ Done seeding"



