@enhancedflexgrid-component @regression
Feature: Enhanced Flex Grid Component Scenarios
  Test all enhanced flex grid component based scenarios
  As a configuration manager i make different configurational changes in enhanced flex grid component and will validate them.

  @35432    @disablingAdvanceFilterForEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of advance filter from planning-Program enhance flex grid
    Given I have default configuration as below:
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
    Then I see Advance Filter is disabled from table "flexGridEnhanced1" with data target value "#advfTmpActiveGrantsGrid"

  @35433    @disablingMenuIconForEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of menu icon from Planning- Program enhanced flex grid
    Given I have default configuration as below:
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
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "*****" shown inside enhanced grid table for specified record "Demo_Title"

  @45284    @readOnlyCellJSONFieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Changing specific cell value to read only for child flex table of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on "Edit" icon for "AD-GG PJ--00" inside table
    Then I see input box is not displayed for ID inside child Flex table

  @45285    @hideColumnJSONfieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Hiding specific column value for child flex table of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Award Title" not displayed in enhanced grid table column title

  @45287    @readOnlyColumnJSONFieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Changing specific cell value to read only for child flex table of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on "Edit" icon for "AD-GG PJ--00" inside table
    Then I see input box is not displayed for ID inside child Flex table

  @45290    @iconCssFieldForChildFlexTableAtEnhancedGridActionItem-gPlanning
  Scenario: Setup icon css of child flex table for enhanced grid table edit action from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see external link icon as "AD-GG PJ--00" for "Edit" inside enhanced grid table action

  @35436    @changeOfParentFlexTableTitleForEnhancedGrid-gPlanning
  Scenario: validate after changing name of enhanced flex grid title inside planning-program enhanced flex grid
    Given I have default configuration as below:
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
    Then I see "Automation Enhanced Grid" shown as inside "Enhanced1grid"

  @35438    @disablingPDFExportFileForEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of PDF download from menu option in enhanced flex grid planning- Program enhanced flex grid
    Given I have default configuration as below:
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
    Given I have default configuration as below:
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
    Given I have default configuration as below:
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
    Given I have default configuration as below:
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
    Then I see no "Total Records" count in enhanced grid "Enhanced1grid"

  @35434    @enableAutoIndexForEnhancedGrid-gPlanning
  Scenario: validate enable auto index for details inside enhanced flex grid planning-Program enhanced flex grid
    Given I have default configuration as below:
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
    Then I see "#" in enhanced flex grid header "Enhanced1grid"

  @35442    @enableRecordSelectionForFlexForEnhancedGrid-gPlanning
  Scenario: validate enabling of record selection check boxes in enhanced flex grid planning-Program enhanced flex grid
    Given I have default configuration as below:
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
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I see no new tab is opened for action item in enhanced flex grid

    Examples:
      | actionUrlLongValue          |
      | /apex/GrantEdit?id={!rowId} |

  @35440    @editActionOpensInOverLayWindowForEnhancedGrid-gPlanning
  Scenario Outline: validate flex table action field- Edit opens in overlay window
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I see "TmpActiveGrantsGrid" opens in overLay window

    Examples:
      | actionUrlLongValue          |
      | /apex/GrantEdit?id={!rowId} |

  @35435    @addingfieldNamesOfDifferentDataTypesForEnhancedGrid-gPlanning @smoke
  Scenario Outline: validate adding field names for different data types in enhanced flex grid planning-Program enhanced flex grid
    Given I have default configuration as below:
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
    Then I see "<fieldDisplayNames>" in enhanced flex grid header "Enhanced1grid"

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
    Given I have default configuration as below:
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
    Given I have default configuration as below:
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
    Then I see "Entries" with page size dropdown in enhanced grid "Enhanced1grid"

  @41304    @defaultPageSizeFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate change of default page size inside dropdown at bottom enhanced flex grid planning-Program enhanced flex grid
    Given I have default configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Default Page Size | 5                 | ApiGeneratedId:0 |
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
    Then I see "10" records inside enhanced grid id "Enhanced1grid"

  @41308    @enableHelpFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enabling of help inside menu option in enhanced flex grid planning-Program enhanced flex grid
    Given I have default configuration as below:
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

  @41311    @helpTextFieldAtEnhancedGridColumnHeader-gPlanning
  Scenario Outline: Changing content of help text field at enhanced grid column header from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
      | Help Text for Automation |

  @41316    @fieldLabelOverrideFieldAtEnhancedGridColumnHeader-gPlanning
  Scenario: Changing specific column name of enhanced grid column header from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    Then I see "Test Automation" shown inside flex table with id "TmpActiveGrantsGridFlexToggle"

  @41319    @hideCellJsonfieldAtEnhancedGrid-gPlanning @smoke
  Scenario: Hiding specific cell value of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    Then I see "*****" shown inside enhanced grid table for specified record "Demo_Title"

  @41370    @readOnlyCellJSONFieldAtEnhancedGrid-gPlanning @smoke
  Scenario: Changing specific cell value to read only of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I see input box is not displayed for budget period end date

  @41375    @hideColumnJSONfieldAtEnhancedGrid-gPlanning @smoke
  Scenario: Hiding specific column value of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I see input box is not displayed for budget period end date

  @41465    @iconCssFieldAtEnhancedGridActionItem-gPlanning
  Scenario: Setup icon for enhanced grid table edit action from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    Then I see external link icon as "Demo_Title" for "Edit" inside enhanced grid table action

  @41466    @ConfirmationMessageFieldAtEnhancedGridActionItem-gPlanning
  Scenario: Setup confirmation message for enhanced grid table edit action from configuration and validating it inside enhanced grid of program-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I click on "Edit" icon for "Demo_Title" inside table with table id "TmpActiveGrantsGridFlexToggle" without processing
    Then I see confirmation box with body "Automation" is displayed

  @41468    @locationFieldAtEnhancedGridActionItemFromRowToTop-gPlanning
  Scenario: Changing location of Monitoring Schedule For All Active Grants enhanced grid table view action from row to top from config anf validating it inside enhanced of program-planning
    Given I have default configuration as below:
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
    Given I have default configuration as below:
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
    Then I see cell subtotal as expected as given formula

  @42027    @headerHelpTextFieldForChildFlexTableAtEnhancedGrid-gPlanning
  Scenario Outline: Changing content of help text field at child flex table of enhanced grid from config and validating it at enhanced grid planning-Program enhanced flex grid
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I expand nested table containing column value "Demo_Title"
    When I hovering mouse on help text icon inside "Active Awards" for enhanced grid
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText  |
      | Help Text for Automation | Active Awards |

  @42030    @enableHelpFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enabling of help inside menu option inside child table of enhanced flex grid planning-Program enhanced flex grid
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    Then I see "Help" options inside "Active Awards" enabled

  @42024    @helpTextFieldAtChildTableEnhancedGridColumnHeader-gPlanning
  Scenario Outline: Changing content of help text field at enhanced grid column header from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I expand nested table containing column value "Demo_Title"
    When I hovering mouse on help text icon inside "ID" for enhanced grid table column
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             |
      | Help Text for Automation |

  @42021    @fieldLabelOverrideFieldAtEnhancedGridChildColumnHeader-gPlanning
  Scenario: Changing specific column name of enhanced grid child column header from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Test Automation" shown inside flex table with id "TmpGrantorActiveAwardsGridFlexToggle"

  @44533    @orderBySortByFieldAtParentDataTableEnhancedGridForAscendingOrder-gPlanning @smoke
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | TmpActiveGrantsGrid |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | ProjectTitle__c | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC             | TmpActiveGrantsGrid |                           |                            |
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
    Given I have default configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | TmpActiveGrantsGrid |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | ProjectTitle__c | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC            | TmpActiveGrantsGrid |                           |                            |
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
    Given I have default configuration as below:
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
    When I perform quick search for "GT-VT-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-VT-001"
    Then I see column "TotalGrantAwardAmount__c" value is in "Ascending" order

  @44536    @orderBySortByFieldAtChildDataTableEnhancedGridForDescendingOrder-gPlanning
  Scenario: Changing specific column value in Descending order with order by and sort by field from config at child table and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "GT-VT-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-VT-001"
    Then I see column "TotalGrantAwardAmount__c" value is in "Descending" order

  @44628    @filterClauseFieldOfParentFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario Outline: validate removing draft status category from flex table of planning-program enhanced flex grid
    Given I have default configuration as below:
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
    Then I see no "Active" status in flex table id "Enhanced1grid"

    Examples:
      | newSoqlFilter                                   | oldSoqlFilter                                    |
      | RecordType.Name='Grantor' and status__c='Draft' | RecordType.Name='Grantor' and status__c='Active' |

  @44728    @sequenceFieldAtParentflexTableActionForEnhancedGrid-gPlanning @smoke
  Scenario: Changing sequence of edit row level action item at enhanced grid parent table from config and validating it inside enhanced grid table of programs-planning
    Given I have default configuration as below:
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
    Then I see "Edit" icon for "TmpActiveGrantsGridFlexToggle" is at position "1" inside flex table

  @44731    @buttonHelpTextFieldAtParentFlexTableActionForEnhancedGrid-gPlanning
  Scenario: Changing content of button help text field at enhanced grid parent table action from config and validating it inside enhanced grid table of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    Then I see "Test Automation" as title for "Demo_Title" inside flex table action

  @44993    @disableFilterForChildFlexTableAtEnhancedGrid-gPlanning
  Scenario: Disabling the Advance Filter at child flex table of enhanced grid from config and validating it at enhanced grid planning-Program enhanced flex grid
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see Advance Filter is disabled from table "TmpGrantorActiveAwardsGridFlexToggle" with data target value "#advfTmpGrantorActiveAwardsGrid"

  @44994    @disableMenuFieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Disabling the Menu Field at child flex table of enhanced grid from config and validating it at enhanced grid planning-Program enhanced flex grid
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I expand nested table containing column value "Demo_Title"
    Then Then I see Menu icon is disabled from planning child flex table "Active Awards" under Monitoring Schedule For All Active Grants table

  @44995    @disablingPDFExportFileForChildFlextTableEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of PDF download from menu option in enhanced flex grid planning- Program enhanced flex grid
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    Then I see "Download as PDF" options inside "Active Awards" disabled

  @62814    @disablingXLSExportFileForChildFlextTableEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of XLS download from menu option in enhanced flex grid planning- Program enhanced flex grid
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    Then I see "Download as XLS" options inside "Active Awards" disabled

  @44996    @disablingQuickSearchForChildFlextTableEnhancedGrid-gPlanning
  Scenario: validate disabling of Quick Search field at Child Flex Table for Enhanced Grid - Planning phase
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see quick search option disabled from enhanced grid for child flex table "TmpGrantorActiveAwardsGridFlexToggle"

  @44997    @enableTotalRecordCountForChildFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario: validate total row count in child flex table for enhanced grid.
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Total Records" for Child Flex table "TmpGrantorActiveAwardsGridFlexToggle" count in enhanced grid

  @44998    @enableAutoIndexForChildFlexTableOnEnhancedGrid-gPlanning
  Scenario: validate auto index for details inside child flex table for enhanced grid.
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "#" in enhanced flex grid header "Enhanced1grid"

  @45001    @enableRecordSelectionForChildFlexForEnhancedGrid-gPlanning
  Scenario: validate enabling of record selection check boxes in enhanced flex grid planning-Program enhanced flex grid
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see select check box enabled for child flex table in enhanced flex grid

  @45096    @OpenNewTabAtParentFlexTableForViewAction-gPlanning
  Scenario: validate open new tab for view at parent flex table
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I click on "View" icon for "Demo_Title" inside table
    Then I see new tab is opened

  @45097    @viewActionOpenInNewWindowAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enhanced grid view action open in new window for parent flex table
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I click on "View" icon for "Demo_Title" inside table
    Then I see new tab is opened

  @45098    @viewActionOpenInNewTabAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enhanced grid view action open in new tab for child flex table
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on "View" icon for "AD-GG PJ--00" inside table
    Then I see new tab is opened

  @45099    @viewActionOpenInNewWindowAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enhanced grid view action open in new window for child flex table
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on "View" icon for "AD-GG PJ--00" inside table
    Then I see new tab is opened

  @45275    @viewActionOpenInSameWindowAtChildFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario: validate enhanced grid view action open in same window for child flex table
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on "View" icon for "AD-GG PJ--00" inside table
    Then I see no new tab is opened

  @45276    @addingfieldNamesOfDifferentDataTypesForChildFlexTableOfEnhancedGrid-gPlanning @smoke
  Scenario Outline: validate adding field names for different data types for child flex table of enhanced flex grid planning-Program enhanced flex grid
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "<fieldDisplayNames>" in enhanced flex grid header "TmpGrantorActiveAwardsGridFlexToggle"

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
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on "View" icon for "AD-GG PJ--00" inside table with table id "TmpGrantorActiveAwardsGridFlexToggle" without processing
    Then I see confirmation box with body "Test Automation" is displayed

  @45297    @locationFieldForChildFlexTableAtEnhancedGridActionItem-gPlanning
  Scenario: Changing location of Active awards child flex table view action from row to top from config anf validating it inside enhanced of program-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "View" button inside "Active Awards" enhanced grid

  @45300    @locationFieldAtEnhancedGridActionItemFromTopToRow-gPlanning @smoke
  Scenario: Changing location of enhanced grid flex table Test action button from top to row from config anf validating it inside enhanced grid
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "Test" icon for "Demo_Title" is displayed inside flex table

  @45304    @locationFieldForChildFlexTableAtEnhancedGridActionItemFromTopToRow-gPlanning @smoke
  Scenario: Changing location of child flex table of enhanced grid test action button from top to row from config and validating it inside enhanced grid
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "test" icon for "AD-GG PJ--00" is displayed inside flex table

  @45308    @sequenceFieldAtChildflexTableActionForEnhancedGrid-gPlanning @smoke
  Scenario: Changing sequence of edit row level action item of child flex table at enhanced grid from config and validating it inside enhanced grid table of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Edit" icon for "TmpGrantorActiveAwardsGridFlexToggle" is at position "1" inside flex table

  @45309    @buttonHelpTextFieldAtChildFlexTableActionForEnhancedGrid-gPlanning
  Scenario: Changing content of button help text field at enhanced grid child flex table action from config and validating it inside enhanced grid table of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Test Automation" as title for "AD-GG PJ--00" inside flex table action

  @45310    @changeOfChildFlexTableTitleForEnhancedGrid-gPlanning
  Scenario: validate after changing name of child flex table title at enhanced grid inside planning-program enhanced flex grid
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Automation Enhanced Grid" shown as inside "Enhanced1grid"

  @49243    @enableGroupingFieldAtParentFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario: validate same value rows getting grouped and shown in sequence after checking checkbox true of Enable Row Grouping from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    Then I see "Number of Awards : 1" inside rows of enhanced grid id "Enhanced1grid"

  @49244    @hideGroupingColumnFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate hide of particular column after checking checkbox true of Hide Grouping Column from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    Given I have default configuration as below:
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
    Then I see cell subtotal for number of awards at enhanced grid

  @49251    @isMasterViewFieldUncheckedForAllFlexListViewAtParentFlexTable-gPlanning
  Scenario: validate error message at enhanced grid after Unchecking check box of Is Master View Field for both list view at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    Given I have default configuration as below:
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
    Given I have default configuration as below:
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
    Then I see "($1.00)" inside enhanced grid table id "flexGridEnhanced1" in "Red" colour

    Examples:
      | styleAttributeValue | newFieldsApi                                                       | defaultFieldsApi                                                                                                                                                                                                                   |
      | color: 'red'        | ProjectTitle__c,Name,BudgetPeriodEndDate__c,TotalAdjustedAmount__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |


  @49271    @styleClassFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate color change of number of awards cells content after making changes at style class from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    Then I see "Road Construction Annoumsment" inside enhanced grid table id "flexGridEnhanced1" in "Red" colour

    Examples:
      | styleClassValue                                             |
      | {negativeValue:row[column]='Road Construction Annoumsment'} |

  @49352    @enableGroupingFieldAtChildFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario: validate same value rows getting grouped and shown in sequence after checking checkbox true of Enable Row Grouping from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Total Obligated Amount : 72000" inside rows of enhanced grid id "Enhanced1grid"

  @49353    @hideGroupingColumnFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate hide of particular column after checking checkbox true of Hide Grouping Column from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Total Obligated Amount" not displayed in enhanced grid table column title

  @49355    @enableSubTotalFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate total of number of awards after checking checkbox true of Enable Sub Total field at child flex table from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total    | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | TmpGrantorActiveAwardsGrid | Name                      | FTC-1498                   |
      | Flex Table List       | Enable Sub Total    | true          | TmpGrantorActiveAwardsGrid | Name                      | FTC-1498                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-VT-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-VT-001"
    Then I see cell subtotal for obligated amount at child table of enhanced grid

  @49358    @styleClassFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate color change of number of awards cells content after making changes at style class at chile flex table from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "GT-12132-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-12132-001"
    Then I see "Activated" inside enhanced grid table id "TmpGrantorActiveAwardsGridFlexToggle" in "Red" colour

    Examples:
      | styleClassValue                         |
      | {negativeValue:row[column]='Activated'} |

  @49359    @styleAttributeFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate color change of total adjusted amount cloumn content after making changes at style attribute from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "GT-12132-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-12132-001"
    Then I see "($1.00)" inside enhanced grid table id "TmpGrantorActiveAwardsGridFlexToggle" in "Red" colour

    Examples:
      | styleAttributeValue |
      | color: 'red'        |

  @49240    @isMasterViewFieldUncheckedForAllFlexListViewAtChildFlexTable-gPlanning
  Scenario: validate error message at enhanced grid after Unchecking check box of Is Master View Field for both list view for child flex table at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "GT-12132-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-12132-001"
    Then I see "Atleast one list view should be marked as a Master List View" error is displayed at enhanced grid

  @49241    @isMasterViewFieldcheckedForAtleastOneFlexListViewAtChildFlexTable-gPlanning
  Scenario: validate error message at enhanced grid after Unchecking check box of Is Master View Field for both list view at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "GT-12132-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-12132-001"
    Then I see "Atleast one list view should be marked as a Master List View" error is displayed at enhanced grid

  @49249    @enableOverallTotalFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate enabling of overall total field after checking checkbox true of Enable Over All Total from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    Then I see over all total for number of awards at enhanced grid
    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @49354     @enableOverallTotalFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enabling of overall total field after checking checkbox true of Enable Over All Total for child flex tablefrom config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "GT-VT-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-VT-001"
    Then I see cell subtotal for obligated amount at child table of enhanced grid

  @49361      @verifyEditSelectedAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate Edit selected functionality for parent flex table at enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I check "Road Construction Annoumsment" boxes in flex table with id "flexGridEnhanced1"
    When I click on top right button "Edit Selected" in flex table with id "flexGridEnhanced1"
    When I enter value "Test Automation" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "flexGridEnhanced1"
    Then I see edited value inside textarea is "Test Automation" for column value "Road Construction Annoumsment" of table "flexGridEnhanced1"
    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @49364      @verifyEditSelectedAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate Edit selected functionality for child flex table at enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "GT-FIN.1-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-FIN.1-001"
    When I check "AD-FIN.1-BP01-00" boxes in flex table with id "Enhanced1grid"
    When I click on top right button "Edit Selected" in flex table with id "Enhanced1grid"
    When I enter value "10" into field "AmountDirectAssistance__c"
    When I click on top right button "Save" in flex table with id "Enhanced1grid"
    Then I see edited value inside textarea is "$10" for column value "AD-FIN.1-BP01-00" of table "Enhanced1grid"

  @49360      @verifyEditAllAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate Edit selected functionality for parent flex table at enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I click on top right button "Edit All" in flex table with id "flexGridEnhanced1"
    When I enter values "Test Automation" into textarea for table id "flexGridEnhanced1"
    When I click on top right button "Save" in flex table with id "flexGridEnhanced1"
    Then I see value "Test Automation" for multiple cells at column "AddressProgramContact__c"
    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @49362      @verifyEditAllAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario Outline: validate Edit selected functionality for parent flex table at enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "GT-FIN.1-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-FIN.1-001"
    When I click on top right button "Edit All" in flex table with id "TmpGrantorActiveAwardsGridFlexToggle"
    When I enter values "Test Automation" into textarea for table id "TmpGrantorActiveAwardsGridFlexToggle"
    When I click on top right button "Save" in flex table with id "flexGridEnhanced1"
    Then I see value "Test Automation" for multiple cells at column "Agreement1__c"

    Examples:
      | newFieldsApi  | defaultFieldsApi                                                                                                                               |
      | Agreement1__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @48901    @orderByFieldAtParentDataTableEnhancedGridForAscendingOrderForMultipleField-gPlanning
  Scenario Outline: Changing specific columns values in ascending order with order by field from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By  |                   | TmpActiveGrantsGrid |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By  | <fieldNewValue> | TmpActiveGrantsGrid |                           |                            |
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
    Given I have default configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By  |                   | TmpActiveGrantsGrid |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By  | <fieldNewValue> | TmpActiveGrantsGrid |                           |                            |
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
    Given I have default configuration as below:
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
    When I perform quick search for "Financials 1" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Financials 1"
    Then I see "GrantAwardName__c" and "ActiveBudgetYear__c" in "Ascending" order

    Examples:
      | fieldNewValue                                 | newFieldsApi                               | defaultFieldsApi                                                                                                                               |
      | ActiveBudgetYear__c ASC,GrantAwardName__c ASC | Name,GrantAwardName__c,ActiveBudgetYear__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @48905    @orderByFieldAtChildDataTableEnhancedGridDescendingOrderForMultipleField-gPlanning @Smoke
  Scenario Outline: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Financials 1" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Financials 1"
    Then I see "GrantAwardName__c" and "ActiveBudgetYear__c" in "Descending" order

    Examples:
      | fieldNewValue                                   | newFieldsApi                               | defaultFieldsApi                                                                                                                               |
      | GrantAwardName__c DESC,ActiveBudgetYear__c DESC | Name,GrantAwardName__c,ActiveBudgetYear__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @45312    @filterClauseFieldOfChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario Outline: validate created status category from flex table of planning-program enhanced flex grid
    Given I have default configuration as below:
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
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see no "Created" status in flex table id "TmpGrantorActiveAwardsGridFlexToggle"

    Examples:
      | newSoqlFilter                                       | oldSoqlFilter                                                                                       |
      | RecordType.Name='Grantor' and Status__c = 'Created' | Grant__c='{!parentId}' and RecordType.Name='Grantor' and Status__c IN ('Being Amended','Activated') |