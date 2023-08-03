@flexgrid-component @regression-test5 @flexGrid
Business Need: Flex Grid Component Scenarios
  Abbreviations: ProgramPerformanceMgmtGridView (PPMGV)
  Test all flex grid component based scenarios
  As a configuration manager i make different configurational changes in flex grid component and will validate them.

  @34320    @changeOfN2GgridHeaderGoalOjective-ProgramStrategicGoals @wip
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

  @34323    @disableQuicksearchfromN2GFlexGrid-ProgramStrategicGoals @smoke @wip
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

  @34332    @hideViewIconForPPMGVflexTable-Programs @smoke @doubted @wip
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

  @49449    @sequenceFieldAtProgramOutcomesFlexTable-Programs @wip
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

  @49450    @buttonHelpTextFieldAtProgramOutcomesFlexTableAction-gPlanning @wip
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

  @49451    @viewActionOpensInNewWindowAtProgramOutcomesFlexTable-gPlanning @wip
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

  @49452    @locationFieldAtProgramOutcomesFlexTableActionItemFromRowToTop-gPlanning @wip
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

  @49453    @ConfirmationMessageFieldForProgramOutcomesFlexTAbleViewAction-gPlanning @wip
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

  @49454    @hideForProfileFieldAtProgramOutcomesFlexTableViewAction-gPlanning @wip
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

  @49455    @hideForUserFieldAtProgramOutcomesFlexTableViewAction-gPlanning @wip
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

  @49456    @hideForContextFieldAtProgramOutcomesFlexTableViewAction-gPlanning @wip
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

  @49457    @viewActionOpensInSameWindowAtProgramOutcomesFlexTable-gPlanning @wip
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

  @49458    @ViewActionOpensInOverLayWindowAtProgramOutcomesFlexTable-gPlanning @wip
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

  @49459    @editActionOpensInInlineModeAtProgramOutcomesFlexTable-gPlanning @wip
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

  @49460    @actionURLLongFieldAtProgramOutcomesFlexTableViewAction-gPlanning @wip
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

  @49462 @helpTextFieldAtProgramOutcomesFlexTableColumnHeader-gPlanning @skipOnJenkins @wip
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

  @49539    @hideForProfileFieldAtProgramOutcomesParentFlexTableEditAction-gPlanning @wip
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

  @49546    @hideForUserFieldAtProgramOutcomesParentFlexTableEditAction-gPlanning @wip
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

  @50210    @headerFieldAtProgramOutcomesParentFlexTable-gPlanning @wip
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

  @50211    @disablingPDFExportFileAtProgramOutcomesParentFlexTable-gPlanning @wip
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

  @62728    @disablingPDFExportFileAtProgramOutcomesParentFlexTable-gPlanning @wip
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

  @49461    @enableTotalFieldAtProgramOutcomesFlexTable-gPlanning @wip
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

  @50212    @disblingQuickSearchFieldAtProgramOutcomesFlexTable-gPlanning @wip
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

  @50213    @disablingMenuIconForProgramOutcomesFlexTable-gPlanning @smoke @wip
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

  @50216    @enableTotalRowFieldAtProgramOutcomesFlexTable-gPlanning @smoke @wip
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

  @50217    @enableTotalRecordsCountFieldAtProgramOutcomesFlexTable-gPlanning @smoke @wip
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

  @50219    @enablingEnableAutoIndexFieldAtProgramOutcomesFlexTable-gPlanning @wip
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

  @50226  @headerHelpTextFieldAtProgramOutcomesFlexTable-gPlanning @skipOnJenkins @wip
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
    And I pause execution for "10" seconds
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText                                                                                                                |
      | Help Text for Automation | The section display list of added key metrics for the program to evaluate the success. To add record,click on [add] button. |

  @50228    @enableHelpFieldAtProgramOutcomesFlexTable-gPlanning @wip
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

  @50230   @orderBySortByFieldAtProgramOutcomesFlexTableForAscendingOrder-gPlanning @wip
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

  @50231   @orderBySortByFieldAtProgramOutcomesFlexTableForDescendingOrder-gPlanning @wip
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

  @50232    @fieldLabelOverrideFieldAtProgramOutcomesFlexTableColumnHeader-gPlanning @wip
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

  @50229    @displayFieldNameFieldWithAddingfieldNamesOfDifferentDataTypes-gPlanning @smoke @wip
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

  @50233    @widthPercentageFieldAtParentProgramOutcomesFlexTable-gPlanning @wip
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

  @50239    @refreshBehaviourFieldAtApplicationBudgetPeriodsFlexTableAsRefreshEntirePageForEditAction-gPlanning @wip
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

  @50337    @buttonHelpTextFieldAtActiveGrantsGridParentFlexTableAction-gMonitoring @wip
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
    And I click toggle button to select "All Monitoring Schedules"
    When I perform quick search for "SC-01732"
    And I pause execution for "2" seconds
    Then I see "Automation Help" as title for "AD-Grant--07" inside flex table action

  @50338    @viewActionOpensInNewWindowForActiveGrantsGridParentFlexTableAction-gMonitoring @wip
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
    And I click toggle button to select "All Monitoring Schedules"
    When I perform quick search for "AD-Grant--07" in "---program:-:monitoringGridTableId---" panel
    When I click on "View" icon for "AD-Grant--07" inside table
    Then I see new tab is opened

  @50339    @viewActionOpensInSameWindowForActiveGrantsGridParentFlexTableAction-gMonitoring @wip
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
    And I click toggle button to select "All Monitoring Schedules"
    When I perform quick search for "AD-Grant--07"
    When I click on "View" icon for "AD-Grant--07" inside table
    Then I see no new tab is opened

  @50340    @viewActionOpensInOverlayForActiveGrantsGridParentFlexTableAction-gMonitoring @wip
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
    And I click toggle button to select "All Monitoring Schedules"
    When I perform quick search for "AD-Grant--07"
    When I click on "View" icon for "AD-Grant--07" inside table
    Then I see "View" opens in overLay window

  @50342    @actionURLLongFieldAtActiveGrantsGridParentFlexTableFlexTableViewAction-gPlanning @smoke @wip
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
    And I click toggle button to select "All Monitoring Schedules"
    When I perform quick search for "AD-Grant--07"
    When I click on "View" icon for "AD-Grant--07" inside table
    Then I see edit opens with "<newActionUrl>"

    Examples:
      | oldActionUrl                      | newActionUrl            |
      | /apex/GrantView?id={!Grant__c.Id} | https://www.google.com/ |

  @50343    @locationFieldAtActiveGrantsGridParentFlexTableActionItemFromRowToTop-gMonitoring @smoke @wip
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

  @50344    @locationFieldAtActiveGrantsGridParentFlexTableActionItemFromTopToRow-gMonitoring @smoke @wip
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
    And I click toggle button to select "All Monitoring Schedules"
    When I perform quick search for "AD-Grant--07"
    Then I see "View" icon for "AD-Grant--07" is displayed inside flex table

  @50345    @showConfirmationBoxFieldForActiveGrantsGridFlexTAbleViewAction-gMonitoring @smoke  @wip
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
    And I click toggle button to select "All Monitoring Schedules"
    When I perform quick search for "SC-01732"
    When I click on "View" icon for "AD-Grant--07" inside table with table id "---program:-:MonitoringScheduleGrantorTableId---" without processing
    Then I see confirmation box with body "null" is displayed

  @50346    @ConfirmationMessageFieldForActiveGrantsGridFlexTAbleViewAction-gMonitoring @wip
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
    And I click toggle button to select "All Monitoring Schedules"
    When I perform quick search for "SC-01732"
    When I click on "View" icon for "AD-Grant--07" inside table with table id "---program:-:toggleFlexGridMonitoringTableId---" without processing
    Then I see confirmation box with body "Test Automation" is displayed

  @50347    @refreshBehaviourFieldAtGrantorBudgetPeriodFlexTableAsRefreshEntirePageForEditAction-gGrants @smoke @wip
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

  @50351    @sequenceFieldAtGrantorBudgetPeriodFlexTableAction-gGrants @wip
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

  @50352    @hideForProfileFieldAtGrantorBudgetPeriodFlexTableViewAction-gGrants @smoke @wip
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

  @50353    @hideForUserFieldAtGrantorBudgetPeriodFlexTableViewAction-gGrants @smoke @wip
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

  @50355    @iconCSSFieldAtActiveGrantsGridParentFlexTableEditActionItem-gMonitoring @wip
  Scenario: Setup icon for ActiveGrantsGridParent flex table edit action from config and validating it at ActiveGrantsGridParentflex table of program-gMonitoring
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                                  | filterId         |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionDefaultIconCss | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                  | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionNewIconCss | MonitoringScheduleGrantor | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    And I click toggle button to select "All Monitoring Schedules"
    When I perform quick search for "SC-01732"
    Then I see external link icon as "AD-Grant--07" for "Edit" inside flex table action

  @50359    @actionNameFieldAtActiveGrantsGridParentFlexTableViewAction-gMonitoeing @wip
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
    And I click toggle button to select "All Monitoring Schedules"
    When I perform quick search for "SC-01732"
    Then I see "Test Automation" as title for "AD-Grant--07" inside flex table action

  @50362    @headerFieldAtActiveGrantsGridParentFlexTable-gMonitoring @wip
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

  @50365 @headerHelpTextFieldAtActiveGrantsGridParentFlexTable-gMonitoring @skipOnJenkins @wip
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

  @50367    @disblingQuickSearchFieldAtActiveGrantsGridParentFlexTable-gMonitoring @smoke @wip
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

  @50370    @enableHelpFieldAtActiveGrantsGridParentFlexTable-gMonitoring @smoke @wip
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
    When I click on parallel lines menu bar with data target value "#toggleFlexTableMonitoringScheduleGrantor"
    Then I see "Help" options inside "Monitoring Schedule For All Active Grant" enabled

  @50371    @enablePaginationFieldAtActiveGrantsGridParentFlexTable-gMonitoring @wip
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
    Then I see the text containing :
      | Page 1 of |

  @50377    @disablingMenuFieldAtActiveGrantsGridParentFlexTable-gMonitoring @smoke @wip
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

  @50379    @enableAutoIndexFieldAtActiveGrantsGridParentFlexTable-gMonitoring @wip
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

  @50380    @disablingEnableTotalRecordsCountFieldAtActiveGrantsGridParentFlexTable-gMonitoring @smoke @wip
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

  @50383    @orderBySortByFieldAtActiveGrantsGridParentFlexTableForAscendingOrder-gMonitoring @wip
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

  @50386    @orderBySortByFieldAtActiveGrantsGridParentFlexTableForDescendingOrder-gMonitoring @wip
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
    Then I see column "Number of Awards" value is in "Descending" order for table id "---program:-:MonitoringScheduleForAllActiveGrant---"

  @50391    @disablingEnableExportFieldAtActiveGrantsGridParentFlexTable-gMonitoring @wip
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
    When I click on parallel lines menu bar with data target value "#toggleFlexTableMonitoringScheduleGrantor"
    Then I see "Download as PDF" options inside "Monitoring Schedule For All Active Grant" disabled

  @62730    @disablingEnableExportFieldAtActiveGrantsGridParentFlexTable-gMonitoring @wip
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

  @50393 @helpTextFieldAtActiveGrantsGridParentFlexTable-gMonitoring @skipOnJenkins @wip
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

  @50394    @widthPercentageFieldAtActiveGrantsGridFlexTable-gMonitoring @wip
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

  @50397    @fieldLabelOverrideFieldAtActiveGrantsGridFlexTable-gMonitoring @wip
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

  @50395    @labelFieldAtActiveGrantsGridFlexTable-gMonitoring @wip
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

  @50399    @filterClauseFieldAtActiveGrantsGridFlexTable-gMonitoring @smoke @wip
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

  @50275    @refreshBehaviourFieldAtApplicationBudgetPeriodsFlexTableAsRefreshParentPageForEditAction-gGrants @wip
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

  @50244    @refreshBehaviourFieldAtApplicationBudgetPeriodsFlexTableAsRefreshTheGridForEditAction-gPlanning @wip
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

  @50350    @refreshBehaviourFieldAtGrantorBudgetPeriodFlexTableAsRefreshParentPageForEditAction-gGrants @wip
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

  @50348    @refreshBehaviourFieldAtGrantorBudgetPeriodFlexTableAsRefreshTheGridForEditAction-gPlanning @wip
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

  @51328    @buttonHelpTextFieldAtApplicationBudgetCategoryFlexTableActionChild-gApplications @wip
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "Budget Category" as title for "Indirect Cost Rate" inside flex table action

  @51332    @viewActionOpensInNewWindowAtApplicationBudgetCategoryFlexTableActionChild-gApplications @wip
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "View" icon for "Indirect Cost Rate" inside table
    Then I see new tab is opened

  @51333    @viewActionOpensInSameWindowAtApplicationBudgetCategoryFlexTableActionChild-gApplications @wip
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "View" icon for "Indirect Cost Rate" inside table
    Then I see no new tab is opened

  @51334    @viewActionOpensInOverlayWindowAtApplicationBudgetCategoryFlexTableActionChild-gApplications @wip
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "View" icon for "Indirect Cost Rate" inside table
    Then I see "View" opens in overLay window

  @51335    @showConfirmationBoxFieldAtApplicationBudgetCategoryFlexTableActionChild-gApplications @wip
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "View" icon for "Indirect Cost Rate" inside table
    Then I see confirmation box with body "null" is displayed

  @51343    @ConfirmationMessageFieldAtApplicationBudgetCategoryFlexTableActionChild-gApplications @wip
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "View" icon for "Indirect Cost Rate" inside table
    Then I see confirmation box with body "Automation" is displayed

  @51345    @hideForProfileFieldAtApplicationBudgetCategoryFlexTableViewActionChild-gApplications @wip
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
    When I perform quick search for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:ApplicationBudgetCategoryRecord}"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "View" icon for "Indirect Cost Rate" is not displayed inside flex table

  @51358    @hideForUserFieldAtApplicationBudgetCategoryFlexTableViewActionChild-gApplications @wip
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
    When I perform quick search for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:ApplicationBudgetCategoryRecord}"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "View" icon for "Indirect Cost Rate" is not displayed inside flex table

  @51368    @actionURLLongFieldAtApplicationBudgetCategoryFlexTableViewActionChild-gApplications @wip
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "View" icon for "Indirect Cost Rate" inside table
    Then I see edit opens with "<newActionUrl>"

    Examples:
      | oldActionUrl                                                               | newActionUrl            |
      | /apex/ApplicationBudgetCategoryView?id={!ApplicationBudgetCategory2__c.id} | https://www.google.com/ |

  @51375    @iconCSSFieldAtApplicationBudgetCategoryFlexTableViewActionChild-gApplications @wip
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
    When I perform quick search for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:ApplicationBudgetCategoryRecord}"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see record "Indirect Cost Rate" having action "View" donot contain icon css "fa fa-eye"

  @51384    @actionNameFieldAtApplicationBudgetCategoryFlexTableViewActionChild-gApplications @skipOnJenkins @wip
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I hovering mouse on help text icon inside "Actions" for flex table column
    Then I see "Test Automation" as title for "Indirect Cost Rate" inside flex table action

  @51400    @headerFieldAtApplicationBudgetCategoryFlexTable-gApplications @wip
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
    When I perform quick search for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:ApplicationBudgetCategoryRecord}"
    When I expand nested table containing column value "Test Automation"
    Then I see Nested Table "---program:-:applicationBudgetCategoryFlexGridTableId---" with changed header name as "Test Automation"

  @51499    @buttonHelpTextFieldAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51500    @viewActionOpensInNewWindowAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51502    @viewActionOpensInSameWindowAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51503    @viewActionOpensInOverlayAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51505    @actionURLLongFieldAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51510    @hideForProfileFieldAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51511    @hideForUserFieldAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51512    @iconCSSFieldAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51513    @actionNameFieldAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51515    @enablingEnableAutoIndexFieldAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51516    @enableTotalRecordsCountFieldAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51558    @displayFieldNameFieldAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51548    @fieldLabelOverrideFieldAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51550    @widthPercentageFieldAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51482    @labelFieldAtApplicationBudgetCategoryFlexTableChild-gApplications @wip
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
    When I perform quick search for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:ApplicationBudgetCategoryRecord}"
    Then I see Nested Table "---program:-:applicationBudgetCategoryFlexGridTableId---" with changed header name as "Test Automation"

  @51450    @helpTextFieldAtApplicationBudgetCategoryFlexTableChild-gApplications @skiponjenkins @wip
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    And I pause execution for "8" seconds
    When I hovering mouse on help text icon inside "Grantee Share %" for flex table column
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText    |
      | Test Automation |

  @51449    @fieldLabelOverrideFieldAtApplicationBudgetCategoryFlexTableChild-gApplications @wip
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "Test Automation" shown inside flex table with id "---program:-:applicationBudgetCategoryFlexGridTableId---"

  @51556    @displayFieldNameFieldAtApplicationBudgetCategoryFlexTableChild-gApplications @wip
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "<fieldDisplayNames>" in program Outcomes flex table header with id "---program:-:applicationBudgetCategoryFlexGridTableId---"

    Examples:
      | fieldDisplayNames          | newFieldsApi                                                                                                   | defaultFieldsApi                                                                                     |
      | Service Area               | ServiceAreaTitle__c,Id,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c           | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c |
      | Budget Category            | BudgetCategory__c,Id,ServiceAreaTitle__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c           | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c |
      | Grantor Share              | GrantorAmount__c,Id,ServiceAreaTitle__c,BudgetCategory__c,GranteeAmount__c,Amount__c,GranteeShare__c           | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c |
      | App Budget Category Status | AppBudgetCategoryStatus__c,Id,ServiceAreaTitle__c,BudgetCategory__c,GranteeAmount__c,Amount__c,GranteeShare__c | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c |

  @51506    @showConfirmationBoxFieldAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51509    @ConfirmationMessageFieldAtBudgetPeriodFlexTableActionChild-gGrants @wip
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

  @51547 @helpTextFieldAtBudgetPeriodFlexTableActionChild-gGrants @skipOnJenkins @wip
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

  @51406    @enablingEnableAutoIndexFieldAtApplicationBudgetCategoryFlexTable-gApplications @wip
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "#" shown inside flex table with id "---program:-:applicationBudgetCategoryFlexGridTableId---"

  @51414    @enableTotalRecordsCountFieldAtApplicationBudgetCategoryFlexTable-gApplications @wip
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
    When I perform quick search for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:ApplicationBudgetCategoryRecord}"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see no "Total Records" count in "---program:-:applicationBudgetCategoryFlexGridTableId---"

  @34335    @hideForProfileFieldForPPMGVflexTable-Programs @wip
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

  @34337    @hideOperatorFieldForPPMGVflexTable-Programs @wip
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

  @34338    @ConfirmationMessageFieldForPPMGVflexTable-Programs @wip
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

  @51447   @orderBySortByFieldAtApplicationBudgetCategoryFlexTableChildForDescendingOrder-gApplications @wip
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
    And I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    And I pause execution for "5" seconds
    Then I see column "Budget Category" value is in "Descending" order for table id "---program:-:applicationBudgetCategoryFlexGridTableId---" for MEGrid

  @51446   @orderBySortByFieldAtApplicationBudgetCategoryFlexTableChildForAscendingOrder-gApplications @wip
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
    And I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see column "Budget Category" value is in "Ascending" order for table id "---program:-:applicationBudgetCategoryFlexGridTableId---" for MEGrid

  @78303    @verifyByClickOnLookupValueItShouldRedirectedToRespectiveRecordPageAtMEGrid-gApplications @wip
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

  @78308    @verifyByClickOnLookupValueItShouldRedirectedToRespectiveRecordPageAtN2GGrid-gGrants @wip
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
    When I click on "GT-GG PJ-001" icon for "2021" inside table
    Then I see "Grant View" shown as over view header

    Examples:
      | defaultFieldsApi                                               | newFieldsApi                                                            |
      | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c,Grant__c |

  @79730    @verifyByClickOnUserValueItShouldRedirectedToRespectiveUserPageAtMEGrid-gApplication @wip
  Scenario Outline: validate by click on user value in table , respective user page should get opens at ME Grid - gApplication
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
    When I click on "Bob Samuela" icon for "BP-02" inside table
    Then I see "User" shown as over view header

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                                                                         |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c,CreatedById |

  @79731    @verifyByClickOnUserValueItShouldRedirectedToRespectiveUserPageAtN2GGrid-gGrant @wip
  Scenario Outline: validate by click on user value in table , respective user page should get opens at N2G Grid - gGrant
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
    When I click on "David PM" icon for "2021" inside table
    Then I see "User" shown as over view header

    Examples:
      | defaultFieldsApi                                               | newFieldsApi                                                               |
      | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c,CreatedById |

  @80174    @VerifyDefaultTotalIsNotDisplayedAtCurrencyFieldIfEnableTotalIsUncheckedAtProgramOutcomesFlexTable-gPlanning @wip
  Scenario: Validating default total for currency field after setting Enable total and Enable Total Row to false from config and validating it inside ME Grid-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Total     | false             | ApiGeneratedId:0 |
      | Flex Table:General    | Enable Total Row | false             | ApiGeneratedId:1 |
      | Flex Table List       | Enable Total     | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total     | false         | ProgramOutcomes    | Name                      | FTC-1188                   |
      | Flex Table:General    | Enable Total Row | false         | ProgramOutcomes    |                           |                            |
      | Flex Table List       | Enable Total     | false         | ProgramOutcomes    | Name                      | FTC-1503                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I do not see default total at "---program:-:programOutComesTableId---" flex grid

  @80182    @VerifyDefaultTotalIsNotDisplayedAtCurrencyFieldIfEnableTotalIsUncheckedAtN2GGrid-gGrant @wip
  Scenario: Validating default total for currency field after setting Enable total and Enable Total Row to false from config and validating it inside N2G Grid-GRANT
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Total     | true              | ApiGeneratedId:0 |
      | Flex Table:General    | Enable Total Row | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total     | false         | ActiveGrants       | Name                      | FTC-870                    |
      | Flex Table:General    | Enable Total Row | false         | ActiveGrants       |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I do not see default total at active grants flex grid

  @83657    @verifyByClickOnUserValueItShouldRedirectedToRespectiveRecordPageAtMEGridChildTable-gApplications @sanity @wip
  Scenario Outline: validate by click on user lookup value in table , respective page should get opens at ME Grid child table - gApplications
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
    And I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-02"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "Bob Samuela" icon for "Equipment" inside table
    Then I see "Community User" shown as over view header

    Examples:
      | newFieldsApi                                                                                                        | defaultFieldsApi                                                                                     |
      | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c,CreatedBy.Name | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c |

  @83658    @verifyByClickOnUserValueItShouldRedirectedToRespectiveUserPageAtN2GGridChildTable-gGrant @wip
  Scenario Outline: validate by click on user value in table , respective user page should get opens at N2G Grid child table- gGrant
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
    When I click on "David PM" icon for "AD-GG PJ--00" inside table
    Then I see "User" shown as over view header

    Examples:
      | defaultFieldsApi                                                                               | newFieldsApi                                                                                               |
      | Id,Name,GrantAwardName__c,AwardedAmountthisAction__c,YTDAdvancePaid__c,YTDReimbursementPaid__c | Id,Name,GrantAwardName__c,AwardedAmountthisAction__c,YTDAdvancePaid__c,YTDReimbursementPaid__c,CreatedById |

  @83659    @verifyByClickOnAccountValueItShouldRedirectedToRespectiveUserPageAtN2GGridChildTable-gGrant @wip
  Scenario Outline: validate by click on account value in table , respective user page should get opens at N2G Grid child table- gGrant
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
    When I click on "Department of Community Health" icon for "AD-GG PJ--00" inside table
    Then I see "Organization" shown as over view header

    Examples:
      | defaultFieldsApi                                                                               | newFieldsApi                                                                                              |
      | Id,Name,GrantAwardName__c,AwardedAmountthisAction__c,YTDAdvancePaid__c,YTDReimbursementPaid__c | Id,Name,GrantAwardName__c,AwardedAmountthisAction__c,YTDAdvancePaid__c,YTDReimbursementPaid__c,Account__c |

  @84690    @verifyDateAndTimeFieldFormatForLocalAsESTUnderMEGridParentFlexTable @wip
  Scenario: validate the date and time field format under ME Grid parent flex table with respective to EST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    And I edit the following rows inline in flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "Edit" :
      | Support Year | DateTime |
      | BP-02        | 0        |
    And I save the value from row "1" for column name "DateTime" as "DateTimeValue" from flex table "---program:-:applicationBudgetCategoryInlineEditTableId---"
    Then I see value "{SavedValue:DateTimeValue}" for title "DateTime" inside table "---program:-:applicationBudgetCategoryFlexGridTableId---"

  @84700    @verifyDateAndTimeFieldFormatForLocalAsEDTUnderMEGridParentFlexTable @wip
  Scenario: validate the date and time field format under ME Grid parent flex table with respective to EDT Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryFlexGridTableId---" panel
    And I save the value from row "1" for column name "DateTime" as "SaveDate" from flex table "---program:-:applicationBudgetCategoryFlexGridTableId---"
    Then I see value "{SavedValue:SaveDate}" for title "DateTime" inside table "---program:-:applicationBudgetCategoryFlexGridTableId---"

  @84703    @verifyDateAndTimeFieldFormatForLocalAsISTUnderMEGridParentFlexTable @wip
  Scenario: validate the date and time field format under ME Grid parent flex table with respective to IST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryFlexGridTableId---" panel
    And I save the value from row "1" for column name "DateTime" as "SaveDate" from flex table "---program:-:applicationBudgetCategoryFlexGridTableId---"
    Then I see value "{SavedValue:SaveDate}" for title "DateTime" inside table "---program:-:applicationBudgetCategoryFlexGridTableId---"

  @84815    @verifyDateFieldFormatForLocalAsESTUnderMEGridParentFlexTable @wip
  Scenario: validate the date field format under ME Grid parent flex table with respective to EST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryFlexGridTableId---" panel
    Then I see value "06/01/2020" for title "Start Date" inside table "---program:-:applicationBudgetCategoryFlexGridTableId---"

  @84816    @verifyDateFieldFormatForLocalAsEDTUnderMEGridParentFlexTable @wip
  Scenario: validate the date field format under ME Grid parent flex table with respective to EDT Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryFlexGridTableId---" panel
    Then I see value "01/06/2020" for title "Start Date" inside table "---program:-:applicationBudgetCategoryFlexGridTableId---"

  @84817    @verifyDateFieldFormatForLocalAsISTUnderMEGridParentFlexTable @wip
  Scenario: validate the date field format under ME Grid parent flex table with respective to IST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryFlexGridTableId---" panel
    Then I see value "1/6/2020" for title "Start Date" inside table "---program:-:applicationBudgetCategoryFlexGridTableId---"

  @105119    @VerifySubTotalIsDisplayedInAStandardFormatAtChildFlexTableInsideMEGrid-gGrant @flexGrid @wip
  Scenario Outline: Validating sub total is displayed in a standard format at child flex table under ME Grid
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see subtotal amount at "Grantor Share" currency field is displayed in a correct format inside "---program:-:applicationBudgetCategoryFlexGridTableId---"

    Examples:
      | defaultFieldsApi                                                                                     | newFieldsApi                                              |
      | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c |

  @107146    @verifyDateAndTimeFieldFormatForLocalAsESTUnderN2GGridParentFlexTable @wip
  Scenario Outline: validate the date and time field format under N2G Grid parent flex table with respective to EST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | GrantorBudgetPeriod |                           |                            |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I pause execution for "5" seconds
    Then I see value "10/07/2020 6:23 AM" for title "DateTime" inside table "---program:-:BudgetPeroidNewId---"

    Examples:
      | defaultFieldsApi                                               | newFieldsApi                                                               |
      | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c,DateTime__c |

  @107130    @verifyDateAndTimeFieldFormatForLocalAsEDTUnderN2GGridParentFlexTable @wip
  Scenario Outline: validate the date and time field format under N2G Grid parent flex table with respective to EDT Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | GrantorBudgetPeriod |                           |                            |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    Then I see value "07/10/2020 6:23 AM" for title "DateTime" inside table "---program:-:BudgetPeroidNewId---"

    Examples:
      | defaultFieldsApi                                               | newFieldsApi                                                               |
      | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c,DateTime__c |

  @107110   @verifyDateAndTimeFieldFormatForLocalAsISTUnderN2GGridParentFlexTable @wip
  Scenario Outline: validate the date and time field format under N2G Grid parent flex table with respective to IST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | GrantorBudgetPeriod |                           |                            |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    Then I see value "7/10/2020 6:23 AM" for title "DateTime" inside table "---program:-:BudgetPeroidNewId---"

    Examples:
      | defaultFieldsApi                                               | newFieldsApi                                                               |
      | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c,DateTime__c |

  @120419   @verifyLookupFieldValueIsDisplayedInInlineEditModeAtMEGrid @wip
  Scenario: validate that lookup field value displayed in inline edit mode in ME Grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I click on "Edit" icon for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" inside table
    Then I see lookup field "ID" is in edit mode

  @125138   @verifyLookupFieldIsDisplayedAsSelectPicklistInInlineEditModeAtMEGridIfRenderTypeIsSelectedAsSelectDropdownFromConfig @wip
  Scenario: validate that lookup field is displayed as picklist in inline edit mode in ME Grid if render type = select dropdown
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Table List       | Render Type | Autosuggest       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue   | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Render Type | Select dropdown | ApplicationBudgetPeriods | Name                      | FTC-1534                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I click on "Edit" icon for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" inside table
    Then I see lookup field is rendered with picklist

  @125394   @verifyLookupFieldIsDisplayedAsSelectPicklistInInlineEditModeAtMEGridIfRenderTypeIsSelectedAsNoneFromConfig @wip
  Scenario: validate that lookup field is displayed as picklist in inline edit mode in ME Grid if render type = None
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Table List       | Render Type |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Render Type |               | ApplicationBudgetPeriods | Name                      | FTC-1534                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I click on "Edit" icon for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" inside table
    Then I see lookup field is rendered with picklist

  @125393   @verifyLookupFieldIsDisplayedWithAutoSuggestionInInlineEditModeAtMEGridIfRenderTypeIsSelectedAsAutosuggestFromConfig @wip
  Scenario: validate that lookup field is displayed with Autosuggestion in inline edit mode in ME Grid if render type = Autosuggest
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Table List       | Render Type | Autosuggest       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Render Type | Autosuggest   | ApplicationBudgetPeriods | Name                      | FTC-1534                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I click on "Edit" icon for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" inside table
    Then I see lookup field is rendered with Autosuggestion

  @130542    @helpTextDisplayedAtBottomOfHelpIconAtMEGridInPageViewMode @wip
  Scenario: validate help text displayed at bottom of hekp icon at ME grid in page layout view mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I hovering mouse on help text icon inside "Key Outcomes" for flex table
    Then I see help text is displayed at bottom

  @131661    @helpTextDisplayedAtBottomOfHelpIconAtMEGridInPageEditMode @wip
  Scenario: validate help text displayed at bottom of hekp icon at ME grid in page layout edit mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I hovering mouse on help text icon inside "Key Outcomes" for flex table
    Then I see help text is displayed at bottom

  @130544    @helpTextDisplayedAtBottomOfHelpIconAtN2GGridInPageViewMode @wip
  Scenario: validate help text displayed at bottom of help icon at N2G grid in page layout view mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I hovering mouse on help text icon inside "Goals Objectives" for flex table
    Then I see help text is displayed at bottom

  @130545    @helpTextDisplayedAtBottomOfHelpIconAtN2GGridInPageEditMode @wip
  Scenario: validate help text displayed at bottom of hekp icon at N2G grid in page layout edit mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    When I hovering mouse on help text icon inside "Goals Objectives" for flex table
    Then I see help text is displayed at bottom

  @130099    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtMEGrid @skipOnJenkins @wip
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at ME grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I hover mouse on lookup link "AP-755-213" at table
    And I pause execution for "4" seconds
    Then I softly see "title" as "AP-755-213" inside mini page layout
    And I refresh the page
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I hover mouse on lookup link "AP-755-213" at table
    And I pause execution for "4" seconds
    Then I softly see "Label" as "Title" inside mini page layout
    And I refresh the page
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I hover mouse on lookup link "AP-755-213" at table
    And I pause execution for "4" seconds
    Then I softly see "Value" as "Demo_Title" inside mini page layout

  @132267    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtN2GGrid @wip
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at N2G grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I perform quick search for "GT-MAC-1-001"
    When I hover mouse on lookup link "Secretary of Education" at grid
    And I pause execution for "3" seconds
    Then I softly see "title" as "Secretary of Education" inside mini page layout
    And I refresh the page
    When I perform quick search for "GT-MAC-1-001"
    And I pause execution for "3" seconds
    When I hover mouse on lookup link "Secretary of Education" at grid
    And I pause execution for "3" seconds
    Then I softly see "Label" as "Code" inside mini page layout
    And I refresh the page
    When I perform quick search for "GT-MAC-1-001"
    When I hover mouse on lookup link "Secretary of Education" at grid
    And I pause execution for "3" seconds
    Then I softly see "Value" as "434" inside mini page layout

  @148331    @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtMEGridParentTable @wip
  Scenario Outline: verify number field is displayed with 4 decimal places at ME Grid parent table
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I click on "Edit" icon for "BP-03" inside table
    And I click on top right button "Save" in flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---"
    Then I see value "12,344.0000" for title "NumberDecimal" inside table "---program:-:applicationBudgetCategoryInlineEditTableId---"

    Examples:
      | newFieldsApi                                                                                            | defaultFieldsApi                                                                       |
      | Id,NumberDecimal__c,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c,BudgetType__c | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c,BudgetType__c |

  @148363    @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtMEGridParentTableOverallTotal @wip
  Scenario Outline: verify number field is displayed with 4 decimal places at ME Grid parent table overall total
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I click on "Edit" icon for "BP-03" inside table
    And I click on top right button "Save" in flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---"
    Then I see the text :
      | 12,344.0000 |

    Examples:
      | newFieldsApi                                                                                            | defaultFieldsApi                                                                       |
      | Id,NumberDecimal__c,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c,BudgetType__c | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c,BudgetType__c |

  @150007    @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtMEGridChildTable @wip
  Scenario Outline: verify number field is displayed with 4 decimal places at ME Grid child table
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
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see value "0.0000" for title "testnumber" inside table "---program:-:applicationBudgetCategoryInlineEditTableId---"

    Examples:
      | newFieldsApi                                                                                                                                     | defaultFieldsApi                                                                                     |
      | Id,ServiceAreaTitle__c,BuildUpItem__r.testnumber__c,BuildUpItem__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c |

  @150016    @verifyNumberFieldTotalIsDisplayedWithFourDecimalPlacesAtMEGridChildTable @wip
  Scenario Outline: verify number field total is displayed with 4 decimal places at ME Grid child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetCategoryFlexTable |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "{Framework_recordUsed:ApplicationBudgetCategoryRecordTstCurrancy}" in "---program:-:applicationBudgetCategoryFlexGridTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:ApplicationBudgetCategoryRecordTstCurrancy}"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "Edit" icon for "{Framework_recordUsed:ApplicationBudgetCategoryRecordTstCurrancy}" inside table
    And I click on top right button "Save" in flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---"
    Then I see the text :
      | 1,234.0000 |

    Examples:
      | newFieldsApi                                                                                                                                                   | defaultFieldsApi                                                                                     |
      | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c,BuildUpItem__r.testnumber__c,BuildUpItem__c,testnumber__c | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c |

  @148233    @verifyNoneValueCanBeSavedUnderPicklistFieldValueAtMEGrid @wip
  Scenario Outline: validate that None value is accepted at picklist field under ME Grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    And I edit the following rows inline in flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "Edit" :
      | Support Year | BudgetAvailable |
      | BP-01        | --None--        |
    Then I see the following messages in the page details :
      | Record Saved Successfully. |

    Examples:
      | defaultFieldsApi                                                                       | newFieldsApi                                                                           |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c,BudgetType__c | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c,BudgetType__c |

  @149668    @verifyAlertMsgDisplayedByEnteringLongValueInTextFieldAtMEGrid @wip
  Scenario Outline: validate alert msg displayed by entering long value inside text field at me grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    And I edit the following rows inline in flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "Edit" :
      | Support Year | testText              |
      | BP-01        | ttttttrtrytytygftdtsr |
    Then I see the following messages in the page details :
      | testText : data value too large |

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                  |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,testText__c |

  @150695    @verifyAlertMsgDisplayedByEnteringLongValueInTextFieldAtMEGridChildTable @wip
  Scenario: validate alert msg displayed by entering long value inside text field at me grid child table
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Decision Field | HideApplicationEditDelete__c | AppLineItems       | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Decision Field |               | AppLineItems       | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-687-010"
    When I click on "View" icon for "AP-687-010" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "{Framework_recordUsed:ApplicationBudgetCategoryRecordTstCurrancy}" in "---program:-:applicationBudgetCategoryFlexGridTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:ApplicationBudgetCategoryRecordTstCurrancy}"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "Add Line Items" icon for "Employee reward/bonus" inside table
    And I pause execution for "10" seconds
    And I edit the following rows inline in flex table with id "inlineEditGridAppLineItem" by clicking "Edit" :
      | Title                | Grantor Share %     |
      | Computer Application | 1000000000000007777 |
    Then I see the following messages in the page details :
      | Grantor Share : value outside of valid range on numeric field |

  @148762 @verifyThatParentPageDoesNotRefreshAfterClickingOnSaveActionInN2GGrid @wip
  Scenario: validate that Parent page does not refresh after clicking on Save action in enhanced grid
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Context | Edit              | ProgramStrategicGoals | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Context |               | ProgramStrategicGoals | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I clear the value from field "Objectives__c"
    When I enter value "test temp data" into field "fieldObjectives__c"
    And I navigate to "Plan" sub tab
    And I click on top right button "New" in flex table with id "inlineEditGridProgramPerformanceMgmtGridView"
    And I enter value "fieldDueDate__c" into field "fieldDescription__c"
    And I enter value "test data" into field "fieldTitle__c"
    And I enter value "1" into field "fieldDueDate__c"
    And I click modal button "Save"
    And I pause execution for "3" seconds
    Then I donot see navigation logo on page

  @168908 @VerifyCurrencyReferenceFieldIsAvailableOnTableDsisplaysDollerSignForViewMode @wip
  Scenario Outline: ME-grid-To verify,  if a currency reference field is available on the table it displays a dollar sign for the View layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Budget" sub tab
    Then I see value "$0.00" for title "testcurrency" inside table "---program:-:applicationBudgetCategoryInlineEditTableId---"

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                   |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Application__r.testcurrency__c |

  @51323    @sequenceFieldAtApplicationBudgetCategoryFlexTableChild-gApplications @flexGrid @wip
  Scenario: Changing sequence of view row level action item at Application Budget child flex table from config and validating it inside Application Budget child flex table of programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table Action     | Sequence  | 1                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Sequence  | 0             | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "{Framework_recordUsed:ApplicationBudgetCategoryRecord}" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:ApplicationBudgetCategoryRecord}"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "View" icon for "---program:-:applicationBudgetCategoryFlexGridTableId---" is at position "0" inside flex table
