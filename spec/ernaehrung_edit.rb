rspec.feature "ernaehrung edit", :type => :feature do
  scenario "edit ernaehrung" do
    visit " /ernaehrungs/1/edit"

    fill_in 'ernaehrung_ernaehrung_bemerkung', :with => "^-^ Test ^-^"
    click_button 'Update Ernaehrung'

    it page.should have_selector("p#{notice}", text: 'Ernaehrung was successfully updated.')
  end
end
