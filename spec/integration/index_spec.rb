require 'rails_helper'

RSpec.describe 'Index', type: :feature do
  describe 'index' do
    before(:each) do
      visit root_path
    end

    it 'shows the app name' do
      expect(page).to have_content('BUDGETZ')
    end

    it 'shows Measurement unit title' do
      expect(page).to have_content('Log In')
      expect(page).to have_content('Sign Up')
    end

    it 'shows Public Recipes link works' do
      click_on 'Log In'
      expect(page).to have_content('Log In')
      expect(page).to have_current_path new_user_session_path
    end

    it 'shows Public Recipes link works' do
      click_on 'Sign Up'
      expect(page).to have_content('Sign Up')
      expect(page).to have_current_path new_user_registration_path
    end

  end
end
