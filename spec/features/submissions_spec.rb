require 'spec_helper'

feature 'Add submissions' do
  scenario 'User can see and add submissions to the garden' do
    visit '/'
    expect(page).to have_content 'Welcome to the Grateful Garden'
    fill_in 'submission[submission]', with: 'I\'m learning to program'
    click_on 'I\'M GRATEFUL'
    expect(page).to have_content 'I\'m learning to program'
  end
end