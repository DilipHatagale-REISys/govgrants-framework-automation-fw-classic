@searchtable-component @regression-test5 @searchtable
Business Need: Search Table Component Scenarios

  @180758 @sprint23 @searchtable @userstory_175054
  Scenario: Search Table - Quick search should be working for Text field in Search Table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on global search and select "All"
    When I perform quick search inside global search "PG-A11-2103"
   # When I perform quick search for "Automation Internal"
    Then I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:GlobleSeachToggleTableId---"