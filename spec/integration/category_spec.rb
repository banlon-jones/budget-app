require 'rails_helper'

RSpec.describe 'Category', type: :feature do
  describe 'Category' do
    before(:each) do
      @user = User.create! name: 'jones', password: 'angel2000', email: 'jones@gmail.com'
      visit new_user_session_path
      fill_in 'Email', with: 'jones@gmail.com'
      fill_in 'Password', with: 'angel2000'
      click_button 'Log in'
      @category = Category.create(name: 'one', icon: 'grams')
      visit categories_path
    end
    it 'shows the page title' do
      expect(page).to have_content('Home')
    end

    it 'shows add category' do
      expect(page).to have_content('add category')
    end

    it 'click add category link' do
      click_on 'add category'
      expect(page).to have_content('New category')
    end

    it 'click add category link' do
      click_on 'add category'
      expect(page).to have_current_path new_category_path
    end
  end
end
