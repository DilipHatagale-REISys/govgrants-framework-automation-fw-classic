@flexgridenhanedgrid-component @regression-test5 @flexGridflexgridenhanedgrid
Business Need: Flex Grid and enhaned grid Component Scenarios related to confirmation box

  @194094 @sprint2 @userstory_137720
  Scenario:  To verify, when on Parent table (E-Grid) a record is made some inline edit changes and then clicked on Cancel(Page Layout edit mode), then a confirmation message should be displayed before cancelling
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-VT-001" in "---program:-:flexGridEnhancedID---" panel
    And I click on "Edit" icon for "GT-VT-001" inside flex table with id "---program:-:enhancedGridTableId---"
    And I enter value "Active" into field "AddressProgramContact__c"
    When I click on "Cancel" in the page details without processing
    Then I softly see confirmation box with body "Are you sure you want to cancel?" is displayed

  @194088 @sprint2 @userstory_137720
  Scenario: To verify, when on Parent table (E-Grid) a record is made some inline edit changes and then clicked on Save (Page Layout edit mode), then a confirmation message should be displayed to show unsaved changes
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-VT-001" in "---program:-:flexGridEnhancedID---" panel
    And I click on "Edit" icon for "GT-VT-001" inside flex table with id "---program:-:enhancedGridTableId---"
    And I enter value "Active" into field "AddressProgramContact__c"
    When I click on "Save" in the page details without processing
    Then I softly see confirmation box with body "Monitoring Schedule For All Active Grants section" is displayed

  @194476 @sprint2 @userstory_137720
  Scenario: To verify, when on Data Table Enhanced a record is made some inline edit changes and then clicked on Cancel (Page Layout edit mode) without saving the record, then a confirmation message should be displayed before cancelling
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click on "Edit" icon for "GT-Test-001" inside flex table with id "---program:-:EnhancedDataTableId---"
    And I enter value "Test" into field "GrantAbbreviation__c"
    When I click on "Cancel" in the page details without processing
    Then I softly see confirmation box with body "Are you sure you want to cancel?" is displayed

  @194092  @sprint2 @userstory_137720
  Scenario:  To verify, when on Data Table Enhanced a Edit inline record is made and then clicked on Save (Page Layout edit mode) without saving the record, then a confirmation message should be displayed to show unsaved changes
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click on "Edit" icon for "GT-Test-001" inside flex table with id "---program:-:EnhancedDataTableId---"
    And I enter value "Test" into field "GrantAbbreviation__c"
    When I click on "Save" in the page details without processing
    Then I softly see confirmation box with body "Grants Enhanced Table section" is displayed
