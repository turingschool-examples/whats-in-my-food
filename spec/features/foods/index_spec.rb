require 'rails_helper'

RSpec.describe 'foods index' do
  it 'has the total number of items return from search' do
    visit root_path

    fill_in :q, with: 'sugar'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content(187431)
  end

  it 'has a list of ten foods that contain the ingredient from search' do
    visit root_path

    fill_in :q, with: 'sugar'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content('KEY LIME CHEESECAKE MIX')
    expect(page).to have_content('CREME BRULEE')
  end
  it 'has attrs for each food' do
    visit root_path

    fill_in :q, with: 'sugar'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
    within("#food-1637921") do
      expect(page).to have_content('KEY LIME CHEESECAKE MIX')
      expect(page).to have_content('816277011706')
      expect(page).to have_content('Phoenix Food LLC')
      expect(page).to have_content('POWDERED SUGAR (SUGAR, CORNSTARCH), BROWN SUGAR (SUGAR, CANE SYRUP), AND LIME FLAVORING.')
    end
  end
end
