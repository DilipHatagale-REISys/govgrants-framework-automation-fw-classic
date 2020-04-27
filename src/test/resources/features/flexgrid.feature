@flexgrid-component @regression
Feature: Flex Grid Component Scenarios
  Abbreviations: ProgramPerformanceMgmtGridView (PPMGV)
  Test all flex grid component based scenarios
  As a configuration manager i make different configurational changes in flex grid component and will validate them.

  @34320    @changeOfN2GgridHeaderGoalOjective-ProgramStrategicGoals @smoke
  Scenario: changing information section header name of flex grid in configuratin and validating inside planning-programs view icon - plan subtab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Grid             | Header    | Goals Objectives  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Header    | Automation Goals Objectives | ProgramStrategicGoals |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see "Automation Goals Objectives" as header

  @34321    @disableMenuOptionGoalObjective-ProgramStrategicGoals
  Scenario: Disable menu bars for Goal Objective flex grid in configuratin and validating inside planning-programs view icon - plan subtab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Grid             | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Disable Menu | true          | ProgramStrategicGoals |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see Menu icon is disabled from planning flex table "Goals Objectives"

  @34323    @disableQuicksearchfromN2GFlexGrid-ProgramStrategicGoals @smoke
  Scenario: Disable quick search bar for Goal Objective flex grid in configuratin and validating inside planning-programs view icon - plan subtab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Quick Search | false         | ProgramStrategicGoals |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see quick search option disabled for "Program Performance Mgmt Grid View"

  @34325    @disablePDFExport-ProgramStrategicGoals
  Scenario: Disable download PDF from for Goal Objective menu flex grid in configuratin and validating inside planning-programs view icon - plan subtab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (PDF) | false         | ProgramStrategicGoals |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridProgramPerformanceMgmtGridView"
    Then I see "Download as PDF" options inside "Goals Objectives" disabled

  @62818    @disableXLSExport-ProgramStrategicGoals
  Scenario: Disable download XLS from for Goal Objective menu flex grid in configuratin and validating inside planning-programs view icon - plan subtab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | false         | ProgramStrategicGoals |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridProgramPerformanceMgmtGridView"
    Then I see "Download as XLS" options inside "Goals Objectives" disabled

  @34327    @disableFlexTableFieldName-ProgramStrategicGoals
  Scenario: Remove flex table header date column inside Goal Objective configuratin and validating inside planning-programs view icon - plan subtab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                                    | filterId         |
      | Flex Grid             | Display Field Names | Type__c,Title__c,Description__c,Status__c,DueDate__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | Type__c,Title__c,Description__c,Status__c | ProgramStrategicGoals |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see "Due Date" not displayed in enhanced grid table column title

  @34332    @hideViewIconForPPMGVflexTable-Programs @smoke
  Scenario: Hide view context from PPMGV view cofniguration and validate inside planning-programs view icon - plan subtab - Goal Objectives flex table
    Given I have "default" configuration as below:
      | configurationCategory              | fieldName        | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid Action:Flex Table Action | Hide for context |                   | ProgramStrategicGoals | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory              | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid Action:Flex Table Action | Hide For Context | View          | ProgramStrategicGoals | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see "View" icon for "Goal" is not displayed inside flex table

  @49449    @sequenceFieldAtProgramOutcomesFlexTable-Programs
  Scenario: Changing sequence of view row level action item at program outcomes flex table from config and validating it inside flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table Action     | Sequence  | 2                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Sequence  | 0             | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "---program:-:programOutComesTableId---" panel
    Then I see "View" icon for "---program:-:programOutComesTableId---" is at position "0" inside flex table

  @49450    @buttonHelpTextFieldAtProgramOutcomesFlexTableAction-gPlanning
  Scenario: Changing content of button help text field at program outcome flex table action from config and validating it inside flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Button Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text | Test Automation | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "---program:-:programOutComesTableId---" panel
    Then I see "Test Automation" as title for "Environment" inside flex table action

  @49451    @viewActionOpensInNewWindowAtProgramOutcomesFlexTable-gPlanning
  Scenario: validate program outcomes flex table action field- view opens in new window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in new window | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "---program:-:programOutComesTableId---" panel
    When I click on "View" icon for "Environment" inside table
    Then I see new tab is opened

  @49452    @locationFieldAtProgramOutcomesFlexTableActionItemFromRowToTop-gPlanning
  Scenario: Changing location of key outcomes flex table view action from row to top from config anf validating it inside program outcomes flex table of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row               | ProgramOutcomes    | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type |                   | ProgramOutcomes    | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top           | ProgramOutcomes    | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type | Button        | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see "View" button inside "Key Outcomes" Mass Editable grid

  @49453    @ConfirmationMessageFieldForProgramOutcomesFlexTAbleViewAction-gPlanning
  Scenario: Setup confirmation message for program outcomes flex table view action from configuration and validating it at Program outcomes flex table of program-planning
    Given I have "default" configuration as below:
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
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I click on "View" icon for "Environment" inside table with table id "---program:-:programOutComesTableId---" without processing
    Then I see confirmation box with body "Automation" is displayed

  @49454    @hideForProfileFieldAtProgramOutcomesFlexTableViewAction-gPlanning
  Scenario: Hide view row level action for specific profile from configuration and validating it at under program outcomes flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile |                   | ProgramOutcomes    | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile | System Administrator | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "---program:-:programOutComesTableId---" panel
    Then I see "View" icon for "Environment" is not displayed inside flex table

  @49455    @hideForUserFieldAtProgramOutcomesFlexTableViewAction-gPlanning
  Scenario: Hide view row level action for specific user from configuration and validating it at under program outcomes flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName     | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User |                   | ProgramOutcomes    | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User | Internal      | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "---program:-:programOutComesTableId---" panel
    Then I see "View" icon for "Environment" is not displayed inside flex table

  @49456    @hideForContextFieldAtProgramOutcomesFlexTableViewAction-gPlanning
  Scenario: Hide edit row level action for view layout from configuration and validating it at under program flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Context |                   | ProgramOutcomes    | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Context | View          | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "---program:-:programOutComesTableId---" panel
    Then I see "View" icon for "Environment" is not displayed inside flex table

  @49457    @viewActionOpensInSameWindowAtProgramOutcomesFlexTable-gPlanning
  Scenario: validate program outcomes flex table action field- view opens in same window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in same window | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "---program:-:programOutComesTableId---" panel
    When I click on "View" icon for "Environment" inside table
    Then I see no new tab is opened

  @49458    @ViewActionOpensInOverLayWindowAtProgramOutcomesFlexTable-gPlanning
  Scenario: validate program outcomes flex table action field- view opens in overlay window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "---program:-:programOutComesTableId---" panel
    When I click on "View" icon for "Environment" inside table
    Then I see "View" opens in overLay window

  @49459    @editActionOpensInInlineModeAtProgramOutcomesFlexTable-gPlanning
  Scenario: validate program outcomes flex table action field- edit opens in inline window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in Inline mode | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in Inline mode | ProgramOutcomes    | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "---program:-:programOutComesTableId---" panel
    When I click on "Edit" icon for "Environment" inside table
    Then I see inline edit options is displayed for flex grid

  @49460    @actionURLLongFieldAtProgramOutcomesFlexTableViewAction-gPlanning
  Scenario Outline: Changing action url of action url field for view action from config and validating it at program outcomes flex table of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Flex Table Action     | Action URL      | <oldActionUrl>    | ApiGeneratedId:0 |
      | Flex Table Action     | Action URL Long |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL      |                | ProgramOutcomes    | Name                      | View                       |
      | Flex Table Action     | Action URL Long | <newActionUrl> | ProgramOutcomes    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "---program:-:programOutComesTableId---" panel
    When I click on "View" icon for "Environment" inside table
    Then I see edit opens with "<newActionUrl>"

    Examples:
      | oldActionUrl                                | newActionUrl            |
      | /apex/KeyOutcomeView?id={!KeyOutcome__c.id} | https://www.google.com/ |

  @49462    @helpTextFieldAtProgramOutcomesFlexTableColumnHeader-gPlanning
  Scenario Outline: Changing content of help text field at program outcomes flex table column header from config and validating it inside program outcomes flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Help Text | <new_helpText> | ProgramOutcomes    | Name                      | FTC-1188                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I hovering mouse on help text icon inside "Target" for flex table column
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText    |
      | Test Automation |

  @49539    @hideForProfileFieldAtProgramOutcomesParentFlexTableEditAction-gPlanning
  Scenario: Hide edit row level action for specific profile from configuration and validating it at under program outcomes parent flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For Profile |                   | ProgramOutcomes    | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For Profile | System Administrator | ProgramOutcomes    | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "---program:-:programOutComesTableId---" panel
    Then I see "Edit" icon for "Environment" is not displayed inside flex table

  @49546    @hideForUserFieldAtProgramOutcomesParentFlexTableEditAction-gPlanning
  Scenario: Hide edit row level action for specific user from configuration and validating it at under program outcomes parent flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User |                   | ProgramOutcomes    | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User | Internal      | ProgramOutcomes    | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Environment" in "---program:-:programOutComesTableId---" panel
    Then I see "Edit" icon for "Environment" is not displayed inside flex table

  @50210    @headerFieldAtProgramOutcomesParentFlexTable-gPlanning
  Scenario: validate after changing name of program Outcomes flex table title inside plan sub tab-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table            | Header    | Key Outcomes      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header    | Test Automation | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see "Test Automation" shown as inside "---program:-:programOutComesTableId---"

  @50211    @disablingPDFExportFileAtProgramOutcomesParentFlexTable-gPlanning
  Scenario: validate disabling of PDF/Excel download from menu option in program outcomes flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I click on parallel lines menu bar with data target value "#---program:-:programOutComesTableId---"
    Then I see "Download as PDF" options inside "Key Outcomes" disabled

  @62728    @disablingPDFExportFileAtProgramOutcomesParentFlexTable-gPlanning
  Scenario: validate disabling of Excel download from menu option in program outcomes flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I click on parallel lines menu bar with data target value "#---program:-:programOutComesTableId---"
    Then I see "Download as CSV" options inside "Key Outcomes" disabled

  @49461    @enableTotalFieldAtProgramOutcomesFlexTable-gPlanning
  Scenario: Validating total sum for Target column after making changes for Enable total and Enable Total Row from config and validating it inside program outcomes flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Total     | false             | ApiGeneratedId:0 |
      | Flex Table:General    | Enable Total Row | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total     | true          | ProgramOutcomes    | Name                      | FTC-1188                   |
      | Flex Table:General    | Enable Total Row | true          | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see enable total sum for target column at program outcomes flex grid

  @50212    @disblingQuickSearchFieldAtProgramOutcomesFlexTable-gPlanning
  Scenario: validate disabling of quick search in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | false         | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see quick search option disabled for table "---program:-:programOutComesTableId--- "

  @50213    @disablingMenuIconForProgramOutcomesFlexTable-gPlanning @smoke
  Scenario: validate disabling of menu icon from program outcomes flex table-gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Grid             | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Disable Menu | true          | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see Menu icon is disabled from planning flex table "Key Outcomes"

  @50216    @enableTotalRowFieldAtProgramOutcomesFlexTable-gPlanning @smoke
  Scenario: validate enabling of total enable row in program outcomes flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Row | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Row | true          | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see "Total" inside rows of enhanced grid id "---program:-:programOutComesTableId---"

  @50217    @enableTotalRecordsCountFieldAtProgramOutcomesFlexTable-gPlanning @smoke
  Scenario: validate disbaling of total row count in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | true          | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see "Total Records" count in "inlineEditGridProgramOutcomes"

  @50219    @enablingEnableAutoIndexFieldAtProgramOutcomesFlexTable-gPlanning
  Scenario: validate after enabling enable auto index field for program outcomes flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see "#" shown inside flex table with id "---program:-:programOutComesTableId---"

  @50226    @headerHelpTextFieldAtProgramOutcomesFlexTable-gPlanning
  Scenario Outline: Changing content of help text field at program outcomes flex table from config and validating it at program outcomes flex table planning-Program
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Grid             | Header Help Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Header Help Text | <new_helpText> | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I hovering mouse on help text icon inside "Key Outcomes" for flex table
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText                                                                                                                |
      | Help Text for Automation | The section display list of added key metrics for the program to evaluate the success. To add record,click on [add] button. |

  @50228    @enableHelpFieldAtProgramOutcomesFlexTable-gPlanning
  Scenario: validate enabling of help inside menu option in program outcomes flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Help | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Help | true          | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I click on parallel lines menu bar with data target value "#---program:-:programOutComesTableId---"
    Then I see "Help" options inside "Key Outcomes" enabled

  @50230   @orderBySortByFieldAtProgramOutcomesFlexTableForAscendingOrder-gPlanning
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside program outcomes flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | ProgramOutcomes    |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | ProgramOutcomes    |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | Target__c     | ProgramOutcomes    |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC           | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see column "Target" value is in "Ascending" order for table id "---program:-:programOutComesTableId---"

  @50231   @orderBySortByFieldAtProgramOutcomesFlexTableForDescendingOrder-gPlanning
  Scenario: Changing specific column value in Descending order with order by and sort by field from config and validating it inside program outcomes flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | ProgramOutcomes    |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | ProgramOutcomes    |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | Target__c     | ProgramOutcomes    |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC          | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see column "Target" value is in "Descending" order for table id "---program:-:programOutComesTableId---"

  @50232    @fieldLabelOverrideFieldAtProgramOutcomesFlexTableColumnHeader-gPlanning
  Scenario: Changing specific column name of program outcomes flex table from config and validating it inside program outcomes flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Field Label Override | ID                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field Label Override | Test Automation | ProgramOutcomes    | Name                      | FTC-662                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see "Test Automation" shown inside flex table with id "---program:-:programOutComesTableId---"

  @50229    @displayFieldNameFieldWithAddingfieldNamesOfDifferentDataTypes-gPlanning @smoke
  Scenario Outline: validate adding field names for different data types in program outcomes flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ProgramOutcomes    |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see "<fieldDisplayNames>" in program Outcomes flex table header with id "---program:-:programOutComesTableId---"

    Examples:
      | fieldDisplayNames   | newFieldsApi                                                                                                                                                                          | defaultFieldsApi                                                                                                                                                        |
      | Notes               | Notes__c,KeyPerformanceIndicator__c,KeyPerformanceSubIndicator__c,KeyPerformanceCategory__c,KeyPerformanceSubCategory__c,Orientation__c,Unit__c,Target__c,TestFieldAutomation__c      | KeyPerformanceIndicator__c,KeyPerformanceSubIndicator__c,KeyPerformanceCategory__c,KeyPerformanceSubCategory__c,Orientation__c,Unit__c,Target__c,TestFieldAutomation__c |
      | ID                  | KeyPerformanceIndicator__c,KeyPerformanceSubIndicator__c,KeyPerformanceCategory__c,KeyPerformanceSubCategory__c,Orientation__c,Unit__c,Target__c,TestFieldAutomation__c               | KeyPerformanceIndicator__c,KeyPerformanceSubIndicator__c,KeyPerformanceCategory__c,KeyPerformanceSubCategory__c,Orientation__c,Unit__c,Target__c,TestFieldAutomation__c |
      | TestFieldAutomation | TestFieldAutomation__c,KeyPerformanceIndicator__c,KeyPerformanceSubIndicator__c,KeyPerformanceCategory__c,KeyPerformanceSubCategory__c,Orientation__c,Unit__c,Target__c               | KeyPerformanceIndicator__c,KeyPerformanceSubIndicator__c,KeyPerformanceCategory__c,KeyPerformanceSubCategory__c,Orientation__c,Unit__c,Target__c,TestFieldAutomation__c |
      | Completion %        | Completion__c,KeyPerformanceIndicator__c,KeyPerformanceSubIndicator__c,KeyPerformanceCategory__c,KeyPerformanceSubCategory__c,Orientation__c,Unit__c,Target__c,TestFieldAutomation__c | KeyPerformanceIndicator__c,KeyPerformanceSubIndicator__c,KeyPerformanceCategory__c,KeyPerformanceSubCategory__c,Orientation__c,Unit__c,Target__c,TestFieldAutomation__c |
      | Orientation         | Orientation__c,KeyPerformanceIndicator__c,KeyPerformanceSubIndicator__c,KeyPerformanceCategory__c,KeyPerformanceSubCategory__c,Unit__c,Target__c,TestFieldAutomation__c               | KeyPerformanceIndicator__c,KeyPerformanceSubIndicator__c,KeyPerformanceCategory__c,KeyPerformanceSubCategory__c,Orientation__c,Unit__c,Target__c,TestFieldAutomation__c |
      | Target              | Target__c,KeyPerformanceIndicator__c,KeyPerformanceSubIndicator__c,KeyPerformanceCategory__c,KeyPerformanceSubCategory__c,Orientation__c,Unit__c,TestFieldAutomation__c               | KeyPerformanceIndicator__c,KeyPerformanceSubIndicator__c,KeyPerformanceCategory__c,KeyPerformanceSubCategory__c,Orientation__c,Unit__c,Target__c,TestFieldAutomation__c |

  @50233    @widthPercentageFieldAtParentProgramOutcomesFlexTable-gPlanning
  Scenario: validate width size of particular column at program outcomes flex table programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Field width(%) | 20                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field width(%) | 50            | ProgramOutcomes    | Name                      | FTC-662                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see "ID" column inside Flex grid table id "---program:-:programOutComesTableId---" of width "width: 50%;"

  @50239    @refreshBehaviourFieldAtApplicationBudgetPeriodsFlexTableAsRefreshEntirePageForEditAction-gPlanning
  Scenario: validate flex table action field- refresh entire page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Refresh Behavior |                     | ApiGeneratedId:0 |
      | Flex Table Action     | Action Behavior  | Open in inline mode | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue           | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Refresh the entire page | ApplicationBudgetPeriods | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior  | Open in overlay         | ApplicationBudgetPeriods | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Budget" sub tab
    When I click on "Edit" icon for "BP-01" to save inside subtab
    When I enter value "test" into field "fieldNotes__c"
    And I click modal button "Save"
    Then I see entire page is refreshing

  @50337    @buttonHelpTextFieldAtActiveGrantsGridParentFlexTableAction-gMonitoring
  Scenario: Changing content of button help text field at Monitoring Schedule For All Active Grant flex table action from config and validating it inside Monitoring Schedule For All Active Grant flex table of programs-Monitoring
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Button Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text | Automation Help | ActiveGrantsGrid   | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see "Automation Help" as title for "App 786" inside flex table action

  @50338    @viewActionOpensInNewWindowForActiveGrantsGridParentFlexTableAction-gMonitoring
  Scenario: validate Monitoring Schedule For All Active Grant flex table action field- View opens in new window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in new window | ActiveGrantsGrid   | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I perform quick search for "App 786" in "---program:-:monitoringGridTableId---" panel
    When I click on "View" icon for "App 786" inside table
    Then I see new tab is opened

  @50339    @viewActionOpensInSameWindowForActiveGrantsGridParentFlexTableAction-gMonitoring
  Scenario: validate Monitoring Schedule For All Active Grant flex table action field- View opens in same window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in same window | ActiveGrantsGrid   | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I click on "View" icon for "App 786" inside table
    Then I see no new tab is opened

  @50340    @viewActionOpensInOverlayForActiveGrantsGridParentFlexTableAction-gMonitoring
  Scenario: validate Monitoring Schedule For All Active Grant flex table action field- View opens in overlay
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay | ActiveGrantsGrid   | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I click on "View" icon for "App 786" inside table
    Then I see "View" opens in overLay window

  @50342    @actionURLLongFieldAtActiveGrantsGridParentFlexTableFlexTableViewAction-gPlanning @smoke
  Scenario Outline: Changing action url of action url long field for view action from config and validating it at Monitoring Schedule For All Active Grant flex table of program-gMonitoring
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Flex Table Action     | Action URL      | <oldActionUrl>    | ApiGeneratedId:0 |
      | Flex Table Action     | Action URL Long |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL      |                | ActiveGrantsGrid   | Name                      | View                       |
      | Flex Table Action     | Action URL Long | <newActionUrl> | ActiveGrantsGrid   | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I click on "View" icon for "App 786" inside table
    Then I see edit opens with "<newActionUrl>"

    Examples:
      | oldActionUrl                      | newActionUrl            |
      | /apex/GrantView?id={!Grant__c.Id} | https://www.google.com/ |

  @50343    @locationFieldAtActiveGrantsGridParentFlexTableActionItemFromRowToTop-gMonitoring @smoke
  Scenario: Changing location of Monitoring Schedule For All Active Grant flex table view action from row to top from config anf validating it inside Monitoring Schedule For All Active Grant flex table of program-gMonitoring
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row               | ActiveGrantsGrid   | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type |                   | ActiveGrantsGrid   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top           | ActiveGrantsGrid   | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type | Button        | ActiveGrantsGrid   | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see "View" button inside "Monitoring Schedule For All Active Grant" Nested Navigation grid

  @50344    @locationFieldAtActiveGrantsGridParentFlexTableActionItemFromTopToRow-gMonitoring @smoke
  Scenario: Changing location of Monitoring Schedule For All Active Grant flex table view action from top to row from config anf validating it inside Monitoring Schedule For All Active Grant flex table of program-gMonitoring
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location  | Row               | ActiveGrantsGrid   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location  | Row           | ActiveGrantsGrid   | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see "View" icon for "App 786" is displayed inside flex table

  @50345    @showConfirmationBoxFieldForActiveGrantsGridFlexTAbleViewAction-gMonitoring @smoke
  Scenario: Setup confirmation box for Monitoring Schedule For All Active Grant flex table view action configuration and validating it at Monitoring Schedule For All Active Grant flex table of program-gMonitoring
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | ActiveGrantsGrid   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | ActiveGrantsGrid   | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I click on "View" icon for "App 786" inside table with table id "---program:-:toggleFlexGridMonitoringTableId---" without processing
    Then I see confirmation box with body "null" is displayed

  @50346    @ConfirmationMessageFieldForActiveGrantsGridFlexTAbleViewAction-gMonitoring
  Scenario: Setup confirmation message for Monitoring Schedule For All Active Grant flex table view action from configuration and validating it at Monitoring Schedule For All Active Grant flex table of program-gMonitoring
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | ActiveGrantsGrid   | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  |                   | ActiveGrantsGrid   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true            | ActiveGrantsGrid   | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  | Test Automation | ActiveGrantsGrid   | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I click on "View" icon for "App 786" inside table with table id "---program:-:toggleFlexGridMonitoringTableId---" without processing
    Then I see confirmation box with body "Test Automation" is displayed

  @50347    @refreshBehaviourFieldAtGrantorBudgetPeriodFlexTableAsRefreshEntirePageForEditAction-gGrants @smoke
  Scenario: validate budget period details flex table action field- refresh entire page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
      | Flex Table Action     | Action Behavior  | Open in overlay   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue           | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Refresh the entire page | GrantorBudgetPeriod | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior  | Open in overlay         | GrantorBudgetPeriod | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title" in "toggleFlexTableActiveGrants" panel
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I click on "Edit" icon for "2019" to save inside subtab
    And I click modal button "Save"
    Then I see entire page is refreshing

  @50351    @sequenceFieldAtGrantorBudgetPeriodFlexTableAction-gGrants
  Scenario: Changing sequence of edit row level action item at budget period details flex table from config and validating it inside budget period details flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table Action     | Sequence  | 2                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Sequence  | 0             | GrantorBudgetPeriod | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title" in "toggleFlexTableActiveGrants" panel
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    Then I see "Edit" icon for "---program:-:grantFinancialsTableId---" is at position "0" inside flex table

  @50352    @hideForProfileFieldAtGrantorBudgetPeriodFlexTableViewAction-gGrants @smoke
  Scenario: Hide view row level action for specific profile from configuration and validating it at under Grantor Budget Period flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile |                   | GrantorBudgetPeriod | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile | System Administrator | GrantorBudgetPeriod | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title" in "toggleFlexTableActiveGrants" panel
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    Then I see "View" icon for column value "Active" is not displayed at table "---program:-:grantFinancialsTableId---"

  @50353    @hideForUserFieldAtGrantorBudgetPeriodFlexTableViewAction-gGrants @smoke
  Scenario: Hide view row level action for specific User from configuration and validating it at under Grantor Budget Period flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName     | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User |                   | GrantorBudgetPeriod | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName     | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User | Internal      | GrantorBudgetPeriod | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title" in "toggleFlexTableActiveGrants" panel
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    Then I see "View" icon for column value "Active" is not displayed at table "---program:-:grantFinancialsTableId---"

  @50355    @iconCSSFieldAtActiveGrantsGridParentFlexTableEditActionItem-gMonitoring
  Scenario: Setup icon for ActiveGrantsGridParent flex table edit action from config and validating it at ActiveGrantsGridParentflex table of program-gMonitoring
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                                  | filterId         |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionDefaultIconCss | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionNewIconCss | ActiveGrantsGrid   | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see external link icon as "App 786" for "Edit" inside flex table action

  @50359    @actionNameFieldAtActiveGrantsGridParentFlexTableViewAction-gMonitoeing
  Scenario: Changing action name field for view action at ActiveGrantsGridParent flex table from config and validating it inside ActiveGrantsGridParent flex table of programs-gMonitoring
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Table Action     | Action Name | View              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Name | Test Automation | ActiveGrantsGrid   | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see "Test Automation" as title for "App 786" inside flex table action

  @50362    @headerFieldAtActiveGrantsGridParentFlexTable-gMonitoring
  Scenario: Changing content of header field at ActiveGrantsGridParent flex table and validating it at Monitoring schedule for all active grants flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                        | filterId         |
      | Flex Table            | Header    | Monitoring Schedule For All Active Grant | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header    | Test Automation | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see "Test Automation" shown as inside "---program:-:toggleFlexGridMonitoringTableId---"

  @50365    @headerHelpTextFieldAtActiveGrantsGridParentFlexTable-gMonitoring
  Scenario Outline: Changing content of help text field at parent flex table of ActiveGrantsGrid from config and validating it at Monitoring schedule for all active grant flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Grid             | Header Help Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Header Help Text | <new_helpText> | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I hovering mouse on help text icon inside "Monitoring Schedule For All Active Grant" for flex table
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText                                                                                                                                                             |
      | Help Text for Automation | The following table is a comprehensive list of all active grants.Â to view or edit a specific grant select the grant id hyperlink for the grant you would like to access |

  @50367    @disblingQuickSearchFieldAtActiveGrantsGridParentFlexTable-gMonitoring @smoke
  Scenario: validate disabling of quick search in ActiveGrantsGrid flex table at program-gMonitoring
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | false         | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see quick search option disabled for table "---program:-:toggleFlexGridMonitoringTableId---"

  @50370    @enableHelpFieldAtActiveGrantsGridParentFlexTable-gMonitoring @smoke
  Scenario: validate enabling of help inside menu option in Monitoring schedule for all active grant flex table at Monitoring phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Help | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Help | true          | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I click on parallel lines menu bar with data target value "#toggleFGridMonitoringGridView"
    Then I see "Help" options inside "Monitoring Schedule For All Active Grant" enabled

  @50371    @enablePaginationFieldAtActiveGrantsGridParentFlexTable-gMonitoring
  Scenario: validate enabling of page size dropdown at bottom in Monitoring schedule for all active grant flex table at Monitoring phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see "Page" with pagination arrow at "---program:-:toggleFlexGridMonitoringTableId---"

  @50377    @disablingMenuFieldAtActiveGrantsGridParentFlexTable-gMonitoring @smoke
  Scenario: validate disabling of menu icon from Monitoring schedule for all active grant flex table at Monitoring phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table            | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Disable Menu | true          | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see Menu icon is disabled from planning flex table "Monitoring Schedule For All Active Grant"

  @50379    @enableAutoIndexFieldAtActiveGrantsGridParentFlexTable-gMonitoring
  Scenario: validate enable auto index for Monitoring schedule for all active grant flex table at Monitoring phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see "#" in flex table header "---program:-:monitoringGridTableId---"

  @50380    @disablingEnableTotalRecordsCountFieldAtActiveGrantsGridParentFlexTable-gMonitoring @smoke
  Scenario: validate disbaling of total row count for Monitoring schedule for all active grant flex table at Monitoring phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | false         | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see no "Total Records" count in "---program:-:toggleFlexGridMonitoringTableId---"

  @50383    @orderBySortByFieldAtActiveGrantsGridParentFlexTableForAscendingOrder-gMonitoring
  Scenario: Changing specific column value in ascending order with order by and sort by field At ActiveGrantsGrid Parent FlexTable from config and validating it inside Monitoring schedule for all active grant
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | ActiveGrantsGrid   |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | ActiveGrantsGrid   |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | NumberofAwards__c | ActiveGrantsGrid   |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC               | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see column "# Awards" value is in "Ascending" order for table id "---program:-:toggleFlexGridMonitoringTableId---"

  @50386    @orderBySortByFieldAtActiveGrantsGridParentFlexTableForDescendingOrder-gMonitoring
  Scenario: Changing specific column value in descending order with order by and sort by field At ActiveGrantsGrid Parent FlexTable from config and validating it inside Monitoring schedule for all active grant flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | ActiveGrantsGrid   |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | ActiveGrantsGrid   |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | NumberofAwards__c | ActiveGrantsGrid   |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC              | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see column "# Awards" value is in "Descending" order for table id "---program:-:toggleFlexGridMonitoringTableId---"

  @50391    @disablingEnableExportFieldAtActiveGrantsGridParentFlexTable-gMonitoring
  Scenario: validate disabling of PDF download from menu option at inside Monitoring schedule for all active grant flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I click on parallel lines menu bar with data target value "#toggleFGridMonitoringGridView"
    Then I see "Download as PDF" options inside "Monitoring Schedule For All Active Grant" disabled

  @62730    @disablingEnableExportFieldAtActiveGrantsGridParentFlexTable-gMonitoring
  Scenario: validate disabling of Excel download from menu option at inside Monitoring schedule for all active grant flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I click on parallel lines menu bar with data target value "#toggleFGridMonitoringGridView"
    Then I see "Download as CSV" options inside "Monitoring Schedule For All Active Grant" disabled

  @50393    @helpTextFieldAtActiveGrantsGridParentFlexTable-gMonitoring
  Scenario Outline: Changing content of help text field at ActiveGrantsGridParent flex table column header from config and validating it inside Monitoring schedule for all active grant flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Help Text | <new_helpText> | ActiveGrantsGrid   | Name                      | FTC-1020                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I hovering mouse on help text icon inside "# Awards" for flex table column
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText             |
      | Help Text for Automation |

  @50394    @widthPercentageFieldAtActiveGrantsGridFlexTable-gMonitoring
  Scenario: validate width size of particular column at ActiveGrantsGrid flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Field width(%) | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field width(%) | 50            | ActiveGrantsGrid   | Name                      | FTC-1020                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see "# Awards" column inside Flex grid table id "---program:-:toggleFlexGridMonitoringTableId---" contains width "50%"

  @50397    @fieldLabelOverrideFieldAtActiveGrantsGridFlexTable-gMonitoring
  Scenario: Changing specific column name of ActiveGrantsGrid flex table from config and validating it inside Monitoring schedule for all active grant flex table at Monitoring phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Field Label Override | # Awards          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field Label Override | Test          | ActiveGrantsGrid   | Name                      | FTC-1020                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see "Test" shown as flex table column title

  @50395    @labelFieldAtActiveGrantsGridFlexTable-gMonitoring
  Scenario: validate after changing name of ActiveGrantsGrid flex table title inside Monitoring phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                        | filterId         |
      | Flex Table List       | Label     | Monitoring Schedule For All Active Grant | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Label     | Automation N2G Grid | ActiveGrantsGrid   | Name                      | FLV-1836                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I see "Automation N2G Grid" shown as inside "---program:-:toggleFlexGridMonitoringTableId---"

  @50399    @filterClauseFieldAtActiveGrantsGridFlexTable-gMonitoring @smoke
  Scenario Outline: validate removing draft status category from ActiveGrantsGrid flex table of Monitoring Phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table List       | Filter Clause |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Filter Clause | <newFilter>   | ActiveGrantsGrid   | Name                      | FLV-1836                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    Then I softly do not see "Draft" value in flex table id "---program:-:toggleFlexGridMonitoringTableId---"

    Examples:
      | newFilter                                        |
      | RecordType.Name='Grantor' and status__c='Active' |

  @50275    @refreshBehaviourFieldAtApplicationBudgetPeriodsFlexTableAsRefreshParentPageForEditAction-gGrants
  Scenario: validate budget period details flex table action field- refresh parent page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Refresh Behavior |                     | ApiGeneratedId:0 |
      | Flex Table Action     | Action Behavior  | Open in inline mode | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue       | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Refresh parent page | ApplicationBudgetPeriods | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior  | Open in overlay     | ApplicationBudgetPeriods | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Budget" sub tab
    When I click on "Edit" icon for "BP-01" to save inside subtab
    When I enter value "Test Automation" into field "fieldNotes__c"
    And I click modal button "Save"
    Then I see parent page is refreshing

  @50244    @refreshBehaviourFieldAtApplicationBudgetPeriodsFlexTableAsRefreshTheGridForEditAction-gPlanning
  Scenario: validate flex table action field- refresh entire page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Refresh Behavior |                     | ApiGeneratedId:0 |
      | Flex Table Action     | Action Behavior  | Open in inline mode | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue    | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Refresh the Grid | ApplicationBudgetPeriods | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior  | Open in overlay  | ApplicationBudgetPeriods | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Budget" sub tab
    When I record webelement at table "---program:-:applicationBudgetCategoryFlexGridTableId---" for column "BP-01"
    And I click on "Edit" icon for "BP-01" inside flex table with id "---program:-:applicationBudgetCategoryFlexGridTableId---" with wait for record
    When I enter value "test" into field "fieldNotes__c"
    And I click modal button "Save"
    Then I see "test" inside Application Budget flex table for specified record "BP-01"

  @50350    @refreshBehaviourFieldAtGrantorBudgetPeriodFlexTableAsRefreshParentPageForEditAction-gGrants
  Scenario: validate flex table action field- refresh entire page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue       | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Refresh parent page | GrantorBudgetPeriod | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I click on "Edit" icon for "2019" to save inside subtab
    When I pause execution for "2" seconds
    And I click modal button "Save"
    Then I see parent page is refreshing

  @50348    @refreshBehaviourFieldAtGrantorBudgetPeriodFlexTableAsRefreshTheGridForEditAction-gPlanning
  Scenario: validate flex table action field- refresh entire page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue    | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Refresh the Grid | GrantorBudgetPeriod | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I record webelement at table "---program:-:grantFinancialsTableId---" for column "2019"
    And I click on "Edit" icon for "2019" inside flex table with id "---program:-:grantFinancialsTableId---" with wait for record
    When I enter value "test" into field "fieldNotes__c"
    And I click modal button "Save"
    Then I see "test" inside Application Budget flex table for specified record "2019"

  @51328    @buttonHelpTextFieldAtApplicationBudgetCategoryFlexTableActionChild-gApplications
  Scenario: Changing content of button help text field Application Budget child flex table action from config and validating it inside Application Budget child flex table programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Button Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text | Test Automation | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "Test Automation" as title for "Indirect Cost Rate" inside flex table action

  @51332    @viewActionOpensInNewWindowAtApplicationBudgetCategoryFlexTableActionChild-gApplications
  Scenario: validate Application Budget child flex table action field- view opens in new window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Action Behavior | Open in new window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue      | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in new window | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "View" icon for "Proposed Uses Of Total Funds" inside table
    Then I see new tab is opened

  @51333    @viewActionOpensInSameWindowAtApplicationBudgetCategoryFlexTableActionChild-gApplications
  Scenario: validate Application Budget child flex table action field- view opens in same window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Action Behavior | Open in new window | ApiGeneratedId:0 |
      | Flex Table Action     | Action Behavior | Open in new window | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue       | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in same window | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
      | Flex Table Action     | Action Behavior | Open in same window | AppReviewList                      | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "View" icon for "Proposed Uses Of Total Funds" inside table
    Then I see no new tab is opened

  @51334    @viewActionOpensInOverlayWindowAtApplicationBudgetCategoryFlexTableActionChild-gApplications
  Scenario: validate Application Budget child flex table action field- view opens in overlay
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Action Behavior | Open in new window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "View" icon for "Proposed Uses Of Total Funds" inside table
    Then I see "View" opens in overLay window

  @51335    @showConfirmationBoxFieldAtApplicationBudgetCategoryFlexTableActionChild-gApplications
  Scenario: Setup confirmation box for Application Budget child flex table view action from configuration and validating it at Application Budget child flex table view action of program
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "View" icon for "Proposed Uses Of Total Funds" inside table with table id "---program:-:applicationBudgetCategoryFlexGridTableId---" without processing
    Then I see confirmation box with body "null" is displayed

  @51343    @ConfirmationMessageFieldAtApplicationBudgetCategoryFlexTableActionChild-gApplications
  Scenario: Setup confirmation message for Application Budget child flex table view action from configuration and validating it at Application Budget child flex table view action of program
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  |                   | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  | Automation    | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "View" icon for "Proposed Uses Of Total Funds" inside table with table id "---program:-:applicationBudgetCategoryFlexGridTableId---" without processing
    Then I see confirmation box with body "Automation" is displayed

  @51345    @hideForProfileFieldAtApplicationBudgetCategoryFlexTableViewActionChild-gApplications
  Scenario: Hide edit row level action for specific profile from configuration and validating it at under Application Budget child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For Profile |                   | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue        | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For Profile | System Administrator | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "View" icon for "Proposed Uses Of Total Funds" is not displayed inside flex table

  @51358    @hideForUserFieldAtApplicationBudgetCategoryFlexTableViewActionChild-gApplications
  Scenario: Hide edit row level action for specific user from configuration and validating it at under Application Budget child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User |                   | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User | Internal      | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "View" icon for "Proposed Uses Of Total Funds" is not displayed inside flex table

  @51368    @actionURLLongFieldAtApplicationBudgetCategoryFlexTableViewActionChild-gApplications
  Scenario Outline: Changing action url long of action url long field for view action from config and validating it at under Application Budget child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Flex Table Action     | Action URL      | <oldActionUrl>    | ApiGeneratedId:0 |
      | Flex Table Action     | Action URL Long |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue  | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL      |                | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
      | Flex Table Action     | Action URL Long | <newActionUrl> | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "View" icon for "Proposed Uses Of Total Funds" inside table
    Then I see edit opens with "<newActionUrl>"

    Examples:
      | oldActionUrl                                                               | newActionUrl            |
      | /apex/ApplicationBudgetCategoryView?id={!ApplicationBudgetCategory2__c.id} | https://www.google.com/ |

  @51375    @iconCSSFieldAtApplicationBudgetCategoryFlexTableViewActionChild-gApplications
  Scenario: Removing icon for ApplicationBudgetCategoryFlexTable view action from config and validating it at Application Budget child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                              | filterId         |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableViewActionNewIconCss | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  |               | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see record "Indirect Cost Rate" having action "View" donot contain icon css "fa fa-eye"

  @51384    @actionNameFieldAtApplicationBudgetCategoryFlexTableViewActionChild-gApplications
  Scenario: Changing action name field for view action at ApplicationBudgetCategoryFlexTable from config and validating it at Application Budget child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Table Action     | Action Name | View              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue   | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Name | Test Automation | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "Test Automation" as title for "Indirect Cost Rate" inside flex table action

  @51400    @headerFieldAtApplicationBudgetCategoryFlexTable-gApplications
  Scenario: Changing content of header field at ApplicationBudgetCategoryFlexTable and validating it at Application Budget child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue            | filterId         |
      | Flex Table            | Header    | Proposed Uses Of Total Funds | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header    | Test Automation | ApplicationBudgetCategoryFlexTable |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Test Automation"
    Then I see Nested Table "---program:-:applicationBudgetCategoryFlexGridTableId---" with changed header name as "Test Automation"

  @51499    @buttonHelpTextFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: Changing content of button help text field for Budget period details child flex table action from config and validating it inside Budget period details child flex table programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Button Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text | Test Automation | BudgetPeriod       | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    Then I see "Test Automation" as title for "Demo_Title" inside flex table action

  @51500    @viewActionOpensInNewWindowAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: validate Budget period details child flex table action- view opens in new window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Action Behavior | Open in new window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in new window | BudgetPeriod       | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    When I expand nested table containing column value "AD-GG PJ--00"
    When I click on "View" icon for "Demo_Title" inside table
    Then I see new tab is opened

  @51502    @viewActionOpensInSameWindowAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: validate Budget period details child flex table action- view opens in same window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Action Behavior | Open in new window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in same window | BudgetPeriod       | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    When I click on "View" icon for "Demo_Title" inside table
    Then I see no new tab is opened

  @51503    @viewActionOpensInOverlayAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: validate Budget period details child flex table action- view opens in overlay
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Action Behavior | Open in new window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay | BudgetPeriod       | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    When I click on "View" icon for "Demo_Title" inside table
    Then I see "View" opens in overLay window

  @51505    @actionURLLongFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario Outline: Changing action url long of action url long field for view action from config and validating it at Budget period details child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Flex Table Action     | Action URL      | <oldActionUrl>    | ApiGeneratedId:0 |
      | Flex Table Action     | Action URL Long |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL      |                | BudgetPeriod       | Name                      | View                       |
      | Flex Table Action     | Action URL Long | <newActionUrl> | BudgetPeriod       | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    When I click on "View" icon for "Demo_Title" inside table
    Then I see edit opens with "<newActionUrl>"

    Examples:
      | oldActionUrl                      | newActionUrl            |
      | /apex/AwardView?id={!Award__c.id} | https://www.google.com/ |

  @51510    @hideForProfileFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: Hide view row level action for specific profile from configuration and validating it at Budget period details child flex table
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile |                   | BudgetPeriod       | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile | System Administrator | BudgetPeriod       | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    Then I see "View" icon for "Demo_Title" is not displayed inside flex table

  @51511    @hideForUserFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: Hide view row level action for specific user from configuration and validating it at Budget period details child flex table
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName     | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User |                   | BudgetPeriod       | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User | Internal      | BudgetPeriod       | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    Then I see "View" icon for "Demo_Title" is not displayed inside flex table

  @51512    @iconCSSFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: Removing icon for Budget period details child flex table view action from config and validating it at Budget period details child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                              | filterId         |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableViewActionNewIconCss | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  |               | BudgetPeriod       | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Financials 1"
    When I click on "View" icon for "Financials 1" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2017"
    Then I see record "	Financials_123" having action "View" donot contain icon css "fa fa-eye"

  @51513    @actionNameFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: Changing action name field for view action at Budget period details child flex table from config and validating it inside Budget period details child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Table Action     | Action Name | View              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Name | Test Automation | BudgetPeriod       | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    Then I see "Test Automation" as title for "Demo_Title" inside flex table action

  @51515    @enablingEnableAutoIndexFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: validate after enabling enable auto index field for Budget period details child flex table of programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | BudgetPeriod       |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    Then I see "#" shown inside flex table with id "---program:-:grantFinancialsTableId---"

  @51516    @enableTotalRecordsCountFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: validate disbaling of Enable Total Records Count in Budget period details child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | false             | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | true          | BudgetPeriod        |                           |                            |
      | Flex Table:General    | Enable Total Records Count | false         | GrantorBudgetPeriod |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    Then I see "Total Records" count in "---program:-:grantFinancialsTableId---"

  @51558    @displayFieldNameFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario Outline: validate adding field names for different data types in Budget period details child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | BudgetPeriod       |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    Then I see "<fieldDisplayNames>" in program Outcomes flex table header with id "---program:-:grantFinancialsTableId---"

    Examples:
      | fieldDisplayNames | newFieldsApi                                                                                   | defaultFieldsApi                                                                               |
      | Award Number      | AwardNumber__c,ID,Name,AwardedAmountthisAction__c,YTDAdvancePaid__c,YTDReimbursementPaid__c    | Id,Name,GrantAwardName__c,AwardedAmountthisAction__c,YTDAdvancePaid__c,YTDReimbursementPaid__c |
      | Audit Decision    | AuditDecision__c,ID,Name,AwardedAmountthisAction__c,YTDAdvancePaid__c,YTDReimbursementPaid__c  | Id,Name,GrantAwardName__c,AwardedAmountthisAction__c,YTDAdvancePaid__c,YTDReimbursementPaid__c |
      | Administration    | Administration__c,ID,Name,AwardedAmountthisAction__c,YTDAdvancePaid__c,YTDReimbursementPaid__c | Id,Name,GrantAwardName__c,AwardedAmountthisAction__c,YTDAdvancePaid__c,YTDReimbursementPaid__c |
      | Awarded Amount    | AwardedAmountthisAction__c,ID,Name,YTDAdvancePaid__c,YTDReimbursementPaid__c                   | Id,Name,GrantAwardName__c,AwardedAmountthisAction__c,YTDAdvancePaid__c,YTDReimbursementPaid__c |

  @51548    @fieldLabelOverrideFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: Changing specific column name of Budget period details child flex table from config and validating it inside Budget period details child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Field Label Override | Awarded Amount    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field Label Override | Test Automation | BudgetPeriod       | Name                      | FTC-532                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    Then I see "Test Automation" shown inside flex table with id "---program:-:grantFinancialsTableId---"

  @51550    @widthPercentageFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: validate width size of particular column at budget period details child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Field width(%) | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field width(%) | 50            | BudgetPeriod       | Name                      | FTC-532                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    Then I see "Awarded Amount" column inside Flex grid table id "---program:-:grantFinancialsTableId---" contains width "50%"

  @51482    @labelFieldAtApplicationBudgetCategoryFlexTableChild-gApplications
  Scenario: validate after changing name of ApplicationBudgetCategoryFlexTable label inside Application budget flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue            | filterId         |
      | Flex Table List       | Label     | Proposed Uses Of Total Funds | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Label     | Test Automation | ApplicationBudgetCategoryFlexTable | Name                      | FLV-2089                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    Then I see Nested Table "---program:-:applicationBudgetCategoryFlexGridTableId---" with changed header name as "Test Automation"

  @51450    @helpTextFieldAtApplicationBudgetCategoryFlexTableChild-gApplications
  Scenario Outline: Changing content of help text field at ApplicationBudgetCategoryFlexTable column header from config and validating it inside Application budget flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Help Text | <new_helpText> | ApplicationBudgetCategoryFlexTable | Name                      | FTC-1397                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I hovering mouse on help text icon inside "Grantee Share %" for flex table column
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText    |
      | Test Automation |

  @51449    @fieldLabelOverrideFieldAtApplicationBudgetCategoryFlexTableChild-gApplications
  Scenario: Changing specific column name of ApplicationBudgetCategoryFlexTable from config and validating it inside inside Application budget flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Field Label Override |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue   | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field Label Override | Test Automation | ApplicationBudgetCategoryFlexTable | Name                      | FTC-1397                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "Test Automation" shown inside flex table with id "---program:-:applicationBudgetCategoryFlexGridTableId---"

  @51556    @displayFieldNameFieldAtApplicationBudgetCategoryFlexTableChild-gApplications
  Scenario Outline: validate adding field names for different data types in Application budget flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetCategoryFlexTable |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "<fieldDisplayNames>" in program Outcomes flex table header with id "---program:-:applicationBudgetCategoryFlexGridTableId---"

    Examples:
      | fieldDisplayNames          | newFieldsApi                                                                                                   | defaultFieldsApi                                                                                     |
      | Service Area               | ServiceAreaTitle__c,Id,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c           | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c |
      | Budget Category            | BudgetCategory__c,Id,ServiceAreaTitle__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c           | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c |
      | Grantor Share              | GrantorAmount__c,Id,ServiceAreaTitle__c,BudgetCategory__c,GranteeAmount__c,Amount__c,GranteeShare__c           | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c |
      | App Budget Category Status | AppBudgetCategoryStatus__c,Id,ServiceAreaTitle__c,BudgetCategory__c,GranteeAmount__c,Amount__c,GranteeShare__c | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c |

  @51506    @showConfirmationBoxFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: Setup confirmation box for Budget period details child flex table view action from configuration and validating it at Budget period details child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | BudgetPeriod       | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | BudgetPeriod       | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    When I expand nested table containing column value "AD-GG PJ--00"
    When I click on "View" icon for "AD-GG PJ--00" inside table with table id "---program:-:grantFinancialsTableId---" without processing
    Then I see confirmation box with body "null" is displayed

  @51509    @ConfirmationMessageFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario: Setup confirmation message for Budget period details child flex table view action from configuration and validating it at Budget period details child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | BudgetPeriod       | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  |                   | BudgetPeriod       | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | BudgetPeriod       | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  | Automation    | BudgetPeriod       | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    When I expand nested table containing column value "AD-GG PJ--00"
    When I click on "View" icon for "AD-GG PJ--00" inside table with table id "---program:-:grantFinancialsTableId---" without processing
    Then I see confirmation box with body "Automation" is displayed

  @51547    @helpTextFieldAtBudgetPeriodFlexTableActionChild-gGrants
  Scenario Outline: Changing content of help text field at Budget period details child flex table column header from config and validating it inside Budget period details child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Help Text | <new_helpText> | BudgetPeriod       | Name                      | FTC-532                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "2019"
    When I expand nested table containing column value "AD-GG PJ--00"
    When I hovering mouse on help text icon inside "Awarded Amount" for flex table column
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText    |
      | Test Automation |

  @51406    @enablingEnableAutoIndexFieldAtApplicationBudgetCategoryFlexTable-gApplications
  Scenario: validate after enabling enable auto index field for ApplicationBudgetCategoryFlexTable of program
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:0 |
      | Flex Table            | Enable Auto Index | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | ApplicationBudgetCategoryFlexTable |                           |                            |
      | Flex Table:General    | Enable Auto Index | false         | ApplicationBudgetPeriods           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "#" shown inside flex table with id "---program:-:applicationBudgetCategoryFlexGridTableId---"

  @51414    @enableTotalRecordsCountFieldAtApplicationBudgetCategoryFlexTable-gApplications
  Scenario: validate disbaling of enable otal records count in application budget category flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | false         | ApplicationBudgetCategoryFlexTable |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see no "Total Records" count in "---program:-:applicationBudgetCategoryFlexGridTableId---"

  @34335    @hideForProfileFieldForPPMGVflexTable-Programs
  Scenario: Hide view row level action for specific profile from configuration and validating it at under program strategic goals flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile |                   | ProgramStrategicGoals | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile | System Administrator | ProgramStrategicGoals | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see "View" icon for "Goal" is not displayed inside flex table

  @34337    @hideOperatorFieldForPPMGVflexTable-Programs
  Scenario: Hide edit row level action using AND operator from configuration and validating it at under roles and responibilities flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile |                   | ProgramStrategicGoals | Name                      | View                       |
      | Flex Table Action Sobject | Hide For Context |                   | ProgramStrategicGoals | Name                      | View                       |
      | Flex Table Action Sobject | Hide Operator    | AND               | ProgramStrategicGoals | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile | System Administrator | ProgramStrategicGoals | Name                      | View                       |
      | Flex Table Action Sobject | Hide For Context | View                 | ProgramStrategicGoals | Name                      | View                       |
      | Flex Table Action Sobject | Hide Operator    | AND                  | ProgramStrategicGoals | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see "View" icon for "Goal" is not displayed inside flex table

  @34338    @ConfirmationMessageFieldForPPMGVflexTable-Programs
  Scenario: Setup confirmation message for program strategic goals flex table delete action from configuration and validating it at program strtegic goals flex table of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | ProgramStrategicGoals | Name                      | Delete                     |
      | Flex Table Action     | Confirmation Message  |                   | ProgramStrategicGoals | Name                      | Delete                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | ProgramStrategicGoals | Name                      | Delete                     |
      | Flex Table Action     | Confirmation Message  | Automation    | ProgramStrategicGoals | Name                      | Delete                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I click on "Delete" icon for "Goal" inside table with table id "toggleFGridProgramPerformanceMgmtGridView" without processing
    Then I see confirmation box with body "Automation" is displayed

  @51447   @orderBySortByFieldAtApplicationBudgetCategoryFlexTableChildForDescendingOrder-gApplications
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside Application budget flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue                     | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | ServiceAreaTitle__c,BudgetCategory__c | ApplicationBudgetCategoryFlexTable |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC                                   | ApplicationBudgetCategoryFlexTable |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue          | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | BudgetCategory__r.Name | ApplicationBudgetCategoryFlexTable |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC                   | ApplicationBudgetCategoryFlexTable |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    And I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see column "Budget Category" value is in "Descending" order for table id "---program:-:applicationBudgetCategoryFlexGridTableId---" for MEGrid

  @51446   @orderBySortByFieldAtApplicationBudgetCategoryFlexTableChildForAscendingOrder-gApplications
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside Application budget flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue                     | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | ServiceAreaTitle__c,BudgetCategory__c | ApplicationBudgetCategoryFlexTable |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC                                   | ApplicationBudgetCategoryFlexTable |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue          | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | BudgetCategory__r.Name | ApplicationBudgetCategoryFlexTable |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC                    | ApplicationBudgetCategoryFlexTable |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    And I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see column "Budget Category" value is in "Ascending" order for table id "---program:-:applicationBudgetCategoryFlexGridTableId---" for MEGrid

  @78303    @verifyByClickOnLookupValueItShouldRedirectedToRespectiveRecordPageAtMEGrid-gApplications
  Scenario Outline: validate by click on lookup value in table , respective page should get opens at ME Grid - gApplications
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    And I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I click on "Child Development Centre" icon for "BP-02" inside table
    Then I see "Organization" shown as over view header

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                                                                                                         |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c,Application__r.ExternalOrganization__r.Name |

  @78308    @verifyByClickOnLookupValueItShouldRedirectedToRespectiveRecordPageAtN2GGrid-gGrants
  Scenario Outline: validate by click on lookup value in table , respective page should get opens at N2G Grid - gGrants
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | GrantorBudgetPeriod |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I click on "Child Development Centre" icon for "2021" inside table
    Then I see "Organization" shown as over view header

    Examples:
      | defaultFieldsApi                                               | newFieldsApi                                                                                               |
      | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c,Application__r.ExternalOrganization__r.Name |