restaurants_array = ["tom house","kaito house", "yodogawa restaurant"];
foods_array = ["meal","rice ball", "rice cake","mixed rice","broiled eel over rice", "miso soup","rolled omelet","tofu", "rchikuwa fish sausage","fish ball","natto roll", "sliced raw fish"];

3.times do |n|
  restaurant = Restaurant.new(
    name: "#{restaurants_array[n]}レストラン_#{n}",
    fee: 19*n+13,
    time_required: 10,
  )

  12.times do |m|
    restaurant.foods.build(
      name: "#{foods_array[m]}_#{m}",
      price: 24*m+18,
      description: "#{foods_array[m]}_#{m}の説明文です。"
    )
  end

  restaurant.save!
end
