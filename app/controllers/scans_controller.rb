require 'factual'

class ScansController < ApplicationController

  def create
    factual = Factual.new Figaro.env.factual_api_key, Figaro.env.factual_api_secret
    head :created
  end

end
