@login
Feature: Test all login based scenarios

  @validlogin @smoke
  Scenario Outline: User enters correct username and password to login and reaches homepage
    Given I enter my user "<username>"
    #And I enter my password "<password>"
    #When I login
    #Then I am on the homepage
    Examples:
    | username | password |
    | qaadmin@ut.test | test@12345 |
