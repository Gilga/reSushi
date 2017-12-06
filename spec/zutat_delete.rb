require "rails_helper"

def dismiss_browser_dialog
  wait = Selenium::WebDriver::Wait.new(:timeout => 30)
  wait.until {
    begin
      page.driver.browser.switch_to.alert
      true
    rescue Selenium::WebDriver::Error::NoAlertPresentError
      false
    end
  }
  page.driver.browser.switch_to.alert.dismiss
end

def accept_browser_dialog
  wait = Selenium::WebDriver::Wait.new(:timeout => 30)
  wait.until {
    begin
      page.driver.browser.switch_to.alert
      true
    rescue Selenium::WebDriver::Error::NoAlertPresentError
      false
    end
  }
  page.driver.browser.switch_to.alert.accept
end

#Failure/Error: page.driver.browser.switch_to.alert
#NoMethodError:
#undefined method `switch_to' for #<Capybara::RackTest::Browser:0x4cb58e0>

RSpec.feature "zutat delete", :type => :feature do
  scenario "delete zutat" do
	
		# first: create new
    visit "/ingredients/new"

    fill_in "Ingredient", :with => "Z1"
		fill_in "Ingredient name", :with => "My zutat"
		fill_in "Ingredient description", :with => "..."
		
    click_button "Create Ingredient"
		
		expect(page).to have_text("Ingredient was successfully created.")
	
		# second: delete
    visit "/ingredients/"

    click_link 'Destroy'
		
		#expect(page.driver.browser.switch_to.alert.text).to eq "Are you sure?"
		#click_button 'Cancel'
		
		# fehler
		dismiss_browser_dialog

		expect(page).to have_text("My zutat")
		
		click_link 'Destroy'
		
		#expect(page.driver.browser.switch_to.alert.text).to eq "Are you sure?"
		#click_button 'Ok'
		
		# fehler
		accept_browser_dialog

		expect(page).not_to have_text("My zutat")
  end
end
