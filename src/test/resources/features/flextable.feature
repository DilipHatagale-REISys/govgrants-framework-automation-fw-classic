@flextable-component
Feature: Flex Table Component Scenarios
  Test all flex table component based scenarios
  As a configuration manager i make different configurational changes in flex table component and will validate them.

  @34022 @all @changeOfFlexTableTitle-gPlanning
  Scenario: validate after changing name of flex table title inside planning-programs
    Given I have default configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Label     | Draft Programs    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Label     | Automation    | Programs           | Name                      | FLV-1837                   |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Automation" shown as flex table title

  @34024 @all @disablingExportFile-gPlanning
  Scenario: validate disabling of PDF/Excel download from menu option in flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on top right parallel lines bar for "Draft Programs"
    Then I see "Download as PDF""Download as CSV" options inside "Draft Programs" disabled

  @34026 @all @disblingQuickSearch-gPlanning
  Scenario: validate disabling of quick search in flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see quick search option disabled

  @34027 @all @disablingAdvanceFilter-gPlanning
  Scenario: validate disabling of advance filter from planning-Program flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see Advance Filter is disabled from table "toggleFlexTablePrograms"

  @34028 @all @disablingMenuIcon-gPlanning
  Scenario: validate disabling of menu icon from Program flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table            | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Disable Menu | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see Menu icon is disabled from planning flex table "Draft Programs"

  @34029 @all @enableRecordSelectionForFlex-gPlanning
  Scenario: validate enabling of record selection check boxes in flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Record Selection | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see select check box enabled in flex table

  @34030 @all @disablingAmountTotalForFlex-gPlanning
  Scenario: validate disbaling of total amount in flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Row | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Row | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see total amount row in flex table is not displayed


  @34031 @all @disablingTotalRowCount-gPlanning
  Scenario: validate disbaling of total row count in flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Total Records" count in "flexTableDivId"

  @34032 @all @additionOfLabelForRowNamedTotal-gPlanning
  Scenario: validate addition of label for row named as total of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | filterId         |
      | Flex Table            | Total Row Label | Total             | Programs           | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Total Row Label | Automation Total | Programs           |                           | Total                      |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see changed label as "Automation Total" of last row name

  @34033 @all @enableAutoIndex-gPlanning
  Scenario: validate enable auto index for details inside flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see " #" in flex table header

  @34034 @all @addingfieldNamesOfDifferentDataTypes-gPlanning
  Scenario Outline: validate adding field names for different data types in flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "<fieldDisplayNames>" in flex table header

    Examples:
      | fieldDisplayNames      | newFieldsApi                                                                                                                           | defaultFieldsApi                                                                                                 |
      | CFDA Number            | FederalProgramCFDA__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Program Approver       | ProgramApprover__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById    | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Expected Funding       | ExpectedFunding__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById    | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | End Date               | EndDate__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById            | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Federal Program CFDA # | ProgramCFDA__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById        | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Program Type           | ProgramType__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById        | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Website Address        | WebsiteAddress__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById     | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Is Federal Program     | IsFederalProgram__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById   | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Number                 | Number__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById             | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @34035 @all @disableSpecificStatusCategory-gPlanning
  Scenario Outline: validate removing Created status category from flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table List       | Filter Clause | <oldSoqlFilter>   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Filter Clause | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see no "Created" status in flex table id "flexTableDivId"

    Examples:
      | newSoqlFilter                                                                                                   | oldSoqlFilter                                                                                                             |
      | RecordType.Name = 'Internal Program' and Status__c IN ( 'Change Requested','Submitted for Approval','Approved') | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') |

  @34037 @all @editActionOpensInNewWindow-gPlanning
  Scenario: validate flex table action field- Edit opens in new window
    Given I have default configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in new window | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see new tab is opened

  @34038 @all @editActionOpensInSameWindow-gPlanning
  Scenario: validate flex table action field- Edit opens in same window
    Given I have default configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in same window | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see no new tab is opened

  @34039 @all @editActionOpensInOverLayWindow-gPlanning
  Scenario: validate flex table action field- Edit opens in overlay window
    Given I have default configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Edit" opens in overLay window

  @34292 @all @refreshBehaviourFieldAtRolesAndResponsilitiesFlexTableAsRefreshEntirePage-gPlanning
  Scenario: validate flex table action field- refresh entire page
    Given I have default configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue           | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior | Refresh the entire page | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Roles" sub tab
    When I click on "Edit" icon for "Owner" to save inside subtab
    Then I see entire page is refreshing

  @34297 @all @hideForProfileFieldAtRolesAndResponsibilitiesFlexTableAction-gPlanning
  Scenario: Hide edit row level action for specific profile from configuration and validating it at under roles and responibilities flex table- gPlanning
    Given I have default configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue        | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Profile | System Administrator | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Roles" sub tab
    Then I see "Edit" icon for "Owner" is not displayed inside flex table

  @34298 @all @hideForUserFieldAtRolesAndResponsibilitiesFlexTableAction-gPlanning
  Scenario: Hide edit row level action for specific profile from configuration and validating it at under roles and responibilities flex table- gPlanning
    Given I have default configuration as below:
      | configurationCategory     | fieldName     | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName     | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For User | Internal      | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Roles" sub tab
    Then I see "Edit" icon for "Owner" is not displayed inside flex table

  @34299 @all @hideForContextFieldAtRolesAndResponsibilitiesFlexTableAction-gPlanning
  Scenario: Hide edit row level action for edit layout from configuration and validating it at under roles and responibilities flex table- gPlanning
    Given I have default configuration as below:
      | configurationCategory     | fieldName        | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Context |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName        | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide For Context | Edit          | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Roles" sub tab
    Then I see "Edit" icon for "Owner" is not displayed inside flex table

  @34300 @all @hideOperatorFieldUsingANDOperatorAtRolesAndResponsibilitiesFlexTAbleAction-gPlanning
  Scenario: Hide edit row level action using AND operator from configuration and validating it at under roles and responibilities flex table- gPlanning
    Given I have default configuration as below:
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
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Roles" sub tab
    Then I see "Edit" icon for "Owner" is not displayed inside flex table

  @34302 @all @hideOperatorFieldUsingOROperatorAtRolesAndResponsibilitiesFlexTAbleAction-gPlanning
  Scenario: Hide edit row level action using OR operator from configuration and validating it at under roles and responibilities flex table- gPlanning
    Given I have default configuration as below:
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
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Roles" sub tab
    Then I see "Edit" icon for "Owner" is not displayed inside flex table

  @39287 @all @headerHelpTextFieldAtFlexTable-gPlanning
  Scenario Outline: Changing content of header help text field at flex table and validating it at draft program flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | <new_helpText> | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I hovering mouse on help text icon inside "Draft Programs" for flex table
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText                                                                                                       |
      | Help Text for Automation | 'internal program' represents all the programs that the user has access to and are presented as a list or a table. |

  @39296 @all @enableHelpFieldAtFlexTable-gPlanning
  Scenario: validate enabling of help inside menu option in flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Help | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Help | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on top right parallel lines bar for "Draft Programs"
    Then I see "Help" options inside "Draft Programs" enabled

  @39298 @all @enablePageSizeFieldAtFlexTable-gPlanning
  Scenario: validate enabling of page size dropdown at bottom in flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Page Size | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Page Size | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Show" with page size dropdown at "flexTableDivId"

  @39299 @all @enablePaginationFieldAtFlexTable-gPlanning
  Scenario: validate enabling of page size dropdown at bottom in flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Page" with pagination arrow at "flexTableDivId"

  @39302 @all @defaultPageSizeFieldAtFlexTable-gPlanning
  Scenario: validate change of default page size inside dropdown at bottom in flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Default Page Size | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Default Page Size | 20            | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "20" records inside flex table id "flexTableDivId"

  @40002 @all @helpTextFieldAtFlexTableColumnHeader-gPlanning
  Scenario Outline: Changing content of help text field at flex table column header from config and validating it inside flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Help Text | <new_helpText> | Programs           | Name                      | FTC-1016                   |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I hovering mouse on help text icon inside "ID" for flex table column
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText             |
      | Help Text for Automation |

  @40004 @all @fieldLabelOverrideFieldAtFlexTableColumnHeader-gPlanning
  Scenario: Changing specific column name of program flex table from config and validating it inside flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Field Label Override | ID                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field Label Override | Test          | Programs           | Name                      | FTC-1016                   |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Test" shown as flex table column title

  @39294 @all @skipFieldForExportFieldAtFlexTable-gPlanning
  Scenario: Setup skip form export for 'Status_c' in configuration and validating inside program flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export | Status__c     | Programs           |                           |                            |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on top right parallel lines bar for "Draft Programs"
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I do not see "Status" on page "1" of "govgrants" pdf file

  @40005 @all @enableTotalFieldAtFlexTable-gPlanning
  Scenario: Enabling total amount inside funded amount columb for all records config and validating it inside flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Total | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total | true          | Programs           | Name                      | FTC-1018                   |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see total amount in flex table

  @40012 @all @sequenceFieldAtFlexTableAction-gPlanning
  Scenario: Changing sequence of edit row level action item at flex table from config and validating it inside flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table Action     | Sequence  | 1                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Sequence  | 2             | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" row action Button at position "1"

  @40014 @all @buttonHelpTextFieldAtFlexTableAction-gPlanning
  Scenario: Changing content of button help text field at flex table action from config and validating it inside flex table of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Button Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text | Automation Help | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Automation Help" as title for "Test program for automation - Created mode only" inside flex table action

  @40015 @all @actionURLFieldAtFlexTableAction-gPlanning
  Scenario Outline: Changing action url of action url field for edit action from config and validating it at flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Flex Table Action     | Action URL | <oldActionUrl>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL | <newActionUrl> | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see edit opens with "<newActionUrl>"

    Examples:
      | oldActionUrl                                                     | newActionUrl            |
      | /apex/ProgramEdit?id={!Program__c.Id}&RecordType=InternalProgram | https://www.google.com/ |

  @40020 @all @iconCSSFieldAtFlexTableAction-gPlanning
  Scenario: Setup icon for flex table edit action from config and validating it at flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                                  | filterId         |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionDefaultIconCss | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionNewIconCss | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see external link icon as "Test program for automation - Created mode only" for "Edit" inside flex table action

  @40079 @all @locationFieldAtFlexTableRowLevelEditAction-gPlanning
  Scenario: Changing location of roles and responsibilities flex table edit action from row to top from config anf validating it inside Roles and Responsibilities flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row               | ProgramRolesAndResponsibilities | Name                      | Edit                       |
      | Flex Table Action     | Header Action Display Type |                   | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top           | ProgramRolesAndResponsibilities | Name                      | Edit                       |
      | Flex Table Action     | Header Action Display Type | Button        | ProgramRolesAndResponsibilities | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Roles" sub tab
    Then I see "Edit" button inside "Roles And Responsibilities" flex table

  @40080 @all @locationFieldAtFlexTableTopLevelNewAction-gPlanning
  Scenario: Changing location of roles and responsibilities flex table new action button from top to row from config anf validating it inside Roles and Responsibilities flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top               | ProgramRolesAndResponsibilities | Name                      | New                        |
      | Flex Table Action     | Header Action Display Type | Button            | ProgramRolesAndResponsibilities | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location  | Row           | ProgramRolesAndResponsibilities | Name                      | New                        |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Roles" sub tab
    Then I see "New" icon for "Owner" is displayed inside flex table

  @40087 @all @headerActionDisplayTypeFieldAtFlexTableTopLevelNewActionAsMenu-gPlanning
  Scenario: Changing display type of roles and responsibilities flex table new action button from button to menu from config anf validating it inside Roles and Responsibilities flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Header Action Display Type | Button            | ProgramRolesAndResponsibilities | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Header Action Display Type | Menu          | ProgramRolesAndResponsibilities | Name                      | New                        |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Roles" sub tab
    When I click on top right parallel lines bar for "Roles And Responsibilities"
    Then I see "New" options inside "Roles And Responsibilities" enabled

  @40088 @all @headerActionDisplayTypeFieldAtFlexTableTopLevelNewActionAsLink-gPlanning
  Scenario: Changing display type of roles and responsibilities flex table new action button from button to menu from config anf validating it inside Roles and Responsibilities flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Header Action Display Type | Button            | ProgramRolesAndResponsibilities | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Header Action Display Type | link          | ProgramRolesAndResponsibilities | Name                      | New                        |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Roles" sub tab
    Then I see "New" button inside "Roles And Responsibilities" flex table

  @40096 @all @headerActionDisplayTypeFieldAtFlexTableTopLevelViewSubmittedApplicationsAsLink-gPlanning
  Scenario: Changing display type of roles and responsibilities flex table new action button from button to menu from config anf validating it at flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Flex Table Action     | Header Action Display Type | Menu              | Programs           | Name                      | View Submitted Applications |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Flex Table Action     | Header Action Display Type | Button        | Programs           | Name                      | View Submitted Applications |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "View Submitted Applications" options inside "Draft Programs" enabled

  @40100 @all @showConfirmationBoxFieldForProgramFlexTAbleViewAction-gPlanning
  Scenario: Setup confirmation box for program flex table view action configuration and validating it at flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table with table id "toggleFlexTablePrograms" without processing
    Then I see confirmation box with body "null" is displayed

  @40102 @all @ConfirmationMessageFieldForProgramFlexTAbleViewAction-gPlanning
  Scenario: Setup confirmation message for program flex table view action from configuration and validating it at flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | Programs           | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  |                   | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | Programs           | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  | Automation    | Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table with table id "toggleFlexTablePrograms" without processing
    Then I see confirmation box with body "Automation" is displayed

  @40103 @all @modalTitleFieldForProgramFlexTAbleViewAction-gPlanning
  Scenario: Setup modal title for program flex table view action from configuration and validating it at flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior |                   | Programs           | Name                      | View                       |
      | Flex Table Action     | Modal Title     |                   | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay  | Programs           | Name                      | View                       |
      | Flex Table Action     | Modal Title     | Automation Title | Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Automation Title" displayed in flex table Action modal

  @40106 @all @hideForProfileFieldAtProgramFlexTableEditAction-gPlanning
  Scenario Outline: Hide edit row level action for specific profile from configuration and validating it at under program flex table- gPlanning
    Given I have default configuration as below:
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
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table

    Examples:
      | defaultExpression                                      | defaultHideDecisionField |
      | Status__c <> 'Created' AND Status__c<> 'Being Amended' | HideEditDeleteBtn__c     |

  @40109 @all @hideForUserFieldAtProgramFlexTableEditAction-gPlanning
  Scenario Outline: Hide edit row level action for specific user from configuration and validating it at under program flex table- gPlanning
    Given I have default configuration as below:
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
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table

    Examples:
      | defaultExpression                                      | defaultHideDecisionField |
      | Status__c <> 'Created' AND Status__c<> 'Being Amended' | HideEditDeleteBtn__c     |

  @40112 @all @hideForContextFieldAtProgramFlexTableEditAction-gPlanning
  Scenario Outline: Hide edit row level action for view layout from configuration and validating it at under program flex table- gPlanning
    Given I have default configuration as below:
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
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table

    Examples:
      | defaultExpression                                      | defaultHideDecisionField |
      | Status__c <> 'Created' AND Status__c<> 'Being Amended' | HideEditDeleteBtn__c     |

  @40115 @all @hideDecisionFieldAtProgramFlexTableEditAction-gPlanning
  Scenario Outline: Hide edit row level action for view layout from configuration and validating it at under program flex table- gPlanning
    Given I have default configuration as below:
      | configurationCategory     | fieldName                | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Decision Expression | <defaultExpression>        | Programs           | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      | <defaultHideDecisionField> | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                | fieldNewValue              | coreComponentField                                            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                   | Status                   | Created                    | Test program for automation -  SA mode only - Can be Approved |                           |                            |
      | Flex Table Action Sobject | Hide Decision Expression |                            | Programs                                                      | Name                      | Edit                       |
      | Flex Table Action Sobject | Hide Decision Field      | <defaultHideDecisionField> | Programs                                                      | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
    When I select "Approve" from approval decision panel
    When I enter Approval comment
    And I click submit
    When I re-login as "Automation-PM" user on "QA" portal
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    Then I see "Edit" icon for "Test program for automation -  SA mode only - Can be Approved" is not displayed inside flex table

    Examples:
      | defaultExpression                                      | defaultHideDecisionField |
      | Status__c <> 'Created' AND Status__c<> 'Being Amended' | HideEditDeleteBtn__c     |

  @40119 @all @hideOperatorFieldUsingANDOperatorAtProgramFlexTAbleAction-gPlanning
  Scenario Outline: Hide edit row level action using AND operator for program flex table from configuration and validating it at under programs flex table- gPlanning
    Given I have default configuration as below:
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
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table

    Examples:
      | defaultExpression                                      | defaultHideDecisionField |
      | Status__c <> 'Created' AND Status__c<> 'Being Amended' | HideEditDeleteBtn__c     |

  @40121 @all @hideOperatorFieldUsingOROperatorAtProgramFlexTAbleAction-gPlanning
  Scenario Outline: Hide edit row level action using AND operator for program flex table from configuration and validating it at under programs flex table- gPlanning
    Given I have default configuration as below:
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
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table

    Examples:
      | defaultExpression                                      | defaultHideDecisionField |
      | Status__c <> 'Created' AND Status__c<> 'Being Amended' | HideEditDeleteBtn__c     |

  @40124 @all @hideExpressionJSONFieldAtProgramFlexTable-gPlanning
  Scenario: Hide edit row level action for program flex table from json configuration and validating it under program flex table-gPlanning
    Given I have default configuration as below:
      | configurationCategory     | fieldName            | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON |                   | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName            | fieldNewValue                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON | govgrants_config:ProgramFlexTableExpressionJson | Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table

  @40128 @all @hideForProfileFieldAtActiveFundingOpprtunityFlexTableCreateAction-gAnnouncement
  Scenario: Hide create top level action for specific profile from configuration and validating it at under active funding opprtunities flex table- gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For Profile |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue        | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For Profile | System Administrator | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @40129 @all @hideForUserFieldAtActiveFundingOpprtunityFlexTableCreateAction-gAnnouncement
  Scenario: Hide create top level action for specific profile from configuration and validating it at under active funding opprtunities flex table- gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User | Internal      | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @40217 @all @hideOperatorFieldUsingANDOperatorAtActiveFundingOpprtunityFlexTableCreateAction-gAnnouncement
  Scenario: Hide create top level action for specific profile from configuration and validating it at under active funding opprtunities flex table- gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User    |                   | ActiveFundingOpportunities | Name                      | Create                     |
      | Flex Table Action     | Hide For Profile |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue        | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide For User    | Internal             | ActiveFundingOpportunities | Name                      | Create                     |
      | Flex Table Action     | Hide For Profile | System Administrator | ActiveFundingOpportunities | Name                      | Create                     |
      | Flex Table Action     | Hide Operator    | AND                  | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @40219 @all @hideOperatorFieldUsingOROperatorAtActiveFundingOpprtunityFlexTableCreateAction-gAnnouncement
  Scenario: Hide create top level action for specific profile from configuration and validating it at under active funding opprtunities flex table- gPlanning
    Given I have default configuration as below:
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
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @40220 @all @hideExpressionJSONFieldAtActiveFundingOpprtunityFlexTableCreateAction-gAnnouncement
  Scenario: Hide create top level action for specific profile from configuration and validating it at under active funding opprtunities flex table- gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                      | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:ActiveFundingOpportunitiesFlexTableExpressionJson | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @40225 @all @activeFieldAtFlexTable-gPlanning
  Scenario: Disabling active programs from list view of program flex table from config and validating it at program flex table-programs
    Given I have default configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Active ?  | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Active ?  | false         | Programs           | Name                      | FLV-1835                   |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click toggle button for "Draft Programs"
    Then I see "Active Programs" is not displayed inside program flex table dropdown

  @40233 @all @showInPdfFieldAtFlexTable-gPlanning
  Scenario: Disabling active programs from list view of program flex table from config and validating it at program flex table-programs
    Given I have default configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Table List       | Show in PDF | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF | true          | Programs           | Name                      | FLV-1835                   |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on top right parallel lines bar for "Draft Programs"
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Active Programs" on page "1" of "govgrants" pdf file

  @flextablebug-test
  Scenario: Run flex table specific steps for specific time continuosly to ensure no error is displayed
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform sequence of actions on flex table for "120" minute
    Then I do not see "Bad Message 431" error
	