Feature: Demo
  As a User,
  Google searching should work on all platforms

  @C001 @smokeTest @regression
  Scenario: Google Search - Appium
    Given I am on "http://www.google.com"
    When I search for "Cucumber"
    And select "Cucumber" in the search results
    Then I am presented with the "https://cucumber.io/" homepage

  @C002 @regression
  Scenario: Google Search - Ruby
    Given I am on "http://www.google.com"
    When I search for "ruby"
    And select "Ruby Programming Language" in the search results
    Then I am presented with the "https://www.ruby-lang.org/en/" homepage

  @C003 @smokeTest @regression
  Scenario: Google Search - Selenium
    Given I am on "http://www.google.com"
    When I search for "selenium"
    And select "Selenium - Web Browser Automation" in the search results
    Then I am presented with the "http://www.seleniumhq.org/" homepage

  @C004 @regression
  Scenario: Google Search - RubyMine
    Given I am on "http://www.google.com"
    When I search for "RubyMine"
    And select "JetBrains RubyMine" in the search results
    Then I am presented with the "https://www.jetbrains.com/ruby/" homepage