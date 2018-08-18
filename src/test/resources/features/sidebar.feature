@sidebar
Feature: Test all sidebar based scenarios

  @test1 @smoke
  Scenario: User set up configuration as .....
    Given I configure "PHASES" with "GRANTORHOME" for "Tab Icon CSS" as "i" 
    #When I login
    #Then I am on the homepage
    And I reconfigure "PHASES" with "GRANTORHOME" for "Tab Icon CSS" as "test" 