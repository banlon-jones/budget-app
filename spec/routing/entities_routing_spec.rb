require 'rails_helper'

RSpec.describe EntitiesController, type: :routing do
  describe 'routing' do
    it 'routes to #new' do
      expect(get: '/entities/new').to route_to('entities#new')
    end

    it 'routes to #create' do
      expect(post: '/entities').to route_to('entities#create')
    end
  end
end
