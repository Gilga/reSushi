rspec.feature "Rezepte", :type => :feature do
  scenario "go to Rezepte" do
    visit " /rezepts"

    #expect(page).to have_text("Reis")
    it { should have_selector("h1", text: 'Rezepte des reSushi:3001!') }
  end
end
