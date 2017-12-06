rspec.feature "ernaehrung show test", :type => :feature do
  scenario "go to ernaherung" do
    visit " /ernaehrungs"

    #expect(page).to have_text("Reis")
    it { should have_selector("h1", text: 'Ernaehrungs') }
  end
end
