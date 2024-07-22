# frozen_string_literal: true

class CreateSystemRequirements < ActiveRecord::Migration[7.1]
  def change
    create_table :system_requirements do |t|
      t.string :name, null: false
      t.string :operating_system, null: false
      t.string :storage, null: false
      t.string :processor, null: false
      t.string :memory, null: false
      t.string :graphic_card, null: false

      t.timestamps
    end
  end
end
