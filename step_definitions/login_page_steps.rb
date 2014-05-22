## Login and add dream ##
Given /^I am on the Login Screen$/ do
  login = page(LoginPage)

  screenshot_embed(:label => 'Login')

  @page = login.test_views_in_login_page

end

When /^I enter correct username and password$/ do
  login = page(LoginPage)

  @page = login.logins
end

Then /^I should be logged in$/ do
  dream = page(TimeLinePage)
  @page = dream.test_view
  screenshot_embed(:label => 'home')
end

Given /^I want to add a dream$/ do
  dream = page(TimeLinePage)
  screenshot_embed(:label => 'Timeline')

  @page = dream.newdream
end

When /^I descripe my dream and submit$/ do
  dream = page(TimeLinePage)
  @page = dream.test_cancelbtn
  screenshot_embed(:label => 'adddream')
  @page = dream.dreamadd
end

Then /^I see my dream show on my timeline$/ do
  dream = page(TimeLinePage)
  @page = dream.test_view
  screenshot_embed(:label => 'home')
  @page = dream.dreamintimeline
end

