require 'rails_helper'

RSpec.describe 'index', type: :request do
  describe '/root' do
    before(:each) do
      get '/'
    end

    it 'GET "/" request redirect correct response' do
      expect(response).to have_http_status(:ok)
    end
  end
end
