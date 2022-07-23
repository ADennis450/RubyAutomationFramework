require "selenium-webdriver"

class WebDriver
  attr_accessor :page, :web_driver

  def self.set_page(name)
    page_name = DataHelper.convert_name_to_page_object(name)
    @page = Object::const_get(page_name).new
  end

  def self.set_webdriver(web_driver)
    @web_driver = web_driver
  end

  def self.get_driver
    @web_driver
  end

  def self.get_page
    @page
  end

  def self.close_browser
    @web_driver.quit
  end

  def self.find_page_element(name)
    element_name = DataHelper.convert_name_to_element(name)
    @web_driver.find_element(:xpath => @page.public_send(element_name))
  end
end
