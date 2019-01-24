# frozen_string_literal: true

class UploadsController < ApiController
  def destroy
    @product_id = params[:product_id]
    @upload_id = params[:id]
    Product.find_by(id: @product_id).uploads.find_by(id: @upload_id).purge
    redirect_to edit_admin_product_path(@product_id)
  end
end
