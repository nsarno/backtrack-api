require 'rails_helper'

RSpec.describe ScansController, type: :controller do

  describe 'POST #create' do
    it 'responds with success' do
      post :create
      expect(response.status).to eq(201)
    end
  end

end
