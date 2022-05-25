require 'rails_helper'

RSpec.describe 'Transaction', type: :feature do
  describe 'transaction' do
    before(:each) do
      @user = User.create! name: 'jones', password: 'angel2000', email: 'jones@gmail.com'
      visit new_user_session_path
      fill_in 'Email', with: 'jones@gmail.com'
      fill_in 'Password', with: 'angel2000'
      click_button 'Log in'
      @category = Category.create(name: 'one', icon: 'grams', user_id: @user.id)
      @transaction = Entity.create(name: 'test', amount: 9, category_id: @category.id, user_id: @user.id)
      visit category_path(@category)
    end
    it 'shows the page title' do
      expect(page).to have_content('Transaction')
    end

    it 'shows Transactions' do
      expect(page).to have_content('Transactions')
    end

    it 'click add transaction link' do
      click_on 'Add transaction'
      expect(page).to have_content('New Transaction')
    end

    it 'click add category link' do
      click_on 'Add transaction'
      expect(page).to have_current_path new_entity_path
    end
  end
end
