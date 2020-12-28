require 'rails_helper'

describe 'Welcome Page' do
  describe 'When a user visits the root path they will be on the welcome page' do
    it 'has link to login' do
      visit '/'
      expect(page).to have_link('Sign in with Github')
    end
  end
end
