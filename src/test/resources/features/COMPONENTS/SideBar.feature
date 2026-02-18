@SideBar
Business Need: Side bar Component Scenarios
  Test all sidebar component based scenarios
  As a configuration manager i make different configurational changes in side bar component and will validate them.

  @33877p    @validateChangeinTaskMenuSequence-gHome
  Scenario: validate after changing sequence of task menu from second to third in side bar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                  | filterId         |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Side Bar Header:General | Sidebar Component Sequence | Search,ActivityMenu,TaskMenu,RecentlyViewed,TechnicalSupport,Links | GrantorHome        | Phase Name                |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then i see "Tasks" shown at number "5" in sideBar

  @33876    @validateSidebarTaskMenuRemoval-gHome @smokePATCH
  Scenario: validate disabling of task menu from side bar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                  | filterId         |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Side Bar Header:General | Sidebar Component Sequence | Search,ActivityMenu,RecentlyViewed,TechnicalSupport,Links | GrantorHome        | Phase Name                |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    Then I do not see "Tasks" at sidebar

  @33879    @validateSidebarActivityMenuRemoval-gHome @smokePATCH
  Scenario: validate disabling of activity menu from side bar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                  | filterId         |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Side Bar Header:General | Sidebar Component Sequence | Search,TaskMenu,RecentlyViewed,TechnicalSupport,Links | GrantorHome        | Phase Name                |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    Then I do not see "Activities" at sidebar

  @77432    @enablePageSizeFieldAndValidateInsideEnhancedDataTableAtAtSidebar-gHome
  Scenario: enabling of page size dropdown at bottom inside enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Page Size  | false             | ApiGeneratedId:0 |
      | Flex Grid             | Default Page Size | 10                | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Page Size  | true          | GrantorRelatedAwards2 |                           |                            |
      | Flex Grid:General     | Default Page Size | 5             | GrantorRelatedAwards2 |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:GrantorRelatedAwards2gridTableId---"

  @77433    @defaultPageSizeFieldAndValidateInsideEnhancedDataTableAtSidebar-gHome
  Scenario: validate change of default page size inside dropdown at bottom of enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Default Page Size | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Default Page Size | 5             | GrantorRelatedAwards2 |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "5" records inside enhanced grid id "---program:-:GrantorRelatedAwards2gridTableId---"

  @77462    @orderBySortByFieldAtEnhancedDataTableAtSidebar-gHome @smokePATCH
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | GrantAwardName__c | GrantorRelatedAwards2 |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC               | GrantorRelatedAwards2 |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see column "GrantAwardName__c" value is in "Ascending" order

  @77463    @orderBySortByFieldDescendingAtEnhancedDataTableAtSidebar-gHome @smokePATCH
  Scenario: Changing specific column value in descending order with order by and sort by field from config and validating it inside enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | GrantAwardName__c | GrantorRelatedAwards2 |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC              | GrantorRelatedAwards2 |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see column "GrantAwardName__c" value is in "Descending" order

  @77467    @enableFormulaFieldAtFlexTableAtEnhancedDataTableAtSidebar-gHome @smokePATCH
  Scenario: Validating subtotal of cell value of total obligated amount by entering formula at config and validating it inside enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid | GrantorRelatedAwards2 | Name                      | FTC-13092                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see cell subtotal as expected as given formula at "AmendmentNumber__c" field

  @77471    @hideExpressionJsonFieldAtFlexTableForEnhancedDataTableAtSidebar-gHome @smokePATCH
  Scenario: Set up configuration to hide edit action of parent enhanced grid using UserType IN Internal and validating it inside enhanced data table at sidebar -Home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | GrantorRelatedAwards2 | Name                      | Edit                       |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I perform quick search for "AD-GTR-01" in "---program:-:GrantorRelatedAwards2gridTableId---" panel
    Then I see "Edit" icon for "AD-GTR-01" is not displayed inside flex table

  @77620    @orderBySortByFieldAtParentDataTableEnhancedGridForAscendingOrderAtSidebar-gHome
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced grid at sidebar-gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | SubAwardFlexTable  |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | SubAwardFlexTable  |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | GrantAwardName__c | SubAwardFlexTable  |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC               | SubAwardFlexTable  |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see column "GrantAwardName__c" value is in "Ascending" order

  @77623    @orderBySortByDescFieldAtParentDataTableEnhancedGridForDescendingOrderAtSidebar-gHome @smokePATCH
  Scenario: Changing specific column value in descending order with order by and sort by field from config and validating it inside enhanced grid at sidebar-gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | SubAwardFlexTable  |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | SubAwardFlexTable  |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | GrantAwardName__c | SubAwardFlexTable  |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC              | SubAwardFlexTable  |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see column "GrantAwardName__c" value is in "Descending" order

  @77705     @hideColumnJsonFieldAtEnhancedGridAtSideBar-gHome @smokePATCH
  Scenario: Hiding specific column value of enhanced grid from config and validating it inside enhanced grid at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator | SubAwardFlexTable  | Name                      | FTC-13749                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see "Project Period" not displayed in enhanced grid table column title

  @77721    @hideExpressionJSONAtEnhancedGridViewActionForInternalUserAtSideBar-gHome @smokePATCH
  Scenario: Set up configuration to hide view action in config and validating it inside enhanced grid at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | SubAwardFlexTable  | Name                      | View                       |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "product flow start" in "---program:-:SubAwardFlexTableId---" panel
    Then I see "View" icon for "product flow start" is not displayed inside flex table

  @77470     @hideColumnJsonFieldAtEnhancedDataTableAtSideBar-gHome
  Scenario: Hiding specific column value from config and validating it inside enhanced data table at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator | GrantorRelatedAwards2 | Name                      | FTC-13092                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "Version Number" not displayed in enhanced grid table column title

  @77697    @enableOverallTotalFieldAtParentFlexTableForEnhancedGridAtSideBar-gPlanning
  Scenario Outline: validate enabling of overall total field after checking checkbox true of Enable Over All Total from config and validating it inside enhanced grid at sidebar - home phase
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue               | filterId         |
      | Flex Table List           | Enable Over All Total | false                           | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Filter Clause         | <defaultFilterClauseForFLV2539> | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Is Master View        | true                            | ApiGeneratedId:2 |
      | Flex Grid                 | Display Field Names   | <defaultFieldsApi>              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName             | fieldNewValue               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Enable Over All Total | true                        | SubAwardFlexTable  | Name                      | FTC-1497                   |
      | Flex Grid:Flex Table List | Filter Clause         | <newFilterClauseForFLV2539> | SubAwardFlexTable  | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Is Master View        | true                        | SubAwardFlexTable  | Name                      | FLV-2539                   |
      | Flex Grid:General         | Display Field Names   | <newFieldsApi>              | SubAwardFlexTable  |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see over all total for "NumberofAwards__c" field at enhanced grid

    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                           | defaultFieldsApi                                                                                                                                                                                                         | newFieldsApi                                       |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and GrantAwardName__c like 'Road%' | Name,GrantAwardName__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,AmountAwarded__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,GrantAwardName__c,Status__c,NumberofAwards__c |

  @115097    @validateColorOfGlobalSearchBoxAtSidebar-gHome
  Scenario: validate color of global search box at sidebar
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    Then I see sidebar global search box displayed in "blue"

  @115099    @validateColorOfGlobalSearchBoxAtSidebarForExternalUser-gHome
  Scenario: validate color of global search box at sidebar for external user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see sidebar global search box displayed in "blue"

  @120977    @VerifyCrossIconIsDisplayedAtGlobalSearchQuickSearchBox
  Scenario: validate that cross icon is displayed at global search quick search box
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on global search and select "Programs"
    When I perform quick search inside global search "PG-343-0058"
    Then I see cross icon is displayed at search box at "sidebarAppId"

  @119850    @VerifyCompleteTextIsDisplayedOnMouseHoverAtSidebarMenu
  Scenario: validate that complete text is displayed at sidebar menu on mouse hover
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I pause execution for "3" seconds
    When I hover mouse on lookup link "Subawards"
    And I pause execution for "3" seconds
    Then I see "Subawards" shown at mouse hover inside "---program:-:sidebarWrapperId---" table

  @77698    @enableFormulaFieldAtParentFlexTableForEnhancedGridAtSideBar-gHOME @sidebar
  Scenario: validate subtotal of cell value of total obligated amount by entering formula at config  and validating it inside enhanced grid at sidebar - home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid | SubAwardFlexTable  | Name                      | FTC-13750                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see cell subtotal as expected as given formula at "AmountAwarded__c" field

  @115097
  Scenario: validate color of global search box at sidebar
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    Then I see sidebar global search box displayed in "blue"

  @115099
  Scenario: validate color of global search box at sidebar for external user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see sidebar global search box displayed in "blue"

  @120977 @255890
  Scenario: validate that cross icon is displayed at global search quick search box
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on global search and select "Programs"
    When I perform quick search inside global search "PG-343-0058"
    Then I see cross icon is displayed at search box at "sidebarAppId"

  @119850 @221523
  Scenario: validate that complete text is displayed at sidebar menu on mouse hover
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I pause execution for "3" seconds
    When I hover mouse on lookup link "Subawards"
    And I pause execution for "3" seconds
    Then I see "Subawards" shown at mouse hover inside "---program:-:sidebarWrapperId---" table

   @255887
  Scenario: validate accordion content Pending in My tasks is available for a specific added profile
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue                                                                                                 | filterId         |
      | Accordian Content     | Available for Profiles | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PD; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue                                                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Available for Profiles | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PD; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND | GrantorHome        | Phase Name                | Reassign                   |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    Then I see changed label as "Reassign" inside "Tasks" in side bar sub menu

  @338878 @255889
  Scenario: validate accordion content opens with provided target url
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Target Url | Old-TargetUrl     | GrantorHome        | Phase Name                | Completed                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Target Url | New-TargetUrl | GrantorHome        | Phase Name                | Completed                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    When I navigate to "Completed" content inside "My Tasks" subheader on left panel
    Then I see page title "Account View"

  @774329 @236877
  Scenario: enabling of page size dropdown at bottom inside enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Page Size  | false             | ApiGeneratedId:0 |
      | Flex Grid             | Default Page Size | 10                | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Page Size  | true          | GrantorRelatedAwards2 |                           |                            |
      | Flex Grid:General     | Default Page Size | 5             | GrantorRelatedAwards2 |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:GrantorRelatedAwards2gridTableId---"

  @774333
  Scenario: validate change of default page size inside dropdown at bottom of enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Default Page Size | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Default Page Size | 5             | GrantorRelatedAwards2 |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "5" records inside enhanced grid id "---program:-:GrantorRelatedAwards2gridTableId---"

  @774621
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | GrantAwardName__c | GrantorRelatedAwards2 |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC               | GrantorRelatedAwards2 |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see column "GrantAwardName__c" value is in "Ascending" order

  @774632
  Scenario: Changing specific column value in descending order with order by and sort by field from config and validating it inside enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | GrantAwardName__c | GrantorRelatedAwards2 |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC              | GrantorRelatedAwards2 |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see column "GrantAwardName__c" value is in "Descending" order

  @774677 @236878
  Scenario: Validating subtotal of cell value of total obligated amount by entering formula at config and validating it inside enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid | GrantorRelatedAwards2 | Name                      | FTC-13092                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see cell subtotal as expected as given formula at "AmendmentNumber__c" field

  @774715
  Scenario: Set up configuration to hide edit action of parent enhanced grid using UserType IN Internal and validating it inside enhanced data table at sidebar -Home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue                                                                  | filterId         |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | GrantorRelatedAwards2 | Name                      | Edit                       |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I perform quick search for "AD-GTR-01" in "---program:-:GrantorRelatedAwards2gridTableId---" panel
    Then I see "Edit" icon for "AD-GTR-01" is not displayed inside flex table

  @776202 @284386
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced grid at sidebar-gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | SubAwardFlexTable  |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | SubAwardFlexTable  |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | GrantAwardName__c | SubAwardFlexTable  |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC               | SubAwardFlexTable  |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see column "GrantAwardName__c" value is in "Ascending" order

  @776232 @284378
  Scenario: Changing specific column value in descending order with order by and sort by field from config and validating it inside enhanced grid at sidebar-gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | SubAwardFlexTable  |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | SubAwardFlexTable  |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | GrantAwardName__c | SubAwardFlexTable  |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC              | SubAwardFlexTable  |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see column "GrantAwardName__c" value is in "Descending" order

  @777058
  Scenario: Hiding specific column value of enhanced grid from config and validating it inside enhanced grid at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator | SubAwardFlexTable  | Name                      | FTC-13749                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see "Project Period" not displayed in enhanced grid table column title

  @777219 @284389
  Scenario: Set up configuration to hide view action in config and validating it inside enhanced grid at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | SubAwardFlexTable  | Name                      | View                       |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "product flow start" in "---program:-:SubAwardFlexTableId---" panel
    Then I see "View" icon for "product flow start" is not displayed inside flex table

  @774708 @221538
  Scenario: Hiding specific column value from config and validating it inside enhanced data table at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator | GrantorRelatedAwards2 | Name                      | FTC-13092                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "Version Number" not displayed in enhanced grid table column title

  @203026 @203023 @suiteid-199158 @199158Sidebar
  Scenario Outline: Available for profiles- PM- UI- Verify ‘Phase’ should not visible on UI when logged in as PM
  |Available for profiles- PM- UI- Verify ‘Phase’ is visible on UI when logged in as PM|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue                                                                                                           | filterId         |
      | Side Bar Header       | Available For Profiles | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; Auditor; EBZ | ApiGeneratedId:0 |
      | Side Bar Header       | Available For Profiles | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; Auditor; EBZ | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName              | fieldNewValue                                                                                                               | coreComponentField |
      | Side Bar Header:General | Available For Profiles | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; Auditor; EBZ     | Closeout           |
      | Side Bar Header:General | Available For Profiles | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; Auditor; EBZ | Monitoring         |
    When I login to "As a Grantor" app as "<User>" user
    Then I do not see "Closeout" phase
    Then I see "Monitoring" phase
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @203434 @203435 @203440 @203441 @suiteid-199158 @199158Sidebar
  Scenario Outline: Sidebar- Admin- Config- Verify admin can configure Sidebar Activity menu
  |Sidebar- PM- UI- Verify Sidebar Activity menu is visible|
  |Sidebar- Admin- Config- Verify admin can configure Sidebar Task menu|
  |Sidebar- PM- UI- Verify Sidebar Task menu is visible|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                    | fieldOrignalValue                                                                                                           | filterId         |
      | Side Bar Header       | Available For Profiles       | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; Auditor; EBZ | ApiGeneratedId:0 |
      | Side Bar Header       | Enable Sidebar Activity Menu | True                                                                                                                        | ApiGeneratedId:1 |
      | Side Bar Header       | Sidebar Activity Menu Label  | Activities                                                                                                                  | ApiGeneratedId:2 |
      | Side Bar Header       | Enable Sidebar Task Menu     | True                                                                                                                        | ApiGeneratedId:3 |
      | Side Bar Header       | Sidebar Task Menu Label      | Tasks                                                                                                                       | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                   | fieldNewValue                                                                                                               | coreComponentField |
      | Side Bar Header:General | Available For Profiles      | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; Auditor; EBZ | Closeout           |
      | Side Bar Header:General | Enable Sidebar Task Menu    | true                                                                                                                        | Closeout           |
      | Side Bar Header:General | Sidebar Activity Menu Label | Activities                                                                                                                  | Closeout           |
      | Side Bar Header:General | Enable Sidebar Task Menu    | true                                                                                                                        | Closeout           |
      | Side Bar Header:General | Sidebar Task Menu Label     | Automation Tasks                                                                                                            | Closeout           |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Closeout" tab
    Then I softly see "Automation Tasks" at sidebar
    Then I softly see "Activities" at sidebar
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @203437 @203438 @suiteid-199158 @199158Sidebar
  Scenario Outline: Sidebar- Admin- Config- Verify admin can configure Sidebar BI &Analytics menu
  |Sidebar- PM- UI- Verify Sidebar BI &Analytics menu is visible|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                               | filterId         |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links,BI&Analytics | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Side Bar Header:General | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links,BI&Analytics | RecipientHome      | Phase Name                |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Home" tab
    Then I see changed label as "BI&Analytics" inside "Technical Support" in side bar sub menu
    Then I see option "Activities" on left panel
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @203436 @203439 @203445 @suiteid-199158 @199158Sidebar
  Scenario: Sidebar- SPI- UI- Verify Sidebar Activity menu is visible
  |Sidebar- SPI- UI- Verify Sidebar Collab menu is visible|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see option "Activities" on left panel
    Then I see changed label as "BI&Analytics" inside "Technical Support" in side bar sub menu
    Then I see changed label as "Collab" inside "Technical Support" in side bar sub menu

  @203443 @203444 @203717 @203718 @suiteid-199158 @199158Sidebar
  Scenario Outline: Sidebar- Admin- Config- Verify admin can configure Sidebar Collab menu
  |Sidebar- PM- UI- Verify Sidebar Collab menu is visible|
  |Sidebar search- Admin- Config- Verify admin can configure Sidebar search|
  |Sidebar search- PM- UI- Verify Sidebar search menu is visible|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                               | filterId         |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links,BI&Analytics | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Side Bar Header:General | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links,BI&Analytics | RecipientHome      | Phase Name                |                            |
    When I login to "As a Grantor" app as "<User>" user
    #203443 #203444
    Then I see changed label as "Collab" inside "Technical Support" in side bar sub menu
   #203718 #203717
    Then I see option "Search" on left panel
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @203720 @203721 @suiteid-199158 @199158Sidebar
  Scenario Outline: Recently Viewed - PM- UI- Verify ‘Recently viewed items’ is visible
  |Recently Viewed - Admin- Config- Verify admin can configure ‘Recently viewed items’ in sidebar|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                               | filterId         |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links,BI&Analytics | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Side Bar Header:General | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links,BI&Analytics | RecipientHome      | Phase Name                |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "Title" as "PrgTitle"
    #203720
    Then I see "{SavedValue:PrgTitle}" records are present in Recently Viewed link in Sidebar
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @203723 @203724 @203726 @203727 @suiteid-199158 @199158Sidebar
  Scenario Outline: Sidebar Links- Admin- Config- Verify admin can configure ‘Sidebar external links’ in sidebar
  |Sidebar Links - PM- UI- Verify ‘Sidebar external links’ is visible|
  |Technical support- Admin- Config- Verify admin can configure ‘Technical support’ in sidebar|
  |Technical support - PM- UI- Verify ‘Technical support’ is visible|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                    | fieldOrignalValue | filterId         |
      | Side Bar Header       | Sidebar External Links Label | Useful Links      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                    | fieldNewValue | coreComponentField |
      | Side Bar Header:General | Sidebar External Links Label | Useful Links  | GrantorHome        |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Home" tab
    Then I see changed label as "EIN Registration" inside "Useful Links" in side bar sub menu
    Then I see changed label as "Contact Us" inside "Technical Support" in side bar sub menu
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @203728 @203725 @203442 @suiteid-199158 @199158Sidebar
  Scenario: Technical support - SPI- UI- Verify ‘Technical support’ is visible
  |Sidebar Links - SPI- UI- Verify ‘Sidebar external links’ is visible|
  |Sidebar- SPI- UI- Verify Sidebar Task menu is visible|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see changed label as "Contact Us" inside "Technical Support" in side bar sub menu
    Then I see changed label as "EIN Registration" inside "Useful Links" in side bar sub menu
    Then I see changed label as "UEI Registration" inside "Useful Links" in side bar sub menu
    Then I softly see "Tasks" at sidebar

  @207269 @207270 @207278 @207279 @suiteid-199158 @199158Sidebar
  Scenario Outline: Mini-layout- Admin- Config- When we hover on any record under ‘Recently Viewed Items’ Mini layout (having detailed info) will be displayed on UI
  |Mini-layout- PM- UI- When we hover on any record under ‘Recently Viewed Items’ Mini layout (having detailed info) will be displayed on UI |
  |Sidebar- Admin- Config- Verify just by clicking on name under recently viewed items we could be able to open that item (Eg. Program)|
  |Sidebar- PM- UI- Verify just by clicking on name under recently viewed items we could be able to open that item (Eg. Program) |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                               | filterId         |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links,BI&Analytics | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Side Bar Header:General | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links,BI&Analytics | RecipientHome      | Phase Name                |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "Title" as "PrgTitle"
    Then I see "{SavedValue:PrgTitle}" records are present in Recently Viewed link in Sidebar
    And I hover mouse on link "{SavedValue:PrgTitle}" at table
    And I pause execution for "2" seconds
    Then I see "Title" as "{SavedValue:PrgTitle}" value inside mini page layout
    And I navigate to "Planning" tab
    When I navigate to "{SavedValue:PrgTitle}" content inside "Recently Viewed" subheader on left panel
    Then I see "Title" field contains "{SavedValue:PrgTitle}" value
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @207280 @203722 @suiteid-199158 @199158Sidebar
  Scenario: Sidebar- SPI- UI- Verify just by clicking on name under recently viewed items we could be able to open that item (Eg. Program)
  |Recently Viewed - SPI- UI- Verify ‘Recently viewed items’ is visible|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click on "View" icon in flex table for first draft record
    And I save the field labeled "Opportunity Title" as "OpportunityTitle"
    Then I see "{SavedValue:OpportunityTitle}" records are present in Recently Viewed link in Sidebar
    And I hover mouse on link "{SavedValue:OpportunityTitle}" at table
    And I pause execution for "2" seconds
    Then I see "Opportunity Title" as "{SavedValue:OpportunityTitle}" value inside mini page layout
    And I navigate to "Applications" tab
    When I navigate to "{SavedValue:OpportunityTitle}" content inside "Recently Viewed" subheader on left panel
    Then I see "Opportunity Title" field contains "{SavedValue:OpportunityTitle}" value

  @207271 @suiteid-199158 @199158Sidebar
  Scenario:Mini-layout- SPI- UI- When we hover on any record under ‘Recently Viewed Items’ Mini layout (having detailed info) will be displayed on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click on "View" icon in flex table for first draft record
    And I save the field labeled "Opportunity Title" as "OpportunityTitle"
    Then I see "{SavedValue:OpportunityTitle}" records are present in Recently Viewed link in Sidebar
    And I hover mouse on link "{SavedValue:OpportunityTitle}" at table
    And I pause execution for "2" seconds
    Then I see "Opportunity Title" as "{SavedValue:OpportunityTitle}" value inside mini page layout

  @207272 @207273 @suiteid-199158 @199158Sidebar
  Scenario Outline: Sidebar- Admin- Config- Verify when we click on (+) button sidebar menu should expand and submenu should display on UI
  |Sidebar- PM- UI- Verify when we click on (+) button sidebar menu should expand and submenu should display on UI|
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    Then I softly see minus icon is displayed at "Task" menu inside sidebar
    Then I see changed label as "Pending Tasks" inside "My Tasks" in side bar sub menu
    Then I see changed label as "Completed Tasks" inside "My Tasks" in side bar sub menu
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @207275 @207276 @suiteid-199158 @199158Sidebar
  Scenario Outline: Sidebar- Admin- Config- Verify when we click on (-) button sidebar menu should minimize and submenu should not display on UI
  |Sidebar- PM- UI- Verify when we click on (-) button sidebar menu should minimize and submenu should not display on UI|
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    Then I softly see minus icon is displayed at "Task" menu inside sidebar
    Then I softly see "Task" inside "My Tasks" menu at sidebar
    And I click on minus icon at "Tasks" menu inside sidebar
    Then I see changed label as "Pending Tasks" inside "My Tasks" in side bar sub menu
    Then I do not see "Task" inside "My Tasks" menu at sidebar
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @207274 @suiteid-199158 @199158Sidebar
  Scenario:Sidebar- SPI- UI- Verify when we click on (+) button sidebar menu should expand and submenu should display on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I softly see minus icon is displayed at "Tasks" menu inside sidebar
    Then I softly see "Tasks" inside "My Tasks" menu at sidebar

  @207277 @suiteid-199158 @199158Sidebar
  Scenario:Sidebar- SPI- UI- Verify when we click on (-) button sidebar menu should minimize and submenu should not display on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I softly see minus icon is displayed at "Tasks" menu inside sidebar
    Then I softly see "Tasks" inside "My Tasks" menu at sidebar
    And I click on minus icon at "Tasks" menu inside sidebar
    Then I do not see "Task" inside "My Tasks" menu at sidebar

  @207281 @207282 @suiteid-199158 @199158Sidebar
  Scenario Outline: Search- Admin- Config- If we select ‘All’ in dropdown and search for any program record should display on UI
  |Search- PM- UI- If we select ‘All’ in dropdown and search for any program record should display on UI|
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Home" tab
    When I click on global search and select "All"
    When I perform quick search inside global search "Automation Permanent Internal Program"
    Then I softly see value "Automation Permanent Internal Program" for title "Program Name" inside table "---program:-:GlobleSeachToggleTableId---"
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @207283 @suiteid-199158 @199158Sidebar
  Scenario: Search- SPI- UI- If we select ‘All’ in dropdown and search for any program record should display on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click on "View" icon in flex table for first draft record
    And I save the field labeled "Opportunity Title" as "OpportunityTitle"
    When I click on global search and select "All"
    When I perform quick search inside global search "{SavedValue:OpportunityTitle}"
    Then I softly do not see value "{SavedValue:OpportunityTitle}" for title "Application Title" inside table "toggleFlexTableApplication__c"


  @207284 @207285 @207287 @207288 @suiteid-199158 @199158Sidebar
  Scenario Outline: Search- Admin- Config- If we select ‘Application/ Negotiations’ in dropdown and search for any program record should not display on UI
  |Search- PM- UI- If we select ‘Application/ Negotiations’ in dropdown and search for any program record should not display on UI|
  |Search- Admin- Config- If we select any record type from dropdown and search for any other type record it should not display on UI|
  |Search- PM- UI- If we select any record type from dropdown and search for any other type record it should not display on UI|
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Home" tab
    And I pause execution for "3" seconds
    When I click on global search and select "Announcements"
    When I perform quick search inside global search "Automation Permanent Internal Program"
    Then I softly do not see value "Automation Permanent Internal Program" for title "Program Name" inside table "---program:-:GlobleSeachToggleTableId---"
    And I navigate to "Home" tab
    When I click on global search and select "Amendment Requests"
    When I perform quick search inside global search "Automation Permanent Focus Area"
    Then I softly do not see value "Automation Permanent Focus Area" for title "Title" inside table "toggleFlexTableServiceArea__c"

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @207286 @203719 @suiteid-199158 @199158Sidebar
  Scenario:Search- SPI- UI- If we select ‘Application/ Negotiations’ in dropdown and search for any program record should not display on UI
  |Sidebar search- SPI- UI- Verify Sidebar search menu is visible|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    Then I see option "Search" on left panel
    And I navigate to "Applications" tab
    And I click on "View" icon in flex table for first draft record
    And I save the field labeled "Opportunity Title" as "OpportunityTitle"
    When I click on global search and select "Applications / Negotiations"
    When I perform quick search inside global search "{SavedValue:OpportunityTitle}"
    Then I softly do not see value "{SavedValue:OpportunityTitle}" for title "Application Title" inside table "toggleFlexTableApplication__c"

  @207289 @suiteid-199158 @199158Sidebar
  Scenario: Search- SPI- UI- If we select any record type from dropdown and search for any other type record it should not display on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click on "View" icon in flex table for first draft record
    And I save the field labeled "Opportunity Title" as "OpportunityTitle"
    When I click on global search and select "Grants"
    When I perform quick search inside global search "{SavedValue:OpportunityTitle}"
    Then I softly do not see value "{SavedValue:OpportunityTitle}" for title "Application Title" inside table "toggleFlexTableApplication__c"

  @203736 @203735 @203733 @203732 @204167 @suiteid-199158 @199158Sidebar
  Scenario Outline:SObject phase- PM- UI- Verify label should not be displayed in global search dropdown if SObject not configured
  |SObject phase- Admin- Config- Verify label should not be displayed in global search dropdown if SObject not configured|
  |SObject phase- PM- UI- Verify label will be displayed in global search dropdown|
  |SObject phase- Admin- Config- Verify label will be displayed in global search dropdown|
  |Global Search- Admin- Config- Verify admin can configure global search|
 #204167
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Phase Config Sobject  | Add to Global Search? | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Phase Config Sobject  | Add to Global Search? | false         | GrantorHome        | Name                      | SPC-0967                   |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Home" tab
   #203733 #203732
    Then I see below label on global search dropdown
      | All                               |
      | Amendment Requests                |
      | Announcements                     |
      | Applications                      |
      | Closeouts                         |
      | External Registrations            |
      | Focus Areas                       |
      | Funding Decision Memos (FDM)s     |
      | Grants                            |
      | Key Performance Indicators (KPI)s |
      | Organizations                     |
      | Payment Requests                  |
      | Pre-Applications                  |
      | Programs                          |
      | Progress Reports                  |
      | Reviews                           |
      | Risk Assessments                  |
      | Site Visits / Desk Reviews        |
      | Strategic Plans                   |
      | Subawards                         |
      | Subrecipient Contacts             |
      | Terms and Condition               |
    #203735
    Then I do not see below label on global search dropdown
      | Funding Sources |

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @543577 @suiteid-199158 @199158Sidebar
  Scenario Outline: Global Search - Admin - Verify Global search config and UI should work as per the config Setup
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Home" tab
    And I pause execution for "3" seconds
    When I click on global search and select "Announcements"
    When I perform quick search inside global search "Automation Permanent Internal Program"
    Then I softly do not see value "Automation Permanent Internal Program" for title "Program Name" inside table "---program:-:GlobleSeachToggleTableId---"
    And I navigate to "Home" tab
    When I click on global search and select "Amendment Requests"
    When I perform quick search inside global search "Automation Permanent Focus Area"
    Then I softly do not see value "Automation Permanent Focus Area" for title "Title" inside table "toggleFlexTableServiceArea__c"
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @543579 @suiteid-199158 @199158Sidebar
  Scenario Outline: Global Search - all objects should display under dropdown
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Home" tab
    When I click on global search and select "All"
    Then I see below label on global search dropdown
      | All                               |
      | Amendment Requests                |
      | Announcements                     |
      | Applications                      |
      | Closeouts                         |
      | External Registrations            |
      | Focus Areas                       |
      | Funding Decision Memos (FDM)s     |
      | Grants                            |
      | Key Performance Indicators (KPI)s |
      | Organizations                     |
      | Payment Requests                  |
      | Pre-Applications                  |
      | Programs                          |
      | Progress Reports                  |
      | Reviews                           |
      | Risk Assessments                  |
      | Site Visits / Desk Reviews        |
      | Strategic Plans                   |
      | Subawards                         |
      | Subrecipient Contacts             |
      | Terms and Condition               |

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @543583 @suiteid-199158 @199158Sidebar
  Scenario Outline: Global Search - Functionality should work  and show searched data
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Home" tab
    When I click on global search and select "All"
    When I perform quick search inside global search "Automation Permanent Internal Program"
    Then I softly see value "Automation Permanent Internal Program" for title "Program Name" inside table "---program:-:GlobleSeachToggleTableId---"
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @203737 @203734 @suiteid-199158 @199158Sidebar
  Scenario: SObject phase- SPI- UI- Verify label should not be displayed in global search dropdown if SObject not configured
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Phase Config Sobject  | Add to Global Search? | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Phase Config Sobject  | Add to Global Search? | false         | RecipientHome      | Name                      | SPC-0827                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I do not see below label on global search dropdown
      | Closeouts |
    Then I see below label on global search dropdown
      | All                         |
      | Amendment Requests          |
      | Applications / Negotiations |
      | Grants                      |
      | Opportunities               |
      | Organization                |
      | Payment Requests            |
      | Pre-Applications            |
      | Progress Reports            |
      | Qualified Opportunities     |
      | Reviews                     |
      | Risk Assessments            |
      | Site Visits / Desk Reviews  |
      | Subawards                   |

  @204264 @204265 @204285 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Header- Admin- Config- Verify admin can configure accordion headers
  |Accordion Header- Admin- Config- Verify admin can select the type from the picklist Activity, Task, BI & Analytic|
  |Accordion Sub Header- PM- UI- Verify Name Display as a header on UI of sidebar accordion section|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                                 | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS                   |                                                                                   | GrantorPlanning    | ApiGeneratedId:0 |
      | Accordian Header      | Active                     | false                                                                             | GrantorPlanning    | ApiGeneratedId:1 |
      | Accordian Header      | Type                       | Task                                                                              | GrantorPlanning    | ApiGeneratedId:2 |
      | Accordian Header      | Type                       | Activity                                                                          | GrantorPlanning    | ApiGeneratedId:3 |
      | Accordian Header      | Icon CSS                   |                                                                                   | GrantorPlanning    | ApiGeneratedId:0 |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,BI&AnalyticsMenu,Reports & Dashboards | GrantorPlanning    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header        | Icon CSS                   | govgrants_config:accordionHeaderIconCSSValue                                      | GrantorPlanning    | Name                      | Reassign Planning Tasks    |
      | Accordian Header        | Active                     | true                                                                              | GrantorPlanning    | Name                      | Reassign Planning Tasks    |
      | Accordian Header        | Type                       | Task                                                                              | GrantorPlanning    | Name                      | Reassign Planning Tasks    |
      | Accordian Header        | Type                       | Activity                                                                          | GrantorPlanning    | Name                      | Setup                      |
      | Accordian Header        | Icon CSS                   | govgrants_config:accordionHeaderIconCSSValue                                      | GrantorPlanning    | Name                      | Setup                      |
      | Side Bar Header:General | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,BI&AnalyticsMenu,Reports & Dashboards | GrantorPlanning    | Phase Name                |                            |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    Then I see "fa fa-home" icon displayed at "Reassign Planning Tasks" accordion header
   #204264
    Then I see "Reassign Tasks" inside "Reassign Planning Tasks" is displayed
   #204265
    Then I see "Standard Reports" inside "Reports & Dashboards" is displayed
   #204285
    Then I see "Reports & Dashboards" inside "Reports & Dashboards" is displayed

  @204266 @204267 @204269 @204270 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Header- Admin- Config- Verify Name Display as a header on UI of sidebar accordion section
  |Accordion Header- PM- UI- Verify Name Display as a header on UI of sidebar accordion section|
  |Accordion Header- Admin- Config- Verify accordion section display on UI of sidebar |
  |Accordion Header- PM- UI- Verify accordion section display on UI of sidebar|
  |Accordion Sub Header- Admin- Config- Verify Name Display as a header on UI of sidebar accordion section|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | GrantorPlanning    | ApiGeneratedId:0 |
      | Accordian Header      | Active    | false             | GrantorPlanning    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | GrantorPlanning    | Name                      | Automation Accordion Header |
      | Accordian Header      | Active    | true                                         | GrantorPlanning    | Name                      | Automation Accordion Header |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    Then I see "Salesforce" inside "Automation Accordion Header" is displayed

  @204272 @204273 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Header- Admin- Config- Verify accordion section should not display on UI of sidebar
  |Accordion Header- PM- UI- Verify accordion section should not display on UI of sidebar|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | GrantorPlanning    | ApiGeneratedId:0 |
      | Accordian Header      | Active    | false             | GrantorPlanning    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | GrantorPlanning    | Name                      | Automation Accordion Header |
      | Accordian Header      | Active    | false                                        | GrantorPlanning    | Name                      | Automation Accordion Header |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    Then I do not see "Salesforce" inside "Automation Accordion Header" is displayed

  @204271 @204286 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Header- SPI- UI- Verify accordion section display on UI of sidebar
  |Accordion Sub Header- SPI- UI- Verify Name Display as a header on UI of sidebar accordion section|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField     | filterId         |
      | Accordian Header      | Icon CSS  |                   | RecipientAnnouncements | ApiGeneratedId:0 |
      | Accordian Header      | Active    | true              | RecipientAnnouncements | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | RecipientAnnouncements | Name                      | Reports & Dashboards       |
      | Accordian Header      | Active    | true                                         | RecipientAnnouncements | Name                      | Reports & Dashboards       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    Then I see "Standard Reports" inside "Reports & Dashboards" is displayed
    Then I see "Reports & Dashboards" inside "Reports & Dashboards" is displayed
    Then i see "Standard Reports" shown at number "1" inside "Reports & Dashboards"

  @204274 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Header- SPI- UI- Verify accordion section should not display on UI of sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField     | filterId         |
      | Accordian Header      | Icon CSS  |                   | RecipientAnnouncements | ApiGeneratedId:0 |
      | Accordian Header      | Active    | false             | RecipientAnnouncements | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | RecipientAnnouncements | Name                      | Reports & Dashboards       |
      | Accordian Header      | Active    | false                                        | RecipientAnnouncements | Name                      | Reports & Dashboards       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    Then I do not see "Standard Reports" inside "Reports & Dashboards" is displayed

  @204287 @204288 @204289 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Sub Header- Admin- Config- Verify the sub accordion section displays on given sequence numbered position
  |Accordion Sub Header- PM- UI- Verify the sub accordion section displays on given sequence numbered position|
  |Accordion Sub Header- Admin- Config- Verify accordion sub section display on UI of sidebar |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | GrantorPlanning    | ApiGeneratedId:0 |
      | Accordian Header      | Active    | false             | GrantorPlanning    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | GrantorPlanning    | Name                      | Automation Accordion Header |
      | Accordian Header      | Active    | true                                         | GrantorPlanning    | Name                      | Automation Accordion Header |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    Then i see "Standard Reports" shown at number "1" inside "Reports & Dashboards"
    Then i see "Standard Dashboards" shown at number "2" inside "Reports & Dashboards"

  @204290 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Sub Header- PM- UI- Verify accordion sub section display on UI of sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | GrantorPlanning    | ApiGeneratedId:0 |
      | Accordian Header      | Active    | false             | GrantorPlanning    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | GrantorPlanning    | Name                      | Automation Accordion Header |
      | Accordian Header      | Active    | true                                         | GrantorPlanning    | Name                      | Automation Accordion Header |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    Then i see "Standard Dashboards" shown at number "1" inside "Reports & Dashboards"

  @204275 @204276 @204292 @204293 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Header- Admin- Config- Verify the accordion section displays on given sequence numbered position
  |Accordion Header- PM- UI- Verify the accordion section displays on given sequence numbered position|
  |Accordion Sub Header- Admin- Config- Verify accordion sub section should not display on UI of sidebar |
  |Accordion Sub Header- PM- Config- Verify accordion sub section should not display on UI of sidebar |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | GrantorPlanning    | ApiGeneratedId:0 |
      | Accordian Header      | Active    | false             | GrantorPlanning    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | GrantorPlanning    | Name                      | Review Setup               |
      | Accordian Header      | Active    | false                                        | GrantorPlanning    | Name                      | Review Setup               |
    When I login to "As a Grantor" app as "PM" user
    Then i see "Tasks" shown at number "1" in sideBar
    Then i see "My Tasks" shown at number "2" in sideBar
    Then i see "Reassign" shown at number "3" in sideBar
    Then I see changed label as "Pending Tasks" inside "My Tasks" in side bar sub menu
    Then I see changed label as "Completed Tasks" inside "My Tasks" in side bar sub menu
    And I navigate to "Planning" tab
    Then I do not see "Manage Review Steps" inside "Review Setup" is displayed

  @204277 @204268 @204291 @204303 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Header- SPI- UI- Verify the accordion section displays on given sequence numbered position
  |Accordion Header- SPI- UI- Verify Name Display as a header on UI of sidebar accordion section|
  |Accordion Sub Header- SPI- UI- Verify accordion sub section display on UI of sidebar |
  |Accordion Sub Header- SPI- UI- Verify the sub accordion section displays on given sequence numbered position|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then i see "Tasks" shown at number "1" in sideBar
    Then i see "My Tasks" shown at number "2" in sideBar
    Then I see changed label as "Pending Tasks" inside "My Tasks" in side bar sub menu
    Then I see changed label as "Completed Tasks" inside "My Tasks" in side bar sub menu
    Then I see changed label as "Organization Profile" inside "Organization" in side bar sub menu

  @204294 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Sub Header- SPI- UI- Verify accordion sub section should not display on UI of sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | GrantorPlanning    | ApiGeneratedId:0 |
      | Accordian Header      | Active    | false             | GrantorPlanning    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | RecipientHome      | Name                      | Reviewer Tasks             |
      | Accordian Header      | Active    | false                                        | RecipientHome      | Name                      | Reviewer Tasks             |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I do not see "Pending Reviews" inside "Reviewer Tasks" is displayed
    Then I do not see "Completed Reviews" inside "Reviewer Tasks" is displayed

  @204367 @204368 @204369 @204370 @204372 @204373 @204375 @204376 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Content- Admin- Config- Verify admin can configure Accordion Content
  |Accordion Content- Admin- Config- Verify admin can select the ‘Record type of new record’ from the picklist|
  |Accordion Content- Admin- Config- Verify correct Link Name Display on Sidebar sub-accordion|
  |Accordion Content- PM- UI- Verify correct Link Name Display on Sidebar sub-accordion|
  |Accordion Content- Admin- Config- Verify the tab should be placed on correct position|
  |Accordion Content- PM- UI- Verify the tab should be placed on correct position|
  |Accordion Content - Admin- Config- Verify Accordion Content display on UI |
  |Accordion Content - PM- UI- Verify Accordion Content display on UI |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | GrantorPlanning    | ApiGeneratedId:0 |
      | Accordian Header      | Active    | false             | GrantorPlanning    | ApiGeneratedId:1 |
      | Accordian Header      | Active    | true              | GrantorPlanning    | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | GrantorPlanning    | Name                      | Automation Accordion Header |
      | Accordian Header      | Active    | true                                         | GrantorPlanning    | Name                      | Automation Accordion Header |
      | Accordian Header      | Active    | true                                         | GrantorPlanning    | Name                      | Reports & Dashboards        |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    Then I see "Salesforce" inside "Automation Accordion Header" is displayed
    When I navigate to "Salesforce" content inside "Automation Accordion Header" subheader on left panel
    And I pause execution for "5" seconds
    Then I see "https://www.salesforce.com/in/" in current url
    Then I see "salesforce" in current url

  @204371 @204374 @204377 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Content- SPI- UI- Verify correct Link Name Display on Sidebar sub-accordion
  |Accordion Content- SPI- UI- Verify the tab should be placed on correct position|
  |Accordion Content - SPI- UI- Verify Accordion Content display on UI |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | RecipientHome      | ApiGeneratedId:0 |
      | Accordian Header      | Active    | true              | RecipientHome      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | RecipientHome      | Name                      | Organization               |
      | Accordian Header      | Active    | true                                         | RecipientHome      | Name                      | Organization               |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see "Organization Profile" inside "Organization" is displayed
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    Then I see "sandbox.my.site.com" in current url

  @204380 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Content - SPI- Config- Verify Accordion Content should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | RecipientHome      | ApiGeneratedId:0 |
      | Accordian Header      | Active    | true              | RecipientHome      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | RecipientHome      | Name                      | Organization               |
      | Accordian Header      | Active    | false                                        | RecipientHome      | Name                      | Organization               |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I do not see "Organization Profile" inside "Organization" is displayed

  @204379 @204378 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Content - PM- UI- Verify Accordion Content should not display on UI
  |Accordion Content - Admin- Config- Verify Accordion Content should not display on UI |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | GrantorPlanning    | ApiGeneratedId:0 |
      | Accordian Header      | Active    | true              | GrantorPlanning    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | GrantorPlanning    | Name                      | Reports & Dashboards       |
      | Accordian Header      | Active    | false                                        | GrantorPlanning    | Name                      | Reports & Dashboards       |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    Then I do not see "Standard Reports" inside "Reports & Dashboards" is displayed

  @204396 @204397 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Content - Admin- Config- Verify Link will be available for selected profile
  |Accordion Content - PM- UI- Verify Link will be available for selected profile|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | GrantorPlanning    | ApiGeneratedId:0 |
      | Accordian Header      | Active    | true              | GrantorPlanning    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | GrantorPlanning    | Name                      | Reports & Dashboards       |
      | Accordian Header      | Active    | true                                         | GrantorPlanning    | Name                      | Reports & Dashboards       |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    Then I see "Standard Reports" inside "Reports & Dashboards" is displayed
    When I navigate to "Standard Reports" content inside "Reports & Dashboards" subheader on left panel
    Then I see "reportType=Standard" in current url

  @204398 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Content - SPI- UI- Verify Link will be available for selected profile
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | RecipientHome      | ApiGeneratedId:0 |
      | Accordian Header      | Active    | true              | RecipientHome      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | RecipientHome      | Name                      | Organization               |
      | Accordian Header      | Active    | true                                         | RecipientHome      | Name                      | Organization               |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see "Organization Profile" inside "Organization" is displayed
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    Then I see "my.site.com/OrganizationView" in current url

  @204402 @204403 @suiteid-199158 @199158Sidebar
  Scenario: Accordion Content - Admin- Config- Verify the link result will be open in new tab
  |Accordion Content - PM- UI- Verify the link result will be open in new tab|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | GrantorPlanning    | ApiGeneratedId:0 |
      | Accordian Header      | Active    | true              | GrantorPlanning    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | GrantorPlanning    | Name                      | Automation Accordion Header |
      | Accordian Header      | Active    | true                                         | GrantorPlanning    | Name                      | Automation Accordion Header |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "New Tab" content inside "Automation Accordion Header" subheader on left panel
    Then I see new tab is opened

  @204404 @suiteid-199158 @199158Sidebar
  Scenario:Accordion Content - SPI- UI- Verify the link result will be open in new tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField     | filterId         |
      | Accordian Header      | Icon CSS  |                   | RecipientAnnouncements | ApiGeneratedId:0 |
      | Accordian Header      | Active    | true              | RecipientAnnouncements | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | RecipientAnnouncements | Name                      | Reports & Dashboards       |
      | Accordian Header      | Active    | true                                         | RecipientAnnouncements | Name                      | Reports & Dashboards       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "New Tab" content inside "Reports & Dashboards" subheader on left panel
    Then I see new tab is opened