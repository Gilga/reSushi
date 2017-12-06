rspec.feature "Rezepte", :type => :feature do
  scenario "edit Rezepte" do
    visit " /rezepts/1/edit"

    fill_in 'rezept_rezept_bemerkung', :with => "^-^ Test ^-^"
    click_button 'Update Rezept'

    it page.should have_selector("p#{notice}", text: 'Rezept was successfully updated.')
  end
end
