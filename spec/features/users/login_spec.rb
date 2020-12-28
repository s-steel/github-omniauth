require 'rails_helper'

describe 'Log in' do
  describe 'When a user attempts to login' do
    it 'the user is redirected to login with github' do
      visit root_path
      click_link 'Sign in with Github'
      expect(current_path).to eq ('/auth/github/callback')
    end
  end
end
