# frozen_string_literal: true

# Represents a category of games in the system.
#
# This model is used to categorize games into different types such as
# action, adventure, RPG, FPS, sports, and so on. Each category has a
# unique name that describes the type of games it represents.
#
# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
