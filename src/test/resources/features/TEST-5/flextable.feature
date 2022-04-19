@flextable-component @regression-test5 @flexTable
Business Need: Flex Table Component Scenarios
  Test all flex table component based scenarios
  As a configuration manager i make different configurational changes in flex table component and will validate them.

  @34022    @changeOfFlexTableTitle-gPlanning
  Scenario: validate after changing name of flex table title inside planning-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Label     | Draft Programs    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Label     | Automation    | Programs           | Name                      | FLV-1837                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Automation" shown as flex table title

  @34024    @disablingPDFExportFile-gPlanning
  Scenario: validate disabling of PDF download from menu option in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    Then I see "Download as PDF" options inside "Draft Programs" disabled

  @62703    @disablingCSVExportFile-gPlanning
  Scenario: validate disabling of Excel download from menu option in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    Then I see "Download as CSV" options inside "Draft Programs" disabled

  @34026    @disblingQuickSearch-gPlanning
  Scenario: validate disabling of quick search in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I do not see quick search option is displayed

  @34027    @disablingAdvanceFilter-gPlanning
  Scenario: validate disabling of advance filter from planning-Program flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see Advance Filter is disabled from table "toggleFlexTablePrograms" with data target value "#advfPrograms"

  @34028    @disablingMenuIcon-gPlanning
  Scenario: validate disabling of menu icon from Program flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table            | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Disable Menu | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see Menu icon is disabled from planning flex table "Draft Programs"

  @34029    @enableRecordSelectionForFlex-gPlanning
  Scenario: validate enabling of record selection check boxes in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Record Selection | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I pause execution for "3" seconds
    Then I see select check box enabled in flex table

  @34030    @disablingAmountTotalForFlex-gPlanning
  Scenario: validate disbaling of total amount in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Row | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Total     | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Row | false         | Programs           |                           |                            |
      | Flex Table List       | Enable Total     | false         | Programs           | Name                      | FTC-1018                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I pause execution for "2" seconds
    Then I see total amount row in flex table is not displayed

  @34031    @disablingEnableTotalRecordsCountFieldAtProgramFlexTable-gPlanning
  Scenario: validate disbaling of total row count in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see no "Total Records" count in "---program:-:programsTableId---"

  @34032    @additionOfLabelForRowNamedTotal-gPlanning
  Scenario: validate addition of label for row named as total of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | filterId         |
      | Flex Table            | Total Row Label | Total             | Programs           | ApiGeneratedId:0 |
      | Flex Table List       | Enable Total    | true              | Programs           | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Total Row Label | Automation Total | Programs           |                           | Total                      |
      | Flex Table List       | Enable Total    | true             | Programs           | Name                      | FTC-1018                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see changed label as "Automation Total" of last row name

  @34033    @enableAutoIndex-gPlanning
  Scenario: validate enable auto index for details inside flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see "#" in flex table header "toggleFlexTablePrograms"

  @34035    @disableSpecificStatusCategory-gPlanning @smoke
  Scenario Outline: validate removing Created status category from flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table List       | Filter Clause | <oldSoqlFilter>   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Filter Clause | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I softly do not see "Created" value in flex table id "---program:-:programsTableId---"

    Examples:
      | newSoqlFilter                                                                                                   | oldSoqlFilter                                                                                                             |
      | RecordType.Name = 'Internal Program' and Status__c IN ( 'Change Requested','Submitted for Approval','Approved') | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') |

  @34037    @editActionOpensInNewWindow-gPlanning
  Scenario: validate flex table action field- Edit opens in new window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in new window | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see new tab is opened

  @34038    @editActionOpensInSameWindow-gPlanning @smoke
  Scenario: validate flex table action field- Edit opens in same window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in same window | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see no new tab is opened

  @34039    @editActionOpensInOverLayWindow-gPlanning
  Scenario: validate flex table action field- Edit opens in overlay window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Edit" opens in overLay window

  @34292    @refreshBehaviourFieldAtRolesAndResponsilitiesFlexTableAsRefreshEntirePage-gPlanning
  Scenario: validate flex table action field- refresh entire page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue           | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Refresh the entire page | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I click on "Edit" icon for "Owner" to save inside subtab
    And I click on "Save" in the page details
    Then I see entire page is refreshing

  @34297    @hideForProfileFieldAtRolesAndResponsibilitiesFlexTableAction-gPlanning @smoke
  Scenario: Hide edit row level action for specific profile from configuration and validating it at under roles and responibilities flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue        | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile | System Administrator | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    Then I see "Edit" icon for "Owner" is not displayed inside flex table

  @34298    @hideForUserFieldAtRolesAndResponsibilitiesFlexTableAction-gPlanning @smoke
  Scenario: Hide edit row level action for specific profile from configuration and validating it at under roles and responibilities flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName     | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName     | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User | Internal      | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    Then I see "Edit" icon for "Owner" is not displayed inside flex table

  @34299    @hideForContextFieldAtRolesAndResponsibilitiesFlexTableAction-gPlanning @smoke
  Scenario: Hide edit row level action for edit layout from configuration and validating it at under roles and responibilities flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Context |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Context | Edit          | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    Then I see "Edit" icon for "Owner" is not displayed inside flex table

  @34300    @hideOperatorFieldUsingANDOperatorAtRolesAndResponsibilitiesFlexTAbleAction-gPlanning
  Scenario: Hide edit row level action using AND operator from configuration and validating it at under roles and responibilities flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide For Context |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Operator    |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue        | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile | System Administrator | ProgramRolesAndResponsibilities | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide For Context | Edit                 | ProgramRolesAndResponsibilities | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Operator    | AND                  | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    Then I see "Edit" icon for "Owner" is not displayed inside flex table

  @34302    @hideOperatorFieldUsingOROperatorAtRolesAndResponsibilitiesFlexTAbleAction-gPlanning
  Scenario: Hide edit row level action using OR operator from configuration and validating it at under roles and responibilities flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide For Context |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Operator    |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue        | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile | System Administrator | ProgramRolesAndResponsibilities | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide For Context | Edit                 | ProgramRolesAndResponsibilities | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Operator    | OR                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    Then I see "Edit" icon for "Owner" is not displayed inside flex table

  @39287    @headerHelpTextFieldAtFlexTable-gPlanning
  Scenario Outline: Changing content of header help text field at flex table and validating it at draft program flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | <new_helpText> | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I hovering mouse on help text icon inside "Draft Programs" for flex table
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText                                                                                                       |
      | Help Text for Automation | 'internal program' represents all the programs that the user has access to and are presented as a list or a table. |

  @39296    @enableHelpFieldAtFlexTable-gPlanning
  Scenario: validate enabling of help inside menu option in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Help | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Help | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    Then I see "Help" options inside "Draft Programs" enabled

  @39298    @enablePageSizeFieldAtFlexTable-gPlanning
  Scenario: validate enabling of page size dropdown at bottom in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Page Size | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Page Size | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see "Show" with page size dropdown at "---program:-:programsTableId---"

  @39299    @enablePaginationFieldAtFlexTable-gPlanning
  Scenario: validate enabling of page size dropdown at bottom in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see "Page" with pagination arrow at "---program:-:programsTableId---" at "Top"

  @39302    @defaultPageSizeFieldAtFlexTable-gPlanning
  Scenario: validate change of default page size inside dropdown at bottom in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Default Page Size | 10                | ApiGeneratedId:0 |
      | Flex Table List       | Enable Total      | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Row  | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Default Page Size | 20            | Programs           |                           |                            |
      | Flex Table List       | Enable Total      | false         | Programs           | Name                      | FTC-1018                   |
      | Flex Table:General    | Enable Total Row  | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see "20" records inside flex table id "---program:-:programsTableId---"

  @40002    @helpTextFieldAtFlexTableColumnHeader-gPlanning
  Scenario Outline: Changing content of help text field at flex table column header from config and validating it inside flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Help Text | <new_helpText> | Programs           | Name                      | FTC-1016                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I hovering mouse on help text icon inside "ID" for flex table column
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText             |
      | Help Text for Automation |

  @40004    @fieldLabelOverrideFieldAtFlexTableColumnHeader-gPlanning
  Scenario: Changing specific column name of program flex table from config and validating it inside flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Field Label Override | ID                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field Label Override | Test          | Programs           | Name                      | FTC-1016                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see "Test" shown as flex table column title

  @40005    @enableTotalFieldAtFlexTable-gPlanning
  Scenario: Enabling total amount inside funded amount columb for all records config and validating it inside flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Total | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total     | true          | Programs           | Name                      | FTC-1018                   |
      | Flex Table:General    | Enable Total Row | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see total amount in flex table

  @40012    @sequenceFieldAtFlexTableAction-gPlanning
  Scenario: Changing sequence of edit row level action item at flex table from config and validating it inside flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table Action     | Sequence  | 1                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Sequence  | 2             | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see "Edit" row action Button at position "1"

  @40014    @buttonHelpTextFieldAtFlexTableAction-gPlanning
  Scenario: Changing content of button help text field at flex table action from config and validating it inside flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Button Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text | Automation Help | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see "Automation Help" as title for "Test program for automation - Created mode only" inside flex table action

  @40015    @actionURLFieldAtFlexTableAction-gPlanning
  Scenario Outline: Changing action url of action url field for edit action from config and validating it at flex table of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Flex Table Action     | Action URL | <oldActionUrl>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL | <newActionUrl> | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see edit opens with "<newActionUrl>"

    Examples:
      | oldActionUrl                                                     | newActionUrl            |
      | /apex/ProgramEdit?id={!Program__c.Id}&RecordType=InternalProgram | https://www.google.com/ |

  @40020    @iconCSSFieldAtFlexTableAction-gPlanning
  Scenario: Setup icon for flex table edit action from config and validating it at flex table of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                                  | filterId         |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionDefaultIconCss | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionNewIconCss | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see external link icon as "Test program for automation - Created mode only" for "Edit" inside flex table action

  @40079    @locationFieldAtFlexTableRowLevelEditAction-gPlanning @smoke
  Scenario: Changing location of roles and responsibilities flex table edit action from row to top from config anf validating it inside Roles and Responsibilities flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row               | ProgramRolesAndResponsibilities | Name                      | Edit                       |
      | Flex Table Action     | Header Action Display Type |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top           | ProgramRolesAndResponsibilities | Name                      | Edit                       |
      | Flex Table Action     | Header Action Display Type | Button        | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    And I pause execution for "3" seconds
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    Then I see "Edit" button inside "Roles And Responsibilities" flex table

  @40080    @locationFieldAtFlexTableTopLevelNewAction-gPlanning
  Scenario: Changing location of roles and responsibilities flex table new action button from top to row from config anf validating it inside Roles and Responsibilities flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top               | ProgramRolesAndResponsibilities | Name                      | New                        |
      | Flex Table Action     | Header Action Display Type | Button            | ProgramRolesAndResponsibilities | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location  | Row           | ProgramRolesAndResponsibilities | Name                      | New                        |
    When I login as "Automation" user
    And I pause execution for "3" seconds
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    Then I see "New" icon for "Owner" is displayed inside flex table

  @40087    @headerActionDisplayTypeFieldAtFlexTableTopLevelNewActionAsMenu-gPlanning
  Scenario: Changing display type of roles and responsibilities flex table new action button from button to menu from config anf validating it inside Roles and Responsibilities flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Header Action Display Type | Button            | ProgramRolesAndResponsibilities | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Header Action Display Type | Menu          | ProgramRolesAndResponsibilities | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableProgramRolesAndResponsibilities"
    Then I see "New" options inside "Roles And Responsibilities" enabled

  @40088    @headerActionDisplayTypeFieldAtFlexTableTopLevelNewActionAsLink-gPlanning
  Scenario: Changing display type of roles and responsibilities flex table new action button from button to menu from config anf validating it inside Roles and Responsibilities flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Header Action Display Type | Button            | ProgramRolesAndResponsibilities | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Header Action Display Type | link          | ProgramRolesAndResponsibilities | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    Then I see "New" button inside "Roles And Responsibilities" flex table

  @40096    @headerActionDisplayTypeFieldAtFlexTableTopLevelViewSubmittedApplicationsAsLink-gPlanning @smoke
  Scenario: Changing display type of roles and responsibilities flex table new action button from button to menu from config anf validating it at flex table of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Flex Table Action     | Header Action Display Type | Menu              | Programs           | Name                      | View Submitted Applications |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Flex Table Action     | Header Action Display Type | Button        | Programs           | Name                      | View Submitted Applications |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see "View Submitted Applications" button inside "Draft Programs" flex table

  @40100    @showConfirmationBoxFieldForProgramFlexTAbleViewAction-gPlanning
  Scenario: Setup confirmation box for program flex table view action configuration and validating it at flex table of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table with table id "toggleFlexTablePrograms" without processing
    Then I see confirmation box with body "null" is displayed

  @40102    @ConfirmationMessageFieldForProgramFlexTAbleViewAction-gPlanning
  Scenario: Setup confirmation message for program flex table view action from configuration and validating it at flex table of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | Programs           | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  |                   | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | Programs           | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  | Automation    | Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table with table id "toggleFlexTablePrograms" without processing
    Then I see confirmation box with body "Automation" is displayed

  @40103    @modalTitleFieldForProgramFlexTAbleViewAction-gPlanning
  Scenario: Setup modal title for program flex table view action from configuration and validating it at flex table of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior |                   | Programs           | Name                      | View                       |
      | Flex Table Action     | Modal Title     |                   | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay  | Programs           | Name                      | View                       |
      | Flex Table Action     | Modal Title     | Automation Title | Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Automation Title" opens in overLay window

  @40106    @hideForProfileFieldAtProgramFlexTableEditAction-gPlanning @smoke
  Scenario Outline: Hide edit row level action for specific profile from configuration and validating it at under program flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile         |                            | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Expression | <defaultExpression>        | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      | <defaultHideDecisionField> | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile         | System Administrator | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Expression |                      | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      |                      | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table

    Examples:
      | defaultExpression                                      | defaultHideDecisionField |
      | Status__c <> 'Created' AND Status__c<> 'Being Amended' | HideEditDeleteBtn__c     |

  @40109    @hideForUserFieldAtProgramFlexTableEditAction-gPlanning @smoke
  Scenario Outline: Hide edit row level action for specific user from configuration and validating it at under program flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User            |                            | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Expression | <defaultExpression>        | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      | <defaultHideDecisionField> | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User            | Internal      | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Expression |               | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      |               | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table

    Examples:
      | defaultExpression                                      | defaultHideDecisionField |
      | Status__c <> 'Created' AND Status__c<> 'Being Amended' | HideEditDeleteBtn__c     |

  @40112    @hideForContextFieldAtProgramFlexTableEditAction-gPlanning @smoke
  Scenario Outline: Hide edit row level action for view layout from configuration and validating it at under program flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Context         |                            | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Expression | <defaultExpression>        | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      | <defaultHideDecisionField> | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Context         | View          | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Expression |               | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      |               | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table

    Examples:
      | defaultExpression                                      | defaultHideDecisionField |
      | Status__c <> 'Created' AND Status__c<> 'Being Amended' | HideEditDeleteBtn__c     |

  @40115    @hideDecisionFieldAtProgramFlexTableEditAction-gPlanning @smoke
  Scenario Outline: Hide edit row level action for view layout from configuration and validating it at under program flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                | fieldOrignalValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Decision Expression | <defaultExpression>        | Programs              | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      | <defaultHideDecisionField> | Programs              | Name                      | Edit                       |
      | Page Tabs Config          | Highlights Panel?        | false                      | Grantee State Program | Name                      | TAB-409                    |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                | fieldNewValue              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject           | Hide Decision Expression |                            | Programs              | Name                      | Edit                       |
      | Flex Table Action Sobject           | Hide Decision Field      | <defaultHideDecisionField> | Programs              | Name                      | Edit                       |
      | Page Tabs Config:Page Layout Action | Highlights Panel?        | true                       | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I pause execution for "10" seconds
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "ID" as "savedValue"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    When I pause execution for "7" seconds
    And I click on "Edit" icon for "BP-01" inside flex table with id "---program:-:budgetPeriodDetailsTableId---"
    And I switch to iframe with id "ProgramBudgetPeriodiframeContentId"
    And I enter value "Active" into field "fieldStatus__c"
    And I click modal button "Save"
    And I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    And I enter value "Automation PM" into field "fieldName__c"
    And I enter value "Program Approver" into field "fieldBusinessRole__c"
    And I click modal button "Save"
    And I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    And I enter value "Allen PM" into field "fieldName__c"
    And I enter value "Key POC" into field "fieldBusinessRole__c"
    And I click modal button "Save"
    And I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountInformationTableId---"
    When I click "Add" after selection of "FA-17-03" in the table "---program:-:fundingAccountSelectionTableId---"
    When I pause execution for "3" seconds
    And I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:budgetCategoryTableId---"
    When I click "Add" after selection of "SBC-A-209" in the table "---program:-:budgetCategorySelectionTableId---"
    And I navigate to "Log" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:relatedFederalProgramTableId---"
    When I click "Add" after selection of "90.404" in the table "---program:-:relatedFederalProgramSelectionTableId---"
    And I navigate to "Log" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programServiceAreaTableId---"
    When I click "Save" after selection of "PSA-0005" in the table "---program:-:programServiceAreaSelectionTableId---"
    And I refresh the page
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    And I "Approve" in the approval decision
    And I refresh the page
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{SavedValue:savedValue}"
    Then I see "Edit" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" is not displayed inside flex table

    Examples:
      | defaultExpression                                      | defaultHideDecisionField |
      | Status__c <> 'Created' AND Status__c<> 'Being Amended' | HideEditDeleteBtn__c     |

  @40119    @hideOperatorFieldUsingANDOperatorAtProgramFlexTAbleAction-gPlanning
  Scenario Outline: Hide edit row level action using AND operator for program flex table from configuration and validating it at under programs flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile         |                            | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide For User            |                            | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Expression | <defaultExpression>        | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      | <defaultHideDecisionField> | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile         | System Administrator | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide For User            | Internal             | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Operator            | AND                  | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Expression |                      | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      |                      | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table

    Examples:
      | defaultExpression                                      | defaultHideDecisionField |
      | Status__c <> 'Created' AND Status__c<> 'Being Amended' | HideEditDeleteBtn__c     |

  @40121    @hideOperatorFieldUsingOROperatorAtProgramFlexTAbleAction-gPlanning
  Scenario Outline: Hide edit row level action using AND operator for program flex table from configuration and validating it at under programs flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile         |                            | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide For User            |                            | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Operator            | AND                        | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Expression | <defaultExpression>        | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      | <defaultHideDecisionField> | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile         | System Administrator | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide For User            | Internal             | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Operator            | OR                   | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Expression |                      | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      |                      | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table

    Examples:
      | defaultExpression                                      | defaultHideDecisionField |
      | Status__c <> 'Created' AND Status__c<> 'Being Amended' | HideEditDeleteBtn__c     |

  @40124    @hideExpressionJSONFieldAtProgramFlexTable-gPlanning @smoke
  Scenario: Hide edit row level action for program flex table from json configuration and validating it under program flex table-gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName            | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON |                   | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName            | fieldNewValue                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON | govgrants_config:ProgramFlexTableExpressionJsonForViewAction | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table

  @40128    @hideForProfileFieldAtActiveFundingOpprtunityFlexTableCreateAction-gAnnouncement @smoke
  Scenario: Hide create top level action for specific profile from configuration and validating it at under active funding opprtunities flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For Profile |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue        | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For Profile | System Administrator | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @40129    @hideForUserFieldAtActiveFundingOpprtunityFlexTableCreateAction-gAnnouncement @smoke
  Scenario: Hide create top level action for specific profile from configuration and validating it at under active funding opprtunities flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User | Internal      | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @40217    @hideOperatorFieldUsingANDOperatorAtActiveFundingOpprtunityFlexTableCreateAction-gAnnouncement
  Scenario: Hide create top level action for specific profile from configuration and validating it at under active funding opprtunities flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User    |                   | ActiveFundingOpportunities | Name                      | Create                     |
      | Flex Table Action     | Hide For Profile |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue        | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User    | Internal             | ActiveFundingOpportunities | Name                      | Create                     |
      | Flex Table Action     | Hide For Profile | System Administrator | ActiveFundingOpportunities | Name                      | Create                     |
      | Flex Table Action     | Hide Operator    | AND                  | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @40219    @hideOperatorFieldUsingOROperatorAtActiveFundingOpprtunityFlexTableCreateAction-gAnnouncement
  Scenario: Hide create top level action for specific profile from configuration and validating it at under active funding opprtunities flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User    |                   | ActiveFundingOpportunities | Name                      | Create                     |
      | Flex Table Action     | Hide For Profile |                   | ActiveFundingOpportunities | Name                      | Create                     |
      | Flex Table Action     | Hide Operator    | AND               | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue        | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User    | Internal             | ActiveFundingOpportunities | Name                      | Create                     |
      | Flex Table Action     | Hide For Profile | System Administrator | ActiveFundingOpportunities | Name                      | Create                     |
      | Flex Table Action     | Hide Operator    | OR                   | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @40220    @hideExpressionJSONFieldAtActiveFundingOpprtunityFlexTableCreateAction-gAnnouncement @smoke
  Scenario: Hide create top level action for specific profile from configuration and validating it at under active funding opprtunities flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                      | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:ActiveFundingOpportunitiesFlexTableExpressionJson | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @40225    @activeFieldAtFlexTable-gPlanning @smoke
  Scenario: Disabling active programs from list view of program flex table from config and validating it at program flex table-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Active ?  | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Active ?  | false         | Programs           | Name                      | FLV-1835                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click toggle button for "Draft Programs"
    Then I see "Active Programs" is not displayed inside program flex table dropdown

  @34295    @refreshBehaviourFieldAtRolesAndResponsilitiesFlexTableAsRefreshtheGrid-gPlanning
  Scenario: validate flex table action field- refresh the grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue    | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Refresh the grid | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I record webelement at table "ProgramRolesAndResponsibilities" for column "Owner"
    And I click on "Edit" icon for "Owner" inside flex table with id "ProgramRolesAndResponsibilities" with wait for record
    When I enter value "Owner Of The Record" into field "fieldResponsibility__c"
    And I click modal button "Save"
    Then I see "Owner Of The Record" inside Application Budget flex table for specified record "Owner"

  @34294    @refreshBehaviourFieldAtRolesAndResponsilitiesFlexTableAsRefreshParentPage-gPlanning
  Scenario: validate flex table action field- refresh parent Page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue       | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Refresh parent page | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I record webelement at table "ProgramRolesAndResponsibilities" for column "Owner"
    When I click on "Edit" icon for "Owner" to save inside subtab
    And I click on "Save" in the page details
    Then I see parent page is refreshing

  @34293    @refreshBehaviourFieldAtRolesAndResponsilitiesFlexTableAsCloseModalandRefreshGrid-gPlanning
  Scenario: validate flex table action field- close modal and refresh the grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Close modal and refresh grid | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I record webelement at table "ProgramRolesAndResponsibilities" for column "Owner"
    And I click on "Edit" icon for "Owner" inside flex table with id "ProgramRolesAndResponsibilities" with wait for record
    When I enter value "Owner Of The Record" into field "fieldResponsibility__c"
    And I click modal button "Save"
    Then I see "Owner Of The Record" inside Application Budget flex table for specified record "Owner"

  @79734    @verifyByClickOnUserValueItShouldRedirectedToRespectiveUserPageAtFlexTable-gPlanning
  Scenario: validate by click on user value in table , respective user page should gets opened at FlexTable - gPlanning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Nauman Shahid" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "User" shown as over view header

  @80156    @validateDefaultTotalAtCurrencyFieldIsNotDisplayedAtFlexTable-gPlanning
  Scenario: validate default total amount inside funded amount column is not displayed inside flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Total     | true              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Total Row | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total     | false         | Programs           | Name                      | FTC-1018                   |
      | Flex Table:General    | Enable Total Row | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I do not see total amount in flex table

  @83081    @validateIfCustomSettingIsEnabledThenSaveButtonIsDisplayedAtTopAndBottomOfModalOnly-gPlanning
  Scenario: validate if custom setting is enabled then save button is displayed at top and bottom of modal - gPlanning
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                                                              | name                           |
      | false        | 0            | a0b1C00000OGdbvQAD | This will Enable actions on the modal window at top and bottom of window | EnableModalHeaderActionButtons |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                                                              | name                           |
      | true         | 0            | a0b1C00000OGdbvQAD | This will Enable actions on the modal window at top and bottom of window | EnableModalHeaderActionButtons |
    When I navigate to "Planning" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    Then I softly see "Save" button at "Bottom" of  Modal window
    Then I softly see "Save" button at "Top" of  Modal window

  @83082    @validateIfCustomSettingIsDisabledThenSaveButtonIsDisplayedAtBottomOfModalOnly-gPlanning
  Scenario: validate if custom setting is disabled then save button is displayed at bottom of modal - gPlanning
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                                                              | name                           |
      | false        | 0            | a0b1C00000OGdbvQAD | This will Enable actions on the modal window at top and bottom of window | EnableModalHeaderActionButtons |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                                                              | name                           |
      | false        | 0            | a0b1C00000OGdbvQAD | This will Enable actions on the modal window at top and bottom of window | EnableModalHeaderActionButtons |
    And I pause execution for "5" seconds
    When I navigate to "Planning" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    Then I see "Save" button at "Bottom" of  Modal window

  @84822    @verifyDateFieldFormatForLocalAsESTUnderFlexTable-gPlanning
  Scenario Outline: validate the date field format under flex table with respective to EST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see value "11/30/2020" for title "Start Date" inside table "toggleFlexTablePrograms"

    Examples:
      | newFieldsApi                               | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,StartDate__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @84828    @verifyDateFieldFormatForLocalAsEDTUnderFlexTable-gPlanning
  Scenario Outline: validate the date field format under flex table with respective to EDT Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see value "11/30/2020" for title "Start Date" inside table "toggleFlexTablePrograms"

    Examples:
      | newFieldsApi                               | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,StartDate__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @84830    @verifyDateFieldFormatForLocalAsISTUnderFlexTable-gPlanning
  Scenario Outline: validate the date field format under flex table with respective to IST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see value "11/30/2020" for title "Start Date" inside table "toggleFlexTablePrograms"

    Examples:
      | newFieldsApi                               | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,StartDate__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @84704    @verifyDateAndTimeFieldFormatForLocalAsESTUnderFlexTable-gPlanning
  Scenario Outline: validate the date and time field format under flex table with respective to EST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramInCreatedMode1}"
    Then I see value "03/17/2021 4:36 PM" for title "DateandTime" inside table "toggleFlexTablePrograms"

    Examples:
      | newFieldsApi                                 | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,DateandTime__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @84714    @verifyDateAndTimeFieldFormatForLocalAsEDTUnderFlexTable-gPlanning
  Scenario Outline: validate the date and time  field format under flex table with respective to EDT Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramInCreatedMode1}"
    Then I see value "03/17/2021 5:36 PM" for title "DateandTime" inside table "toggleFlexTablePrograms"

    Examples:
      | newFieldsApi                                 | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,DateandTime__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @84716    @verifyDateAndTimeFieldFormatForLocalAsISTUnderFlexTable-gPlanning
  Scenario Outline: validate the date and time  field format under flex table with respective to IST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramInCreatedMode1}"
    Then I see value "03/18/2021 3:06 AM" for title "DateandTime" inside table "toggleFlexTablePrograms"

    Examples:
      | newFieldsApi                                 | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,DateandTime__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @106401    @validateDateCanBeEnteredSuccessfulyInsideAdvanceFilterValueInputBoxAtFlexTable
  Scenario: validate date inside value input box field is inserted successfully at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on advance filter "#advfPrograms" of table id "---program:-:programsTableId---"
    When I enter advance filter values inside id "advfPrograms"
      | Start Date | Equals to | 09/16/2020 |
    Then I see label containing value as "09/16/2020" inside advance filter

  @106403    @validateAdvanceFilterValueForDateFieldWithOperatorGreaterThanAtFlexTable
  Scenario: validate Advance filter search for date field with greater than operator at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on advance filter "#advfPrograms" of table id "---program:-:programsTableId---"
    When I enter advance filter values inside id "advfPrograms"
      | Start Date | Greater than | 09/16/2020 |
    When I enter advance filter values inside id "advfPrograms"
      | Program Name | Contains | Test program for automation - Created mode only |
    Then I softly do not see value "07/01/2018" for title "Start Date" inside table "---program:-:programsTableId---"
    Then I softly see value "11/30/2020" for title "Start Date" inside table "---program:-:programsTableId---"

  @106404    @validateAdvanceFilterValueForDateFieldWithOperatorLessThanAtFlexTable
  Scenario: validate Advance filter search for date field with less than operator at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on advance filter "#advfPrograms" of table id "---program:-:programsTableId---"
    When I enter advance filter values inside id "advfPrograms"
      | Start Date | Less than | 03/01/2022 |
    When I enter advance filter values inside id "advfPrograms"
      | Program Name | Contains | Test program for automation - Created mode only |
    Then I softly do not see value "03/01/2022" for title "Start Date" inside table "---program:-:programsTableId---"
    Then I softly see value "11/30/2020" for title "Start Date" inside table "---program:-:programsTableId---"
    Then I softly do not see value "05/19/2026" for title "Start Date" inside table "---program:-:programsTableId---"

  @106406    @validateAdvanceFilterValueForDateFieldWithOperatorGreaterThanOrEqualtoAtFlexTable
  Scenario: validate Advance filter search for date field with Greater than or Equal to operator at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on advance filter "#advfPrograms" of table id "---program:-:ProgramsTableIdNew---"
    When I enter advance filter values inside id "advfPrograms"
      | Start Date   | Greater than or Equal to | 11/30/2020                                      |
      | Program Name | Contains                 | Test program for automation - Created mode only |
    Then I softly see value "01/01/2025" for title "Start Date" inside table "---program:-:ProgramsTableIdNew---"
    Then I softly do not see value "07/01/2018" for title "Start Date" inside table "---program:-:ProgramsTableIdNew---"

  @106407    @validateAdvanceFilterValueForDateFieldWithOperatorLessThanOrEqualtoAtFlexTable
  Scenario: validate Advance filter search for date field with less than or Equal to operator at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on advance filter "#advfPrograms" of table id "---program:-:programsTableId---"
    When I enter advance filter values inside id "advfPrograms"
      | Start Date | Less than or Equal to | 09/16/2020 |
    Then I softly see value "09/16/2020" for title "Start Date" inside table "---program:-:programsTableId---"
    Then I softly do not see value "05/19/2026" for title "Start Date" inside table "---program:-:programsTableId---"

  @106409    @validateAdvanceFilterValueForDateFieldAtFlexTable
  Scenario: validate Advance filter search  for date field with equals operator at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on advance filter "#advfPrograms" of table id "---program:-:programsTableId---"
    When I enter advance filter values inside id "advfPrograms"
      | Start Date | Equals to | 09/16/2020 |
    Then I see value "09/16/2020" for title "Start Date" inside table "---program:-:programsTableId---"

  @118453    @validateQuickSearchDisplayedRelevantDataOnlyAtFlexTable
  Scenario: Validate quickSearch displayed relevant data only at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test Program For Automation - Expression Builder 2"
    Then I softly see value "Test Program For Automation - Expression Builder 2" for title "Program Name" inside table "---program:-:programsTableId---"
    Then I softly do not see value "Test Program For Automation - Expression Builder" for title "Program Name" inside table "---program:-:programsTableId---"

  @119059    @validateQuickSearchDisplayedRelevantDataISearchedPicklistValueAtFlexTable
  Scenario: Validate quickSearch displayed relevant data if searched picklist value at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Change Requested"
    Then I softly see value "Change Requested" for title "Status" inside table "---program:-:programsTableId---"
    Then I softly do not see value "Created" for title "Status" inside table "---program:-:programsTableId---"

  @119074    @validateQuickSearchDisplayedRelevantDataISearchedLookupValueAtFlexTable
  Scenario: Validate quickSearch displayed relevant data if searched lookup value at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Department of Community Health"
    Then I softly see value "Department of Community Health" for title "Organization" inside table "---program:-:programsTableId---"
    Then I softly do not see value "SYSTEM" for title "Organization" inside table "---program:-:programsTableId---"

  @120975  @VerifyCrossIconIsDisplayedAtFlexTableQuickSearchBox
  Scenario: validate that cross icon is displayed at flex table quick search box
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    Then I see cross icon is displayed at search box at "toggleFlexTablePrograms"

  @120975  @VerifyCrossIconIsDisplayedAtFlexTableQuickSearchBox
  Scenario: validate that cross icon is displayed at flex table quick search box
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    Then I see cross icon is displayed at search box at "toggleFlexTablePrograms"

  @126930    @validateHideColumnsFieldAtFlexTableUsingEqualsOperator
  Scenario: validate hide columns field at flex table using equals operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table            | Hide Columns |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue                                       | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Hide Columns | govgrants_config:HideColumnsAtAnnouncementFlexTable | ActiveFundingOpportunities |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "AN-343-002"
    Then I see "Announcement Title" not displayed in enhanced grid table column title

  @126931    @validateHideColumnsFieldAtFlexTableUsingNotEqualsOperator
  Scenario: validate hide columns field at flex table using not equals operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table            | Hide Columns |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue                                                            | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Hide Columns | govgrants_config:HideColumnsAtAnnouncementFlexTableWithNotEqualsOperator | ActiveFundingOpportunities |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementForAdminUserInClosedState}"
    Then I see "Announcement Title" not displayed in enhanced grid table column title

  @126938    @validateHideColumnsFieldAtFlexTableUsingEqualsOperatorOnNameField
  Scenario: validate hide columns field at flex table using equals operator on name field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table            | Hide Columns |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue                                                                   | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Hide Columns | govgrants_config:HideColumnsAtAnnouncementFlexTableWithEqualOperatorOnNameField | ActiveFundingOpportunities |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "AN-343-002"
    Then I see that "*****" has been added in flextable with Id "ActiveFundingOpportunities"

  @126939    @validateHideColumnsFieldAtFlexTableUsingNotEqualsOperatorOnNameField
  Scenario: validate hide columns field at flex table using not equals operator on name field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table            | Hide Columns |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue                                                                      | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Hide Columns | govgrants_config:HideColumnsAtAnnouncementFlexTableWithNotEqualOperatorOnNameField | ActiveFundingOpportunities |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementForAdminUserInClosedState}" in "ActiveFundingOpportunities" panel
    Then I see that "*****" has been added in flextable with Id "ActiveFundingOpportunities"

  @126941    @validateHideColumnsFieldAtFlexTableUsingEqualsOperatorOnTwoDifferentField
  Scenario: validate hide columns field at flex table using equals operator on 2 different fields field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table            | Hide Columns |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue                                                                    | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Hide Columns | govgrants_config:HideColumnsAtAnnouncementFlexTableWithEqualOperatorAndTwoFields | ActiveFundingOpportunities |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    Then I see "Announcement Title" not displayed in enhanced grid table column title

  @126943    @validateHideColumnsFieldAtFlexTableUsingEqualsOperatorOnMultipleField
  Scenario: validate hide columns field at flex table using equals operator on multiple field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table            | Hide Columns |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue                                                                        | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Hide Columns | govgrants_config:HideColumnsAtAnnouncementFlexTableWithEqualOperatorOnMultipleFields | ActiveFundingOpportunities |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "AN-755-012"
    Then I softly see that "*****" has been added in flextable with Id "ActiveFundingOpportunities"
    When I perform quick search for "AN-343-001"
    Then I softly see that "*****" has been added in flextable with Id "ActiveFundingOpportunities"
    When I perform quick search for "AN-755-297"
    Then I softly see that "*****" has been added in flextable with Id "ActiveFundingOpportunities"

  @130537    @helpTextDisplayedAtBottomOfHelpIconAtFlexTableInPageViewMode
  Scenario: validate help text displayed at bottom of hekp icon at flex table in page layout view mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I hovering mouse on help text icon inside "Budget Period Details" for flex table
    Then I see help text is displayed at bottom

  @130538    @helpTextDisplayedAtBottomOfHelpIconAtFlexTableInPageEditMode
  Scenario: validate help text displayed at bottom of hekp icon at flex table in page layout edit mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I hovering mouse on help text icon inside "Budget Period Details" for flex table
    Then I see help text is displayed at bottom

  @130095    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtFlexTable @skipOnJenkins
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Christine GGPTEST5" in "toggleFlexTableProgramContacts" panel
    When I hover mouse on lookup link "Christine GGPTEST5" at table
    And I pause execution for "3" seconds
    Then I softly see "title" as "Christine GGPTEST5" inside mini page layout
    And I refresh the page
    When I navigate to "Overview" sub tab
    When I perform quick search for "Christine GGPTEST5" in "toggleFlexTableProgramContacts" panel
    When I hover mouse on lookup link "Christine GGPTEST5" at table
    And I pause execution for "3" seconds
    Then I softly see "Label" as "Org" inside mini page layout
    And I refresh the page
    When I navigate to "Overview" sub tab
    When I perform quick search for "Christine GGPTEST5" in "toggleFlexTableProgramContacts" panel
    When I hover mouse on lookup link "Christine GGPTEST5" at table
    And I pause execution for "3" seconds
    Then I softly see "Value" as "Department of Children health" inside mini page layout

  @106402    @validateUserCanEnterDateManuallyAtAdvanceFilterAtFlexTable
  Scenario: validate user can enter date manually at Advance filter at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on advance filter "#advfPrograms" of table id "---program:-:programsTableId---"
    When I enter advance filter values inside id "advfPrograms"
      | Start Date | Equals to | 09/16/2020 |
    Then I see value "09/16/2020" for title "Start Date" inside table "---program:-:programsTableId---"

  @144828    @validateCommaSeparatedValueIsDisplayedOnFlexTableForNumberField
  Scenario Outline: Validate comma separated  value should be display on the Number field at flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I enter value "12345678" into field "Number__c"
    And I click on "Save" in the page details
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    Then I softly see value "12,345,678.00" for title "Number" inside table "---program:-:programsTableId---"
    Then I softly do not see value "12345678" for title "Number" inside table "---program:-:programsTableId---"

    Examples:
      | newFieldsApi                            | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,Number__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @144829    @validateCommaSeparatedValueIsDisplayedOnFlexTableForCurrencyField
  Scenario Outline: Validate comma separated  value should be display on the currency field at flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I enter value "12345678" into field "FundedAmount__c"
    And I click on "Save" in the page details
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    Then I softly see value "$12,345,678" for title "Funded Amount" inside table "---program:-:programsTableId---"
    Then I softly do not see value "12345678" for title "Funded Amount" inside table "---program:-:programsTableId---"

    Examples:
      | newFieldsApi                                  | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,FundedAmount__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @144830    @validateCommaSeparatedValueIsDisplayedOnFlexTableForPercentField
  Scenario Outline: Validate comma separated  value should be display on the Percent field at flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I enter value "90000" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    Then I softly see value "82,470%" for title "Percent" inside table "---program:-:programsTableId---"
    Then I softly do not see value "90000" for title "Percent" inside table "---program:-:programsTableId---"

    Examples:
      | newFieldsApi                             | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,Percent__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @145475    @validateAdvanceFilterValueWithOperatorDoesNotContainAtFlexTable
  Scenario: validate Advance filter search with does not contain operator at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on advance filter "#advfPrograms" of table id "---program:-:programsTableId---"
    When I enter advance filter values inside id "advfPrograms"
      | Program Name | Does not contains | test |
    Then I softly do not see value "Test Program For Automation - Expression Builder 2" for title "Program Name" inside table "---program:-:programsTableId---"
    Then I softly see value "Road Construction" for title "Program Name" inside table "---program:-:programsTableId---"

  @145998    @validateDecimalValueIsDisplayedOnFlexTableForNumberField
  Scenario Outline: Validate decimal value should be display on the Number field at flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I enter value "12345678" into field "Number__c"
    And I click on "Save" in the page details
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    Then I see value "12,345,678.00" for title "Number" inside table "---program:-:programsTableId---"

    Examples:
      | newFieldsApi                            | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,Number__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @146548    @verifyPaginationIsDisplayedAtTopAndBottomOfFlexTable-gPlanning
  Scenario: validate pagination is displayed attop and bottom in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see "Page" with pagination arrow at "---program:-:programsTableId---" at "Top"
    Then I see "Page" with pagination arrow at "---program:-:programsTableId---" at "Bottom"

  @148305    @validateQuickSearchWorkingForPartialValueFromPicklistFieldAtFlexTable
  Scenario:To verify, Picklist value is searchable in Quick search of Data table if partial keyword is entered.
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Create"
    And I pause execution for "4" seconds
    When I perform quick search for "Package Testing"
    Then I softly see "Package Testing" value in flex table id "---program:-:ProgramsTableIdNew---"
    Then I softly do not see "Change Requested" value in flex table id "---program:-:ProgramsTableIdNew---"

  @148817    @validateQuickSearchWorkingContainingNumericValueFollowedBySpaceAtFlexTable
  Scenario: Validate quick search working containg numeric value followed by space at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "edu 2 program"
    Then I see "edu 2 program" value in flex table id "---program:-:programsTableId---"

  @148818    @validateQuickSearchWorkingContainingSpecialCharacterValueFollowedBySpaceAtFlexTable
  Scenario: Validate quick search working containing special character followed by space at flex table
    Given I delete the record "Program @@/ created for special char" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    When I enter value "Program @@/ created for special char" into field "ProgramName__c"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Program @@/ created"
    And I pause execution for "3" seconds
    Then I see "Program @@/ created for special char" value in flex table id "---program:-:programsTableId---"

  @148894    @validateQuickSearchWorkingContainingSpaceBetweenAlphaAndNumericValueAtFlexTable
  Scenario: Validate quick search working containing space between alpha and numeric value at flex table
    Given I delete the record "Program 1 Created for numeric value" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    When I enter value "Program 1 Created for numeric value" into field "ProgramName__c"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Program 1 Created"
    And I pause execution for "8" seconds
    Then I see "Program 1 Created for numeric value" value in flex table id "---program:-:programsTableId---"

  @148819    @validateQuickSearchWorkingContainingSpaceBetweenAlphaAndSpecialValueAtFlexTable
  Scenario: Validate quick search working containing space between alpha and special character at flex table
    Given I delete the record "Program @@/ Created for special value" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    When I enter value "Program @@/ Created for special value" into field "ProgramName__c"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Program @@/ Created"
    And I pause execution for "10" seconds
    Then I see "Program @@/ Created for special value" value in flex table id "---program:-:programsTableId---"

  @148903    @validateQuickSearchWorkingContainingSpaceBetweenNumericAndSpecialValueAtFlexTable
  Scenario: Validate quick search working containing space between numeric and special character at flex table
    Given I delete the record "Program @@/ 1 Created for special value" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    When I enter value "Program @@/ 1 Created for special value" into field "ProgramName__c"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Program @@/ 1 Created"
    And I pause execution for "3" seconds
    Then I see "Program @@/ 1 Created for special value" value in flex table id "---program:-:programsTableId---"

  @149995    @validateQuickSearchWorkingForPartialValueFromPicklistFieldSet1AtFlexTable
  Scenario: Validate quick search working for picklist partial value as "nge Req" at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "nge Req"
    Then I softly see "Change Requested" value in flex table id "---program:-:programsTableId---"

  @149992    @validateQuickSearchWorkingForPartialValueFromPicklistFieldSet2AtFlexTable
  Scenario: Validate quick search working for picklist partial value as "Requested" at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Requested"
    Then I softly see "Change Requested" value in flex table id "---program:-:programsTableId---"

  @150000    @validateQuickSearchWorkingForPartialValueFromPicklistFieldSet3AtFlexTable
  Scenario: Validate quick search working for picklist partial value as "mitt" at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "mitt"
    And I pause execution for "3" seconds
    Then I softly see "Submitted for Approval" value in flex table id "---program:-:programsTableId---"

  @150003    @validateQuickSearchWorkingForPartialValueFromPicklistFieldSet4AtFlexTable
  Scenario: Validate quick search working for picklist partial value as "rea" at flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "rea"
    Then I softly see "Created" value in flex table id "---program:-:programsTableId---"

  @150054    @validate4DecimalValueIsDisplayedOnFlexTableForNumberFieldTotal
  Scenario Outline: Validate 4 decimal value should be display on the Number field at flex table total
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table                               | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General                       | Display Field Names | <newFieldsApi> | Programs              |                           |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantee State Program | Name                      | PBD-9265                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I enter value "1235" into field "Number_Test__c"
    And I click on "Save" in the page details
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see the text :
      | 1,235.0000 |

    Examples:
      | newFieldsApi                                 | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,Number_Test__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @151627    @validateIsSearchWorkingForLongTextSearchedInFlexTableQuickSearchBox
  Scenario: Validate search is working for long text searched in flex table quick search box
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    And I pause execution for "3" seconds
    Then I softly see "{Framework_recordUsed:programInCreatedModeOnly}" value in flex table id "---program:-:programsTableId---"

  @151631    @validateIsSearchWorkingForShortTextSearchedInFlexTableQuickSearchBox
  Scenario: Validate search is working for short text searched in flex table quick search box
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created"
    And I pause execution for "3" seconds
    Then I softly see "{Framework_recordUsed:programInCreatedModeOnly}" value in flex table id "---program:-:programsTableId---"

  @148905    @validateIsSearchWorkingForSpecialCharNumberAndAlphabetsTogetherSearchedInFlexTableQuickSearchBox
  Scenario: Validate search is working for special char,number,alphabets searched in flex table quick search box
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementWithSpeialCharNumberAndAlphabets}"
    And I pause execution for "3" seconds
    Then I softly see "{Framework_recordUsed:AnnouncementWithSpeialCharNumberAndAlphabets}" value in flex table id "ActiveFundingOpportunities"

  @148754 @verifyThatParentPageDoesNotRefreshAfterClickingOnSaveActionInFlexTable
  Scenario: validate that Parent page does not refresh after clicking on Save action in flex table
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on "Edit" icon for "PG-343-019" inside table
    When I navigate to "Overview" sub tab
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I clear the value from field "Objectives__c"
    When I enter value "test temp data" into field "fieldObjectives__c"
    And I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    And I enter value "Automation PM" into field "fieldName__c"
    And I enter value "Program Approver" into field "fieldBusinessRole__c"
    And I click modal button "Save"
    Then I donot see navigation logo on page

  @136004    @validateCommasAreDisplayedIn4DecimalValueOnFlexTableForNumberFieldTotal
  Scenario Outline: Validate commas are displayed in 4 decimal value at Number field at flex table total
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table                               | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
      | Flex Table List                          | Enable Total        | true               | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General                       | Display Field Names | <newFieldsApi> | Programs              |                           |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantee State Program | Name                      | PBD-9265                   |
      | Flex Table List                          | Enable Total        | true           | Programs              | Name                      | FTC-1542                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios1}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios1}" inside table
    When I enter value "1235" into field "Number_Test__c"
    And I click on "Save" in the page details
    When I pause execution for "6" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios1}"
    Then I see the text :
      | 1,235.0000 |

    Examples:
      | newFieldsApi                                 | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,Number_Test__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @136016    @validateCommasAreDisplayedIn4DecimalValueOnFlexTableForPercentFieldTotal
  Scenario Outline: Validate commas are displayed in 4 decimal value at percent field at flex table total
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I enter value "90000" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    Then I see value "82,470%" for title "Percent" inside table "---program:-:programsTableId---"

    Examples:
      | newFieldsApi                             | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,Percent__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @155301    @validateIfUserSearchRecordAtQuickSearchThenRecordCountIsDisplayedCorrectlyUnderFlexTableShowRecord
  Scenario: Validate if user search any record then total record count should display correctly under showing total records
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see the text :
      | Showing 1 to 4 of 4 records |

  @148809     @verifyDateTimeWorkingInAdvanceFilterForPacificTimeZoneByLoginAsAdminUser @abhishekS
  Scenario: validate date and time field is working in advance filter for pacific time zone by login as admin user
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone            |
      | en_US  | America/Los_Angeles |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "---program:-:programsTableId---"
    When I enter advance filter values inside id "advfPrograms"
      | Start Date | Greater than or Equal to | 06/30/2025 |
    Then I see value "06/30/2025" for title "Start Date" inside table "---program:-:programsTableId---"

  @148810     @verifyDateTimeWorkingInAdvanceFilterForPacificTimeZoneByLoginAsAdminUser @abhishekS
  Scenario: validate date and time field is working in advance filter for pacific time zone by login as admin user
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone            |
      | en_US  | America/Los_Angeles |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "---program:-:programsTableId---"
    When I enter advance filter values inside id "advfPrograms"
      | Start Date | Less than or Equal to | 01/01/2017 |
    Then I see value "01/01/2017" for title "Start Date" inside table "---program:-:programsTableId---"

  @148812 @verifyDateTimeWorkingInAdvanceFilterForPacificTimeZoneByLoginAsAAdminUser @vaibhavC
  Scenario: Validate date time field is working in advance filter for pacific time zone by login as a admin user
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone            |
      | en_US  | America/Los_Angeles |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "---program:-:programsTableId---"
    When I enter advance filter values inside id "advfPrograms"
      | Start Date | Greater than | 06/30/2025 |
    Then I see value "05/19/2026" for title "Start Date" inside table "---program:-:programsTableId---"

  @148813 @verifyDateTimeWorkingInAdvanceFilterForPacificTimeZoneByLoginAsAAdminUser @vaibhavC
  Scenario: Validate date time field is working in advance filter for pacific time zone by login as a admin user
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone            |
      | en_US  | America/Los_Angeles |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "---program:-:programsTableId---"
    When I enter advance filter values inside id "advfPrograms"
      | Start Date | Less than | 01/01/2017 |
    Then I see value "07/01/2016" for title "Start Date" inside table "---program:-:programsTableId---"

  @159944    @refreshBehaviourFieldAtRolesAndResponsilitiesFlexTableAsRefreshTheGrid  @abhishekS
  Scenario: validate flex table refresh behaviour-to refresh the grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue    | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Refresh the grid | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I record webelement at table "ProgramRolesAndResponsibilities" for column "Owner"
    And I click on "Edit" icon for "Owner" inside flex table with id "ProgramRolesAndResponsibilities" with wait for record
    When I enter value "Owner Of The Record" into field "fieldResponsibility__c"
    And I click modal button "Save"
    Then I see "Owner Of The Record" inside Application Budget flex table for specified record "Owner"

  @159986    @refreshBehaviourFieldAtRolesAndResponsilitiesFlexTableAsCloseModelAndRefreshGrid @abhishekS
  Scenario: validate flex table refresh behaviour-Close modal and refresh grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Close modal and refresh grid | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I record webelement at table "ProgramRolesAndResponsibilities" for column "Owner"
    And I click on "Edit" icon for "Owner" inside flex table with id "ProgramRolesAndResponsibilities" with wait for record
    When I enter value "Owner Of The Record" into field "fieldResponsibility__c"
    And I click modal button "Save"
    Then I see "Owner Of The Record" inside Application Budget flex table for specified record "Owner"

  @159863    @refreshBehaviourFieldAtRolesAndResponsilitiesFlexTableAsRefreshEntirePage @abhishekS
  Scenario: validate flex table refresh behaviour-to refresh entire page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior | Refresh the grid  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue           | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Refresh the entire page | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I click on "Edit" icon for "Owner" to save inside subtab
    And I click on "Save" in the page details
    Then I see entire page is refreshing

  @174406 @sprint19 @jyoti
  Scenario:Data Table - To verify,lookup  fields should not  be displayed as text in on view  modal , when 'Show link as Text' checkbox is unchecked
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:ApplicationStaticRecordviewAction}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationStaticRecordviewAction}" inside table
    When I navigate to "Roles" sub tab
    When I perform quick search for "{Framework_recordUsed:ApplicationStaticRecordRolesAndResponcebilitisName}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationStaticRecordRolesAndResponcebilitisName}" inside table
    Then I see hyperlink at value "AP-755-214" inside "fieldApplication__c" modal

  @174403 @jyoti
  Scenario: To verify,lookup  fields should not be displayed as text in on edit  modal , when 'Show link as Text' checkbox is un-checked
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:ApplicationStaticRecordviewAction}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationStaticRecordviewAction}" inside table
    When I navigate to "Roles" sub tab
    When I perform quick search for "{Framework_recordUsed:ApplicationStaticRecordRolesAndResponcebilitisName}"
    When I click on "Edit" icon for "{Framework_recordUsed:ApplicationStaticRecordRolesAndResponcebilitisName}" inside table
    Then I see hyperlink at value "AP-755-214" inside "fieldApplication__c" modal

  @174394 @jyoti
  Scenario: Data Table - To verify,lookup  fields should not  be displayed as text in on modal , when 'Show link as Text' checkbox is un-checked
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:ApplicationStaticRecordviewAction}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationStaticRecordviewAction}" inside table
    When I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:ApplicationRolesAndResponsibilityTableId---"
    Then I see hyperlink at value "AP-755-214" inside "fieldApplication__c" modal

  @173830 @Jyoti
  Scenario Outline: Data Table Enhanced - To verify, Relationship fields of a record in Data table Enhanced should displayed as hyperlink when 'Show link as Text' checkbox is un-checked
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "APP2- FOA for DHP12" in "---program:-:flexGridEnhancedDataTableId---" panel
    When I save the value from row "1" for column name "Applicant Organization" as "valuesWithHyperLink" from flex table "---program:-:flexGridEnhancedDataTableId---"
    Then I see hyperlink at column value "{SavedValue:valuesWithHyperLink}" inside "---program:-:flexGridEnhancedDataTableId---" table

    Examples:
      | newFieldsApi                                      | defaultFieldsApi                                                                                                                                        |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,NumberofProjectAreas__c,Status__c,GrantAbbreviation__c,TotalAwardObligatedAmount__c,Application__r.ExternalOrganization__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,NumberofProjectAreas__c,Status__c,GrantAbbreviation__c,TotalAwardObligatedAmount__c |

  @173831 @jyoti
  Scenario Outline: :Data Table Enhanced - To verify, Relationship fieldsshould displayed as hyperlink in Edit format of the record in Data table Enhanced, when 'Show link as Text' checkbox is un-checked
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "APP2- FOA for DHP12" in "---program:-:flexGridEnhancedDataTableId---" panel
    When I save the value from row "1" for column name "Applicant Organization" as "valuesWithHyperLink" from flex table "---program:-:flexGridEnhancedDataTableId---"
    Then I see hyperlink at column value "{SavedValue:valuesWithHyperLink}" inside "---program:-:flexGridEnhancedDataTableId---" table

    Examples:
      | newFieldsApi                                      | defaultFieldsApi                                                                                                                                        |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,NumberofProjectAreas__c,Status__c,GrantAbbreviation__c,TotalAwardObligatedAmount__c,Application__r.ExternalOrganization__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,NumberofProjectAreas__c,Status__c,GrantAbbreviation__c,TotalAwardObligatedAmount__c |

  @168747 @VerifyCurrencyReferenceFieldIsAvailableOnTheTableItDisplaysDollerSignForViewlayout
  Scenario Outline: Data table -To verify,  if a currency reference field is available on the table it displays a dollar sign for the view layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ProgramRolesAndResponsibilities |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Roles" sub tab
    Then I see value "$0.00" for title "testcurrency" inside table "---program:-:rolesAndResponsibilitiesTableId---"

    Examples:
      | newFieldsApi              | defaultFieldsApi                           |
      | Agency__r.testcurrency__c | Name1__c,BusinessRole__c,Responsibility__c |

  @168904 @VerifyCurrencyReferenceFieldIsAvailableOnTheTableItDisplaysDollerSignForEditlayout
  Scenario Outline: Data table -To verify,  if a currency reference field is available on the table it displays a dollar sign for the Edit layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ProgramRolesAndResponsibilities |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    When I navigate to "Roles" sub tab
    Then I see value "$0.00" for title "testcurrency" inside table "---program:-:rolesAndResponsibilitiesTableId---"

    Examples:
      | newFieldsApi              | defaultFieldsApi                           |
      | Agency__r.testcurrency__c | Name1__c,BusinessRole__c,Responsibility__c |

