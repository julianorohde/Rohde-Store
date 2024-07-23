# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { Faker::Game.title }
    description { Faker::Lorem.paragraph }
    price { Faker::Number.decimal(l_digits: rand(1..3), r_digits: 2) }
    productable { nil }
  end
end
