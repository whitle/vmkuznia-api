# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :in_stock
      t.boolean :published

      t.timestamps
    end
  end
end
