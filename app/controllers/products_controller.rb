# frozen_string_literal: true

class ProductsController < ApiController
  def index
    render json: Product.all.map { |product| product_hash(product) }.to_json
  end

  private

  def product_hash(product)
    {
      id: product.id,
      name: product.name,
      category: product.category.name,
      description: product.description,
      price: product.price,
      in_stock: product.in_stock,
      published: product.published,
      main_image: rails_blob_path(product.main_image),
      uploads: product.uploads.map { |upload| rails_blob_path(upload) }
    }
  end
end
