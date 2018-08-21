@sidebar
Feature: Test all sidebar component based scenarios

  @31625 @all @validateChangeinTaskMenuSequence
  Scenario: Changing sequence of task menu from second to third in side bar
    Given I have default configuration of "PHASES" with "GRANTORHOME" for "Sidebar Component Sequence" as "Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links" 
    And I reconfigure "PHASES" with "GRANTORHOME" for "Sidebar Component Sequence" as "Search,ActivityMenu,TaskMenu,RecentlyViewed,TechnicalSupport,Links" 
    And I login as "Automation" User
    When I access the "GovGrants Launcher Tab"
  	Then i see "Tasks" shown at number "2" in sideBar