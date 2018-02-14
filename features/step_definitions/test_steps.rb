
#Navigate to google.co.uk
Given(/^I am on the Google homepage$/) do
  visit 'https://www.google.co.uk/'
end

#Write "yahoo" search text to the search bar
When(/^I will search for "([fusion_builder_container hundred_percent="yes" overflow="visible"][fusion_builder_row][fusion_builder_column type="1_1" background_position="left top" background_color="" border_size="" border_color="" border_style="solid" spacing="yes" background_image="" background_repeat="no-repeat" padding="" margin_top="0px" margin_bottom="0px" class="" id="" animation_type="" animation_speed="0.3" animation_direction="left" hide_on_mobile="no" center_content="no" min_height="none"][^"]*)"$/) do |searchText|
  fill_in 'lst-ib', :with => searchText
end

#In the current page, we should see "yahoo" text
Then(/^I should see "([^"]*)"$/) do |expectedText|
  page.should have_content(expectedText)
end

#Click the yahoo link
Then(/^I will click the yahoo link$/) do
  click_link('Yahoo')
end

#Wait 10 seconds statically to see yahoo website
Then(/^I will wait for (\d+) seconds$/) do |waitTime|
  sleep (waitTime.to_i)
end