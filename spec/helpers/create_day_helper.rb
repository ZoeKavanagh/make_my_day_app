def create_group
  click_link 'Make Our Day'
  fill_in 'group_name', with: 'The Group'
  page.check('group_user_ids_1')
  click_button 'Create Group'
end

def complete_form
  fill_in "date", with: '2018-07-01'
  select('London', :from => 'location')
  select('Quirky', :from => 'category')
  select('2', :from => 'price_range')
  click_button 'Make Our Day'
end
