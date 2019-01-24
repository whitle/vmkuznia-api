# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :name, :description, :price, :published, :in_stock, :category_id, :main_image, uploads: []

  form partial: 'form'

  show do
    render 'admin/products/uploads/main_image', product: resource
    default_main_content
    render 'admin/products/uploads/uploads', product: resource
    # attributes_table do
    #   row :name
    #   row :description
    #   row :image do |product|
    #   image_tag url_for(product.images)
    #   end
    # end
  end
end
