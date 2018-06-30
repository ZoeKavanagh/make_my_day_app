require 'rails_helper'

RSpec.feature 'Current user', type: :feature do
  scenario 'User is prompted to sign in' do
    visit '/'
    expect(page).to have_content('Sign in with Google')
  end
end
