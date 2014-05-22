Feature: Login, add dream
  As a user I'll be able to login to On Dream 
  Social Network. To authenticate, I'll provide 
  email and password. After I logged in, I'll add 
  a dream and see my dream on my timeline

  @login @add_dream
  Scenario: Login to On Dream Social Network 
  and add a dream
    Given I am on the Login Screen
    When I enter correct username and password
    Then I should be logged in
    Given I want to add a dream
    When I descripe my dream and submit
    Then I see my dream show on my timeline

