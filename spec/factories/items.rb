FactoryBot.define do
  factory :item do
    product_name {Faker::Lorem.sentence}
    prices {3000}
    product_description {Faker::Lorem.sentence}
    category_id {3}
    product_id {3}
    shippingcharge_id {3}
    days_to_ship_id {2}
    shipping_area_id {2}
    association :user 

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/tset.png'), filename: 'tset.png')
    end
  end
end
