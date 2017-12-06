require "rails_helper"

RSpec.feature "zutat new", :type => :feature do
  scenario "create a new zutat" do
    visit "/ingredients/new"

    fill_in "Ingredient", :with => "Z1"
		fill_in "Ingredient name", :with => "My zutat"
		fill_in "Ingredient description", :with => "..."
		
    click_button "Create Ingredient"

    expect(page).to have_text("Ingredient was successfully created.")
  end
end