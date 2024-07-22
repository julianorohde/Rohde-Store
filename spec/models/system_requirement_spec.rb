# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SystemRequirement, type: :model do
  describe '#valid?' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:operating_system) }
    it { should validate_presence_of(:storage) }
    it { should validate_presence_of(:processor) }
    it { should validate_presence_of(:memory) }
    it { should validate_presence_of(:graphic_card) }

    it 'is valid with valid attributes' do
      system_requirement = create(:system_requirement)

      expect(system_requirement).to be_valid
    end

    it 'is invalid without a name' do
      system_requirement = SystemRequirement.new(name: nil)

      expect(system_requirement).to_not be_valid
      expect(system_requirement.errors[:name]).to include('não pode ficar em branco')
    end

    it 'is invalid without an operating system' do
      system_requirement = SystemRequirement.new(operating_system: nil)

      expect(system_requirement).to_not be_valid
      expect(system_requirement.errors[:operating_system]).to include('não pode ficar em branco')
    end

    it 'is invalid without storage' do
      system_requirement = SystemRequirement.new(storage: nil)

      expect(system_requirement).to_not be_valid
      expect(system_requirement.errors[:storage]).to include('não pode ficar em branco')
    end

    it 'is invalid without a processor' do
      system_requirement = SystemRequirement.new(processor: nil)

      expect(system_requirement).to_not be_valid
      expect(system_requirement.errors[:processor]).to include('não pode ficar em branco')
    end

    it 'is invalid without memory' do
      system_requirement = SystemRequirement.new(memory: nil)

      expect(system_requirement).to_not be_valid
      expect(system_requirement.errors[:memory]).to include('não pode ficar em branco')
    end

    it 'is invalid without a graphic card' do
      system_requirement = SystemRequirement.new(graphic_card: nil)

      expect(system_requirement).to_not be_valid
      expect(system_requirement.errors[:graphic_card]).to include('não pode ficar em branco')
    end

    it 'is invalid with a duplicate name' do
      system_requirement = create(:system_requirement)
      duplicate_system_requirement = SystemRequirement.new(name: system_requirement.name)

      expect(duplicate_system_requirement).to_not be_valid
      expect(duplicate_system_requirement.errors[:name]).to include('já está em uso')
    end
  end
end
