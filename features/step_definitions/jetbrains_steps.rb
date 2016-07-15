Given(/^I navigate to Google\.com$/) do
  @browser = Selenium::WebDriver.for :firefox
  @browser.get('http://www.google.com')
end

Then(/^I should be on the Google\.com search page$/) do
  expect(@browser.page_source.include?('google')).to be_truthy
  @browser.quit
end

