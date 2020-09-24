@flextable-component @regression-test5@flexTable
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
    Then I see select check box enabled in flex table

  @34030    @disablingAmountTotalForFlex-gPlanning
  Scenario: validate disbaling of total amount in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Row | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Total     | true              | ApiGeneratedId:0 |
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
    And I click modal button "Save"
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
    Then I see "Page" with pagination arrow at "---program:-:programsTableId---"

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
      | configurationCategory     | fieldName                | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Decision Expression | <defaultExpression>        | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      | <defaultHideDecisionField> | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                | fieldNewValue              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Decision Expression |                            | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      | <defaultHideDecisionField> | Programs           | Name                      | Edit                       |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    When I pause execution for "3" seconds
    And I click on "Edit" icon for "BP-01" inside flex table with id "---program:-:budgetPeriodDetailsTableId---"
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
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
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
    And I click modal button "Save"
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
    Then I see value "30/11/2020" for title "Start Date" inside table "toggleFlexTablePrograms"

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
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see value "11/30/2020 5:00 PM" for title "DateandTime" inside table "toggleFlexTablePrograms"

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
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see value "11/30/2020 6:00 PM" for title "DateandTime" inside table "toggleFlexTablePrograms"

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
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see value "1/12/2020 3:30 AM" for title "DateandTime" inside table "toggleFlexTablePrograms"

    Examples:
      | newFieldsApi                                 | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,DateandTime__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @96030     @VerifyAttachmentTableActionsAreAlignedProperly-gPlanning
  Scenario: validate alignment of actions under attachment table - Planning phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "test send to owner 2"
    When I click on "View Program Details " icon for "test send to owner 2" inside table
    When I navigate to "Attachments" sub tab
    Then I see actions are aligned at attachment

  @80953   @VerifyFlexTableActionsAreAlignedProperly-gPlanning
  Scenario: validate alignment of actions under flex table - Planning phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "test send to owner 2"
    Then I see actions under "---program:-:programsTableId---" table are aligned and compared with "actionsAtFlexTable.png"

#  @flextablebug-test
#  Scenario: Run flex table specific steps for specific time continuosly to ensure no error is displayed
#    When I login as "Automation" user
#    When I setup my app as "As a Grantor"
#    And I navigate to "Planning" tab
#    When I perform sequence of actions on flex table for "120" minute
#    Then I do not see "Bad Message 431" error