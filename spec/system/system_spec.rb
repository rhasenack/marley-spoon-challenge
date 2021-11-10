require 'rails_helper'

RSpec.describe 'App' do
  before do
    driven_by(:rack_test)
  end

  it 'should show recipes at the root page' do
    visit root_path
    expect(page).to have_content 'Recipes'
    expect(page).to have_css '.recipe-card'
  end

  it 'goes to recipe details when each image is clicked' do
    visit root_path
    all('a').each do  |link|
      link.click
      expect(page).to have_css '.recipe-card'
      expect(page).to have_content 'back'
    end
  end
end
