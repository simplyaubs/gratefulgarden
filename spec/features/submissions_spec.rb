require 'spec_helper'

feature 'Add submissions' do
  scenario 'User can see Welcome to the Grateful Garden' do
    visit '/'
    expect(page).to have_content 'Welcome to the Grateful Garden'
  end
end