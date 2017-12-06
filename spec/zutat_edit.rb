rspec.feature "zutat edit", :type => :feature do
  scenario "edit zutat" do
    visit " /zutats/1/edit"

    fill_in 'zutat_zutat_bemerkung', :with => "^-^ Test ^-^"
    click_button 'Update Zutat'

    it page.should have_selector("p#{notice}", text: 'Zutat was successfully updated.')
  end
end
