@sidebar
Feature: Test all sidebar component based scenarios

  @31625 @all @validateChangeinTaskMenuSequence
  Scenario: Changing sequence of task menu from second to third in side bar
    Given I have default configuration of "PHASES" with "GRANTORHOME" for "Sidebar Component Sequence" as "Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links" 
    And I reconfigure "PHASES" with "GRANTORHOME" for "Sidebar Component Sequence" as "Search,ActivityMenu,TaskMenu,RecentlyViewed,TechnicalSupport,Links" 
    And I login as "Automation" User
    When I access the "GovGrants Launcher Tab"
  	Then i see "Tasks" shown at number "2" in sideBar	
  	
  @31624 @all @validateSidebarTaskMenuRemoval
  Scenario: Disabling of task menu from side bar
    Given I have default configuration of "PHASES" with "GRANTORHOME" for "Sidebar Component Sequence" as "Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links" 
    And I reconfigure "PHASES" with "GRANTORHOME" for "Sidebar Component Sequence" as "Search,ActivityMenu,RecentlyViewed,TechnicalSupport,Links" 
    And I login as "Automation" User
    When I access the "GovGrants Launcher Tab"
  	Then I see "Tasks" as disabled from sidebar
  	
  @32005 @all @validateSidebarActivityMenuRemoval
  Scenario: Disabling of activity menu from side bar 
    Given I have default configuration of "PHASES" with "GRANTORHOME" for "Sidebar Component Sequence" as "Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links" 
    And I reconfigure "PHASES" with "GRANTORHOME" for "Sidebar Component Sequence" as "Search,TaskMenu,RecentlyViewed,TechnicalSupport,Links" 
    And I login as "Automation" User
    When I access the "GovGrants Launcher Tab"
  	Then I see "Activities" as disabled from sidebar
  	
  @32092 @all @validateLabelChangeOfAccordionContent
  Scenario: Changing label of accordion content
    Given I have default configuration of "SIDEBAR CONTENT" with "GRANTORHOME" for "Name" as "Completed" in "My Tasks"
    And I reconfigure "SIDEBAR CONTENT" with "GRANTORHOME" for "Name" as "Automation Tasks" in "My Tasks" 
    And I login as "Automation" User
    When I access the "GovGrants Launcher Tab"
    When I click on "Tasks" from left side panel
    When I click on  "My Tasks" inside task menu
    Then I see changed label as "Automation Tasks"
    
    
    
    
    