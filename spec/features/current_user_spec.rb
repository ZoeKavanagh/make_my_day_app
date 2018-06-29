require 'rails_helper'

RSpec.feature 'Current user', type: :feature do
  scenario 'User is prompted to sign in' do
    visit '/'
    expect(page).to have_content('Sign in with Google')
  end

  # scenario 'User name is displayed after sign in' do
  #   visit '/'
  #   click_link 'Sign in with Google'
  #   fill_in 'Email or phone', with: 'gertrude.pondsworth@gmail.com'
  #   click_link 'Next'
  #   fill_in 'Enter your password', with: 'Gertrude1!'
  #   click_link 'Next'
  #   expect(page).to have_content('Signed in as Gertrude Pondsworth')
  # end
end
