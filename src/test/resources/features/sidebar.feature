@sidebar
Feature: Test all sidebar based scenarios

  @test @smoke
  Scenario Outline: User set up configuration as .....
    Given I enter my user "<username>"
    And I enter my password "<password>"
    When I login
    Then I am on the homepage
    Examples:
    | username | password |
    | qaadmin@ut.test | test@12345 |
