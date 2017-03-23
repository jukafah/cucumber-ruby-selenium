require('selenium-webdriver')
require('rspec/expectations')

module CustomWorld

  # def driver
  #   @driver ||= Selenium::WebDriver.for(:chrome)
  # end

  def get_driver
    # driver
    @driver ||= Selenium::WebDriver.for(:chrome)
  end

  def common_page
    CommonPage.new(@driver)
  end

  def google_page
    GooglePage.new(@driver)
  end

end

World(CustomWorld)