# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id          :bigint(8)        not null, primary key
#  description :text
#  in_stock    :boolean
#  name        :string
#  price       :integer
#  published   :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#

class Product < ApplicationRecord
  belongs_to :category

  has_one_attached :main_image
  has_many_attached :uploads
end
