# frozen_string_literal: true

# spec/factories/system_requirements.rb
FactoryBot.define do
  factory :system_requirement do
    name { Faker::Commerce.product_name }
    operating_system { Faker::Computer.platform }
    storage { "#{Faker::Number.between(from: 128, to: 2048)} GB" }
    processor { Faker::Computer.stack }
    memory { "#{Faker::Number.between(from: 4, to: 64)} GB" }
    graphic_card { Faker::Computer.os }
  end
end
