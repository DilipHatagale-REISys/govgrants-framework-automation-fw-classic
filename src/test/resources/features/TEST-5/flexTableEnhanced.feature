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
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (PDF) | false         | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#DataTableEnhanceProgramContactsFlexToggle"
    Then I see "Download as PDF" options inside "Contacts@1234567890!@#$%^&*()" disabled

  @76945    @disablingXLSExportFileForEnhancedDataTable-gPlanning @smoke
  Scenario: validate disabling of XLS download from menu option in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | false         | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#DataTableEnhanceProgramContactsFlexToggle"
    Then I see "Download as XLS" options inside "Contacts@1234567890!@#$%^&*()" disabled

  @76931    @disablingAdvanceFilterForEnhancedDataTable-gPlanning @smoke
  Scenario: validate disabling of advance filter from enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Filter | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Filter | false         | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    Then I see Advance Filter is disabled from table "---program:-:programContactsTableId---" with data target value "#advfDataTableEnhanceProgramContacts"

  @76932    @disablingQuickSearchForEnhancedDataTable-gPlanning @smoke
  Scenario: validate disabling of quick search from enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Quick Search | false         | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    Then I see quick search option disabled from enhanced grid

  @76934    @enablingAutoIndexForEnhancedDataTable-gPlanning
  Scenario: validate auto index for details inside enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Auto Index | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    Then I see "#" in enhanced flex grid header "---program:-:programContactsTableId---"

  @77110    @enablePageSizeFieldAtEnhancedDataTable-gPlanning
  Scenario: enabling of page size dropdown at bottom inside enhanced enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Page Size  | false             | ApiGeneratedId:0 |
      | Flex Grid             | Default Page Size | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Page Size  | true          | DataTableEnhanceProgramContacts |                           |                            |
      | Flex Grid:General     | Default Page Size | 5             | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:programContactsTableId---"

  @77112    @defaultPageSizeFieldAtEnhancedDataTable-gPlanning
  Scenario: validate change of default page size inside dropdown at bottom of enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Default Page Size | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Default Page Size | 5             | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for FlextableEnhanced"
    When I click on "View" icon for "Automation Internal Program for FlextableEnhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see "5" records inside enhanced grid id "---program:-:programContactsTableId---"

  @77113    @disablingEnableTotalRecordCountFieldForAtEnhancedDataTable-gPlanning
  Scenario: validate disabling of total row count in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Total Records Count | false         | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "PG-A11-1364"
    When I click on "View" icon for "PG-A11-1364" inside table
    When I navigate to "Overview" sub tab
    Then I do not see "Total Records" count in enhanced grid "---program:-:EnhancedDataTablegrid---"

  @77183    @disablingMenuFieldForAtEnhancedDataTable-gPlanning
  Scenario: validate disabling of burger menu icon in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Grid             | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Disable Menu | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    Then I see Menu icon is disabled from planning flex table "Contacts@1234567890!@#$%^&*()"

  @77215    @enableRecordSelectionForEnhancedDataTable-gPlanning
  Scenario: validate enabling of record selection check boxes in in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Record Selection | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Record Selection | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    Then I see Menu icon is disabled from planning flex table "Contacts@1234567890!@#$%^&*()"

  @77220    @orderBySortByFieldAtEnhancedDataTable-gPlanning @Smoke
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside  enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | ProjectRole__c | DataTableEnhanceProgramContacts |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC            | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "PG-A11-1364"
    When I click on "View" icon for "PG-A11-1364" inside table
    When I navigate to "Overview" sub tab
    Then I see column "ProjectRole__c" value is in "Ascending" order

  @77221    @orderBySortDirectionAsDescFieldAtEnhancedDataTable-gPlanning @Smoke
  Scenario: Changing specific column value in Descending order with order by and sort by field from config and validating it inside  enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | ProjectRole__c | DataTableEnhanceProgramContacts |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC           | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "PG-A11-1364"
    When I click on "View" icon for "PG-A11-1364" inside table
    When I navigate to "Overview" sub tab
    Then I see column "ProjectRole__c" value is in "Descending" order

  @77284    @enableOverallTotalFieldAtFlexTableForEnhanced-gPlanning @smoke
  Scenario: validate enabling of overall total field after checking checkbox true of Enable Over All Total from config and validating it inside enhanced data table-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total | false             | ApiGeneratedId:0 |
      | Flex Grid             | Default Page Size     | 10                | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total | true          | GrantorRelatedAwards2 | Name                      | FTC-12821                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    Then I see over all total for "AmountAwarded__c" field at enhanced grid

  @77288    @hideCellJsonFieldAtFlexTableForEnhanced-gPlanning @smoke
  Scenario: Hiding specific cell value of enhanced data table from config and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideJsonForEnhancedDataTableForColumn | DataTableEnhanceProgramContacts | Name                      | FTC-13602                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Automation PM" in "---program:-:programContactsTableId---" panel
    Then I see "*****" shown inside enhanced grid table for specified record "Automation PM"

  @77286    @hideColumnJsonFieldAtFlexTableForEnhanced-gPlanning @smoke
  Scenario: Hiding specific column value of enhanced data table from config and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:HideColumnJsonForEnhancedGrid | DataTableEnhanceProgramContacts | Name                      | FTC-13602                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "PG-REI-1190"
    When I click on "View" icon for "PG-REI-1190" inside table
    When I navigate to "Overview" sub tab
    Then I see "Name" not displayed in enhanced grid table column title

  @77315    @hideExpressionJsonFieldAtFlexTableForEnhanced-gPlanning @smoke
  Scenario: Set up configuration to hide edit action of parent enhanced grid using UserType IN Internal and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | DataTableEnhanceProgramContacts | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Applicationg test88888" in "---program:-:programContactsTableId---" panel
    Then I see "Edit" icon for "Applicationg test88888" is not displayed inside flex table

  @77353    @enableGroupingFieldAtFlexTableForEnhanced-gPlanning @smoke
  Scenario: validate same value rows getting grouped and shown in sequence after checking checkbox true of Enable Row Grouping from config and validating it inside  enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | DataTableEnhanceProgramContacts | Name                      | FTC-12821                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I see "Budget" inside rows of enhanced grid id "---program:-:SubawardTableIdForAdminPM---"

  @77413    @enableSubTotalFieldAtFlexTableEnhanced-gPlanning
  Scenario: validate total of number of project areas after checking checkbox true of Enable Sub Total field from config and validating it inside enhanced data table -planning
  #Scenario Outline: validate total of number of project areas after checking checkbox true of Enable Sub Total field from config and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Sub Total    | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Sub Total    | true          | GrantorRelatedAwards2 | Name                      | FTC-12818                  |
      | Flex Table List       | Enable Row Grouping | true          | GrantorRelatedAwards2 | Name                      | FTC-12818                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I see cell subtotal for "Version Number" at enhanced grid

  @77401    @hideExpressionJsonFieldAtTopLevelActionFlexTableForEnhanced-gPlanning
  Scenario: Set up configuration to hide New action and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_EnhancedDataTable__TopAction_For_Specific_Program | DataTableEnhanceProgramContacts | Name                      | New                        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "5" seconds
    Then I see no "New" button inside "Contacts@1234567890!@#$%^&*()" enhanced grid

  @77329    @enableHideGroupingColumnFieldAtFlexTableEnhanced-gPlanning
  Scenario: validate display of number of project areas column after checking checkbox true of Hide Grouping Column field from config and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Grouping Column | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping  | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Grouping Column | true          | GrantorRelatedAwards2 | Name                      | FTC-12818                  |
      | Flex Table List       | Enable Row Grouping  | true          | GrantorRelatedAwards2 | Name                      | FTC-12818                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I see "Version Number" not displayed in enhanced grid table column title

  @104862  @VerifySortingLabelInsideEnhancedDataTable
  Scenario: verify that sorting label displayed inside enhanced data table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "10" seconds
    Then I softly see sorting label as "* Records are sorted by Last Modified Date ascending order" inside "---program:-:programContactsTableId---" table

  @104409    @validatePicklistFieldValueAsNoneAtEnhancedDataTableInInlineMode-gPlanning
  Scenario: validate picklist field value as none inside enhanced data table in inline edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "PG-A11-1364"
    When I click on "View" icon for "PG-A11-1364" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "FirstName LastNam" in "---program:-:programContactsTableId---" panel
    When I click on "Edit" icon for "FirstName LastNam" inside table
    Then I see "--None--:Authorized Signatory:Ebiz POC:Fiscal Contact:Grants Administrator:Principal Investigator:Program Manager:Project Director/Manager:Other" inside selectbox field "ProjectRole__c"

  @106413  @validateDateCanBeEnteredSuccessfulyInsideAdvanceFilterValueInputBoxAtFlexTableEnhanced
  Scenario Outline: validate date inside value input box field is inserted successfullyAtFlexTableEnhanced
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantorRelatedAwards2 |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I click on advance filter "#advfGrantorRelatedAwards2" of table id "---program:-:SubawardTableIdForAdminPM---"
    When I enter advance filter values in table id "---program:-:SubawardTableIdForAdminPM---"
      | Budget Period End Date | equals to | 05/01/2023 |
    Then I see label containing value as "05/01/2023" inside advance filter

    Examples:
      | newFieldsApi                                                                                                                                                   | defaultFieldsApi                                                                                                                                               |
      | Name,GrantAwardName__c,BudgetPeriodStartDate__c,BudgetPeriodEndDate__c,ExternalOrganization__c,AmendmentNumber__c,Status__c,GrantAwardName__c,AmountAwarded__c | Name,GrantAwardName__c,BudgetPeriodStartDate__c,BudgetPeriodEndDate__c,ExternalOrganization__c,AmendmentNumber__c,Status__c,GrantAwardName__c,AmountAwarded__c |

  @106417  @validateAdvanceFilterValueForDateFieldWithOperatorStartWithAtFlexTableEnhanced
  Scenario Outline: validate Advance filter search for date field with start with operator At Flex Table Enhanced
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantorRelatedAwards2 |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I click on advance filter "#advfGrantorRelatedAwards2" of table id "---program:-:SubawardTableIdForAdminPM---"
    When I enter advance filter values in table id "---program:-:SubawardTableIdForAdminPM---"
      | EGMS ID | contains | AD-1000-01 |
    Then I see value "11/18/2022" for the title "Budget Period End Date" inside table "---program:-:SubawardTableIdForAdminPM---"
    Then I see value "02/19/2022" for the title "Budget Period Start Date" inside table "---program:-:SubawardTableIdForAdminPM---"

    Examples:
      | newFieldsApi                                                                                                                                                   | defaultFieldsApi                                                                                                                                               |
      | Name,GrantAwardName__c,BudgetPeriodStartDate__c,BudgetPeriodEndDate__c,ExternalOrganization__c,AmendmentNumber__c,Status__c,GrantAwardName__c,AmountAwarded__c | Name,GrantAwardName__c,BudgetPeriodStartDate__c,BudgetPeriodEndDate__c,ExternalOrganization__c,AmendmentNumber__c,Status__c,GrantAwardName__c,AmountAwarded__c |

  @111920  @validateToolTipDisplayedAtHoverOnColumnValueInsideEnhancedDataTable @skipOnJenkins
  Scenario Outline: validate tool tip displayed at hover on column value inside Enhanced data table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Automation FO" in "---program:-:programContactsTableId---" panel
    When I hovering mouse on table id "---program:-:programContactsTableId---" with table row level icon "<new_helpText>" for column value "Automation FO"
    Then I see "<new_helpText>" shown at mouse hover inside "---program:-:programContactsTableId---" table

    Examples:
      | new_helpText |
      | Contact      |

  @132268    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtEnhancedDataTable
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at enhanced data table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for FlextableEnhanced"
    When I click on "View" icon for "Automation Internal Program for FlextableEnhanced" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:programContactsTableId---" panel
    And I pause execution for "10" seconds
    When I hover mouse on lookup link "Lisa Mitchell" at table
    And I pause execution for "4" seconds
    Then I see "Name" as "Lisa Mitchell" in mini page layout
    Then I see "Email" as "lisamitchell@gmail.com" in mini page layout
    Then I see "Organization" as "Test Automation Organization" in mini page layout

  @145488  @validateAdvanceFilterValueWithOperatorDoesNotContainAtFlexTableEnhanced
  Scenario: validate Advance filter  with does not contain operator At Flex Table Enhanced
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I click on advance filter "#advfGrantorRelatedAwards2" of table id "---program:-:SubawardTableIdForAdminPM---"
    When I enter advance filter values in table id "---program:-:SubawardTableIdForAdminPM---"
      | EGMS ID | does not contain | test1 |
    Then I do not see value "test1" for title "EGMS ID" inside table "---program:-:GridGrantorRelatedAwards2TableId---"

  @151054 @verifyThatParentPageDoesNotRefreshAfterClickingOnSaveActionInEnhancedDataTable
  Scenario: validate that Parent page does not refresh after clicking on Save action in enhanced data table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I perform quick search for "AD-1000-04" in "---program:-:SubawardTableIdForAdminPM---" panel
    When I click on "Edit" icon for "AD-1000-04" inside table
    When I enter value "TestGrant" into field "GrantAwardName__c"
    And I pause execution for "30" seconds
    When I click on top right button "Save" in table id "---program:-:SubawardTableIdForAdminPM---"
    And I click toggle button to select "Subawards  - All"
    When I perform quick search for "AD-1000-04" in "---program:-:SubawardTableIdForAdminPM---" panel
    Then I see value "TestGrant" for the title "Title" inside table "---program:-:SubawardTableIdForAdminPM---"

  @194928 @sprint1
  Scenario: Data Table Enhanced - To verify, Hide  expression builder is working for $user with text  field   with not equal to operator (External Organization)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                               | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable | DataTableEnhanceProgramContacts | Name                      | FTC-11238                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Overview" sub tab
    Then I softly do not see "Organization" in flex table header "Contacts@1234567890!@#$%^&*()"

  @194451 @sprint1
  Scenario:  Data Table Enhanced - To verify, Hide  expression builder is working for $user with text  field   with not equal to operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                               | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable | DataTableEnhanceProgramContacts | Name                      | FTC-11238                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Overview" sub tab
    Then I softly do not see "Organization" in flex table header "Contacts@1234567890!@#$%^&*()"

  @194456 @sprint1
  Scenario: Data Table Enhanced - To verify, Hide  expression builder is working for $user with number  field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable1 | GrantorRelatedAwards2 | Name                      | FTC-12818                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I softly do not see "Version Number" in flex table header "Subawards - Active"

  @194457 @sprint1
  Scenario: Data Table Enhanced - To verify, Hide  expression builder is working for $user with currency   field(Total Award Obligated Amount)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable1 | GrantorRelatedAwards2 | Name                      | FTC-12821                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I softly do not see "Budget" in flex table header "Subawards - Active"

  @194459 @sprint1
  Scenario:  Data Table Enhanced - To verify, Hide  expression builder is working for $user with status
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable2 | GrantorRelatedAwards2 | Name                      | FTC-1560                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I softly do not see "Status" in flex table header "Subawards - Active"

  @194929 @sprint1
  Scenario: Data Table Enhanced - To verify, Hide  expression builder is working for $user with text  field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                               | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable | DataTableEnhanceProgramContacts | Name                      | FTC-12391                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Overview" sub tab
    Then I softly do not see "Organization" in flex table header "Contacts@1234567890!@#$%^&*()"

  @194931 @sprint1
  Scenario: Data Table Enhanced - To verify, Hide  expression builder is working for $user with number  field  with equal to operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable3 | GrantorRelatedAwards2 | Name                      | FTC-12818                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I softly do not see "Version Number" in flex table header "Subawards  - Active"

  @194932 @sprint1
  Scenario:Data Table Enhanced -To verify, Hide  expression builder is working  for $user with number  field  with  not equal to operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable4 | GrantorRelatedAwards2 | Name                      | FTC-12818                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I softly do not see "Version Number" in flex table header "Subawards  - Active"

  @208595   @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtEnhancedDataTable
  Scenario:To verify , Mini layout UI at ME-Grid  table looks as   object name to the top, field title under it, then line separator for Internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Automation PM" in "---program:-:programContactsTableId---" panel
    And I pause execution for "10" seconds
    When I hover mouse on lookup link "SYSTEM" at table
    And I pause execution for "4" seconds
    Then I softly see "title" as "SYSTEM" inside mini page layout
    Then I softly see "Label" as "Code" inside mini page layout
    Then I softly see "Value" as "9832" inside mini page layout

  @208597    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtEnhancedGrid
  Scenario:To verify , Mini layout UI at form looks as   object name to the top, field title under it, then line separator for Internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I hover mouse on lookup link "Department of Higher Education" at table
    And I pause execution for "4" seconds
    Then I softly see "title" as "Department of Higher Education" inside mini page layout
    Then I softly see "Label" as "Code" inside mini page layout
    Then I softly see "Value" as "755" inside mini page layout