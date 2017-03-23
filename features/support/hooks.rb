Before do |scenario|

  @driver = self.get_driver
  @driver.manage.timeouts.implicit_wait = 5

end

After do |scenario|

  if(scenario.failed?)
  # TODO: take screenshots
  end

  @driver.quit

end