@flexgrid-component @regression
Feature: Flex Grid Component Scenarios
  Abbreviations: ProgramPerformanceMgmtGridView (PPMGV)
  Test all flex grid component based scenarios
  As a configuration manager i make different configurational changes in flex grid component and will validate them.

  @34320    @changeOfN2GgridHeaderGoalOjective-ProgramStrategicGoals @smoke
  Scenario: changing information section header name of flex grid in configuratin and validating inside planning-programs view icon - plan subtab
    Given I have default configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Grid             | Header    | Goals Objectives  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Header    | Automation Goals Objectives | ProgramStrategicGoals |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    Then I see "Automation Goals Objectives" as header

  @34321    @disableMenuOptionGoalObjective-ProgramStrategicGoals
  Scenario: Disable menu bars for Goal Objective flex grid in configuratin and validating inside planning-programs view icon - plan subtab
    Given I have default configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Grid             | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Disable Menu | true          | ProgramStrategicGoals |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    Then I see PPMGV menu bars not displayed

  @34323    @disableQuicksearchfromN2GFlexGrid-ProgramStrategicGoals @smoke
  Scenario: Disable quick search bar for Goal Objective flex grid in configuratin and validating inside planning-programs view icon - plan subtab
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Quick Search | false         | ProgramStrategicGoals |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    Then I see quick search option disabled for "Program Performance Mgmt Grid View"

  @34325    @disableExport-ProgramStrategicGoals
  Scenario: Disable download PDF/Excel from for Goal Objective menu flex grid in configuratin and validating inside planning-programs view icon - plan subtab
    Given I have default configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export | false         | ProgramStrategicGoals |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    And I click on PPMGV parallel lines bar
    Then I see "Download as PDF""Download as CSV" options disabled in PPMGV menu

  @34327    @disableFlexTableFieldName-ProgramStrategicGoals
  Scenario: Remove flex table header date column inside Goal Objective configuratin and validating inside planning-programs view icon - plan subtab
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                                    | filterId         |
      | Flex Grid             | Display Field Names | Type__c,Title__c,Description__c,Status__c,DueDate__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | Type__c,Title__c,Description__c,Status__c | ProgramStrategicGoals |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    Then I see "Due Date" column for PPMGV flex table is not displayed

  @34332    @hideViewIconForPPMGVflexTable-Programs @smoke
  Scenario: Hide view context from PPMGV view cofniguration and validate inside planning-programs view icon - plan subtab - Goal Objectives flex table
    Given I have default configuration as below:
      | configurationCategory              | fieldName        | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid Action:Flex Table Action | Hide for context |                   | ProgramStrategicGoals | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory              | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid Action:Flex Table Action | Hide For Context | View          | ProgramStrategicGoals | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    Then I see "View" icon is not displayed inside PPMGV flex table
    
  @49449    @sequenceFieldAtProgramOutcomesFlexTable-Programs
  Scenario: Changing sequence of view row level action item at program outcomes flex table from config and validating it inside flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table Action     | Sequence  | 2                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Sequence  | 0             | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "toggleFGridProgramOutcomes" panel
    Then I see "View" icon for "toggleFGridProgramOutcomes" is at position "0" inside flex table
    
  @49450    @buttonHelpTextFieldAtProgramOutcomesFlexTableAction-gPlanning
  Scenario: Changing content of button help text field at program outcome flex table action from config and validating it inside flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Button Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text | Test Automation | ProgramOutcomes     | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "toggleFGridProgramOutcomes" panel
    Then I see "Test Automation" as title for "Environment" inside flex table action
    
  @49451    @viewActionOpensInNewWindowAtProgramOutcomesFlexTable-gPlanning
  Scenario: validate program outcomes flex table action field- view opens in new window
    Given I have default configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in new window | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "toggleFGridProgramOutcomes" panel
    When I click on "View" icon for "Environment" inside table
    Then I see new tab is opened
    
  @49452    @locationFieldAtProgramOutcomesFlexTableActionItemFromRowToTop-gPlanning
  Scenario: Changing location of key outcomes flex table view action from row to top from config anf validating it inside program outcomes flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row               | ProgramOutcomes     | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type |                   | ProgramOutcomes     | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top           | ProgramOutcomes     | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type | Button        | ProgramOutcomes     | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    Then I see "View" button inside "Key Outcomes" enhanced grid
    
  @49453    @ConfirmationMessageFieldForProgramOutcomesFlexTAbleViewAction-gPlanning
  Scenario: Setup confirmation message for program outcomes flex table view action from configuration and validating it at Program outcomes flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | ProgramOutcomes    | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  |                   | ProgramOutcomes    | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | ProgramOutcomes    | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  | Automation    | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    When I click on "View" icon for "Environment" inside table with table id "toggleFGridProgramOutcomes" without processing
    Then I see confirmation box with body "Automation" is displayed
    
  @49454    @hideForProfileFieldAtProgramOutcomesFlexTableViewAction-gPlanning
  Scenario: Hide view row level action for specific profile from configuration and validating it at under program outcomes flex table- gPlanning
    Given I have default configuration as below:
      | configurationCategory     | fieldName                | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile         |                            | ProgramOutcomes    | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile         | System Administrator | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "toggleFGridProgramOutcomes" panel
    Then I see "View" icon for "Environment" is not displayed inside flex table
    
  @49455    @hideForUserFieldAtProgramOutcomesFlexTableViewAction-gPlanning
  Scenario: Hide view row level action for specific user from configuration and validating it at under program outcomes flex table- gPlanning
    Given I have default configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User  |                    | ProgramOutcomes    | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User  | Internal      | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "toggleFGridProgramOutcomes" panel
    Then I see "View" icon for "Environment" is not displayed inside flex table
    
  @49456    @hideForContextFieldAtProgramOutcomesFlexTableViewAction-gPlanning
  Scenario: Hide edit row level action for view layout from configuration and validating it at under program flex table- gPlanning
    Given I have default configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Context |                   | ProgramOutcomes    | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Context | View          | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "toggleFGridProgramOutcomes" panel
    Then I see "View" icon for "Environment" is not displayed inside flex table
    
  @49457    @viewActionOpensInSameWindowAtProgramOutcomesFlexTable-gPlanning
  Scenario: validate program outcomes flex table action field- view opens in same window
    Given I have default configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in same window| ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "toggleFGridProgramOutcomes" panel
    When I click on "View" icon for "Environment" inside table
    Then I see no new tab is opened
    
  @49458    @ViewActionOpensInOverLayWindowAtProgramOutcomesFlexTable-gPlanning
  Scenario: validate program outcomes flex table action field- view opens in overlay window
    Given I have default configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "toggleFGridProgramOutcomes" panel
    When I click on "View" icon for "Environment" inside table
    Then I see "View" opens in overLay window
   