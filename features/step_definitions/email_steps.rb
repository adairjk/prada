When /^I sign up for email notifications$/ do
  @email = "adairjk@google.com"
  @prada.header.email.set @email
  @prada.header.email_submit.click
end

When /^I sign up for email notifications using an invalid email address$/ do
  @email = "invalid address"
  @prada.header.email.set @email
  @prada.header.email_submit.click
end

Then /^I should see the email sign up success message$/ do
  @prada.messages.success_message("Thanks! We will notify you of our new shoes at this email: #{@email}").should be_present
end

Then /^I should not see the email sign up succsess message$/ do
  @prada.messages.success_message("Thanks! We will notify you of our new shoes at this email: #{@email}".strip).should_not be_present
end