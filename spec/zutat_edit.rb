require "rails_helper"

RSpec.feature "zutat edit", :type => :feature do
  scenario "edit zutat" do
	
		# first: create new
    visit "/ingredients/new"

    fill_in "Ingredient", :with => "Z1"
		fill_in "Ingredient name", :with => "My zutat"
		fill_in "Ingredient description", :with => "..."
		
    click_button "Create Ingredient"
		
		expect(page).to have_text("Ingredient was successfully created.")
	
		# second: edit
    visit "/ingredients/1/edit"
		
		fill_in "Ingredient description", :with => "^-^ Test ^-^"

    click_button 'Update Ingredient'

		expect(page).to have_text("Ingredient was successfully updated.")
    #it page.should have_selector("p#{notice}", text: 'Ingredient was successfully updated.')
  end
end
