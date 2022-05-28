restaurant_name_array  = ["kaito","yodogawa","rails"]
food_name_array = ["pig","chicken","entree","aperitif","buffet","barbecue","Japanese food","rice ball","roasted rice ball","rice cake","tempura bowl","pork cutlet bowl"]
3.times do |n|
  restaurant = Restaurant.new(
    name: restaurant_name_array[n]+"のレストラン#{n}",
    fee: n*10+10,
    time_required: 10,
  )

  12.times do |m|
    restaurant.foods.build(
      name: "#{food_name_array[m]}_#{m}",
      price: m*200+10,
      description: "#{food_name_array[m]}_の説明文です。"
    )
  end
  restaurant.save!
end
