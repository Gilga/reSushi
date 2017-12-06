rspec.feature "Zutaten", :type => :feature do
  scenario "go to zutat" do
    visit " /zutats"

    #expect(page).to have_text("Reis")
    it { should have_selector("h1", text: 'Zutats') }
  end
end
