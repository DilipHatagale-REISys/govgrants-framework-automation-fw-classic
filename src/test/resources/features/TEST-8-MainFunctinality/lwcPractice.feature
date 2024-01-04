@testinglwc @regression-QA
Business Need: LWC Component Scenarios
  Test all LWC component based scenarios
  As a configuration manager i make different configurational changes in LWC component and will validate them.

  @testingsteps
  Scenario: asdf
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "20"
    Then I see table contains "Showing 1 to 20" inside table id "---program:-:ProgramsFlexTableToggleId---"
