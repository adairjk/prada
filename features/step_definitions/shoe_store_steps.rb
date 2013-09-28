When /^I select a month$/ do
  @month = @prada.header.months.to_a.sample
  @prada.header.month_link(@month).click
end