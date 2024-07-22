# frozen_string_literal: true

# Represents the system requirements needed to run a game.
#
# This model is used to define the minimum and recommended requirements
# for games to run properly on a system. Each requirement includes details
# such as the operating system, storage, processor, memory, and graphic card.
# These attributes help ensure that games meet the necessary hardware and
# software specifications for optimal performance.
#
# == Schema Information
#
# Table name: system_requirements
#
#  id               :integer          not null, primary key
#  name             :string           not null
#  operating_system :string           not null
#  storage          :string           not null
#  processor        :string           not null
#  memory           :string           not null
#  graphic_card     :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class SystemRequirement < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :operating_system, presence: true
  validates :storage, presence: true
  validates :processor, presence: true
  validates :memory, presence: true
  validates :graphic_card, presence: true
end
