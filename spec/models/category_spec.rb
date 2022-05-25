require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:example) do
    User.destroy_all
    Category.destroy_all
    Entity.destroy_all
    User.create(id: 1, name: 'Jones', email: 'email@dot.com', password: '321321')
    @category = Category.create(name: 'test', icon: 'test', user_id: 1)
  end

  it 'check if @food name is null' do
    @category.name = nil
    expect(@category).to_not be_valid
  end

  it 'check if model is valid ' do
    @category.name = 'Orange'
    expect(@category).to be_valid
  end
end
