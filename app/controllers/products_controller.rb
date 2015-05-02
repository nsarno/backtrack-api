require 'factual'

class ProductsController < ApplicationController

  def show
    factual = Factual.new Figaro.env.factual_api_key, Figaro.env.factual_api_secret
    render json: factual.table('products-cpg').filters('upc' => params[:upc]).first
  end

end
