# frozen_string_literal: true

ActiveAdmin.register ProductImage do
  permit_params :product_id, :name, :description, :primary, :published, :shown_in_gallery, :height, :width, images: []

  # form partial: 'form'
end
