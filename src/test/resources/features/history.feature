@history -component @regression
Feature: history Component Scenarios
  Test all history Component based scenarios
  As a configuration manager i make different changes related to flow and will validate them in history component.

  @69537   @VerifyDisplayOfRecordsInHistoryTableAsPerSelectedObjectFromDropDown
  Scenario: Validate all program records are shown in Field History table if Program object is selected in dropdown
    When I login as "Automation" user
    When I navigate to "Planning" tab
    When I perform quick search for "Test Program specific for History"
    When I click on "View Program Details" icon for "Test Program specific for History" inside table
    When I navigate to "History" sub tab
    When I select "Program" from dropdown at History Table
    Then I softly see "PG-755-0205" value in flex table id "toggleFlexTableHistory"
