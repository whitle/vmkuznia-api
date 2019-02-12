# frozen_string_literal: true

class CreateProductImages < ActiveRecord::Migration[5.2]
  def change
    create_table :product_images do |t|
      t.integer :product_id
      t.string :name
      t.text :description
      t.boolean :primary
      t.boolean :published
      t.boolean :shown_in_gallery
      t.integer :height
      t.integer :width

      t.timestamps
    end
  end
end
