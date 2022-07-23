require 'selenium-webdriver'

Before do
  if(ENV['Browser'] = 'chrome')
    web_driver = Selenium::WebDriver.for :chrome
    web_driver.manage.window.maximize
    web_driver.manage.timeouts.implicit_wait = 10
    WebDriver.set_webdriver(web_driver)
  end
end

After do |scenario|
  if scenario.failed?
    puts 'Scenario Failed'
  end
  WebDriver.close_browser
end