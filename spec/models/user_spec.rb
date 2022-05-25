require 'rails_helper'

RSpec.describe User, type: :model do
  before(:example) do
    User.destroy_all
    @subject = User.create(name: 'Jones', email: 'email@dot.com', password: '321321')
  end
  it 'check if model is valid ' do
    @subject.name = 'kim'
    @subject.email = 'kim@gmail.com'
    @subject.password = '123456789'
    expect(@subject).to be_valid
  end

  it 'check if model is valid ' do
    @subject.name = 'kim'
    expect(@subject).to be_valid
  end

  it 'check if subject name is null' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
