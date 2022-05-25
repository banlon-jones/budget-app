require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    User.destroy_all
    @user = assign(:user, User.create!(
      name: "Name",
    email: "name@gmail.com",
      password: "namens"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
