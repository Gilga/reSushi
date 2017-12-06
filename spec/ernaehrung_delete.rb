rspec.feature "ernaehrung delete", :type => :feature do
  scenario "delete ernaehrung" do
    visit " /ernaehrungs/"


    click('Destroy')

    it page.should have_selector("a", text: 'Are you sure?')
    clickButton('Abbrechen')

  end
end
