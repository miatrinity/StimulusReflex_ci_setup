require 'application_system_test_case'

module RailsNewIo
  class StimulusReflexTest < ApplicationSystemTestCase
    test 'StimulusReflex is Enabled' do
      visit verify_index_path

      increment_link = find(:xpath, "//a[contains(.,'Click me to increment the number:')]")

      3.times do
        sleep 0.05
        increment_link.click
      end

      assert_selector 'a', text: 'Click me to increment the number: 3'
    end
  end
end
