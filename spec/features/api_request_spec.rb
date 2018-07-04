require 'rails_helper'

RSpec.feature 'API request', type: :feature do

  scenario 'User selects date 2018-07-01' do
    visit '/'
    fill_in "date", with: '2018-07-01'
    select('London', :from => 'location')
    select('Quirky', :from => 'category')
    select('2', :from => 'price_range')
    select('Quirky', :from => 'category')
    click_button 'Make My Day'
    expect(page).to have_content('Swingers')
  end
end
