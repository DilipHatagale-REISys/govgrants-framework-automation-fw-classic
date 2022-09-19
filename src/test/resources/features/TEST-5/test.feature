@test-component @regression-test5 @test
Business Need: Flex Table Component Scenarios
  Test all flex table component based scenarios
  As a configuration manager i make different configurational changes in flex table component and will validate them.

  @206106
  Scenario: qwe
    Given I delete the record "Automation Internal Program for flow" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation_v" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I navigate to "Financials" sub tab
    Then I softly see "Monitoring Schedule For All Active Grants" page block displayed
    When I perform quick search for "GT-FDM12-001" in "---program:-:enhancedGridTableId---" panel
    When I click on "Edit" icon for "GT-FDM12-001" inside flex table with id "---program:-:enhancedGridTableId---" without waiting for record
    And I click on top right button "Save" in flex table with id "---program:-:enhancedGridTableId---"
    And I click on parallel menu button in flex table title "Monitoring Schedule For All Active Grants"
    And I select "Download as PDF" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    And I download the file
    Then I see "GT-FDM12-001" on page "27" of "FlexTableExport" pdf file

    @200167
    Scenario: asd
