require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe 'GET #show' do
    it 'responds with success' do
      get :show, upc: '021000615261'
      expect(response.status).to eq(200)
    end
  end

end
