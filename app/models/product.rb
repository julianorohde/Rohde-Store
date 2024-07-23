# frozen_string_literal: true

# Represents a product in the system, which can be associated with different types of items.
#
# This model is used to define various products that the system can handle, such as games, t-shirts,
# mugs, and other merchandise related to the universe of the application. The model is polymorphic,
# allowing for flexibility to associate products with different types of entities in the future.
#
# The product includes attributes such as:
# - name: The name of the product.
# - description: A detailed description of the product.
# - price: The price of the product.
# - productable: A polymorphic association that allows the product to be associated with different
#   types of entities, such as games or other merchandise items.
#
# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  name             :string           not null
#  description      :text             not null
#  price            :decimal(10, 2)   not null
#  productable_id   :integer          not null
#  productable_type :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Product < ApplicationRecord
  belongs_to :productable, polymorphic: true

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :productable, presence: true
end
