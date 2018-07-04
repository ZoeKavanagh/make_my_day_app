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
    expect(page).not_to have_content('No event matches your request, try again!')
  end

  scenario 'Message is displayed when no events match request' do
    visit '/'
    fill_in "date", with: '2018-07-31'
    select('Edinburgh', :from => 'location')
    select('5', :from => 'price_range')
    select('Active', :from => 'category')
    click_button 'Make My Day'
    expect(page).to have_content('No event matches your request. Try again!')
  end
end
