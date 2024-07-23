# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '#associations' do
    it { should belong_to(:productable) }
  end

  describe '#valid?' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
    it { should validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
    it { should validate_presence_of(:productable) }

    # Create a test to verify if the product is valid

    it 'is invalid without a name' do
      product = Product.new(name: nil)

      expect(product).to_not be_valid
      expect(product.errors[:name]).to include('não pode ficar em branco')
    end

    it 'is invalid without a description' do
      product = Product.new(description: nil)

      expect(product).to_not be_valid
      expect(product.errors[:description]).to include('não pode ficar em branco')
    end

    it 'is invalid without a price' do
      product = Product.new(price: nil)

      expect(product).to_not be_valid
      expect(product.errors[:price]).to include('não pode ficar em branco')
    end

    it 'is invalid with a negative price' do
      product = Product.new(price: -1)

      expect(product).to_not be_valid
      expect(product.errors[:price]).to include('deve ser maior ou igual a 0')
    end

    it 'is invalid without a productable association' do
      product = Product.new(productable: nil)

      expect(product).to_not be_valid
      expect(product.errors[:productable]).to include('não pode ficar em branco')
    end
  end
end
