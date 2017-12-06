rspec.feature "ernaehrung show test", :type => :feature do
  scenario "go to ernaherung" do
    visit " /ernaehrungs/1"

    expect(page).to have_text(">Ernaehrung bez:")

  end
end
