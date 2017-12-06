rspec.feature "Rezepte", :type => :feature do
  scenario "delete Rezepte" do
    visit " /rezepts/"


    click('Destroy')

    it page.should have_selector("a", text: 'Are you sure?')

    click_button('Abbrechen')
  end
end
