# frozen_string_literal: true

# == Schema Information
#
# Table name: product_images
#
#  id               :bigint(8)        not null, primary key
#  description      :text
#  height           :integer
#  name             :string
#  primary          :boolean
#  published        :boolean
#  shown_in_gallery :boolean
#  width            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  product_id       :integer
#

class ProductImage < ApplicationRecord
  belongs_to :product
end
