class ProductsController < ApplicationController

  def show

    if factual_product.nil?
      head :not_found
    else
      render json: factual_product
    end
  end

end