#  @flextablebug-test
#  Scenario: Run flex table specific steps for specific time continuosly to ensure no error is displayed
#    When I login as "Automation" user
#    When I setup my app as "As a Grantor"
#    And I navigate to "Planning" tab
#    When I perform sequence of actions on flex table for "120" minute
#    Then I do not see "Bad Message 431" error

  @176190 @tejal
  Scenario Outline: Verify Record Type field  is display as a normal text on flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see value "Internal Program" for title "Record Type ID" inside table "---program:-:programsTableId---"
    Examples:
      | defaultFieldsApi                                                                                                 | newFieldsApi                                                                                                                     |
      | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById,RecordType.Name |

  @180701 @jyoti
  Scenario: Search Table-To verify, date-time field should be displayed properly on the Date time column
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "All"
    When I perform quick search inside global search "{Framework_recordUsed:EGMSIDRecord}"
    Then I see value "11/08/2021 3:28 PM" for title "DateandTime" inside table "PageTemplateApp"

  @180704 @jyoti
  Scenario: Search Table-To verify, date-time field should be displayed properly on the Date time column  when select as "program"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "Program"
    When I perform quick search inside global search "{Framework_recordUsed:EGMSIDRecord}"
    Then I see value "11/08/2021 3:28 PM" for title "DateandTime" inside table "PageTemplateApp"

  @180719 @jyoti
  Scenario: Search Table-To verify,the date-time column then the same format displayed as in the record's field
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "All"
    When I perform quick search inside global search "{Framework_recordUsed:EGMSIDRecord}"
    Then I see value "11/08/2021 3:28 PM" for title "DateandTime" inside table "PageTemplateApp"

  @180705 @jyoti
  Scenario: Search Table-To verify, date-time field should be displayed properly on the Date time column  when select as "Announcement "
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "Announcement"
    When I perform quick search inside global search "AN-343-028"
    Then I see value "10/20/2021 3:09 AM" for title "Application Deadline" inside table "PageTemplateApp"

  @180717 @jyoti
  Scenario: Search Table-To verify, date-time field should be displayed properly on the Date time column  when select as "Application  "
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "Application"
    When I perform quick search inside global search "AP-755-214"
    Then I see value "11/27/2018 7:10 PM" for title "Application Deadline" inside table "PageTemplateApp"

  @181411 @jyoti
  Scenario: Quick Search- To verify,When User seach " Sub Awards" in Quick Search box correct results should show
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Active Grants"
    When I perform quick search for "Sub Awards"
    Then I see value "Sub Awards" for title "Spend Type" inside table "flexTableDivId"

  @176533 @ME-grid-Toverify,whenusermorethansingle-clickontoplevelactionbuttonthensingleconfirmationboxappearsonthelayout
  Scenario: ME-grid - To verify, when user more than single -click on top level action button then single confirmation box appears on the layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table Action     | Show Confirmation Box | false             | ApiGeneratedId:0 |
      | Flex Table Action     | Confirmation Message  |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | ApplicationBudgetPeriods | Name                      | New                        |
      | Flex Table Action     | Confirmation Message  | Automation    | ApplicationBudgetPeriods | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "{Framework_recordUsed:ApplicationStaticRecordviewAction}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationStaticRecordviewAction}" inside table
    When I navigate to "Budget" sub tab
    And I save the value from row "1" for column name "Support Year" as "sYear" from flex table "---program:-:applicationBudgetCategoryInlineEditTableId---"
    And I click on top right button "New" in flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" without processing
    Then I see confirmation box with body "Automation" is displayed

  @176532 @ME-grid-Toverify,whenuserdouble-clickontoplevelactionbuttonthensingleconfirmationboxappearsonthelayout
  Scenario: ME-grid - To verify, when user double-click on top level action button then single confirmation box appears on the layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table Action     | Show Confirmation Box | false             | ApiGeneratedId:0 |
      | Flex Table Action     | Confirmation Message  |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | ApplicationBudgetPeriods | Name                      | New                        |
      | Flex Table Action     | Confirmation Message  | Automation    | ApplicationBudgetPeriods | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "{Framework_recordUsed:ApplicationStaticRecordviewAction}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationStaticRecordviewAction}" inside table
    When I navigate to "Budget" sub tab
    And I save the value from row "1" for column name "Support Year" as "sYear" from flex table "---program:-:applicationBudgetCategoryInlineEditTableId---"
    And I click on top right button "New" in flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" without processing
    Then I see confirmation box with body "Automation" is displayed

  @176531 @sprint20
  Scenario: ME-grid - To verify, when user double-click on top level action button then single confirmation box appears on the layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table Action     | Show Confirmation Box | false             | ApiGeneratedId:0 |
      | Flex Table Action     | Confirmation Message  |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | ApplicationBudgetPeriods | Name                      | New                        |
      | Flex Table Action     | Confirmation Message  | Automation    | ApplicationBudgetPeriods | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "{Framework_recordUsed:ApplicationStaticRecordviewAction}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationStaticRecordviewAction}" inside table
    When I navigate to "Budget" sub tab
    And I save the value from row "1" for column name "Support Year" as "sYear" from flex table "---program:-:applicationBudgetCategoryInlineEditTableId---"
    And I click on top right button "New" in flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" without processing
    Then I see confirmation box with body "Automation" is displayed

  @176527 @sprint20
  Scenario: E-grid - To verify, when user more than single  -click on top level action button on child table  then single confirmation box appears on the layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | TmpActiveGrantsGrid | Name                      | New                        |
      | Flex Table Action     | Confirmation Message  |                   | TmpActiveGrantsGrid | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Confirmation Message  | Automation    | TmpActiveGrantsGrid | Name                      | New                        |
      | Flex Table Action     | Show Confirmation Box | true          | TmpActiveGrantsGrid | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecord}" in "---program:-:enhancedGridTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecord}"
    And I click on top right button "New" in flex table with id "---program:-:enhancedGridTableId---" without processing
    Then I see confirmation box with body "Automation" is displayed

  @176519 @jyoti @sprint20
  Scenario:E-grid - To verify, when user single-click on top level action button then single confirmation box appears on the layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | TmpActiveGrantsGrid | Name                      | New                        |
      | Flex Table Action     | Confirmation Message  |                   | TmpActiveGrantsGrid | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Confirmation Message  | Automation    | TmpActiveGrantsGrid | Name                      | New                        |
      | Flex Table Action     | Show Confirmation Box | true          | TmpActiveGrantsGrid | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "10" seconds
    And I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecord}" in "---program:-:enhancedGridTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecord}"
    And I save the value from row "1" for column name "ID" as "id" from flex table "---program:-:enhancedGridTableId---"
    And I click on top right button "New" in flex table with id "---program:-:enhancedGridTableId---" without processing
    Then I see confirmation box with body "Automation" is displayed

  @176522 @sprint20
  Scenario: E-grid - To verify, when user more than single -click on top level action button then single confirmation box appears on the layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | TmpActiveGrantsGrid | Name                      | New                        |
      | Flex Table Action     | Confirmation Message  |                   | TmpActiveGrantsGrid | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Confirmation Message  | Automation    | TmpActiveGrantsGrid | Name                      | New                        |
      | Flex Table Action     | Show Confirmation Box | true          | TmpActiveGrantsGrid | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecord}" in "---program:-:enhancedGridTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecord}"
    And I save the value from row "1" for column name "ID" as "id" from flex table "---program:-:enhancedGridTableId---"
    And I click on top right button "New" in flex table with id "---program:-:enhancedGridTableId---" without processing
    Then I see confirmation box with body "Automation" is displayed

  @176526 @sprint20
  Scenario: E-grid - To verify, when user  double -click on top level action button on child table  then single confirmation box appears on the layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | TmpActiveGrantsGrid | Name                      | New                        |
      | Flex Table Action     | Confirmation Message  |                   | TmpActiveGrantsGrid | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Confirmation Message  | Automation    | TmpActiveGrantsGrid | Name                      | New                        |
      | Flex Table Action     | Show Confirmation Box | true          | TmpActiveGrantsGrid | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    And I pause execution for "5" seconds
    When I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecord}" in "---program:-:enhancedGridTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecord}"
    And I save the value from row "1" for column name "ID" as "id" from flex table "---program:-:enhancedGridTableId---"
    And I click on top right button "New" in flex table with id "---program:-:enhancedGridTableId---" without processing
    And I pause execution for "5" seconds
    And I save the value from row "1" for column name "ID" as "id" from flex table "---program:-:enhancedGridTableId---"
    Then I see confirmation box with body "Automation" is displayed

  @176524 @sprint20
  Scenario: E-grid - To verify, when user  single -click on top level action button on child table  then single confirmation box appears on the layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | TmpActiveGrantsGrid | Name                      | New                        |
      | Flex Table Action     | Confirmation Message  |                   | TmpActiveGrantsGrid | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Confirmation Message  | Automation    | TmpActiveGrantsGrid | Name                      | New                        |
      | Flex Table Action     | Show Confirmation Box | true          | TmpActiveGrantsGrid | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecord}" in "---program:-:enhancedGridTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecord}"
    And I save the value from row "1" for column name "ID" as "id" from flex table "---program:-:enhancedGridTableId---"
    And I click on top right button "New" in flex table with id "---program:-:enhancedGridTableId---" without processing
    Then I see confirmation box with body "Automation" is displayed

  @184286 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for picklist field with 'not Equals to   ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Status | Not equals to | Approved |
    Then I softly do not see value "Approved" for title "Status" inside table "---program:-:programTableDivId---"

  @184285 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for picklist field with 'Equals to   ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Status | Equals to | Approved |
    Then I softly see value "Approved" for title "Status" inside table "---program:-:programTableDivId---"

  @184284 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for date/time field with 'less  than or equal to   ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Application Deadline | Less than or Equal to | 11/26/2021  01:11 PM |
    When I pause execution for "2" seconds
    Then I softly see value "11/15/2021 3:16 PM" for title "Application Deadline" inside table "---program:-:programTableDivId---"

  @184283 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for date/time field with ' greater than or equal to   ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Application Deadline | Greater than or Equal to | 11/26/2021  01:11 PM   |
    When I pause execution for "10" seconds
    Then I softly see value "12/31/2021 2:44 AM" for title "Application Deadline" inside table "---program:-:programTableDivId---"

  @184250 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for date/time field with '  less than  ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Application Deadline | Less than | 11/26/2021  01:11 PM |
    Then I softly see value "11/15/2021 3:16 PM" for title "Application Deadline" inside table "---program:-:programTableDivId---"

  @184242 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for date/time field with '  Greater than  ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I pause execution for "5" seconds
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Application Deadline | Greater than | 11/26/2021  01:11 PM  |
    And I pause execution for "5" seconds
    Then I softly see value "12/06/2021 11:54 AM" for title "Application Deadline" inside table "---program:-:programTableDivId---"

  @184239 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for currency field with 'grater than or equal to   ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Award Ceiling | Greater than or Equal to | $1,000 |
    Then I softly see value "$1,000.00" for title "Award Ceiling" inside table "---program:-:programTableDivId---"

  @184240 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for currency field with 'less than or equal to   ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Award Ceiling | Less than or Equal to | $1,000 |
    Then I softly see value "$1,000.00" for title "Award Ceiling" inside table "---program:-:programTableDivId---"

  @176520 @sprint20
  Scenario: E-grid - To verify, when user double-click on top level action button then single confirmation box appears on the layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | TmpActiveGrantsGrid | Name                      | New                        |
      | Flex Table Action     | Confirmation Message  |                   | TmpActiveGrantsGrid | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Confirmation Message  | Automation    | TmpActiveGrantsGrid | Name                      | New                        |
      | Flex Table Action     | Show Confirmation Box | true          | TmpActiveGrantsGrid | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecord}" in "---program:-:enhancedGridTableId---" panel
    When I expand nested table containing column value "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecord}"
    And I save the value from row "1" for column name "ID" as "id" from flex table "---program:-:enhancedGridTableId---"
    And I click on top right button "New" in flex table with id "---program:-:enhancedGridTableId---" without processing
    And I pause execution for "5" seconds
    And I save the value from row "1" for column name "ID" as "id" from flex table "---program:-:enhancedGridTableId---"
    Then I see confirmation box with body "Automation" is displayed

  @174396 @sprint20
  Scenario: Data Table - To verify,lookup  fields should  be displayed as text in on view  modal , when 'Show link as Text' checkbox is unchecked
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "{Framework_recordUsed:ApplicationStaticRecordviewAction}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationStaticRecordviewAction}" inside table
    When I navigate to "Roles" sub tab
    When I perform quick search for "{Framework_recordUsed:ApplicationStaticRecordRolesAndResponcebilitisName}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationStaticRecordRolesAndResponcebilitisName}" inside table
    Then I see hyperlink at value "AP-755-214" inside "fieldApplication__c" modal

  @184082 @sprint23 @userstoryid_174108
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for formula field with 'Contains' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | ID | Contains | AN-343-030 |
    Then I softly see value "AN-343-030" for title "ID" inside table "---program:-:programTableDivId---"

  @184088 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for formula field with ' Ends  with ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | ID | Ends with | 343-029 |
    Then I softly see value "AN-343-029" for title "ID" inside table "---program:-:programTableDivId---"

  @184089 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for text  field with 'Contains' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Announcement Title | Contains | org level |
    Then I softly see value "org level" for title "Announcement Title" inside table "---program:-:programTableDivId---"

  @184091 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for text  field with ' Does not Contains' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Announcement Title | Does not contains | Shambhavi |
    Then I softly do not see value "Shambhavi" for title "Announcement Title" inside table "---program:-:programTableDivId---"

  @184107 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for text  field with ' start with ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Announcement Title | Starts with | Shambhavi |
    Then I softly see value "Shambhavi Announcements" for title "Announcement Title" inside table "---program:-:programTableDivId---"

  @184108 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for text  field with ' Ends with  ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Announcement Title | Ends with | Shambhavi |
    Then I softly see value "Shambhavi Announcements" for title "Announcement Title" inside table "---program:-:programTableDivId---"

  @184230 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for picklist  field with ' Equals to ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Type | Equals to | Competitive |
    Then I softly see value "Competitive" for title "Type" inside table "---program:-:programTableDivId---"

  @184232 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for picklist  field with ' Not Equals to ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Type | Not equals to | Competitive |
    Then I softly do not see value "Competitive" for title "Type" inside table "---program:-:programTableDivId---"

  @184237 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for currency field with 'grater than  ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Award Ceiling | Greater than | $1,000 |
    Then I softly see value "$2,000.00" for title "Award Ceiling" inside table "---program:-:programTableDivId---"

  @184087 @sprint23 @dnyaneshwari
  Scenario:Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for formula field with ' start with ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | ID | Starts with | AN-343 |
    Then I softly see value "AN-343-030" for title "ID" inside table "---program:-:programTableDivId---"

  @184234 @sprint23 @dnyaneshwari
  Scenario:Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for currency field with 'Equals to ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Award Ceiling | Equals to | $1,000 |
    Then I softly see value "$1,000.00" for title "Award Ceiling" inside table "---program:-:programTableDivId---"

  @184085 @sprint23 @dnyaneshwari
  Scenario:Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for formula field with ' Does not Contains' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | ID | Does not contains | AN-343-030 |
    Then I do not see value "AN-755-297" for title "ID" inside table "---program:-:programTableDivId---"

  @187565 @sprint23
  Scenario: Data table-To verify, "Enable Rich Text Area Editor" setting is disabled  icon id displayed on the table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:NewProgramCreatedId}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:NewProgramCreatedId}" inside table
    And I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I see field "Description" inside page block

  @184238 @sprint23
  Scenario: Data Table- To verify,User added 'OR' operator in filter criteria ,advance filter should work properly for currency field with 'less  than or eual to ' Operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I click on advance filter "#advfActiveFundingOpportunities" of table id "---program:-:programTableDivId---"
    When I enter advance filter values inside id "---program:-:programTableDivId---"
      | Award Ceiling | Less than or Equal to | $1,000 |
    Then I softly see value "$1,000.00" for title "Award Ceiling" inside table "---program:-:programTableDivId---"

  @184238 @sprint23
  Scenario: Data table-To verify, "Enable Rich Text Area Editor" setting is disabled HTML tags  is displayed on the layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    When I navigate to "Overview" sub tab
    Then I see field "Description" inside page block

  @174393 @sprint20 @needtocheckshowlinknotrevertall
  Scenario: Data Table - To verify, Relationship fields of a record in Data table should not be displayed as text when 'Show link as Text' checkbox is checked
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | coreComponentField | filterId         |
      | Flex Table List       | Show Link as Text | false             | ProgramContacts    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show Link as Text | true          | ProgramContacts    | Name                      | FTC-1558                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    When I navigate to "Overview" sub tab
    Then I softly see value "Gauravsingh GGPTEST5" for title "Full Name" inside table "---program:-:ProgramContactsTableId---"

  @173822 @sprint20
  Scenario: Data Table - To verify, Lookup  fields of a record in Data table should be displayed as text when 'Show link as Text' checkbox is checked
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | coreComponentField | filterId         |
      | Flex Table List       | Show Link as Text | false             | ProgramContacts    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show Link as Text | true          | ProgramContacts    | Name                      | FTC-1558                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    When I navigate to "Attachments" sub tab
    Then I softly see value "Bob PM" for title "Assigned To" inside table "---program:-:ApplicationTablIdForTestApplication---"

  @173826 @sprint20
  Scenario Outline: Data Table Enhanced - To verify, Relationship fields should be displayed as text in Edit format of the record in Data table Enhanced, when 'Show link as Text' checkbox is checked
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhancedDataTable  |                           |                            |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | coreComponentField | filterId         |
      | Flex Table List       | Show Link as Text | false             | ProgramContacts    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show Link as Text | true          | ProgramContacts    | Name                      | FTC-1558                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see field "Applicant Organization" inside page block

    Examples:
      | newFieldsApi                                      | defaultFieldsApi                                                                                                                                        |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,NumberofProjectAreas__c,Status__c,GrantAbbreviation__c,TotalAwardObligatedAmount__c,Application__r.ExternalOrganization__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,NumberofProjectAreas__c,Status__c,GrantAbbreviation__c,TotalAwardObligatedAmount__c |

  @189254 @sprint26
  Scenario Outline: To verify, when the user make some incorrect changes to any 'Display Field Names' of the Flex table, the error message is displayed on the Page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ProgramBudgetPeriod |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    When I navigate to "Overview" sub tab
    Then I see the following message in the page details contains:
      | Error creating table:Field ProgramName__c not found for sobject BudgetPeriod__c : table:a0I1500000ITVOSEA5 |

    Examples:
      | newFieldsApi                                                                                                        | defaultFieldsApi                                                                    |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,SequenceNumber__c |

  @189257 @sprint26
  Scenario Outline: To verify, when the user make some incorrect changes to any 'Display Field Names' of the Search table, the error message is displayed on the Page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | SearchGrantorProgram |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search inside global search "Test"
    Then I see the following message in the page details contains:
      | Error creating table:Field not found for sobject Program__c : table:a0I1500000ITVFEEA5 |

    Examples:
      | newFieldsApi                                                                                             | defaultFieldsApi                                                                  |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById, | Name,ProgramName__c,Account__c,FundedAmount__c,Status__c,DateandTime__c,Number__c |

  @189255 @sprint26
  Scenario Outline: To verify, when the user make some incorrect changes to 'Order By' config of the Flextable, the error message is displayed on the Page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue  | filterId         |
      | Flex Table:General    | Order By  | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Order By  | <newFieldsApi> | ProgramBudgetPeriod |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    When I navigate to "Overview" sub tab
    Then I see the following message in the page details contains:
      | Error creating table:unexpected token: 'ASC' |
    Examples:
      | newFieldsApi                       | defaultFieldsApi   |
      | Name,Id,ProgramName__c,Account__c, | BudgetStartDate__c |

  @105888    @verifyThatFlexTableIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate flex  table at record table is rendered properly by Automation user
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "BP-8623" in "---program:-:budgetPeriodDetailsTableId---" panel
    Then I see "Status" shown as flex table column title

  @105918    @verifyThatEnhancedGridIsDisplayedAtRecordLevelByLoggedInAsAutomationUser
  Scenario: validate enhanced grid at record table is rendered properly by Automation user
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-test-005" in "---program:-:enhancedGridTableId---" panel
    Then I see "Project Title" shown as flex table column title

  @217228 @ToCheckIndexColumnIsPresentInsideTable
  Scenario: To verify that on disabling 'Enable Auto Index' index column not displayed on UI for respective flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see "#" shown inside flex table with id "---program:-:programTableDivId---"

  @217240 @ToVerifyNotRecordFoundInsideTable
  Scenario: To verify that when user entered invalid data (record data which not exists in table) in search box, then 'No records found' message get displayed
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Heloo"
    Then I see "No records found" inside flex table with id "---program:-:programTableDivId---"

  @217241 @ToVerifyNoRecordsFoundDisplyedInFlexTable
  Scenario: To verify that when user entered invalid data (record data which not exists in table) in search box, then 'No records found' message get displayed
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Heloo"
    Then I see "No records found" inside flex table with id "---program:-:programTableDivId---"

  @217242 @ToVerifyNoRecordsFoundDisplyedInFlexTableforspiuser
  Scenario: To verify that when user entered invalid data (record data which not exists in table) in search box, then 'No records found' message get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Heloo"
    Then I see "No records found" inside flex table with id "---program:-:programTableDivId---"

  @217243 @ToVerifyNotRecordFoundInsideTableForAdminuser
  Scenario: To verify that when user entered any invalid number (i.e. 100.10,00 in this format) in search box, then 'No records found' message get displayed
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "100.10,00"
    Then I see "No records found" inside flex table with id "---program:-:programTableDivId---"

  @217244 @ToVerifyNotRecordFoundInsideTableForPMuser
  Scenario: To verify that when user entered any invalid number (i.e. 100.10,00 in this format) in search box, then 'No records found' message get displayed
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "100.10,00"
    Then I see "No records found" inside flex table with id "---program:-:programTableDivId---"

  @217245 @ToVerifyNotRecordFoundInsideTableForSPIuser
  Scenario:  To verify that when user entered any invalid number (i.e. 100.10,00 in this format) in search box, then 'No records found' message get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "100.10,00"
    Then I see "No records found" inside flex table with id "---program:-:programTableDivId---"

  @217273 @ToVerifyNotRecordFoundInsideTableForAdminuser(DateFormat)
  Scenario:  To verify that when user entered Date in wrong format, then 'No records found' message get displayed
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "2020/09/16/"
    Then I see "No records found" inside flex table with id "---program:-:programTableDivId---"

  @217274 @ToVerifyNotRecordFoundInsideTableForSPIuser(DateFormat)
  Scenario: To verify that when user entered Date in wrong format, then 'No records found' message get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "2020/09/16/"
    Then I see "No records found" inside flex table with id "---program:-:programTableDivId---"

  @217275 @ToVerifyNotRecordFoundInsideTableForAdminuser(EGMDID)
  Scenario:To verify that when user entered EGMS ID in wrong format, then 'No records found' message get displayed
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "17912222-PG-343"
    Then I see "No records found" inside flex table with id "---program:-:programTableDivId---"

  @217276 @ToVerifyNotRecordFoundInsideTableForPMuser(EGMDID)
  Scenario: To verify that when user entered EGMS ID in wrong format, then 'No records found' message get displayed
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "17912222-PG-343"
    Then I see "No records found" inside flex table with id "---program:-:programTableDivId---"

  @217277 @ToVerifyNotRecordFoundInsideTableForSPIuser(EGMDID)
  Scenario: To verify that when user entered EGMS ID in wrong format, then 'No records found' message get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "17912222-PG-343"
    Then I see "No records found" inside flex table with id "---program:-:programTableDivId---"

  @190090 @sprint26
  Scenario Outline: To verify, when the user make some incorrect changes to 'Order By' config of the Search table, the error message is displayed on the Page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue  | filterId         |
      | Flex Table:General    | Order By  | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Order By  | <newFieldsApi> | SearchGrantorProgram |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search inside global search "Test"
    Then I see the following message in the page details contains:
      | Error creating table:unexpected token: 'ASC' |
    Examples:
      | newFieldsApi                           | defaultFieldsApi |
      | NameName,Id,ProgramName__c,Account__c, | Name             |

    @206586 @BulkPdfandBulkCsv @sprint5 @dnyaneshwari
      Scenario: To verify - when user click on bulk PDF then "You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator." message should get display
      When I login as "AUTOMATION-ADMIN" user
      And I navigate to "Planning" tab
      And I click toggle button to select "Draft Programs"
      And I click on top right button "Bulk Pdf" in flex table with id "---program:-:programsTableId---"
      Then I see the following message in the page details contains:
        | You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator. |

  @206610 @BulkPdfandBulkCsv @sprint5 @dnyaneshwari
  Scenario: To verify - when user click on bulk CSV then "You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator." message should get display
    When I login as "AUTOMATION-ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Bulk Pdf" in flex table with id "---program:-:programsTableId---"
    Then I see the following message in the page details contains:
      | You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator. |

  @206612 @BulkPdfandBulkCsv @sprint5 @dnyaneshwari
  Scenario: To verify - when user click on bulk PDF and CSV then "You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator." message should get display
    When I login as "AUTOMATION-ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Bulk Pdf" in flex table with id "---program:-:programsTableId---"
    And I click on top right button "Bulk CSV" in flex table with id "---program:-:programsTableId---"
    Then I see the following message in the page details contains:
      | You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator. |

  @206613 @BulkPdfandBulkCsv @sprint5 @dnyaneshwari
  Scenario: To verify - when user click on bulk PDF then "You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator." message should get display for Automation user
    When I login as "Automation" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Bulk Pdf" in flex table with id "---program:-:programsTableId---"
    Then I see the following message in the page details contains:
      | You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator. |

  @206616 @BulkPdfandBulkCsv @sprint5 @dnyaneshwari
  Scenario:  To verify - when user click on bulk CSV then "You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator." message should get display for Automation user
    When I login as "Automation" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Bulk Pdf" in flex table with id "---program:-:programsTableId---"
    Then I see the following message in the page details contains:
      | You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator. |

  @206620 @BulkPdfandBulkCsv @sprint5 @dnyaneshwari
  Scenario:  To verify - when user click on bulk PDF and CSV then "You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator." message should get display
    When I login as "Automation" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Bulk Pdf" in flex table with id "---program:-:programsTableId---"
    And I click on top right button "Bulk CSV" in flex table with id "---program:-:programsTableId---"
    Then I see the following message in the page details contains:
      | You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator. |

  @206621 @BulkPdfandBulkCsv @sprint5 @dnyaneshwari
  Scenario:  To verify - when user click on bulk PDF then "You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator." message should get display for internal user
    When I login as "Automation-PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Bulk Pdf" in flex table with id "---program:-:programsTableId---"
    Then I see the following message in the page details contains:
      | You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator. |

  @206623 @BulkPdfandBulkCsv @sprint5 @dnyaneshwari
  Scenario:   To verify - when user click on bulk CSV then "You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator." message should get display for internal user
    When I login as "Automation-PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Bulk Pdf" in flex table with id "---program:-:programsTableId---"
    Then I see the following message in the page details contains:
      | You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator. |

  @206625 @BulkPdfandBulkCsv @sprint5 @dnyaneshwari
  Scenario:   To verify - when user click on bulk PDF and CSV then "You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator." message should get display for internal user
    When I login as "Automation-PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Bulk Pdf" in flex table with id "---program:-:programsTableId---"
    And I click on top right button "Bulk CSV" in flex table with id "---program:-:programsTableId---"
    Then I see the following message in the page details contains:
      | You will receive an email within 30 mins. If you haven't receive any response please contact to system adminstrator. |

  @207067 @ToVerifySubTotalLabelDisplayedAfterAddingFormula @Sprint6
  Scenario: E-grid - To verify Subtotal and Total label displayed properly on 1st page and also on other pages.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see cell subtotal as expected as given formula at "TotalAwardObligatedAmount__c" field

  @207072 @ToVerifySubTotalLabelDisplayedAfterAddingFormula @Sprint6
  Scenario: To verify that on applying Row grouping, respective subtotal label display correctly on all pages.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see cell subtotal as expected as given formula at "TotalAwardObligatedAmount__c" field

  @207074 @ToVerifySubTotalLabelDisplayedAfterAddingFormula @Sprint6
  Scenario: E-Grid - To verify that on applying Row grouping, respective subtotal label display correctly on all pages.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | TmpActiveGrantsGrid  | Name                      | FTC-1491                   |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | TmpActiveGrantsGrid  | Name                      | FTC-1491                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Number of Awards :" inside rows of enhanced grid id "---program:-:enhancedGridTableId---"

  @206942 @ToVerifySubTotalLabelDisplayedAfterAddingFormula @Sprint6
  Scenario: E-grid-To verify Sub total label displayed after adding formula in "Name" field details config.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid1 | TmpActiveGrantsGrid  | Name                      | FTC-1506                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Number of Awards :" inside rows of enhanced grid id "---program:-:enhancedGridTableId---"

  @207065 @ToVerifySubTotalLabelDisplayedAfterAddingFormula @Sprint6
  Scenario: E-grid - To verify Subtotal and Total label displayed properly on 1st page and also on other pages.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid1 | TmpActiveGrantsGrid  | Name                      | FTC-1506                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Number of Awards :" inside rows of enhanced grid id "---program:-:enhancedGridTableId---"