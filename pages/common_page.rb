require('selenium-webdriver')

class CommonPage
  include(RSpec::Matchers)

  def initialize(driver)
    @driver = driver
  end

  def go_to(destination_url)
    @driver.navigate.to(destination_url)
  end

  def check_url(expected_url)
    expect(@driver.current_url).to(eq(expected_url))
  end

end