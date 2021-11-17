@flextableEnhanced-component @regression-test5 @flexTableEnhanced
Business Need: Flex Table enhanced Component Scenarios
  Test all flex table enhanced component based scenarios
  As a configuration manager i make different configurational changes in flex table enhanced component and will validate them.

  @76929    @disablingPDFExportFileForEnhancedDataTable-gPlanning @smoke
  Scenario: validate disabling of PDF download from menu option in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (PDF) | false         | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    Then I see "Download as PDF" options inside "Grants Enhanced Table" disabled

  @76945    @disablingXLSExportFileForEnhancedDataTable-gPlanning @smoke
  Scenario: validate disabling of XLS download from menu option in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | false         | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    Then I see "Download as XLS" options inside "Grants Enhanced Table" disabled

  @76931    @disablingAdvanceFilterForEnhancedDataTable-gPlanning @smoke
  Scenario: validate disabling of advance filter from enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Filter | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Filter | false         | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see Advance Filter is disabled from table "---program:-:flexGridEnhancedDataTableId---" with data target value "#advfEnhancedDataTable"

  @76932    @disablingQuickSearchForEnhancedDataTable-gPlanning @smoke
  Scenario: validate disabling of quick search from enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Quick Search | false         | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see quick search option disabled from enhanced grid

  @76934    @enablingAutoIndexForEnhancedDataTable-gPlanning
  Scenario: validate auto index for details inside enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Auto Index | true          | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "#" in enhanced flex grid header "---program:-:EnhancedDataTableId---"

  @77110    @enablePageSizeFieldAtEnhancedDataTable-gPlanning
  Scenario: enabling of page size dropdown at bottom inside enhanced enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Page Size  | false             | ApiGeneratedId:0 |
      | Flex Grid             | Default Page Size | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Page Size  | true          | EnhancedDataTable  |                           |                            |
      | Flex Grid:General     | Default Page Size | 5             | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:EnhancedDataTableId---"

  @77112    @defaultPageSizeFieldAtEnhancedDataTable-gPlanning
  Scenario: validate change of default page size inside dropdown at bottom of enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Default Page Size | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Default Page Size | 5             | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "5" records inside enhanced grid id "---program:-:EnhancedDataTableId---"

  @77113    @disablingEnableTotalRecordCountFieldForAtEnhancedDataTable-gPlanning
  Scenario: validate disabling of total row count in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Total Records Count | false         | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I do not see "Total Records" count in enhanced grid "---program:-:EnhancedDataTablegrid---"

  @77183    @disablingMenuFieldForAtEnhancedDataTable-gPlanning
  Scenario: validate disabling of burger menu icon in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Grid             | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Disable Menu | true          | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see Menu icon is disabled from planning flex table "Grants Enhanced Table"

  @77215    @enableRecordSelectionForEnhancedDataTable-gPlanning
  Scenario: validate enabling of record selection check boxes in in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Record Selection | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Record Selection | true          | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see Menu icon is disabled from planning flex table "Grants Enhanced Table"


  @77220    @orderBySortByFieldAtEnhancedDataTable-gPlanning @Smoke
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside  enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | GrantAbbreviation__c | EnhancedDataTable  |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC                  | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see column "GrantAbbreviation__c" value is in "Ascending" order

  @77221    @orderBySortDirectionAsDescFieldAtEnhancedDataTable-gPlanning @Smoke
  Scenario: Changing specific column value in Descending order with order by and sort by field from config and validating it inside  enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | GrantAbbreviation__c | EnhancedDataTable  |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC                 | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see column "GrantAbbreviation__c" value is in "Descending" order

  @77284    @enableOverallTotalFieldAtFlexTableForEnhanced-gPlanning @smoke
  Scenario: validate enabling of overall total field after checking checkbox true of Enable Over All Total from config and validating it inside enhanced data table-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total | false             | ApiGeneratedId:0 |
      | Flex Grid             | Default Page Size     | 10                | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total | true          | EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see over all total for "NumberofProjectAreas__c" field at enhanced grid

  @77288    @hideCellJsonFieldAtFlexTableForEnhanced-gPlanning @smoke
  Scenario: Hiding specific cell value of enhanced data table from config and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideCellJSONFieldAtEnhancedDataTable | EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Applicationg test88888" in "---program:-:flexGridEnhancedDataTableId---" panel
    Then I see "*****" shown inside enhanced grid table for specified record "Applicationg test88888"

  @77286    @hideColumnJsonFieldAtFlexTableForEnhanced-gPlanning @smoke
  Scenario: Hiding specific column value of enhanced data table from config and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:HideColumnJsonForEnhancedGrid | EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Number of Project Areas" not displayed in enhanced grid table column title

  @77315    @hideExpressionJsonFieldAtFlexTableForEnhanced-gPlanning @smoke
  Scenario: Set up configuration to hide edit action of parent enhanced grid using UserType IN Internal and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | EnhancedDataTable  | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Applicationg test88888" in "---program:-:flexGridEnhancedDataTableId---" panel
    Then I see "Edit" icon for "Applicationg test88888" is not displayed inside flex table

  @77353    @enableGroupingFieldAtFlexTableForEnhanced-gPlanning @smoke
  Scenario: validate same value rows getting grouped and shown in sequence after checking checkbox true of Enable Row Grouping from config and validating it inside  enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Number of Project Areas :" inside rows of enhanced grid id "---program:-:EnhancedDataTableId---"

  @77413    @enableSubTotalFieldAtFlexTableEnhanced-gPlanning
  Scenario Outline: validate total of number of project areas after checking checkbox true of Enable Sub Total field from config and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue     | filterId         |
      | Flex Table List       | Enable Sub Total    | false                 | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping | false                 | ApiGeneratedId:1 |
      | Flex Table List       | Filter Clause       | <defaultFilterClause> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Sub Total    | true              | EnhancedDataTable  | Name                      | FTC-1511                   |
      | Flex Table List       | Enable Row Grouping | true              | EnhancedDataTable  | Name                      | FTC-1511                   |
      | Flex Table List       | Filter Clause       | <newFilterClause> | EnhancedDataTable  | Name                      | FLV-2548                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see cell subtotal for "NumberofProjectAreas__c" at enhanced grid

    Examples:
      | defaultFilterClause                 | newFilterClause                                                   |
      | TotalAwardObligatedAmount__c=300000 | TotalAwardObligatedAmount__c=300000 and NumberofProjectAreas__c=1 |

  @77401    @hideExpressionJsonFieldAtTopLevelActionFlexTableForEnhanced-gPlanning
  Scenario: Set up configuration to hide New action and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_EnhancedDataTable__TopAction_For_Specific_Program | EnhancedDataTable  | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see no "New" button inside "Grants Enhanced Table" enhanced grid

  @77329    @enableHideGroupingColumnFieldAtFlexTableEnhanced-gPlanning
  Scenario: validate display of number of project areas column after checking checkbox true of Hide Grouping Column field from config and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Grouping Column | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping  | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Grouping Column | true          | EnhancedDataTable  | Name                      | FTC-1511                   |
      | Flex Table List       | Enable Row Grouping  | true          | EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Number of Project Areas" not displayed in enhanced grid table column title

  @104862  @VerifySortingLabelInsideEnhancedDataTable
  Scenario: verify that sorting label displayed inside enhanced data table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I softly see sorting label as "* Records are sorted by " inside "---program:-:EnhancedDataTableId---" table
    Then I softly see sorting label as "Last Modified Date ascending order" inside "---program:-:EnhancedDataTableId---" table

  @104409    @validatePicklistFieldValueAsNoneAtEnhancedDataTableInInlineMode-gPlanning
  Scenario: validate picklist field value as none inside enhanced data table in inline edit mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Applicationg test88888" in "---program:-:flexGridEnhancedDataTableId---" panel
    When I click on "Edit" icon for "Applicationg test88888" inside table
    Then I see "--None--:Active:Expired:Terminated:Draft:Closed/Completed" inside selectbox field "Status__c"

  @106413  @validateDateCanBeEnteredSuccessfulyInsideAdvanceFilterValueInputBoxAtFlexTableEnhanced
  Scenario Outline: validate date inside value input box field is inserted successfullyAtFlexTableEnhanced
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
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "advfEnhancedDataTable"
      | Project Period | contains | 1/2/2019--1/25/2023 |
    Then I see label containing value as "1/2/2019--1/25/2023" inside advance filter

    Examples:
      | newFieldsApi                                      | defaultFieldsApi                                                                                                                                        |
      | ProjectTitle__c,Status__c,CurrentProjectPeriod__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,NumberofProjectAreas__c,Status__c,GrantAbbreviation__c,TotalAwardObligatedAmount__c |

  @106417  @validateAdvanceFilterValueForDateFieldWithOperatorStartWithAtFlexTableEnhanced
  Scenario Outline: validate Advance filter search for date field with start with operator At Flex Table Enhanced
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
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "advfEnhancedDataTable"
      | Project Period | starts with | 2/27/2019 |
    Then I softly see value "2/27/2019--2/28/2022" for title "Project Period" inside table "---program:-:EnhancedDataTableId---"
    Then I softly do not see value "3/20/2019--3/20/2022" for title "Project Period" inside table "---program:-:EnhancedDataTableId---"

    Examples:
      | newFieldsApi                                      | defaultFieldsApi                                                                                                                                        |
      | ProjectTitle__c,Status__c,CurrentProjectPeriod__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,NumberofProjectAreas__c,Status__c,GrantAbbreviation__c,TotalAwardObligatedAmount__c |

  @111920  @validateToolTipDisplayedAtHoverOnColumnValueInsideEnhancedDataTable
  Scenario Outline: validate tool tip displayed at hover on column value inside Enhanced data table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "" in "---program:-:flexGridEnhancedDataTableId---" panel
    When I hovering mouse on table id "---program:-:flexGridEnhancedDataTableId---" with table row level icon "<new_helpText>" for column value "GT-IE11G-001"
    Then I see "<new_helpText>" shown at mouse hover inside "---program:-:flexGridEnhancedDataTableId---" table

    Examples:
      | new_helpText                           |
      | This is the test application for IE 11 |

  @132268    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtEnhancedDataTable
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at enhanced data table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Educational Program Activity0" in "---program:-:flexGridEnhancedDataTableId---" panel
    And I pause execution for "10" seconds
    When I hover mouse on lookup link "SYSTEM" at table
    And I pause execution for "4" seconds
    Then I softly see "title" as "SYSTEM" inside mini page layout
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I perform quick search for "Educational Program Activity0" in "---program:-:flexGridEnhancedDataTableId---" panel
    When I hover mouse on lookup link "SYSTEM" at table
    And I pause execution for "4" seconds
    Then I softly see "Label" as "Code" inside mini page layout
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I perform quick search for "Educational Program Activity0" in "---program:-:flexGridEnhancedDataTableId---" panel
    When I hover mouse on lookup link "SYSTEM" at table
    And I pause execution for "4" seconds
    Then I softly see "Value" as "9832" inside mini page layout

  @145488  @validateAdvanceFilterValueWithOperatorDoesNotContainAtFlexTableEnhanced
  Scenario: validate Advance filter  with does not contain operator At Flex Table Enhanced
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "advfEnhancedDataTable"
      | Project Title | does not contain | test |
    Then I softly see value "Exploratory Team-Research BRAIN Circuit Programs_0" for title "Project Title" inside table "---program:-:EnhancedDataTableId---"
    Then I softly do not see value "Applicationg test88888" for title "Project Title" inside table "---program:-:EnhancedDataTableId---"

  @151054 @verifyThatParentPageDoesNotRefreshAfterClickingOnSaveActionInEnhancedDataTable
  Scenario: validate that Parent page does not refresh after clicking on Save action in enhanced data table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    And I clear the value from field "cke_1_contents"
    When I enter value "test temp data" into field "cke_1_contents"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-HRGr-001" in "---program:-:EnhancedDataTableId---" panel
    When I click on "Edit" icon for "GT-HRGr-001" inside table
    When I enter value "Test" into field "GrantAbbreviation__c"
    When I click on top right button "Save" in flex table with id "---program:-:EnhancedDataTableId---"
    When I navigate to "Overview" sub tab
    Then I see field "Description" as "test temp data"