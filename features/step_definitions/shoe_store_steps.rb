When /^I select a month$/ do
  @month = @prada.header.months.to_a.sample.text
  @prada.header.month_link(@month).click
end

Then /^I should see pricing information on each of the shoes$/ do
  @prada.search_results_page.shoe_rows.each { |row| row.td(:class => "shoe_price").text.should_not be_nil }
end

Then /^I should see an image displayed for each shoe?/ do
  @prada.search_results_page.shoe_rows.each { |row| row.image.should be_present }
end

Then /^I should see a description of each shoe for that month$/ do
  @prada.search_results_page.shoe_rows.each { |row| row.td(:class => "shoe_description").text.should_not be_nil }
end