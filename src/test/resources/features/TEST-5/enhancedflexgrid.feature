@enhancedflexgrid-component @regression-test5 @enhancedGrid
Business Need: Enhanced Flex Grid Component Scenarios
  Test all enhanced flex grid component based scenarios
  As a configuration manager i make different configurational changes in enhanced flex grid component and will validate them.

  @35432    @disablingAdvanceFilterForEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of advance filter from planning-Program enhance flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Filter | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Filter | false         | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see Advance Filter is disabled from table "---program:-:flexGridEnhancedID---" with data target value "#advfTmpActiveGrantsGrid"

  @35433    @disablingMenuIconForEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of menu icon from Planning- Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Grid             | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Disable Menu | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see Menu icon is disabled from planning flex table "Monitoring Schedule For All Active Grants"

  @45281    @hideCellJsonfieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Hiding specific cell value of child flex table at enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideCellJsonForChildFlexTableAtEnhancedGrid | TmpGrantorActiveAwardsGrid | Name                      | FTC-1492                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "*****" shown inside enhanced grid table for specified record "Demo_Title"

  @45284    @readOnlyCellJSONFieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Changing specific cell value to read only for child flex table of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                    | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Read Only Cell JSON | govgrants_config:ReadOnlyCellJsonForChildFlexTableAtEnhancedGrid | TmpGrantorActiveAwardsGrid | Name                      | FTC-1492                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on "Edit" icon for "AD-GG PJ--00" inside table
    Then I see input box is not displayed for ID inside child Flex table

  @45285    @hideColumnJSONfieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Hiding specific column value for child flex table of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:HideColumnJsonForChildFlexTableAtEnhancedGrid | TmpGrantorActiveAwardsGrid | Name                      | FTC-1495                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Award Title" not displayed in enhanced grid table column title

  @45287    @readOnlyColumnJSONFieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Changing specific cell value to read only for child flex table of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                                      | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Read Only Column JSON | govgrants_config:ReadOnlyColumnJsonForChildFlexTableAtEnhancedGrid | TmpGrantorActiveAwardsGrid | Name                      | FTC-1492                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on "Edit" icon for "AD-GG PJ--00" inside table
    Then I see input box is not displayed for ID inside child Flex table

  @45290    @iconCssFieldForChildFlexTableAtEnhancedGridActionItem-gPlanning
  Scenario: Setup icon css of child flex table for enhanced grid table edit action from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                                  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionDefaultIconCss | TmpGrantorActiveAwardsGrid | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionNewIconCss | TmpGrantorActiveAwardsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see external link icon as "AD-GG PJ--00" for "Edit" inside enhanced grid table action

  @35436    @changeOfParentFlexTableTitleForEnhancedGrid-gPlanning
  Scenario: validate after changing name of enhanced flex grid title inside planning-program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName | fieldOrignalValue                         | filterId         |
      | Flex Grid:Flex Table List | Label     | Monitoring Schedule For All Active Grants | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue            | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Label     | Automation Enhanced Grid | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Automation Enhanced Grid" shown as inside "---program:-:enhancedGridTableId---"

  @35438    @disablingPDFExportFileForEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of PDF download from menu option in enhanced flex grid planning- Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (PDF) | false         | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    Then I see "Download as PDF" options inside "Monitoring Schedule For All Active Grants" disabled

  @62810    @disablingXLSExportFileForEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of Excel download from menu option in enhanced flex grid planning- Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | false         | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    Then I see "Download as XLS" options inside "Monitoring Schedule For All Active Grants" disabled

  @35439    @disblingQuickSearchForEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of quick search in enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | false         | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see quick search option disabled from enhanced grid

  @35437    @disablingEnableTotalRecordCountFieldForParentFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: validate disbaling of total row count in enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Total Records Count | false         | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I do not see "Total Records" count in enhanced grid "---program:-:enhancedGridTableId---"

  @35434    @enableAutoIndexForEnhancedGrid-gPlanning
  Scenario: validate enable auto index for details inside enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Auto Index | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "#" in enhanced flex grid header "---program:-:enhancedGridTableId---"

  @35442    @enableRecordSelectionForFlexForEnhancedGrid-gPlanning
  Scenario: validate enabling of record selection check boxes in enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Record Selection | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Record Selection | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see select check box enabled in enhanced flex grid

  @35441    @editActionOpensInSameWindowForEnhancedGrid-gPlanning @smoke
  Scenario Outline: validate enhanced flex grid action field Edit opens in same window planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue    | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Single Row Edit Behavior | Inline               | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Editable Rows            | SingleRow            | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior          | EditRecord           | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Action URL Long          | <actionUrlLongValue> | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ?          |                      | TmpActiveGrantsGrid | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | OpenURL              | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Action URL Long | <actionUrlLongValue> | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | SameWindow           | TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I see no new tab is opened for action item in enhanced flex grid

    Examples:
      | actionUrlLongValue          |
      | /apex/GrantEdit?id={!rowId} |

  @35440    @editActionOpensInOverLayWindowForEnhancedGrid-gPlanning
  Scenario Outline: validate flex table action field- Edit opens in overlay window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue    | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Single Row Edit Behavior | Inline               | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Editable Rows            | SingleRow            | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior          | EditRecord           | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Action URL Long          | <actionUrlLongValue> | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ?          |                      | TmpActiveGrantsGrid | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | OpenURL              | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Action URL Long | <actionUrlLongValue> | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | Modal                | TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I see "TmpActiveGrantsGrid" opens in overLay window

    Examples:
      | actionUrlLongValue          |
      | /apex/GrantEdit?id={!rowId} |

  @35435    @addingfieldNamesOfDifferentDataTypesForEnhancedGrid-gPlanning @smoke
  Scenario Outline: validate adding field names for different data types in enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "<fieldDisplayNames>" in enhanced flex grid header "---program:-:enhancedGridTableId---"

    Examples:
      | fieldDisplayNames              | newFieldsApi                                                                                                                                                                                                                       | defaultFieldsApi                                                                                                                                                                                                                   |
      | Project Title                  | ProjectTitle__c,Name,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
      | Current Budget Period End Date | BudgetPeriodEndDate__c,Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
      | External Organization          | ExternalOrganization__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
      | Internal Organization          | InternalOrganization__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
      | Project Period                 | CurrentProjectPeriod__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
      | Number of Awards               | NumberofAwards__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
      | Total Award Obligated Amount   | TotalAwardObligatedAmount__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
      | Status                         | Status__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
      | CFDA Number                    | CFDANumber__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
      | isClosedOut                    | isClosedOut__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
      | Program Contact Address        | AddressProgramContact__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @41297    @headerHelpTextFieldForParentFlexTableAtEnhancedGrid-gPlanning
  Scenario Outline: Changing content of help text field at parent flex table of enhanced grid from config and validating it at enhanced grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Grid             | Header Help Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Header Help Text | <new_helpText> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I hovering mouse on help text icon inside "Monitoring Schedule For All Active Grants" for enhanced grid
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText                                                                                                                                                              |
      | Help Text for Automation | The following table is a comprehensive list of all active grants.Ã‚ to view or edit a specific grant select the grant id hyperlink for the grant you would like to access |

  @41299    @enablePageSizeFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enabling of page size dropdown at bottom inside enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Page Size | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Page Size | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:enhancedGridTableId---"

  @41304    @defaultPageSizeFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate change of default page size inside dropdown at bottom enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid:General     | Default Page Size | 5                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Default Page Size | 10            | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "10" records inside enhanced grid id "---program:-:enhancedGridTableId---"

  @41308    @enableHelpFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enabling of help inside menu option in enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Help | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Help | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    Then I see "Help" options inside "Monitoring Schedule For All Active Grants" enabled

  @41311    @helpTextFieldAtEnhancedGridColumnHeader-gPlanning @skiponjenkins
  Scenario Outline: Changing content of help text field at enhanced grid column header from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Help Text | <new_helpText> | TmpActiveGrantsGrid | Name                      | FTC-1486                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I hovering mouse on help text icon inside "Internal Organization" for enhanced grid table column
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             |
      | Automation Help Text     |

  @41316    @fieldLabelOverrideFieldAtEnhancedGridColumnHeader-gPlanning
  Scenario: Changing specific column name of enhanced grid column header from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Field Label Override |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field Label Override | Test Automation | TmpActiveGrantsGrid | Name                      | FTC-1486                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Test Automation" shown inside flex table with id "---program:-:tmpActiveGrantsGridTableId---"

  @41319    @hideCellJsonfieldAtEnhancedGrid-gPlanning @smoke
  Scenario: Hiding specific cell value of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideCellJsonForEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1488                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    Then I see "*****" shown inside enhanced grid table for specified record "Demo_Title"

  @41370    @readOnlyCellJSONFieldAtEnhancedGrid-gPlanning @smoke
  Scenario: Changing specific cell value to read only of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                    | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Read Only Cell JSON | govgrants_config:ReadOnlyCellJsonForEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1489                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I see input box is not displayed for budget period end date

  @41375    @hideColumnJSONfieldAtEnhancedGrid-gPlanning @smoke
  Scenario: Hiding specific column value of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:HideColumnJsonForEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1488                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Project Period" not displayed in enhanced grid table column title

  @41376    @readOnlyColumnJSONFieldAtEnhancedGrid-gPlanning @smoke
  Scenario: Changing specific cell value to read only of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                      | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Read Only Column JSON | govgrants_config:ReadOnlyColumnJsonForEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1489                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I see input box is not displayed for budget period end date

  @41465    @iconCssFieldAtEnhancedGridActionItem-gPlanning
  Scenario: Setup icon for enhanced grid table edit action from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                                  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionDefaultIconCss | TmpActiveGrantsGrid | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionNewIconCss | TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    Then I see external link icon as "Demo_Title" for "Edit" inside enhanced grid table action

  @41466    @ConfirmationMessageFieldAtEnhancedGridActionItem-gPlanning
  Scenario: Setup confirmation message for enhanced grid table edit action from configuration and validating it inside enhanced grid of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Confirmation Message  |                   | TmpActiveGrantsGrid | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Confirmation Message  | Automation    | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Show Confirmation Box | true          | TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "Demo_Title" inside table with table id "---program:-:tmpActiveGrantsGridTableId---" without processing
    Then I see confirmation box with body "Automation" is displayed

  @41468    @locationFieldAtEnhancedGridActionItemFromRowToTop-gPlanning
  Scenario: Changing location of Monitoring Schedule For All Active Grants enhanced grid table view action from row to top from config anf validating it inside enhanced of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row               | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type |                   | TmpActiveGrantsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top           | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type | Button        | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "View" button inside "Monitoring Schedule For All Active Grants" enhanced grid

  @41385    @formulaFieldAtEnhancedGrid-gPlanning
  Scenario: Validating subtotal of cell value of total obligated amount by entering formula at config validating it inside enhanced of program-planning
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

  @42027    @headerHelpTextFieldForChildFlexTableAtEnhancedGrid-gPlanning
  Scenario Outline: Changing content of help text field at child flex table of enhanced grid from config and validating it at enhanced grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Grid             | Header Help Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Header Help Text | <new_helpText> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "Demo_Title"
    When I hovering mouse on help text icon inside "Active Awards" for enhanced grid
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText  |
      | Help Text for Automation | Active Awards |

  @42030    @enableHelpFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enabling of help inside menu option inside child table of enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Help | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Help | true          | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    Then I see "Help" options inside "Active Awards" enabled

  @42024    @helpTextFieldAtChildTableEnhancedGridColumnHeader-gPlanning
  Scenario Outline: Changing content of help text field at enhanced grid column header from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Help Text | <new_helpText> | TmpGrantorActiveAwardsGrid | Name                      | FTC-1492                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "Demo_Title"
    When I hovering mouse on help text icon inside "ID" for enhanced grid table column
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             |
      | Help Text for Automation |

  @42021    @fieldLabelOverrideFieldAtEnhancedGridChildColumnHeader-gPlanning
  Scenario: Changing specific column name of enhanced grid child column header from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Field Label Override |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue   | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field Label Override | Test Automation | TmpGrantorActiveAwardsGrid | Name                      | FTC-1492                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Test Automation" shown inside flex table with id "---program:-:tmpGrantorActiveAwardsGridTableId---"

  @44533    @orderBySortByFieldAtParentDataTableEnhancedGridForAscendingOrder-gPlanning @smoke
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName      | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General            | Order By       |                   | TmpActiveGrantsGrid   |                           |                            |
      | Flex Grid:General            | Sort Direction |                   | TmpActiveGrantsGrid   |                           |                            |
      | Page Block:Page Block Detail | Is Active      | true              | Grantee State Program | GNT__PageBlockTitle__c    | Enhanced data table        |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName      | fieldNewValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General            | Order By       | ProjectTitle__c | TmpActiveGrantsGrid   |                           |                            |
      | Flex Grid:General            | Sort Direction | ASC             | TmpActiveGrantsGrid   |                           |                            |
      | Page Block:Page Block Detail | Is Active      | false           | Grantee State Program | GNT__PageBlockTitle__c    | Enhanced data table        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see column "ProjectTitle__c" value is in "Ascending" order

  @44534    @orderBySortByFieldAtParentDataTableEnhancedGridForDescendingOrder-gPlanning
  Scenario: Changing specific column value in descending order with order by and sort by field from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName      | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General            | Order By       |                   | TmpActiveGrantsGrid   |                           |                            |
      | Flex Grid:General            | Sort Direction |                   | TmpActiveGrantsGrid   |                           |                            |
      | Page Block:Page Block Detail | Is Active      | true              | Grantee State Program | GNT__PageBlockTitle__c    | Enhanced data table        |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName      | fieldNewValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General            | Order By       | ProjectTitle__c | TmpActiveGrantsGrid   |                           |                            |
      | Flex Grid:General            | Sort Direction | DESC            | TmpActiveGrantsGrid   |                           |                            |
      | Page Block:Page Block Detail | Is Active      | false           | Grantee State Program | GNT__PageBlockTitle__c    | Enhanced data table        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see column "ProjectTitle__c" value is in "Descending" order

  @44535    @orderBySortByFieldAtChildDataTableEnhancedGridForAscendingOrder-gPlanning @smoke
  Scenario: Changing specific column value in ascending order with order by and sort by field from config at child table and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | TmpGrantorActiveAwardsGrid |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | Name          | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC           | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-VT-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-VT-001"
    Then I see column "TotalGrantAwardAmount__c" value is in "Ascending" order

  @44536    @orderBySortByFieldAtChildDataTableEnhancedGridForDescendingOrder-gPlanning
  Scenario: Changing specific column value in Descending order with order by and sort by field from config at child table and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | TmpGrantorActiveAwardsGrid |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | Name          | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC          | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-VT-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-VT-001"
    Then I see column "TotalGrantAwardAmount__c" value is in "Descending" order

  @44628    @filterClauseFieldOfParentFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario Outline: validate removing draft status category from flex table of planning-program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table List       | Filter Clause | <oldSoqlFilter>   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Filter Clause | <newSoqlFilter> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Draft" value in flex table id "---program:-:enhancedGridTableId---"

    Examples:
      | newSoqlFilter                                   | oldSoqlFilter                                    |
      | RecordType.Name='Grantor' and status__c='Draft' | RecordType.Name='Grantor' and status__c='Active' |

  @44728    @sequenceFieldAtParentflexTableActionForEnhancedGrid-gPlanning @smoke
  Scenario: Changing sequence of edit row level action item at enhanced grid parent table from config and validating it inside enhanced grid table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table Action     | Sequence  | 1                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Sequence  | 3             | TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Edit" icon for "---program:-:tmpActiveGrantsGridTableId---" is at position "1" inside flex table

  @44731    @buttonHelpTextFieldAtParentFlexTableActionForEnhancedGrid-gPlanning
  Scenario: Changing content of button help text field at enhanced grid parent table action from config and validating it inside enhanced grid table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Button Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text | Test Automation | TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    Then I see "Test Automation" as title for "Demo_Title" inside flex table action

  @44993    @disableFilterForChildFlexTableAtEnhancedGrid-gPlanning
  Scenario: Disabling the Advance Filter at child flex table of enhanced grid from config and validating it at enhanced grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Filter | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Filter | false         | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see Advance Filter is disabled from table "---program:-:tmpGrantorActiveAwardsGridTableId---" with data target value "#advfTmpGrantorActiveAwardsGrid"

  @44994    @disableMenuFieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Disabling the Menu Field at child flex table of enhanced grid from config and validating it at enhanced grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Grid             | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Disable Menu | true          | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "Demo_Title"
    Then Then I see Menu icon is disabled from planning child flex table "Active Awards" under Monitoring Schedule For All Active Grants table

  @44995    @disablingPDFExportFileForChildFlextTableEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of PDF download from menu option in enhanced flex grid planning- Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (PDF) | false         | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    Then I see "Download as PDF" options inside "Active Awards" disabled

  @62814    @disablingXLSExportFileForChildFlextTableEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of XLS download from menu option in enhanced flex grid planning- Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | false         | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    Then I see "Download as XLS" options inside "Active Awards" disabled

  @44996    @disablingQuickSearchForChildFlextTableEnhancedGrid-gPlanning
  Scenario: validate disabling of Quick Search field at Child Flex Table for Enhanced Grid - Planning phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Quick Search | false         | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see quick search option disabled from enhanced grid for child flex table "---program:-:tmpGrantorActiveAwardsGridTableId---"

  @44997    @enableTotalRecordCountForChildFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario: validate total row count in child flex table for enhanced grid.
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Total Records" for Child Flex table "---program:-:tmpGrantorActiveAwardsGridTableId---" count in enhanced grid

  @44998    @enableAutoIndexForChildFlexTableOnEnhancedGrid-gPlanning
  Scenario: validate auto index for details inside child flex table for enhanced grid.
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "#" in enhanced flex grid header "---program:-:enhancedGridTableId---"

  @45001    @enableRecordSelectionForChildFlexForEnhancedGrid-gPlanning
  Scenario: validate enabling of record selection check boxes in enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Record Selection | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Record Selection | true          | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see select check box enabled for child flex table in enhanced flex grid

  @45096    @OpenNewTabAtParentFlexTableForViewAction-gPlanning
  Scenario: validate open new tab for view at parent flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow        | TmpActiveGrantsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewTab        | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "View" icon for "Demo_Title" inside table
    Then I see new tab is opened

  @45097    @viewActionOpenInNewWindowAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enhanced grid view action open in new window for parent flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow        | TmpActiveGrantsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewWindow     | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "View" icon for "Demo_Title" inside table
    Then I see new tab is opened

  @45098    @viewActionOpenInNewTabAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enhanced grid view action open in new tab for child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow        | TmpGrantorActiveAwardsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewTab        | TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    And I pause execution for "2" seconds
    When I click on "View" icon for "AD-GG PJ--00" inside table
    Then I see new tab is opened

  @45099    @viewActionOpenInNewWindowAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enhanced grid view action open in new window for child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow        | TmpGrantorActiveAwardsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewWindow     | TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    And I pause execution for "2" seconds
    When I click on "View" icon for "AD-GG PJ--00" inside table
    Then I see new tab is opened

  @45275    @viewActionOpenInSameWindowAtChildFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario: validate enhanced grid view action open in same window for child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow        | TmpGrantorActiveAwardsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow    | TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    And I pause execution for "2" seconds
    When I click on "View" icon for "AD-GG PJ--00" inside table
    Then I see no new tab is opened

  @45276    @addingfieldNamesOfDifferentDataTypesForChildFlexTableOfEnhancedGrid-gPlanning @smoke
  Scenario Outline: validate adding field names for different data types for child flex table of enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "<fieldDisplayNames>" in enhanced flex grid header "---program:-:tmpGrantorActiveAwardsGridTableId---"

    Examples:
      | fieldDisplayNames      | newFieldsApi                                                                                                               | defaultFieldsApi                                                                                                                               |
      | Award Title            | GrantAwardName__c,Name,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,Status__c                     | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |
      | Budget Period          | BudgetStartEndDate__c,Name,GrantAwardName__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,Status__c                     | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |
      | Total Awarded Amount   | TotalGrantAwardAmount__c,Name,GrantAwardName__c,BudgetStartEndDate__c,TotalObligateAmount__c,Status__c                     | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |
      | Total Obligated Amount | TotalObligateAmount__c,Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,Status__c                     | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |
      | Status                 | Status__c,Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c                     | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |
      | Active Budget Year     | ActiveBudgetYear__c,Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,Status__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @45293    @ConfirmationMessageFieldForChildFlexTableAtEnhancedGridActionItem-gPlanning
  Scenario: Setup confirmation message for child flex table action item at enhanced grid table view action from configuration and validating it inside enhanced grid of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | TmpGrantorActiveAwardsGrid | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  |                   | TmpGrantorActiveAwardsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue   | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Confirmation Message  | Test Automation | TmpGrantorActiveAwardsGrid | Name                      | View                       |
      | Flex Table Action     | Show Confirmation Box | true            | TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    And I pause execution for "2" seconds
    When I click on "View" icon for "AD-GG PJ--00" inside table with table id "---program:-:tmpGrantorActiveAwardsGridTableId---" without processing
    Then I see confirmation box with body "Test Automation" is displayed

  @45297    @locationFieldForChildFlexTableAtEnhancedGridActionItem-gPlanning
  Scenario: Changing location of Active awards child flex table view action from row to top from config anf validating it inside enhanced of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row               | TmpGrantorActiveAwardsGrid | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type |                   | TmpGrantorActiveAwardsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top           | TmpGrantorActiveAwardsGrid | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type | Button        | TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "View" button inside "Active Awards" enhanced grid

  @45300    @locationFieldAtEnhancedGridActionItemFromTopToRow-gPlanning @smoke
  Scenario: Changing location of enhanced grid flex table Test action button from top to row from config anf validating it inside enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top               | TmpActiveGrantsGrid | Name                      | Test                       |
      | Flex Table Action     | Header Action Display Type | Button            | TmpActiveGrantsGrid | Name                      | Test                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location  | Row           | TmpActiveGrantsGrid | Name                      | Test                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see "Test" icon for "Demo_Title" is displayed inside flex table

  @45304    @locationFieldForChildFlexTableAtEnhancedGridActionItemFromTopToRow-gPlanning @smoke
  Scenario: Changing location of child flex table of enhanced grid test action button from top to row from config and validating it inside enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top               | TmpGrantorActiveAwardsGrid | Name                      | test                       |
      | Flex Table Action     | Header Action Display Type | Button            | TmpGrantorActiveAwardsGrid | Name                      | test                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location  | Row           | TmpGrantorActiveAwardsGrid | Name                      | test                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "test" icon for "AD-GG PJ--00" is displayed inside flex table

  @45308    @sequenceFieldAtChildflexTableActionForEnhancedGrid-gPlanning @smoke
  Scenario: Changing sequence of edit row level action item of child flex table at enhanced grid from config and validating it inside enhanced grid table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table Action     | Sequence  | 1                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Sequence  | 3             | TmpGrantorActiveAwardsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Edit" icon for "---program:-:tmpGrantorActiveAwardsGridTableId---" is at position "1" inside flex table

  @45309    @buttonHelpTextFieldAtChildFlexTableActionForEnhancedGrid-gPlanning
  Scenario: Changing content of button help text field at enhanced grid child flex table action from config and validating it inside enhanced grid table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Button Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text | Test Automation | TmpGrantorActiveAwardsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Test Automation" as title for "AD-GG PJ--00" inside flex table action

  @45310    @changeOfChildFlexTableTitleForEnhancedGrid-gPlanning
  Scenario: validate after changing name of child flex table title at enhanced grid inside planning-program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Label     | Active Awards     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue            | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Label     | Automation Enhanced Grid | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Automation Enhanced Grid" shown as inside "---program:-:enhancedGridTableId---"

  @49243    @enableGroupingFieldAtParentFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario: validate same value rows getting grouped and shown in sequence after checking checkbox true of Enable Row Grouping from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | TmpActiveGrantsGrid | Name                      | FTC-1497                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Number of Awards :" inside rows of enhanced grid id "---program:-:enhancedGridTableId---"

  @49244    @hideGroupingColumnFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate hide of particular column after checking checkbox true of Hide Grouping Column from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Grouping Column | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping  | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Grouping Column | true          | TmpActiveGrantsGrid | Name                      | FTC-1497                   |
      | Flex Table List       | Enable Row Grouping  | true          | TmpActiveGrantsGrid | Name                      | FTC-1497                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Number of Awards" not displayed in enhanced grid table column title

  @49250    @enableSubTotalFieldAtParentFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario: validate total of number of awards after checking checkbox true of Enable Sub Total field from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total    | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | TmpActiveGrantsGrid | Name                      | FTC-1497                   |
      | Flex Table List       | Enable Sub Total    | true          | TmpActiveGrantsGrid | Name                      | FTC-1497                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see cell subtotal for "NumberofAwards__c" at enhanced grid

  @49251    @isMasterViewFieldUncheckedForAllFlexListViewAtParentFlexTable-gPlanning
  Scenario: validate error message at enhanced grid after Unchecking check box of Is Master View Field for both list view at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Is Master View | false         | TmpActiveGrantsGrid | Name                      | FLV-2545                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Atleast one list view should be marked as a Master List View" error is displayed at enhanced grid

  @49264    @isMasterViewFieldcheckedForAtleastOneFlexListViewAtParentFlexTable-gPlanning
  Scenario: validate error message at enhanced grid after Unchecking check box of Is Master View Field for both list view at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Is Master View | false         | TmpActiveGrantsGrid | Name                      | FLV-2545                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Atleast one list view should be marked as a Master List View" error is not displayed at enhanced grid

  @49270    @styleAttributeFieldAtParentFlexTableForEnhancedGrid-gPlanning @wip
  Scenario Outline: validate color change of total adjusted amount cloumn content after making changes at style attribute from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Style Attribute     |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue         | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Style Attribute     | <styleAttributeValue> | TmpActiveGrantsGrid | Name                      | FTC-1500                   |
      | Flex Grid:General     | Display Field Names | <newFieldsApi>        | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "($1.00)" inside enhanced grid table id "---program:-:flexGridEnhancedID---" in "Red" colour

    Examples:
      | styleAttributeValue | newFieldsApi                                                       | defaultFieldsApi                                                                                                                                                                                                                   |
      | color: 'red'        | ProjectTitle__c,Name,BudgetPeriodEndDate__c,TotalAdjustedAmount__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @49271    @styleClassFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate color change of number of awards cells content after making changes at style class from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Flex Table List       | StyleClass |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue     | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | StyleClass | <styleClassValue> | TmpActiveGrantsGrid | Name                      | FTC-1502                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Road Construction Annoumsment" inside enhanced grid table id "---program:-:flexGridEnhancedID---" in "Red" colour

    Examples:
      | styleClassValue                                             |
      | {negativeValue:row[column]='Road Construction Annoumsment'} |

  @49352    @enableGroupingFieldAtChildFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario: validate same value rows getting grouped and shown in sequence after checking checkbox true of Enable Row Grouping from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | TmpGrantorActiveAwardsGrid | Name                      | FTC-1498                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Total Obligated Amount :" inside rows of enhanced grid id "---program:-:enhancedGridTableId---"

  @49353    @hideGroupingColumnFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate hide of particular column after checking checkbox true of Hide Grouping Column from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Grouping Column | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping  | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Grouping Column | true          | TmpGrantorActiveAwardsGrid | Name                      | FTC-1498                   |
      | Flex Table List       | Enable Row Grouping  | true          | TmpGrantorActiveAwardsGrid | Name                      | FTC-1498                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Total Obligated Amount" not displayed in enhanced grid table column title

  @49358    @styleClassFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate color change of number of awards cells content after making changes at style class at chile flex table from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Flex Table List       | StyleClass |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue     | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | StyleClass | <styleClassValue> | TmpGrantorActiveAwardsGrid | Name                      | FTC-1499                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-12132-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-12132-001"
    Then I see "Activated" inside enhanced grid table id "---program:-:tmpGrantorActiveAwardsGridTableId---" in "Red" colour

    Examples:
      | styleClassValue                         |
      | {negativeValue:row[column]='Activated'} |

  @49359    @styleAttributeFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate color change of total adjusted amount cloumn content after making changes at style attribute from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Flex Table List       | Style Attribute |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue         | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Style Attribute | <styleAttributeValue> | TmpGrantorActiveAwardsGrid | Name                      | FTC-1494                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-12132-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-12132-001"
    Then I see "($1.00)" inside enhanced grid table id "---program:-:tmpGrantorActiveAwardsGridTableId---" in "Red" colour

    Examples:
      | styleAttributeValue |
      | color: 'red'        |

  @49240    @isMasterViewFieldUncheckedForAllFlexListViewAtChildFlexTable-gPlanning
  Scenario: validate error message at enhanced grid after Unchecking check box of Is Master View Field for both list view for child flex table at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:Flex Table List | Is Master View | false         | TmpGrantorActiveAwardsGrid | Name                      | FLV-2544                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-12132-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-12132-001"
    Then I see "Atleast one list view should be marked as a Master List View" error is displayed at enhanced grid

  @49241    @isMasterViewFieldcheckedForAtleastOneFlexListViewAtChildFlexTable-gPlanning
  Scenario: validate error message at enhanced grid after Unchecking check box of Is Master View Field for both list view at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF    | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:Flex Table List | Is Master View | false         | TmpGrantorActiveAwardsGrid | Name                      | FLV-2544                   |
      | Flex Grid:Flex Table List | Show in PDF    | true          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-12132-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-12132-001"
    Then I see "Atleast one list view should be marked as a Master List View" error is displayed at enhanced grid

  @49249    @enableOverallTotalFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate enabling of overall total field after checking checkbox true of Enable Over All Total from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue               | filterId         |
      | Flex Table List           | Enable Over All Total | false                           | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Is Master View        | true                            | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Filter Clause         | <defaultFilterClauseForFLV2539> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName             | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Enable Over All Total | true                        | TmpActiveGrantsGrid | Name                      | FTC-1497                   |
      | Flex Grid:Flex Table List | Is Master View        | true                        | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Filter Clause         | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see over all total for "NumberofAwards__c" field at enhanced grid

    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @49354     @enableOverallTotalFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enabling of overall total field after checking checkbox true of Enable Over All Total for child flex tablefrom config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping   | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Over All Total | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping   | true          | TmpGrantorActiveAwardsGrid | Name                      | FTC-1498                   |
      | Flex Table List       | Enable Over All Total | true          | TmpGrantorActiveAwardsGrid | Name                      | FTC-1498                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-VT-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-VT-001"
    And I pause execution for "2" seconds
    Then I see field "TmpActiveGrantsGridresizable" inside page block

  @49361      @verifyEditSelectedAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate Edit selected functionality for parent flex table at enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName               | fieldOrignalValue               | filterId         |
      | Flex Grid:Flex Table List | Is Master View          | true                            | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Filter Clause           | <defaultFilterClauseForFLV2539> | ApiGeneratedId:1 |
      | Flex Table                | Enable Record Selection | false                           | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName               | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View          | true                        | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Filter Clause           | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Table:General        | Enable Record Selection | true                        | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I check "Road Construction Annoumsment" boxes in flex table with id "---program:-:flexGridEnhancedID---"
    When I click on top right button "Edit Selected" in flex table with id "---program:-:flexGridEnhancedID---"
    When I enter value "Test Automation" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    Then I see edited value inside textarea is "Test Automation" for column value "Road Construction Annoumsment" of table "---program:-:flexGridEnhancedID---"
    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @49364      @verifyEditSelectedAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate Edit selected functionality for child flex table at enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table:General    | Enable Record Selection | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Record Selection | true          | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-FIN.1-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-FIN.1-001"
    When I check "AD-FIN.1-BP01-00" boxes in flex table with id "---program:-:enhancedGridTableId---"
    When I click on top right button "Edit Selected" in flex table with id "---program:-:enhancedGridTableId---"
    When I enter value "10" into field "AmountDirectAssistance__c"
    When I click on top right button "Save" in flex table with id "---program:-:enhancedGridTableId---"
    When I perform quick search for "GT-FIN.1-001" in "---program:-:flexGridEnhancedID---" panel
    Then I see edited value inside textarea is "$390,800.00" for column value "AD-FIN.1-BP01-00" of table "---program:-:enhancedGridTableId---"

  @49360      @verifyEditAllAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate Edit selected functionality for parent flex table at enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue               | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true                            | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Filter Clause  | <defaultFilterClauseForFLV2539> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true                        | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Filter Clause  | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on top right button "Edit All" in flex table with id "---program:-:flexGridEnhancedID---"
    When I enter values "Test Automation" into textarea for table id "---program:-:flexGridEnhancedID---"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    Then I see value "Test Automation" for multiple cells at column "AddressProgramContact__c"
    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @49362      @verifyEditAllAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate Edit selected functionality for parent flex table at enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-CMAQ-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-CMAQ-001"
    When I click on top right button "Edit All" in flex table with id "---program:-:tmpGrantorActiveAwardsGRIDtABLEiD1---"
    When I enter values "Test Automation" into textarea for table id "---program:-:tmpGrantorActiveAwardsGRIDtABLEiD1---"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "GT-CMAQ-001" in "---program:-:flexGridEnhancedID---" panel
    When I pause execution for "10" seconds
    Then I see value "Test Automation" for multiple cells at column "Agreement1__c"

    Examples:
      | newFieldsApi  | defaultFieldsApi                                                                                                                               |
      | Agreement1__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @48901    @orderByFieldAtParentDataTableEnhancedGridForAscendingOrderForMultipleField-gPlanning
  Scenario Outline: Changing specific columns values in ascending order with order by field from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General            | Order By  |                   | TmpActiveGrantsGrid   |                           |                            |
      | Page Block:Page Block Detail | Is Active | true              | Grantee State Program | GNT__PageBlockTitle__c    | Enhanced data table        |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General            | Order By  | <fieldNewValue> | TmpActiveGrantsGrid   |                           |                            |
      | Page Block:Page Block Detail | Is Active | false           | Grantee State Program | GNT__PageBlockTitle__c    | Enhanced data table        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "ProjectTitle__c" and "NumberofAwards__c" in "Ascending" order

    Examples:
      | fieldNewValue                             |
      | NumberofAwards__c ASC,ProjectTitle__c ASC |

  @48902    @orderByFieldAtParentDataTableEnhancedGridForDescendingOrderForMultipleField-gPlanning
  Scenario Outline: Changing specific columns values in descending order with order by field from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General            | Order By  |                   | TmpActiveGrantsGrid   |                           |                            |
      | Page Block:Page Block Detail | Is Active | true              | Grantee State Program | GNT__PageBlockTitle__c    | Enhanced data table        |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General            | Order By  | <fieldNewValue> | TmpActiveGrantsGrid   |                           |                            |
      | Page Block:Page Block Detail | Is Active | false           | Grantee State Program | GNT__PageBlockTitle__c    | Enhanced data table        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "ProjectTitle__c" and "NumberofAwards__c" in "Descending" order

    Examples:
      | fieldNewValue                               |
      | ProjectTitle__c DESC,NumberofAwards__c DESC |

  @48903    @orderByFieldAtChildDataTableEnhancedGridForAscendingOrderForMultipleField-gPlanning @Smoke
  Scenario Outline: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General     | Order By            |                    | TmpGrantorActiveAwardsGrid |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue   | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi>  | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General     | Order By            | <fieldNewValue> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Financials 1" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Financials 1"
    When I pause execution for "5" seconds
    Then I see "GrantAwardName__c" and "ActiveBudgetYear__c" in "Ascending" order

    Examples:
      | fieldNewValue                                 | newFieldsApi                               | defaultFieldsApi                                                                                                                               |
      | ActiveBudgetYear__c ASC,GrantAwardName__c ASC | Name,GrantAwardName__c,ActiveBudgetYear__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @48905    @orderByFieldAtChildDataTableEnhancedGridDescendingOrderForMultipleField-gPlanning @Smoke
  Scenario Outline: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General     | Order By            |                    | TmpGrantorActiveAwardsGrid |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue   | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi>  | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General     | Order By            | <fieldNewValue> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Financials 1" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Financials 1"
    When I pause execution for "6" seconds
    Then I see "GrantAwardName__c" and "ActiveBudgetYear__c" in "Descending" order

    Examples:
      | fieldNewValue                                   | newFieldsApi                               | defaultFieldsApi                                                                                                                               |
      | GrantAwardName__c DESC,ActiveBudgetYear__c DESC | Name,GrantAwardName__c,ActiveBudgetYear__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @45312    @filterClauseFieldOfChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario Outline: validate created status category from flex table of planning-program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table List       | Filter Clause | <oldSoqlFilter>   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue   | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Filter Clause | <newSoqlFilter> | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Created" value in flex table id "---program:-:tmpGrantorActiveAwardsGridTableId---"

    Examples:
      | newSoqlFilter                                       | oldSoqlFilter                                                                                       |
      | RecordType.Name='Grantor' and Status__c = 'Created' | Grant__c='{!parentId}' and RecordType.Name='Grantor' and Status__c IN ('Being Amended','Activated') |

  @66954 @verifyRequiredFieldsAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate Required Fields functionality for parent flex table at enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName       | fieldOrignalValue               | filterId         |
      | Flex Grid:Flex Table List | Is Master View  | true                            | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Filter Clause   | <defaultFilterClauseForFLV2539> | ApiGeneratedId:1 |
      | Flex Grid                 | Required Fields |                                 | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName       | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View  | true                        | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Filter Clause   | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Required Fields | AddressProgramContact__c    | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on "Edit" icon for "GT-12132-001" inside table
    When I enter value "Test Automation" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "GT-12132-001" in "---program:-:flexGridEnhancedID---" panel
    Then I see value "Test Automation" for multiple cells at column "AddressProgramContact__c"
    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @78091    @verifyByClickOnLookupValueItShouldRedirectedToRespectiveRecordPageAtEnhancedGrid-gPlanning
  Scenario: validate by click on lookup value in table , respective page should get opens at EnhancedGrid - gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Grid             | Display Field |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field |               | TmpActiveGrantsGrid | Name                      | FTC-1487                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Department of Higher Education" icon for "Demo_Title" inside table
    Then I see "Organization" shown as over view header

  @79675    @verifyByClickOnUserValueItShouldRedirectedToRespectiveUserPageAtEnhancedGrid-gPlanning @BugId=144971
  Scenario Outline: validate by click on user value in table , respective user page should get opens at EnhancedGrid - gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I click on "David PM" icon for "Demo_Title" inside table
    Then I see "User" shown as over view header

    Examples:
      | newFieldsApi                     | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Name,CreatedById | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @79737  @verifyIfNoneIsSelectedInPicklistFieldThenAfterSaveABlankValueIsShownAtUIAtEnhancedGrid-gPlanning
  Scenario Outline: validate if none is selected and saved in picklist from dropdown then blank value is shown at UI at EnhancedGrid - gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "test Program for automation DND" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "test Program for automation DND" inside table
    When I enter value "--None--" into field "GrantType__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "test Program for automation DND" in "flexGridEnhancedDivId" panel
    Then I see value "" for multiple cells at column "GrantType__c"

    Examples:
      | newFieldsApi                      | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Name,GrantType__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @80046    @verifyModalTitleFieldForEnhancedGridRowLevelPreviewAction-gPlanning
  Scenario: Setup modal title for enhanced grid preview action from configuration and validating it at e-grid-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Modal Title |                   | TmpActiveGrantsGrid | Name                      | Preview                    |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue    | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Modal Title | Automation Title | TmpActiveGrantsGrid | Name                      | Preview                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I click on "Preview" icon for "Demo_Title" inside table
    Then I see "Automation Title" opens in overLay window

  @80047    @verifyModalTitleFieldForEnhancedGridTopLevelPreviewAction-gPlanning
  Scenario: Setup modal title for enhanced grid preview action from configuration and validating it at e-grid-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Modal Title |                   | TmpActiveGrantsGrid | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue    | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Modal Title | Automation Title | TmpActiveGrantsGrid | Name                      | Create                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on top right button "Create" in flex table with id "---program:-:flexGridEnhancedID---"
    Then I see "Automation Title" opens in overLay window

  @80071    @verifyDisplayFieldValueAtInternalOrganizationAtEnhancedGrid-gPlanning
  Scenario: verify display Field value at internal organization column at enhanced grid-gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table List       | Display Field |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field | County__c     | TmpActiveGrantsGrid | Name                      | FTC-1486                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see value "USA" for multiple cells at column "InternalOrganization__c"

  @80183    @defaultOverallTotalForCurrencyFieldIsNotDisplayedAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enabling of overall total field after checking checkbox true of Enable Over All Total from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total | false             | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Row      | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total | false         | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
      | Flex Table:General    | Enable Total Row      | false         | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see over all total sum is not displayed for "TotalAwardObligatedAmount__c" inside "---program:-:flexGridEnhancedID---" table

  @80067   @verifyLookupFieldShouldBeInViewModeIfEnableEditDisplayFieldCheckboxIsUnchecked-gPlanning
  Scenario: validate lookup field is in view mode after unchecking the Enable Edit Display Field from config at e-grid - gplanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table List       | Display Field             |                   | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             | County__c     | TmpActiveGrantsGrid | Name                      | FTC-1486                   |
      | Flex Table List       | Enable Edit Display Field | false         | TmpActiveGrantsGrid | Name                      | FTC-1486                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I do not see "InternalOrganization__c" field is editable inside enhanced grid

  @80068   @verifyLookupFieldShouldBeInViewModeIfEnableEditDisplayFieldCheckboxIsChecked-gPlanning
  Scenario: validate lookup field is in view mode after checking the Enable Edit Display Field from config at e-grid - gplanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table List       | Display Field             |                   | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             | County__c     | TmpActiveGrantsGrid | Name                      | FTC-1486                   |
      | Flex Table List       | Enable Edit Display Field | true          | TmpActiveGrantsGrid | Name                      | FTC-1486                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I see "InternalOrganization__c" field is editable inside enhanced grid

  @80502   @verifyHyperlinkShouldNotBePresentAtColumnValueIfEnableHyperlinkAsTextFieldCheckboxIsChecked-gPlanning
  Scenario: validate hyperlink is not present at column value after checking the Enable Hyperlink As Text Field from config at e-grid - gplanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Hyperlink As Text | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Hyperlink As Text | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I do not see hyperlink at column value "Department of Transportation" inside "---program:-:enhancedGridTableId---" table

  @80506   @verifyHyperlinkShouldBePresentAtColumnValueIfEnableHyperlinkAsTextFieldCheckboxIsUnchecked-gPlanning
  Scenario: validate hyperlink is present at column value after unchecking the Enable Hyperlink As Text Field from config at e-grid - gplanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Hyperlink As Text | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Hyperlink As Text | false         | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see hyperlink at column value "Department of Transportation" inside "---program:-:enhancedGridTableId---" table

  @82800    @validateQuickSearchBoxIsDisabledIfAnyRecordIsInInlineModeUnderEnhancedGrid-gPlanning
  Scenario: validate quick search box is disabled if any record is in inline mode under enhanced grid-gPlanning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I see quick search box is disabled in flex table with id "---program:-:flexGridEnhancedID---"

  @86421  @verifyDateFieldFormatForLocalAsESTUnderEnhancedGridParentTable
  Scenario Outline: validate the date field format under enhanced grid flex table with respective to EST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see "06/05/2020" shown inside enhanced grid table for specified record "Demo_Title"

    Examples:
      | newFieldsApi                                            | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Status__c,Name,BudgetPeriodStartDate__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @86427  @verifyDateFieldFormatForLocalAsEDTUnderEnhancedGridParentTable
  Scenario Outline: validate the date field format under enhanced grid flex table with respective to EDT Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see "05/06/2020" shown inside enhanced grid table for specified record "Demo_Title"

    Examples:
      | newFieldsApi                                            | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Status__c,Name,BudgetPeriodStartDate__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @86430  @verifyDateFieldFormatForLocalAsISTUnderEnhancedGridParentTable
  Scenario Outline: validate the date field format under enhanced grid flex table with respective to IST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see "5/6/2020" shown inside enhanced grid table for specified record "Demo_Title"

    Examples:
      | newFieldsApi                                            | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Status__c,Name,BudgetPeriodStartDate__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @86302  @verifyDateAndTimeFieldFormatForLocalAsESTUnderEnhancedGridParentTable
  Scenario Outline: validate the date and time field format under enhanced grid flex table with respective to EST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see "05/06/2020 4:00 PM" shown inside enhanced grid table for specified record "Demo_Title"

    Examples:
      | newFieldsApi                                         | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Status__c,Name,Test_Date_and_Time__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @86303  @verifyDateAndTimeFieldFormatForLocalAsEDTUnderEnhancedGridParentTable
  Scenario Outline: validate the date and time field format under enhanced grid flex table with respective to EDT Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    And I save the value from row "1" for column name "Test Date and Time" as "SaveDate" from flex table "---program:-:flexGridEnhancedID---"
    Then I see "{SavedValue:SaveDate}" shown inside enhanced grid table for specified record "Demo_Title"

    Examples:
      | newFieldsApi                                         | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Status__c,Name,Test_Date_and_Time__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @86304  @verifyDateAndTimeFieldFormatForLocalAsISTUnderEnhancedGridParentTable
  Scenario Outline: validate the date and time field format under enhanced grid flex table with respective to IST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see "7/5/2020 2:30 AM" shown inside enhanced grid table for specified record "Demo_Title"

    Examples:
      | newFieldsApi                                         | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Status__c,Name,Test_Date_and_Time__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @87307   @verifyHyperlinkShouldBePresentAtColumnValueIfEnableHyperlinkAsTextFieldCheckboxIsCheckedAtChildTable-gPlanning
  Scenario Outline: validate hyperlink is present at column value after checking the Enable Hyperlink As Text Field from config at e-grid child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue  | filterId         |
      | Flex Grid             | Enable Hyperlink As Text | false              | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names      | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Hyperlink As Text | false          | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General     | Display Field Names      | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see hyperlink at column value "AP-755-213" inside "---program:-:tmpGrantorActiveAwardsGridTableId---" table

    Examples:
      | newFieldsApi                          | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Application__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @87314   @verifyHyperlinkShouldNotBePresentAtColumnValueIfEnableHyperlinkAsTextFieldCheckboxIsCheckedAtChildTable-gPlanning
  Scenario Outline: validate hyperlink is not present at column value after checking the Enable Hyperlink As Text Field from config at e-grid child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue  | filterId         |
      | Flex Grid             | Enable Hyperlink As Text | false              | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names      | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Hyperlink As Text | true           | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General     | Display Field Names      | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I do not see hyperlink at column value "AP-755-213" inside "---program:-:tmpGrantorActiveAwardsGridTableId---" table

    Examples:
      | newFieldsApi                          | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Application__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @87839    @VerifyTheDecimalValueShownForCurrencyFieldAtEnhancedGridParentFlexTable
  Scenario Outline: verify decimal places at currency field value of parent flex table at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see "$700,000.00" shown inside enhanced grid table for specified record "Demo_Title"

    Examples:
      | newFieldsApi                                              | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Status__c,Name,CumulativeAwardedAmount__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @88090    @VerifyTheDecimalValueShownForNumberFieldAtEnhancedGridChildFlexTable
  Scenario Outline: verify decimal places at Number field value of child flex table at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "35.35" shown inside enhanced grid table for specified record "Demo_Title"

    Examples:
      | newFieldsApi                                 | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Status__c,Latitude__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @87565    @VerifyThatTheLookupFieldValueIsOverridesAsPerGivenDisplayFieldAtEnhancedGridParentFlexTable
  Scenario Outline: verify that the lookup field value is overrided as per given display field at parent flex table at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table List       | Display Field       |                    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
      | Flex Table List       | Display Field       | Code__c        | TmpActiveGrantsGrid | Name                      | FTC-1487                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see "755" shown inside enhanced grid table for specified record "Demo_Title"

    Examples:
      | newFieldsApi                                           | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,Status__c,ExternalOrganization__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @87573   @verifyLookupFieldShouldBeInViewModeIfEnableEditDisplayFieldCheckboxIsUncheckedAtChildTable-gPlanning
  Scenario Outline: validate lookup field is in view mode after unchecking the Enable Edit Display Field from config at e-grid child table - gplanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table List       | Display Field             |                    | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | false              | ApiGeneratedId:1 |
      | Flex Table List       | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             | Code__c        | TmpGrantorActiveAwardsGrid | Name                      | FTC-1519                   |
      | Flex Table List       | Enable Edit Display Field | false          | TmpGrantorActiveAwardsGrid | Name                      | FTC-1519                   |
      | Flex Grid:General     | Display Field Names       | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on "Edit" icon for "AD-GG PJ--00" inside table
    Then I do not see "Account__c" field is editable inside enhanced grid

    Examples:
      | newFieldsApi                                | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Status__c,Account__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @87763   @verifyLookupFieldShouldBeInViewModeIfEnableEditDisplayFieldCheckboxIsCheckedAtChildTable-gPlanning
  Scenario Outline: validate lookup field is in view mode after checking the Enable Edit Display Field from config at e-grid child table- gplanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table List       | Display Field             |                    | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | false              | ApiGeneratedId:1 |
      | Flex Table List       | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             | Code__c        | TmpGrantorActiveAwardsGrid | Name                      | FTC-1519                   |
      | Flex Table List       | Enable Edit Display Field | true           | TmpGrantorActiveAwardsGrid | Name                      | FTC-1519                   |
      | Flex Grid:General     | Display Field Names       | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on "Edit" icon for "AD-GG PJ--00" inside table
    Then I see "Account__c" field is editable inside enhanced grid

    Examples:
      | newFieldsApi                                | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Status__c,Account__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @88292  @VerifyThatTheLookupFieldValueIsOverridesAsPerGivenDisplayFieldAtEnhancedGridChildFlexTable
  Scenario Outline: verify that the lookup field value is overrided as per given display field at child flex table at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table List       | Display Field             |                    | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | false              | ApiGeneratedId:1 |
      | Flex Table List       | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             | Code__c        | TmpGrantorActiveAwardsGrid | Name                      | FTC-1519                   |
      | Flex Table List       | Enable Edit Display Field | false          | TmpGrantorActiveAwardsGrid | Name                      | FTC-1519                   |
      | Flex Grid:General     | Display Field Names       | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "343" shown inside enhanced grid table for specified record "AD-GG PJ--00"

    Examples:
      | newFieldsApi                                | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Status__c,Account__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @87762  @VerifyThatTheLookupFieldValueIsOverridesIfEnableEditDisplayFieldIsCheckedAtEnhancedGridChildFlexTable
  Scenario Outline: verify that the lookup field value is override if enable edit display field checkbox is checked at child tabl- enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table List       | Display Field             |                    | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | false              | ApiGeneratedId:1 |
      | Flex Table List       | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             | Code__c        | TmpGrantorActiveAwardsGrid | Name                      | FTC-1519                   |
      | Flex Table List       | Enable Edit Display Field | true           | TmpGrantorActiveAwardsGrid | Name                      | FTC-1519                   |
      | Flex Grid:General     | Display Field Names       | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on "Edit" icon for "AD-GG PJ--00" inside table
    Then I see "343" shown inside enhanced grid table for specified record "AD-GG PJ--00"

    Examples:
      | newFieldsApi                                | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Status__c,Account__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @104863  @VerifySortingLabelInsideEnhancedGridTable
  Scenario: verify that sorting label displayed inside enhanced grid table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I softly see sorting label as "* Records are sorted by " inside "---program:-:enhancedGridTableId---" table
    Then I softly see sorting label as "Last Modified Date ascending order" inside "---program:-:enhancedGridTableId---" table

  @104864  @VerifySortingLabelInsideEnhancedGridChildTable
  Scenario: verify that sorting label displayed inside enhanced grid child table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I softly see sorting label as "* Records are sorted by" inside "---program:-:tmpGrantorActiveAwardsGridTableId---" table
    Then I softly see sorting label as "Last Modified Date ascending order" inside "---program:-:tmpGrantorActiveAwardsGridTableId---" table

  @106419   @validateAdvanceFilterValueForDateFieldWithOperatorStartWithAtEnhancedGrid
  Scenario Outline: validate Advance filter search for date field with start with operator At enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:flexGridEnhancedID---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Project Period | starts with | 10/1/2016 |
    Then I softly see value "10/1/2016--12/31/2022" for title "Project Period" inside table "---program:-:flexGridEnhancedID---"
    Then I softly do not see value "12/31/2022--10/1/2016" for title "Project Period" inside table "---program:-:flexGridEnhancedID---"

    Examples:
      | newFieldsApi                            | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,CurrentProjectPeriod__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @106421   @validateAdvanceFilterValueForDateFieldWithOperatorEndWithAtEnhancedGrid
  Scenario Outline: validate Advance filter search for date field with end with operator At enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:flexGridEnhancedID---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Project Period | ends with | 2/15/2022 |
    Then I softly see value "2/15/2018--2/15/2022" for title "Project Period" inside table "---program:-:flexGridEnhancedID---"
    Then I softly do not see value "12/31/2022--10/1/2016" for title "Project Period" inside table "---program:-:flexGridEnhancedID---"

    Examples:
      | newFieldsApi                            | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,CurrentProjectPeriod__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @111923  @validateToolTipDisplayedAtHoverOnColumnValueInsideEnhancedGrid
  Scenario Outline: validate tool tip displayed at hover on column value inside Flex grid Enhanced
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Road Construction Annoumsment" in "---program:-:enhancedGridTableId---" panel
    When I hovering mouse on table id "---program:-:enhancedGridTableId---" with table row level icon "<new_helpText>" for column value "GT-12132-001"
    Then I see "<new_helpText>" shown at mouse hover inside "---program:-:enhancedGridTableId---" table

    Examples:
      | new_helpText                  |
      | Road Construction Annoumsment |

  @111921  @validateToolTipDisplayedAtHoverOnColumnValueInsideEnhancedGridChildTable
  Scenario: validate tool tip displayed at hover on column value inside Flex grid Enhanced child table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "USAID/Burundi TUBITEHO Health Activity" in "---program:-:enhancedGridTableId---" panel
    When I expand nested table containing column value "USAID/Burundi TUBITEHO Health Activity"
    When I hovering mouse on table id "---program:-:tmpGrantorActiveAwardsGridTableId---" with table row level icon "USAID/Burundi TUBITEHO Health Activity" for column value "AD-Grant--10"
    Then I see "USAID/Burundi TUBITEHO Health Activity" shown at mouse hover inside "---program:-:tmpGrantorActiveAwardsGridTableId---" table

  @116731    @verifyLoadingIconNotDisplayedWhenAllValuesFromCurrencyFieldAreHiddenUsingHideLogic-EGrid
  Scenario Outline: Validate loading icon not displayed if all currency field values are hidden using hide logic
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue               | filterId         |
      | Flex Table List           | Formula             |                                 | ApiGeneratedId:0 |
      | Flex Table List           | Hide Cell JSON      |                                 | ApiGeneratedId:1 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi>              | ApiGeneratedId:2 |
      | Flex Grid:Flex Table List | Filter Clause       | <defaultFilterClauseForFLV2539> | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue                                                        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Formula             | govgrants_config:FormulaFieldToDisplayFormulaAtLastRowAtEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
      | Flex Table List           | Hide Cell JSON      | govgrants_config:HideCellJsonForEnhancedGridNumberField              | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>                                                       | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:Flex Table List | Filter Clause       | <newFilterClauseForFLV2539>                                          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    Then I donot see navigation logo on page

    Examples:
      | newFieldsApi                                                | defaultFieldsApi                                                                                                                                                                                                                                          | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                          |
      | Status__c,Name,ProjectTitle__c,TotalAwardObligatedAmount__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and NUMBER__c=100 |

  @120976  @VerifyCrossIconIsDisplayedAtEnhancedGridQuickSearchBox
  Scenario: validate that cross icon is displayed at enhanced Grid quick search box
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see cross icon is displayed at search box at "---program:-:flexGridEnhancedID---"

  @121593    @verifyThatBorderIsDisplayedAtEnhancedGridForFirefoxBrowser @firefox
  Scenario: validate that border box is displayed at enhanced grid when opens in firefox browser
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I pause execution for "2" seconds
    Then I see border box is displayed at "TmpActiveGrantsGridFlexToggle" table

  @130539    @helpTextDisplayedAtBottomOfHelpIconAtEnhancedGridInPageViewMode
  Scenario: validate help text displayed at bottom of hekp icon at enhanced grid in page layout view mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I hovering mouse on help text icon inside "Monitoring Schedule For All Active Grants" for enhanced grid
    Then I see help text is displayed at bottom

  @130541    @helpTextDisplayedAtBottomOfHelpIconAtEnhancedGridInPageEditMode
  Scenario: validate help text displayed at bottom of hekp icon at enhanced grid in page layout edit mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I hovering mouse on help text icon inside "Monitoring Schedule For All Active Grants" for enhanced grid
    Then I see help text is displayed at bottom

  @130097    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtEnhancedGrid
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at enhanced grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I hover mouse on lookup link "Department of Higher Education" at table
    And I pause execution for "4" seconds
    Then I softly see "title" as "Department of Higher Education" inside mini page layout
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I hover mouse on lookup link "Department of Higher Education" at table
    And I pause execution for "4" seconds
    Then I softly see "Label" as "Code" inside mini page layout
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I hover mouse on lookup link "Department of Higher Education" at table
    And I pause execution for "4" seconds
    Then I softly see "Value" as "755" inside mini page layout

  @82799    @validateLoadingIconIsDisplayedAtTmpActiveGrantsGridModalWindowAtEnhancedGridTopLevelAction
  Scenario: validate loading icon is displayed at TmpActiveGrantsGrid modal window at enhancedGrid top level action
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on top right button "Create" in flex table with id "---program:-:flexGridEnhancedID---"
    Then I see loading icon at "TmpActiveGrantsGrid" modal

  @146545    @verifyPaginationDisplayedAtBothTopAndBottomAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate pagination at top and bottom inside enhanced flex grid planning-Program enhanced flex grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Page" with pagination arrow at "---program:-:flexGridEnhancedID---" at "Top"
    Then I see "Page" with pagination arrow at "---program:-:flexGridEnhancedID---" at "Bottom"

  @146571 @verifyPaginationDisplayedAtBothTopAndBottomAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate pagination at top and bottom inside enhanced flex grid planning-Program enhanced flex grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Active Awards" content inside "Activities" subheader on left panel
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I expand nested table containing column value "Fiscal Year(2019-2019)"
    Then I see "Page" with pagination arrow at "AwardBudgetCategoryFlexGridgrid" at "Top"
    Then I see "Page" with pagination arrow at "AwardBudgetCategoryFlexGridgrid" at "Bottom"

  @148349    @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtEnhancedGridParentTable
  Scenario Outline: verify number field is displayed with 4 decimal places at enhanced grid of parent table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see value "12,345.0000" for title "NumberDecimal" inside table "---program:-:flexGridEnhancedID---"

    Examples:
      | newFieldsApi                                                                        | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Name,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,NumberDecimal__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @148362    @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtEnhancedGridParentTable
  Scenario Outline: verify number field is displayed with 4 decimal places at enhanced grid of parent table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see the text :
      | 12,345.0000 |

    Examples:
      | newFieldsApi                                                                        | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Name,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,NumberDecimal__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @148507  @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtEnhancedGridChidTable
  Scenario Outline: verify number field is displayed with 4 decimal places at enhanced grid of child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-FD123-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-FD123-001"
    When I pause execution for "5" seconds
    Then I see "2,323.0000" shown inside enhanced grid table for specified record "AD-FD123--00"

    Examples:
      | newFieldsApi                                      | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,NumberDecimal__c,Status__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @146709 @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClickOnBrowserRefreshButtonWithUnsavedDataInEnhancedGrid
  Scenario: validate that users should be warned when they click on browser refresh button with unsaved data in enhanced grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    When I enter value "Draft" into field "Status__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @149148 @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClickOnCancelButtonWithUnsavedDataInEnhancedGrid
  Scenario: validate that users should be warned when they click on cancel button with unsaved data in enhanced grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    When I enter value "Draft" into field "Status__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @150691 @verifyThatReferenceDateFieldValueIsDisplayedAsExpectedOnUiAtEnhancedGrid @BugLogged=154733
  Scenario Outline: validate that reference date field value is displayed as expected in enhanced grid
    Given I have "default" configuration as below:
      | configurationCategoryd | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid              | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    Then I see value "05/28/2021" for title "Change Request Due Date" inside table "---program:-:flexGridEnhancedID---"

    Examples:
      | newFieldsApi                                                          | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Name,Status__c,Application__r.ChangeRequestDueDate__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @145510   @verifyPositionOfPaginationDisplayedAtTopAndBottomRightCornerOfEnhancedGrid
  Scenario: verify position of pagination bar displayed at top and bottom right corner of enhanced grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see pagination is displayed at the top and bottom right of table "TmpActiveGrantsGridFlexToggle"

  @150171    @verifyWidthEnhancedGridColumnIfFieldWidthEnhancedIsConfiguredAs50Percent
  Scenario Outline: verify width of enhanced grid column if Field width enhanced is configured as 50 %
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue  | filterId         |
      | Flex Table List       | Field width Enhanced |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names  | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field width Enhanced | 50%            | TmpActiveGrantsGrid | Name                      | FTC-1486                   |
      | Flex Grid:General     | Display Field Names  | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see "Internal Organization" column inside Enhanced grid id "---program:-:flexGridEnhancedTableId---" of width "50%"

    Examples:
      | newFieldsApi                                                                                | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @150251    @verifyWidthEnhancedGridChildTableColumnIfFieldWidthEnhancedIsConfiguredAs50Percent
  Scenario: verify width of enhanced grid child table column if Field width enhanced is configured as 50 %
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Field width Enhanced |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field width Enhanced | 50%           | TmpGrantorActiveAwardsGrid | Name                      | FTC-1499                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Status" column inside Enhanced grid id "TmpGrantorActiveAwardsGridFlexToggle" of width "50%"

  @151174 @verifyEnhancedDataTableValueDoNotDisapperWhenUserEditRecordAndSaveAgainOnFormLayout
  Scenario:validate that enhanced data table values do not disappear when the user edit a record on forms
    Given I delete the record "{Framework_recordUsed:GrantTempRecordInActiveState}" from the object "Grant__c" with field "ProjectTitle__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    When I click on top right button "New" in flex table with id "---program:-:flexGridEnhancedID---"
    When I enter value "{Framework_recordUsed:GrantTempRecordInActiveState}" into field "ProjectTitle__c"
    When I enter value "Active" into field "Status__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "{Framework_recordUsed:GrantTempRecordInActiveState}" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "{Framework_recordUsed:GrantTempRecordInActiveState}" inside table
    When I enter value "temp data" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "{Framework_recordUsed:GrantTempRecordInActiveState}" in "---program:-:flexGridEnhancedID---" panel
    Then I softly see value "temp data" for title "Program Contact Address" inside table "---program:-:flexGridEnhancedID---"
    Then I softly see the following messages in the page details :
      | Saved Successfully! |

  @151183 @verifyEnhancedDataTableValueDoNotDisapperWhenUserEditPicklistFieldValueRecordAndSaveAgainOnFormLayout
  Scenario Outline:validate that enhanced data table values do not disappear when the user edit picklist field value from record on forms
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    Given I delete the record "{Framework_recordUsed:GrantTempRecordInActiveState}" from the object "Grant__c" with field "ProjectTitle__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    When I click on top right button "New" in flex table with id "---program:-:flexGridEnhancedID---"
    When I enter value "{Framework_recordUsed:GrantTempRecordInActiveState}" into field "ProjectTitle__c"
    When I enter value "Active" into field "Status__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "{Framework_recordUsed:GrantTempRecordInActiveState}" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "{Framework_recordUsed:GrantTempRecordInActiveState}" inside table
    When I enter value "Project Grants" into field "GrantType__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "{Framework_recordUsed:GrantTempRecordInActiveState}" in "---program:-:flexGridEnhancedID---" panel
    Then I softly see value "Project Grants" for title "Grant Type" inside table "---program:-:flexGridEnhancedID---"
    Then I softly see the following messages in the page details :
      | Saved Successfully! |

    Examples:
      | newFieldsApi                                                                       | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Name,GrantType__c,Status__c,Application__r.ChangeRequestDueDate__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @151610 @verifyThatParentPageDoesNotRefreshAfterClickingOnSaveActionInEnhancedGrid
  Scenario: validate that Parent page does not refresh after clicking on Save action in enhanced grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    When I enter value "Test Automation123" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see value "Test Automation123" for multiple cells at column "AddressProgramContact__c"

  @146002 @verifyThatUserEditingTheExistingRecordAndClickOnSaveThenDataGettingSavedSuccessFullyInEnhancedGrid
  Scenario: validate that PUser editing the existing record & click on save  button then data will be saved in enhanced grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    When I enter value "Test Automation updated record" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I softly see value "Test Automation updated record" for title "Program Contact Address" inside table "---program:-:flexGridEnhancedID---"
    Then I softly see the following messages in the page details :
      | Saved Successfully! |

  @145997  @verifyPositionOfPaginationDisplayedAtTopAndBottomRightCornerOfEnhancedGridChildTable
  Scenario: verify position of pagination bar displayed at top and bottom right corner of enhanced grid child table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Active Awards" content inside "Activities" subheader on left panel
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I expand nested table containing column value "Fiscal Year(2019-2019)"
    Then I see pagination is displayed at the top and bottom right of table "AwardBudgetCategoryFlexTableFlexToggle"

  @153948    @validateTotalRecordCountAndShowingRecordIfPerformedQuickSearchAtEnhancedGrid
  Scenario: validate total row count and showing record is displayed if performed quick search at enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Total Records Count | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I softly see the text :
      | Showing 1 to 1 of 1 records |

  @100210    @verifyCurrencyValuesAreEditableAtASameTimeAtParentFlexTableAtEnhancedGrid-gPlanning
  Scenario Outline: verify that if multiple records are edited and enter value at urreny field then records are getting saved successfully at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    Given I delete the record "Temp Grant 1" from the object "Grant__c" with field "ProjectTitle__c"
    Given I delete the record "Temp Grant 2" from the object "Grant__c" with field "ProjectTitle__c"
    Given I delete the record "Temp Grant 3" from the object "Grant__c" with field "ProjectTitle__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I enter the following values into flex table with id "---program:-:flexGridEnhancedID---" by clicking "New" :
      | Project Title | Status |
      | Temp Grant 1  | Active |
      | Temp Grant 2  | Active |
      | Temp Grant 3  | Active |
    When I perform quick search for "Temp Grant" in "---program:-:flexGridEnhancedID---" panel
    And I edit the following rows inline in flex table with id "---program:-:flexGridEnhancedID---" by clicking "Edit" :
      | Project Title | Total Adjusted Amount |
      | Temp Grant 1  | 10000                 |
      | Temp Grant 2  | 10000                 |
      | Temp Grant 3  | 10000                 |
    When I perform quick search for "Temp Grant" in "---program:-:flexGridEnhancedID---" panel
    Then I softly see value "$10,000.00" for title "Total Adjusted Amount" against the value "Temp Grant 1" inside table "---program:-:flexGridEnhancedID---"
    Then I softly see value "$10,000.00" for title "Total Adjusted Amount" against the value "Temp Grant 2" inside table "---program:-:flexGridEnhancedID---"
    Then I softly see value "$10,000.00" for title "Total Adjusted Amount" against the value "Temp Grant 3" inside table "---program:-:flexGridEnhancedID---"

    Examples:
      | newFieldsApi                                                                 | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Name,BudgetPeriodEndDate__c,Status__c,TotalAdjustedAmount__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @159529 @VerifyInAdvanceFilterOnEgridWhenWeSelectAnyPickListDataTypeFieldSelectPickListValueThenValueReturnedByLoginAsAAdminUser @vaibhavC
  Scenario: Verify In Advance Filter On E Grid When We Select Any Pick List Data Type Field Select Pick List Value Then Value Returned
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "AP-755-214"
    When I click on "View" icon for "AP-755-214" inside table
    When I navigate to "Plan" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:enhancedGridTableId---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Status | equals to | Active |
    Then I see value "Active" for title "Status" inside table "---program:-:enhancedGridTableId---"

  @160641 @VerifytopLevelActionNewAreHideByUsingMultipleHideLogic @vaibhavC
  Scenario: Verify top Level Action New Are Hide By Using Multiple Hide Logic
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | TmpActiveGrantsGrid | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideNewFieldAtEnhancedGrid | TmpActiveGrantsGrid | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see no "New" button inside "Monitoring Schedule For All Active Grants" enhanced grid

  @160797    @verifyEGridTopLevelActionNewAreHideByUsingMultipleAND/ORLogic @abhishekS
  Scenario: validate E-grid-To,top-level action 'New' are hide by using multiple AND/OR hide logic
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | TmpActiveGrantsGrid | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                 | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideNewFieldAtEnhancedGridTopLevelANDORLogic | TmpActiveGrantsGrid | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    Then I see no "New" button inside "Monitoring Schedule For All Active Grants" enhanced grid

  @160801    @verifyEGridTopLevelActionPreviewAreHideByUsingMultipleAND/ORLogic @abhishekS
  Scenario: validate E-grid-To,top-level action 'Preview' are hide by using multiple AND/OR hide logic
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | TmpActiveGrantsGrid | Name                      | Preview                    |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                     | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HidePreviewFieldAtEnhancedGridRowLevelANDORLogic | TmpActiveGrantsGrid | Name                      | Preview                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    Then I see no "Preview" button inside "Monitoring Schedule For All Active Grants" enhanced grid

  @159809    @verifyEGridRowLevelActionRefreshBehaviourAsRefreshTheEntirePage
  Scenario: validate E-grid refresh behaviour "Refresh the entire page" at Edit action
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action                   | Refresh Behavior  | Refresh the entire page | TmpActiveGrantsGrid   | Name                      | Edit                       |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | false                   | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "Grant Created for default value testing" from the object "Grant__c" with field "ProjectTitle__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on top right button "New" in flex table with id "---program:-:flexGridEnhancedID---"
    When I enter value "Grant Created for default value testing" into field "ProjectTitle__c"
    When I enter value "Active" into field "Status__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    When I perform quick search for "Grant Created for default value testing" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "Grant Created for default value testing" inside table
    When I enter value "Test Automation updated record" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    Then I see entire page is refreshing

  @159823    @verifyEGridRowLevelActionRefreshBehaviourAsRefreshTheEntirePage
  Scenario: validate E-grid refresh behaviour "Refresh the grid" at Edit action
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action                   | Refresh Behavior  | Refresh the grid | TmpActiveGrantsGrid   | Name                      | Edit                       |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | false            | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "Grant Created for default value testing" from the object "Grant__c" with field "ProjectTitle__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on top right button "New" in flex table with id "---program:-:flexGridEnhancedID---"
    When I enter value "Grant Created for default value testing" into field "ProjectTitle__c"
    When I enter value "Active" into field "Status__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    When I perform quick search for "Grant Created for default value testing" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "Grant Created for default value testing" inside table
    When I enter value "Test Automation address" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "Grant Created for default value testing" in "---program:-:flexGridEnhancedID---" panel
    Then I see value "Test Automation address" for title "Program Contact Address" inside table "---program:-:enhancedGridTableId---"

  @164810   @verifyThatPercentageCalculationForPercentTypeFieldWhenCalculateValueNegative
  Scenario Outline: To verify Percentage change calculation for percent type field when the CalCulated value is negative.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                                | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Row Grouping                      | false              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:1 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:2 |
      | Flex Table List       | Column Subtotal Percentage JSON          |                    | ApiGeneratedId:3 |
      | Flex Table List       | Enable Column Subtotal Percentage Change | false              | ApiGeneratedId:4 |
      | Flex Grid             | Display Field Names                      | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                                | fieldNewValue                                                         | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping                      | true                                                                  | TmpActiveGrantsGrid | Name                      | FTC-1502                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                  | TmpActiveGrantsGrid | Name                      | FTC-1552                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                  | TmpActiveGrantsGrid | Name                      | FTC-1550                   |
      | Flex Table List       | Column Subtotal Percentage JSON          | govgrants_config:PercenatageForPercentTypeWhenValueNegativeOrPositive | TmpActiveGrantsGrid | Name                      | FTC-1551                   |
      | Flex Table List       | Enable Column Subtotal Percentage Change | true                                                                  | TmpActiveGrantsGrid | Name                      | FTC-1551                   |
      | Flex Grid:General     | Display Field Names                      | <newFieldsApi>                                                        | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    When I perform quick search for "GT-GGREI-001" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "GT-GGREI-001" inside table
    When I enter value "1999" into field "PercentTest__c"
    When I enter value "10" into field "Test_Percentage2__c"
    When I click on top right button "Save" in flex table with id "---program:-:enhancedGridTableId---"
    When I perform quick search for "GT-GGREI-001" in "---program:-:flexGridEnhancedID---" panel
    Then I softly see value "-99.50%" for title "Test Percentage Result" inside table "---program:-:enhancedGridTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                               | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,Status__c,Test_Currency__c,Test_Number__c,Test_Number_Result__c,Test_Percentage1__c,Test_Percentage2__c,Test_Percentage_Result__c,testtotalcurrency__c,PercentTest__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @164811   @verifyThatPercentageCalculationForPercentTypeFieldWhenCalculateValuePositive
  Scenario Outline: To verify Percentage change calculation for percent type field when the CalCulated value is positive.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                                | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Row Grouping                      | false              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:1 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:2 |
      | Flex Table List       | Column Subtotal Percentage JSON          |                    | ApiGeneratedId:3 |
      | Flex Table List       | Enable Column Subtotal Percentage Change | false              | ApiGeneratedId:4 |
      | Flex Grid             | Display Field Names                      | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                                | fieldNewValue                                                         | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping                      | true                                                                  | TmpActiveGrantsGrid | Name                      | FTC-1502                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                  | TmpActiveGrantsGrid | Name                      | FTC-1552                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                  | TmpActiveGrantsGrid | Name                      | FTC-1550                   |
      | Flex Table List       | Column Subtotal Percentage JSON          | govgrants_config:PercenatageForPercentTypeWhenValueNegativeOrPositive | TmpActiveGrantsGrid | Name                      | FTC-1551                   |
      | Flex Table List       | Enable Column Subtotal Percentage Change | true                                                                  | TmpActiveGrantsGrid | Name                      | FTC-1551                   |
      | Flex Grid:General     | Display Field Names                      | <newFieldsApi>                                                        | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    When I perform quick search for "GT-GGREI-001" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "GT-GGREI-001" inside table
    When I enter value "25" into field "PercentTest__c"
    When I enter value "55" into field "Test_Percentage2__c"
    When I click on top right button "Save" in flex table with id "---program:-:enhancedGridTableId---"
    When I perform quick search for "GT-GGREI-001" in "---program:-:flexGridEnhancedID---" panel
    Then I softly see value "100.00%" for title "Test Percentage Result" inside table "---program:-:enhancedGridTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                               | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,Status__c,Test_Currency__c,Test_Number__c,Test_Number_Result__c,Test_Percentage1__c,Test_Percentage2__c,Test_Percentage_Result__c,testtotalcurrency__c,PercentTest__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @163536   @verifyThatPercentageCalculationForNumbertypeFeildWhenCalculateValueNegative
  Scenario Outline: To verify Percentage change calculation for Numbertype field when the CalCulated value is negative.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                                | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Row Grouping                      | false              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:1 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:2 |
      | Flex Table List       | Column Subtotal Percentage JSON          |                    | ApiGeneratedId:3 |
      | Flex Table List       | Enable Column Subtotal Percentage Change | false              | ApiGeneratedId:4 |
      | Flex Grid             | Display Field Names                      | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                                | fieldNewValue                                                        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping                      | true                                                                 | TmpActiveGrantsGrid | Name                      | FTC-1502                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                 | TmpActiveGrantsGrid | Name                      | FTC-1497                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                 | TmpActiveGrantsGrid | Name                      | FTC-1548                   |
      | Flex Table List       | Column Subtotal Percentage JSON          | govgrants_config:PercenatageForNumberTypeWhenValueNegativeOrPositive | TmpActiveGrantsGrid | Name                      | FTC-1549                   |
      | Flex Table List       | Enable Column Subtotal Percentage Change | true                                                                 | TmpActiveGrantsGrid | Name                      | FTC-1549                   |
      | Flex Grid:General     | Display Field Names                      | <newFieldsApi>                                                       | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    When I perform quick search for "GT-GT007-001" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "GT-GT007-001" inside table
    When I enter value "0" into field "Test_Number__c"
    When I click on top right button "Save" in flex table with id "---program:-:enhancedGridTableId---"
    When I perform quick search for "GT-GT007-001" in "---program:-:flexGridEnhancedID---" panel
    Then I softly see value "(100.00)" for title "Test Number Result" inside table "---program:-:enhancedGridTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,Status__c,Test_Currency__c,Test_Number__c,Test_Number_Result__c,Test_Percentage1__c,Test_Percentage2__c,Test_Percentage_Result__c,testtotalcurrency__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @164795   @verifyThatPercentageCalculationForCurrencyTypeFeildWhenCalculateValueNegative
  Scenario Outline: To verify Percentage change calculation for currency type field when the CalCulated value is negative.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                                | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Row Grouping                      | false              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:1 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:2 |
      | Flex Table List       | Column Subtotal Percentage JSON          |                    | ApiGeneratedId:3 |
      | Flex Table List       | Enable Column Subtotal Percentage Change | false              | ApiGeneratedId:4 |
      | Flex Grid             | Display Field Names                      | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                                | fieldNewValue                                                          | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping                      | true                                                                   | TmpActiveGrantsGrid | Name                      | FTC-1502                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                   | TmpActiveGrantsGrid | Name                      | FTC-1545                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                   | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
      | Flex Table List       | Column Subtotal Percentage JSON          | govgrants_config:PercenatageForCurrencyTypeWhenValueNegativeOrPositive | TmpActiveGrantsGrid | Name                      | FTC-1547                   |
      | Flex Table List       | Enable Column Subtotal Percentage Change | true                                                                   | TmpActiveGrantsGrid | Name                      | FTC-1547                   |
      | Flex Grid:General     | Display Field Names                      | <newFieldsApi>                                                         | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    When I perform quick search for "GT-GGREI-001" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "GT-GGREI-001" inside table
    When I enter value "0" into field "Test_Currency__c"
    When I click on top right button "Save" in flex table with id "---program:-:enhancedGridTableId---"
    When I perform quick search for "GT-GGREI-001" in "---program:-:flexGridEnhancedID---" panel
    Then I softly see value "($100.00)" for title "testtotalcurrency" inside table "---program:-:enhancedGridTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,Status__c,Test_Currency__c,Test_Number__c,Test_Number_Result__c,Test_Percentage1__c,Test_Percentage2__c,Test_Percentage_Result__c,testtotalcurrency__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |


  @164808   @verifyThatPercentageCalculationForCurrencytypeFeildWhenCalculateValuePositive
  Scenario Outline: To verify Percentage change calculation for Curency field when the CalCulated value is positive.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                                | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Row Grouping                      | false              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:1 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:2 |
      | Flex Table List       | Column Subtotal Percentage JSON          |                    | ApiGeneratedId:3 |
      | Flex Table List       | Enable Column Subtotal Percentage Change | false              | ApiGeneratedId:4 |
      | Flex Grid             | Display Field Names                      | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                                | fieldNewValue                                                          | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping                      | true                                                                   | TmpActiveGrantsGrid | Name                      | FTC-1502                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                   | TmpActiveGrantsGrid | Name                      | FTC-1546                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                   | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
      | Flex Table List       | Column Subtotal Percentage JSON          | govgrants_config:PercenatageForCurrencyTypeWhenValueNegativeOrPositive | TmpActiveGrantsGrid | Name                      | FTC-1547                   |
      | Flex Table List       | Enable Column Subtotal Percentage Change | true                                                                   | TmpActiveGrantsGrid | Name                      | FTC-1547                   |
      | Flex Grid:General     | Display Field Names                      | <newFieldsApi>                                                         | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    When I perform quick search for "GT-GGREI-001" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "GT-GGREI-001" inside table
    Then I softly see value "$20,000.00" for title "testtotalcurrency" inside table "---program:-:enhancedGridTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,Status__c,Test_Currency__c,Test_Number__c,Test_Number_Result__c,Test_Percentage1__c,Test_Percentage2__c,Test_Percentage_Result__c,testtotalcurrency__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |


  @164809   @verifyThatPercentageCalculationForNumbertypeFeildWhenCalculateValuePositive
  Scenario Outline: To verify Percentage change calculation for Numbertype field when the CalCulated value is positive.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                                | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Row Grouping                      | false              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:1 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:2 |
      | Flex Table List       | Column Subtotal Percentage JSON          |                    | ApiGeneratedId:3 |
      | Flex Table List       | Enable Column Subtotal Percentage Change | false              | ApiGeneratedId:4 |
      | Flex Grid             | Display Field Names                      | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                                | fieldNewValue                                                        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping                      | true                                                                 | TmpActiveGrantsGrid | Name                      | FTC-1502                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                 | TmpActiveGrantsGrid | Name                      | FTC-1497                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                 | TmpActiveGrantsGrid | Name                      | FTC-1548                   |
      | Flex Table List       | Column Subtotal Percentage JSON          | govgrants_config:PercenatageForNumberTypeWhenValueNegativeOrPositive | TmpActiveGrantsGrid | Name                      | FTC-1549                   |
      | Flex Table List       | Enable Column Subtotal Percentage Change | true                                                                 | TmpActiveGrantsGrid | Name                      | FTC-1549                   |
      | Flex Grid:General     | Display Field Names                      | <newFieldsApi>                                                       | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    When I perform quick search for "GT-GT007-001" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "GT-GT007-001" inside table
    When I enter value "88812" into field "Test_Number__c"
    When I click on top right button "Save" in flex table with id "---program:-:enhancedGridTableId---"
    When I perform quick search for "GT-GT007-001" in "---program:-:flexGridEnhancedID---" panel
    Then I softly see value "8,88.12" for title "Test Number Result" inside table "---program:-:enhancedGridTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,Status__c,Test_Currency__c,Test_Number__c,Test_Number_Result__c,Test_Percentage1__c,Test_Percentage2__c,Test_Percentage_Result__c,testtotalcurrency__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @166740   @verifyThatEGridToVerifyInAdvancedFilterWhenUserSelectThePicklistDataTypeFieldThenCorrectResultIsDisplayEqualToOprator
  Scenario:  E-grid-To verify in advanced filter when user select the picklist data type field then correct result display with equal to operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:flexGridEnhancedID---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Status | equals to | Active |
    Then I see value "Active" for multiple cells at column "Status__c"

  @166743   @verifyThatEGridToVerifyInAdvancedFilterWhenUserSelectThePicklistDataTypeFieldThenCorrectResultIsDisplayEqualNotToOprator
  Scenario:  E-grid-o verify in advanced filter when user select the picklist data type field then correct result display with not equal to operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All  Draft Grants"
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:flexGridEnhancedID---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Status | not equals to | Active |
    And I pause execution for "5" seconds
    Then I see value "Draft" for multiple cells at column "Status__c"

  @168723 @VerifyIfCurruncyReferenceFeildIsAvailableOnTheTableItDispalyDollerSignForEditLayout
  Scenario Outline: E-grid-To verify,  if a currency reference field is available on the table it displays a dollar sign for the Edit layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    Then I see value "$0.00" for title "testcurrency" inside table "---program:-:enhancedGridTableId---"

    Examples:
      | newFieldsApi                            | defaultFieldsApi                                                                                                                                                                                                                   |
      | ExternalOrganization__r.testcurrency__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @168722 @VerifyIfCurruncyReferenceFeildIsAvailableOnTheTableItDispalyDollerSignForViewLayout
  Scenario Outline: E-grid-To verify,  if a currency reference field is available on the table it displays a dollar sign for the View layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    Then I see value "$0.00" for title "testcurrency" inside table "---program:-:enhancedGridTableId---"

    Examples:
      | newFieldsApi                            | defaultFieldsApi                                                                                                                                                                                                                   |
      | ExternalOrganization__r.testcurrency__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @170496 @tejal
  Scenario: Verify if a currency reference field is available on the page layout it displays a dollar sign for the View layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grant              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grant              | Name                      | PBD-9138                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Active Grants"
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentGrant}"
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentGrant}" inside table
    Then I softly see field "Show Link as Text" as "$1,200,000"

  @170497 @tejal
  Scenario: Verify if a currency reference field is available on the page layout it displays a dollar sign for the Edit layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grant              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grant              | Name                      | PBD-9138                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Active Grants"
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentGrant}"
    When I click on "Edit" icon for "{Framework_recordUsed:AutomationPermanentGrant}" inside table
    Then I softly see field "Show Link as Text" as "$1,200,000"

  @171798 @tejal
  Scenario: Verify if User edits a existing Id  row level lookup field (Required to Save) then mandatory icon should display for lookup field
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName       | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View  | true              | ApiGeneratedId:0 |
      | Flex Grid:General         | Required Fields |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName       | fieldNewValue           | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View  | true                    | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Required Fields | ExternalOrganization__c | TmpActiveGrantsGrid |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-FIN.1-001" in "---program:-:enhancedGridTableId---" panel
    When I click on "Edit" icon for "GT-FIN.1-001" inside table
    Then I softly see "ExternalOrganization__c" field is required

  @171801 @tejal
  Scenario: Verify if User remove the data fromlookup field(Required to Save) then mandatory icon should display for lookup field
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName       | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View  | true              | ApiGeneratedId:0 |
      | Flex Grid:General         | Required Fields |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName       | fieldNewValue           | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View  | true                    | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Required Fields | ExternalOrganization__c | TmpActiveGrantsGrid |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-FIN.1-001" in "---program:-:enhancedGridTableId---" panel
    When I click on "Edit" icon for "GT-FIN.1-001" inside table
    And I enter value "biological technologies office" into field "ExternalOrganization__c"
    Then I softly see "ExternalOrganization__c" field is required

  @171800 @tejal
  Scenario: Verify if User create a new  record on table  for  lookup field (Required to Save) then mandatory icon should display for lookup field
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName       | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View  | true              | ApiGeneratedId:0 |
      | Flex Grid:General         | Required Fields |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName       | fieldNewValue           | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View  | true                    | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Required Fields | ExternalOrganization__c | TmpActiveGrantsGrid |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "New" in flex table with id "---program:-:enhancedGridTableId---"
    Then I softly see "ExternalOrganization__c" field is required

  @171870 @tejal
  Scenario Outline: Verify if User edits a row level lookup field on child table  (Required to Save) then mandatory icon should display
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Required Fields     |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Required Fields     | Account__c     | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:enhancedGridTableId---" panel
    When I expand nested table containing column value "GT-ITSGT-001"
    When I click on "Edit" icon for "AD-ITSGT--00" inside table
    Then I softly see "Account__c" field is required
    Examples:
      | newFieldsApi                                                                                                                                              | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c,Account__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @171871 @tejal
  Scenario Outline: Verify if User create a new user/record  lookup field on child table  (Required to Save) then mandatory icon should display
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Required Fields     |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Required Fields     | Account__c     | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-FIN.1-001" in "---program:-:enhancedGridTableId---" panel
    When I expand nested table containing column value "GT-FIN.1-001"
    And I click on top right button "test" in flex table with id "TmpGrantorActiveAwardsGridFlexToggle"
    Then I softly see "Account__c" field is required
    Examples:
      | newFieldsApi                                                                                                                                              | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c,Account__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @172133 @172143 @tejal
  Scenario Outline: Verify if User create edit  lookup field on child &parent  table  (Required to Save) then mandatory icon should display
  |Verify if User edits the record  and simultaneously added new record  for  lookup field on child table (Required to Save) then mandatory icon should display for lookup field
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:Flex Table List | Is Master View      | true               | ApiGeneratedId:0 |
      | Flex Grid:General         | Required Fields     |                    | ApiGeneratedId:1 |
      | Flex Grid:General         | Required Fields     |                    | ApiGeneratedId:2 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue           | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View      | true                    | TmpActiveGrantsGrid        | Name                      | FLV-2539                   |
      | Flex Grid:General         | Required Fields     | ExternalOrganization__c | TmpActiveGrantsGrid        |                           |                            |
      | Flex Grid:General         | Required Fields     | Account__c              | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>          | TmpGrantorActiveAwardsGrid |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:enhancedGridTableId---" panel
    When I expand nested table containing column value "GT-ITSGT-001"
    And I click on "Edit" icon for "GT-ITSGT-001" inside flex table with id "---program:-:enhancedGridTableId---"
    And I click on "Edit" icon for "AD-ITSGT--00" inside flex table with id "TmpGrantorActiveAwardsGridFlexToggle"
    Then I softly see "Account__c" field is required
    Then I softly see "ExternalOrganization__c" field is required
    Examples:
      | newFieldsApi                                                                                                                                              | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c,Account__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @172150 @tejal
  Scenario: Verify If User edits a Row level lookup field on parent table  (field is not Required to Save) then mandatory icon should not  display for lookup field
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:enhancedGridTableId---" panel
    When I click on "Edit" icon for "GT-ITSGT-001" inside table
    Then I softly do not see "ExternalOrganization__c" field is required

  @172148 @tejal
  Scenario: Verify If User edits a Row level lookup field on child  table  (field is not Required to Save) then mandatory icon should not  display for lookup field
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:enhancedGridTableId---" panel
    And I pause execution for "2" seconds
    When I expand nested table containing column value "GT-ITSGT-001"
    And I click on "Edit" icon for "AD-ITSGT--00" inside flex table with id "TmpGrantorActiveAwardsGridFlexToggle"
    Then I softly do not see "Account__c" field is required

  @171805 @tejal
  Scenario Outline: Verify if User remove the data from child table lookup field(Required to Save) then mandatory icon should display for lookup field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Required Fields     |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Required Fields     | Account__c     | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:enhancedGridTableId---" panel
    When I expand nested table containing column value "GT-ITSGT-001"
    When I click on "Edit" icon for "AD-ITSGT--00" inside table
    And I clear the value from field "Account__c"
    When I click on top right button "Save" in flex table with id "---program:-:enhancedGridTableId---"
    When I click on "Edit" icon for "AD-ITSGT--00" inside table
    Then I softly see "Account__c" field is required
    Examples:
      | newFieldsApi                                                                                                                                              | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c,Account__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @172144 @tejal
  Scenario Outline: Verify If User new record on child & parent  table  lookup fieldon child table  (Required to Save) then mandatory icon should display for lookup field
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:Flex Table List | Is Master View      | true               | ApiGeneratedId:0 |
      | Flex Grid:General         | Required Fields     |                    | ApiGeneratedId:1 |
      | Flex Grid:General         | Required Fields     |                    | ApiGeneratedId:2 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue           | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View      | true                    | TmpActiveGrantsGrid        | Name                      | FLV-2539                   |
      | Flex Grid:General         | Required Fields     | ExternalOrganization__c | TmpActiveGrantsGrid        |                           |                            |
      | Flex Grid:General         | Required Fields     | Account__c              | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>          | TmpGrantorActiveAwardsGrid |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:enhancedGridTableId---" panel
    And I click on top right button "New" in flex table with id "---program:-:enhancedGridTableId---"
    When I expand nested table containing column value "GT-ITSGT-001"
    And I click on "Edit" icon for "AD-ITSGT--00" inside flex table with id "TmpGrantorActiveAwardsGridFlexToggle"
    And I click on top right button "test" in flex table with id "TmpGrantorActiveAwardsGridFlexToggle"
    Then I softly see "Account__c" field is required
    Then I softly see "ExternalOrganization__c" field is required
    Examples:
      | newFieldsApi                                                                                                                                              | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c,Account__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @181124 @sprint20
  Scenario Outline: To verify, Hover over multiselect picklist in view mode then Value should be shown  on child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "10" seconds
    When I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}"
    Then I softly see value "test2" for title "multiselecttest" inside table "---program:-:flexGridEnhancedID---"
    Examples:
      | newFieldsApi                                                                                                                                                                                                                                          | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c,multiselecttest__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @181122 @sprint20
  Scenario Outline: E-grid - To verify, Hover over multiselect picklist in Edit  mode then Value should be shown  on child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "ID" as "id"
    And I pause execution for "10" seconds
    When I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}"
    Then I softly see value "test2" for title "multiselecttest" inside table "---program:-:flexGridEnhancedID---"
    Examples:
      | newFieldsApi                                                                                                                                                                                                                                          | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c,multiselecttest__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @181115 @sprint20
  Scenario Outline: E-grid - To verify, Hover over multiselect picklist in Edit  mode then Value should be shown on child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "PG-501-0034" in "---program:-:programsTableId---" panel
    When I click on "View Program Details" icon for "PG-501-0034" inside table
    And I navigate to "Financials" tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}"
    Then I softly see value "test2" for title "multiselecttest" inside table "---program:-:flexGridEnhancedID---"
    Examples:
      | newFieldsApi                                                                                                                                                                                                                                          | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c,multiselecttest__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @181112 @sprint20
  Scenario Outline: E-grid - To verify, Hover over multiselect picklist in view mode then Value should be shown
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "10" seconds
    When I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}"
    Then I softly see value "test2" for title "multiselecttest" inside table "---program:-:flexGridEnhancedID---"
    Examples:
      | newFieldsApi                                                                                                                                                                                                                                          | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c,multiselecttest__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @181116 @sprint20
  Scenario Outline:E-grid - To verify, Hover over multiselect picklist  Value should be shown if user edit and save the multiselect picklist value
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "10" seconds
    When I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}" in "---program:-:flexGridEnhancedID---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}" inside flex table with id "---program:-:flexGridEnhancedID---"
    Then I softly see value "test2" for title "multiselecttest" inside table "---program:-:flexGridEnhancedID---"
    Examples:
      | newFieldsApi                                                                                                                                                                                                                                          | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c,multiselecttest__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @181527 @sprint23 @userstoryid_171888
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date field with 'Equal to ' operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "10" seconds
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "---program:-:EnhancedDataTableId---"
      | Current Budget Period End Date | equals to | 05/15/2020 |
    Then I softly see value "05/15/2020" for title "Current Budget Period End Date" inside table "---program:-:EnhancedDataTableId---"

  @181632 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date field with 'greater than ' operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "10" seconds
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "---program:-:EnhancedDataTableId---"
      | Current Budget Period End Date | greater than | 05/15/2020 |
    Then I softly see value "09/13/2021" for title "Current Budget Period End Date" inside table "---program:-:EnhancedDataTableId---"

  @185935 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date  field with 'less  than or equal to  ' operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "10" seconds
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "---program:-:EnhancedDataTableId---"
      | Current Budget Period End Date | less than or equal to | 05/15/2020 |
    Then I softly see value "05/15/2020" for title "Current Budget Period End Date" inside table "---program:-:EnhancedDataTableId---"

  @181634 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date  field with 'greater than or equal to  ' operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "10" seconds
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "---program:-:EnhancedDataTableId---"
      | Current Budget Period End Date | greater than or equal to | 05/15/2020 |
    Then I softly see value "12/14/2021" for title "Current Budget Period End Date" inside table "---program:-:EnhancedDataTableId---"

  @181633 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date  field with 'less than  ' operator
    When I login as "Automation" user
    When I pause execution for "10" seconds
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "10" seconds
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "---program:-:EnhancedDataTableId---"
      | Current Budget Period End Date | less than | 05/15/2020 |
    Then I softly see value "04/27/2020" for title "Current Budget Period End Date" inside table "---program:-:EnhancedDataTableId---"

  @185938 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date field with 'Equal to ' operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "10" seconds
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "---program:-:EnhancedDataTableId---"
      | Current Budget Period End Date | equals to | 12/14/2021 |
    Then I softly see value "12/14/2021" for title "Current Budget Period End Date" inside table "---program:-:EnhancedDataTableId---"

  @185945 @sprint23
  Scenario:Data table Enhanced-To verify,  advanced filter should work for the date time   field with 'less  than or equal to  ' operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "15" seconds
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "---program:-:EnhancedDataTableId---"
      | Current Budget Period End Date | less than or equal to | 05/18/2021 |
    Then I softly see value "05/18/2021" for title "Current Budget Period End Date" inside table "---program:-:EnhancedDataTableId---"
    Then I softly see value "05/15/2020" for title "Current Budget Period End Date" inside table "---program:-:EnhancedDataTableId---"

  @185944 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date  time  field with 'greater than or equal to  ' operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "15" seconds
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "---program:-:EnhancedDataTableId---"
      | Current Budget Period End Date | greater than or equal to | 05/15/2020 |
    Then I softly see value "05/15/2020" for title "Current Budget Period End Date" inside table "---program:-:EnhancedDataTableId---"
    Then I softly see value "12/14/2021" for title "Current Budget Period End Date" inside table "---program:-:EnhancedDataTableId---"

  @185942 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date  time  field with 'less than ' operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "10" seconds
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "---program:-:EnhancedDataTableId---"
      | Current Budget Period End Date | less than | 12/14/2021 |
    Then I softly see value "04/27/2020" for title "Current Budget Period End Date" inside table "---program:-:EnhancedDataTableId---"

  @185940 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date time  field with 'greater than ' operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "15" seconds
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "---program:-:EnhancedDataTableId---"
      | Current Budget Period End Date | greater than | 05/15/2020 |
    Then I softly see value "12/14/2021" for title "Current Budget Period End Date" inside table "---program:-:EnhancedDataTableId---"

  @181526 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, Downloaded XLS  picklist column should not displayWhen Hide column at picklist field   with user type , profile & context operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonTotalAwardObligatedAmount | EnhancedDataTable  | Name                      | FTC-1524                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Total Award Obligated Amount" in flex table header "---program:-:EnhancedDataTableId---"

  @181517 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, In Downloaded XLS  Number column should not display  When Hide column at Number  field   with    user type &  profile  operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonTotalAwardObligatedAmount | EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Number of Project Areas" in flex table header "---program:-:EnhancedDataTableId---"

  @181514 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, Downloaded XLS  picklist column should not displayWhen Hide column at picklist field   with user type , profile & context operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonTotalAwardObligatedAmount | EnhancedDataTable  | Name                      | FTC-1560                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Status" in flex table header "---program:-:EnhancedDataTableId---"

  @181519 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify,  In Downloaded xls  date  column should not display When Hide column at Date field with not   equal to  operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonTotalAwardObligatedAmount | EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Number of Project Areas" in flex table header "---program:-:EnhancedDataTableId---"

  @181513 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, Downloaded XLS picklist column should not displayWhen Hide column at picklist field   with user type  and profile  operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonStatusColoumFieldUsingLogicalOprator | EnhancedDataTable  | Name                      | FTC-1560                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Status" in flex table header "---program:-:EnhancedDataTableId---"

  @185950 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, Downloaded XLS picklist column should not displayWhen Hide column at picklist field   with user type  and profile  operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonStatusColoumFieldUsingLogicalOprator | EnhancedDataTable  | Name                      | FTC-1560                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Status" in flex table header "---program:-:EnhancedDataTableId---"

  @181511 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, Downloaded PDF rendering properly when Hide column with two operand   at Data table Enhanced  with   user type  & profile operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | EnhancedDataTable  | Name                      | FTC-1524                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Total Award Obligated Amount" in flex table header "---program:-:EnhancedDataTableId---"

  @181525 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, Downloaded PDF   rendering properly when Hide column with two field  at Data table Enhanced  with    user type  & profile operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | EnhancedDataTable  | Name                      | FTC-1524                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Total Award Obligated Amount" in flex table header "---program:-:EnhancedDataTableId---"

  @181510 @sprint24 @userstory_179175
  Scenario: Data table Enhanced- To verify, In Downloaded PDF Currency column should not display When Hide column at currency field  with profile operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_NOTIN_SystemAdministrator | EnhancedDataTable  | Name                      | FTC-1524                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Total Award Obligated Amount" in flex table header "---program:-:EnhancedDataTableId---"

  @181522 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, In Downloaded PDF picklist column should not displayWhen Hide column at picklist field   with user type operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_EnhancedGrid_TopAction_With_UserType_IN_Internal | EnhancedDataTable  | Name                      | FTC-1560                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Status" in flex table header "---program:-:EnhancedDataTableId---"

  @181518 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, In Downloaded pdf  picklist column should not displayWhen Hide column at picklist field   with user type , profile & context operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:HideJsonDownloadPdfAtColoumShouldNotDisplay | EnhancedDataTable  | Name                      | FTC-1560                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Status" in flex table header "---program:-:EnhancedDataTableId---"

  @181524 @sprint24  @userstory_179175
  Scenario: Data table Enhanced- To verify, In Downloaded XLS  Currency column should not display When Hide column at currency field  with profile operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_EnhancedGrid_ChildTable_TopAction_With_UserType_IN_Internal | EnhancedDataTable  | Name                      | FTC-1524                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Total Award Obligated Amount" in flex table header "---program:-:EnhancedDataTableId---"

  @181523 @sprint24  @userstory_179175
  Scenario: Data table Enhanced-To verify, In Downloaded XLS Currency column should not display   When Hide column JSON  at currency field with  'user type ' operand  at currency field  operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_EnhancedGrid_ChildTable_TopAction_With_UserType_IN_Internal | EnhancedDataTable  | Name                      | FTC-1524                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Total Award Obligated Amount" in flex table header "---program:-:EnhancedDataTableId---"

  @185946 @sprint24  @userstory_179175
  Scenario: Data table Enhanced-To verify, In Downloaded XLS  picklist column should not displayWhen Hide column at picklist field   with user type operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_EnhancedGrid_ChildTable_TopAction_With_UserType_IN_Internal | EnhancedDataTable  | Name                      | FTC-1560                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Status" in flex table header "---program:-:EnhancedDataTableId---"

  @181512 @sprint24  @userstory_179175
  Scenario: Data table Enhanced-To verify, Downloaded PDF rendering properly  When Hide column with three field  at Data table Enhanced  with  user type, profile & context  operans
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonTotalAwardObligatedAmount | EnhancedDataTable  | Name                      | FTC-1524                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Total Award Obligated Amount" in flex table header "---program:-:EnhancedDataTableId---"

  @181521 @sprint24  @userstory_179175
  Scenario: Data table Enhanced-To verify, In Downloaded pdf Number column should not display  When Hide column at Number  field   with user type operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Number of Project Areas" in flex table header "---program:-:EnhancedDataTableId---"

  @181520 @sprint24  @userstory_179175
  Scenario: Data table Enhanced-To verify, Downloaded xls   Number column should not display  When Hide column at Number  field   with user type operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Number of Project Areas" in flex table header "---program:-:EnhancedDataTableId---"

  @181508 @sprint24  @userstory_179175
  Scenario: Data table Enhanced-To verify, In Downloaded PDF Currency column should not display When Hide column JSON  with 'user type ' operand  at currency field  operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | EnhancedDataTable  | Name                      | FTC-1524                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Total Award Obligated Amount" in flex table header "---program:-:EnhancedDataTableId---"

  @190157 @sprint25
  Scenario: To verify, if the users 'Edit' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: None), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | TmpActiveGrantsGrid | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | --None--      | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal         | TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I refresh the page
    And I navigate to "Financials" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | Page 1 of 23 |

  @190159 @sprint25
  Scenario: To verify, if the users 'Edit' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh the grid), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | TmpActiveGrantsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue    | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh the grid | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal            | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I refresh the page
    And I navigate to "Financials" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | Page 1 of 23 |

  @190165 @sprint25
  Scenario: To verify, if the users 'Edit' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Close modal and refresh grid), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | TmpActiveGrantsGrid | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue                | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Close modal and refresh grid | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal                        | TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I refresh the page
    And I navigate to "Financials" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | Page 1 of 23 |

  @190166 @sprint25
  Scenario: To verify, if the users 'Edit' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh the entire page), the entire page gets refreshed and the table navigates to its first page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | TmpActiveGrantsGrid | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue           | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh the entire page | TmpActiveGrantsGrid | Name                      | Edit                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal                   | TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I refresh the page
    And I navigate to "Financials" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | Page 1 of 23 |

  @190155 @sprint25
  Scenario: To verify, if the users 'View' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: None), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | TmpActiveGrantsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | --None--      | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal         | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I refresh the page
    And I navigate to "Financials" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | Page 1 of 23 |

  @190158 @sprint25
  Scenario: To verify, if the users 'View' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh the grid), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | TmpActiveGrantsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue    | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh the Grid | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal            | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I refresh the page
    And I navigate to "Financials" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | Page 1 of 23 |

  @190161 @sprint25
  Scenario: To verify, if the users 'Edit' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh all Flextables), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | TmpActiveGrantsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue          | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh all flextables | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal                  | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I refresh the page
    And I navigate to "Financials" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | Page 1 of 23 |

  @190162 @sprint25
  Scenario: To verify, if the users 'Edit' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh parent page), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | TmpActiveGrantsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue       | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh parent page | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal               | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I refresh the page
    And I navigate to "Financials" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | Page 1 of 23 |

  @190163 @sprint25
  Scenario: To verify, if the users 'View' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh parent page), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | TmpActiveGrantsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue       | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh parent page | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal               | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I refresh the page
    And I navigate to "Financials" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | Page 1 of 23 |

  @190164 @sprint25
  Scenario: To verify, if the users 'View' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour:Close modal and refresh grid), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | TmpActiveGrantsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue                | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Close modal and refresh grid | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal                        | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I refresh the page
    And I navigate to "Financials" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | Page 1 of 23 |

  @190168 @sprint25
  Scenario: To verify, if the users 'View' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh the entire page), the entire page gets refreshed and the table navigates to its first page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | TmpActiveGrantsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue           | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh the entire page | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal                   | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I refresh the page
    And I navigate to "Financials" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | Page 1 of 23 |

  @192567 @sprint1 @userstory_184938 @skipOnJenkins
  Scenario: E-grid To verify,Hide column using "Profile"operand  then that column is not displayed in the pdf  as well as in the UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator | TmpActiveGrantsGrid | Name                      | FTC-1490                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from dropdown
    And I pause execution for "5" seconds
    Then I softly do not see "Status" in flex table header "---program:-:EnhancedDataTableId---"

  @192569 @sprint1 @userstory_184938 @skipOnJenkins
  Scenario: E-grid To verify,Hide column using "Profile"operand  then that column is not displayed in the page layout PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator | TmpActiveGrantsGrid | Name                      | FTC-1490                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from dropdown
    And I pause execution for "5" seconds
    Then I softly do not see "Status" in flex table header "---program:-:EnhancedDataTableId---"

  @192570 @sprint1 @userstory_184938  @skipOnJenkins
  Scenario:E-grid To verify,Hide column using "Userapp"operand  then that column is not displayed in the page layout PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                           | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_EditAction_With_UserApp_IN_StateAsGrantor | TmpActiveGrantsGrid | Name                      | FTC-1490                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from dropdown
    And I pause execution for "5" seconds
    Then I softly do not see "Status" in flex table header "---program:-:EnhancedDataTableId---"

  @192572 @sprint1 @userstory_184938  @skipOnJenkins
  Scenario: E-grid To verify,Hide column using "Userapp"operand  then that column is not displayed in the page layout PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                           | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_EditAction_With_UserApp_IN_StateAsGrantor | TmpActiveGrantsGrid | Name                      | FTC-1490                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from dropdown
    And I pause execution for "5" seconds
    Then I softly do not see "Status" in flex table header "---program:-:EnhancedDataTableId---"

  @192573 @sprint1 @userstory_184938  @skipOnJenkins
  Scenario: E-grid To verify,Hide column using "User Type" operand  then that column is not displayed in the PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                     | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_EnhancedGrid_TopAction_With_UserType_IN_Internal | TmpActiveGrantsGrid | Name                      | FTC-1490                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from dropdown
    And I pause execution for "5" seconds
    Then I softly do not see "Status" in flex table header "---program:-:EnhancedDataTableId---"

  @192575 @@sprint1 @userstory_184938  @skipOnJenkins
  Scenario: E-grid To verify,Hide column using "User Type" operand  then that column is not displayed in the page layout PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_EnhancedGrid_ChildTable_TopAction_With_UserType_IN_Internal | TmpActiveGrantsGrid | Name                      | FTC-1490                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from dropdown
    And I pause execution for "5" seconds
    Then I softly do not see "Status" in flex table header "---program:-:EnhancedDataTableId---"

  @192950 @sprint1 @userstory_176992
  Scenario Outline: E-grid- To verify , Number  field should restrict the field limit
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    When I navigate to "Financials" sub tab
    And I pause execution for "5" seconds
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I enter value "-913045545747433278" into field "Test_num__c"
    And I click on top right button "Save" in flex table with id "---program:-:enhancedGridTableId---"
    Then I see the following message in the page details contains:
      | Saved Successfully! |
    Examples:
      | newFieldsApi                                                                                                                                                                                                                                   | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c,Test_num__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @190160 @sprint25
  Scenario Outline: To verify, if the users 'View' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh all Flextables), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | TmpActiveGrantsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh all flextables      | TmpActiveGrantsGrid | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal         | TmpActiveGrantsGrid | Name                      | View                       |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I enter value "12345678901234" into field "Test_Currency__c"
    And I click on top right button "Save" in flex table with id "---program:-:enhancedGridTableId---"
    Then I see the following message in the page details contains:
      | Saved Successfully! |
    Examples:
      | newFieldsApi                                                                                                                                                                                                                                        | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,Test_Currency__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @192958 @sprint1
  Scenario Outline: E-grid- To verify , Number  field should accept the negative value
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I pause execution for "5" seconds
    When I perform quick search for "{Framework_recordUsed:NewRecordForNumberCheking}" in "---program:-:enhancedGridTableId---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:NewRecordForNumberCheking}" inside flex table with id "---program:-:enhancedGridTableId---"
    And I enter value "-913045545747433278" into field "Test_num__c"
    And I click on top right button "Save" in flex table with id "---program:-:enhancedGridTableId---"
    Then I see the following message in the page details contains:
      | Saved Successfully! |
    Examples:
      | newFieldsApi                                                                                                                                                                                                                                   | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c,Test_num__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @192952 @sprint1
  Scenario Outline: Data table Enhanced-To verify , currency field should accept the negative value
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhancedDataTable |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}" in "---program:-:flexGridEnhancedID---" panel
    And I click on "Edit" icon for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}" inside flex table with id "---program:-:flexGridEnhancedID---"
    And I enter value "-913045545747433278" into field "Test_Currency__c"
    And I click on top right button "Save" in flex table with id "---program:-:enhancedGridTableId---"
    Then I see the following message in the page details contains:
      | Saved Successfully! |
    Examples:
      | newFieldsApi                                                                                                                                                             | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,NumberofProjectAreas__c,Status__c,GrantAbbreviation__c,TotalAwardObligatedAmount__c,Test_Currency__c |Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,NumberofProjectAreas__c,Status__c,GrantAbbreviation__c,TotalAwardObligatedAmount__c |