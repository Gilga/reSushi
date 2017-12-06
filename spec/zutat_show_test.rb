require "rails_helper"

RSpec.feature "Zutaten", :type => :feature do
  scenario "go to zutat" do
    visit "/ingredients/"

    expect(page).to have_text("Ingredients")
    #it { should have_selector("h1", text: 'Ingredients') }
  end
end
