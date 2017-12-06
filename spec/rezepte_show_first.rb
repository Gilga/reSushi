rspec.feature "Rezepte", :type => :feature do
  scenario "go to Rezepte" do
    visit " /rezepts/1"

    expect(page).to have_text("Rezept:")

  end
end
