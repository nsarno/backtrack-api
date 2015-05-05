require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe 'GET #show' do
    context 'with valid upc' do
      it 'responds with success' do
        get :show, upc: '021000615261'
        expect(response.status).to eq(200)
      end
    end

    context 'with invalid upc' do
      it 'responds with not found' do
        get :show, upc: '000000000000'
        expect(response.status).to eq(404)
      end
    end
  end

end
