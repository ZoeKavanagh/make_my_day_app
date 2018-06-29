require 'rails_helper'

RSpec.feature 'API request', type: :feature do

  scenario 'User selects date 2018-07-01' do
    visit '/'
    fill_in "date", with: '2018-07-01'
    fill_in "location", with: 'London'
    fill_in "price_range", with: '2'
    click_button 'Make your day'
    expect(page).to have_content('Swingers')
  end
end
