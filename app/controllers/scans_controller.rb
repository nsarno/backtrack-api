require 'factual'

class ScansController < ApplicationController

  def create
    factual = Factual.new(ENV['factual_api_key'], ENV['factual_api_secret'])
    head :created
  end

end
