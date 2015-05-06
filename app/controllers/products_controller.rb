class ProductsController < ApplicationController

  def show
    product = Product.new params[:upc]
    render json: ProductSerializer.new(product).to_json
  end

end
