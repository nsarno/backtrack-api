require 'rails_helper'

RSpec.describe ProductsController, :type => :routing do
  it 'routes to #show' do
    expect(:get => '/products/021000615261').to route_to('products#show', upc: '021000615261')
  end    
end
