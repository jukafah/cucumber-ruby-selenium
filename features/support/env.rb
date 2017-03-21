require('selenium-webdriver')
require('rspec/expectations')

# TODO: Move away from global variables
$driver = Selenium::WebDriver.for(:chrome)
$driver.manage.timeouts.implicit_wait = 5

module CustomWorld

  def common_page
    CommonPage.new($driver)
  end

  def google_page
    GooglePage.new($driver)
  end

end

World(CustomWorld)