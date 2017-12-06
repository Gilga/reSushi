require "rails_helper"

RSpec.feature "Zutaten", :type => :feature do
  scenario "go to zutat" do
	
		# first: create new
    visit "/ingredients/new"

    fill_in "Ingredient", :with => "Z1"
		fill_in "Ingredient name", :with => "My zutat"
		fill_in "Ingredient description", :with => "..."
		
    click_button "Create Ingredient"
		
		expect(page).to have_text("Ingredient was successfully created.")

		# second: visit
    visit "/ingredients/1"

    expect(page).to have_text("Ingredient:")
  end
end
