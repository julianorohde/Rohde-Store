# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  describe '#valid?' do
    it { should validate_presence_of(:name) }

    it 'is valid with valid attributes' do
      category = create(:category)

      expect(category).to be_valid
    end

    it 'is invalid without a name' do
      category = Category.new(name: nil)

      expect(category).to_not be_valid
    end

    it 'is invalid with a duplicate name' do
      category = create(:category)
      duplicate_category = Category.new(name: category.name)
      expect(duplicate_category).to_not be_valid
      expect(duplicate_category.errors[:name]).to include('já está em uso')
    end
  end
end
