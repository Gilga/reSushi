rspec.feature "zutat edit", :type => :feature do
  scenario "edit zutat" do
    visit " /zutats/"


    click('Destroy')

    it page.should have_selector("a", text: 'Are you sure?')

    click_button('Abbrechen')

  end
end
