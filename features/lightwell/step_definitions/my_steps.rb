require 'selenium-webdriver'

Given(/^I navigate to page$/) do
  WebDriver.get_driver.get(WebDriver.get_page.url)
  WebDriver.get_driver.navigate
end

Given(/^I am on the "([^"]*)" page$/) do |page_name|
  WebDriver.set_page(page_name)
end

When(/^I click on the "([^"]*)"$/) do |element|
  WebDriver.find_page_element(element).click
end

Then(/^I see the "([^"]*)"$/) do |element|
  fail "#{element} element is not visible" unless WebDriver.find_page_element(element).displayed?
end