class GooglePage < CommonPage

  def initialize(driver)
    @driver = driver
  end

  def perform_search(search_text)
    search_box.send_keys(search_text)
    search_box.send_keys(:enter)

    search_results
  end

  def select_result(expected_link)

    search_results.each do |result|
      if(result.text.include?(expected_link))
        puts("clicking result: #{result.text}")
        result.click
        break
      end
    end

  end

  def search_box
    @driver.find_element(css: '#lst-ib')
  end

  def search_results
    @driver.find_elements(css: '#ires .g .r a')
  end

end