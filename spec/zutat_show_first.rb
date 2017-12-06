rspec.feature "Zutaten", :type => :feature do
  scenario "go to zutat" do
    visit " /zutats/1"

    expect(page).to have_text("Zutat name:")

  end
end
