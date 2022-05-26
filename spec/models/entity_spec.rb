require 'rails_helper'

RSpec.describe Entity, type: :model do
  before(:example) do
    User.destroy_all
    Category.destroy_all
    Entity.destroy_all
    User.create(id: 1, name: 'Jones', email: 'email@dot.com', password: '321321')
    @category = Category.create(name: 'test', icon: 'test')
    @entity = Entity.create(name: 'test1', amount: 3, author_id: 1, category_id: @category.id)
  end

  it 'check if @food name is null' do
    @entity.name = nil
    expect(@entity).to_not be_valid
  end

  it 'check if model is valid ' do
    @entity.name = 'Orange'
    expect(@entity).to be_valid
  end
end
