@SideBar-PATCHcomponent @regression-PATCH @SideBar
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I do not see "Activities" at sidebar

  @33881    @validateLabelChangeOfAccordionContent-gHome @smokePATCH
  Scenario: validate change of label in My tasks accordion content
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Phase Name | Completed         | GrantorHome        | Phase Name                | Automation                 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Phase Name | Automation    | GrantorHome        | Phase Name                | Completed                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see changed label as "Automation" inside "Tasks" in side bar sub menu

  @33880    @validateChangeAccordianHeaderSeq-gHome @smokePATCH
  Scenario: validate after changing accordian header sequence for activities
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Sequence  | 9                 | GrantorHome        | Name                      | Manage Forms               |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Sequence  | 1             | GrantorHome        | Name                      | Manage Forms               |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then i see "Manage Forms" shown at number "1" inside "Activities"

  @33883    @validateAccordionContentAllowedProfile-gHome @pankaj-blocked @wip
  Scenario Outline: validate accordion content Pending in My tasks is available for a specific added profile
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Accordian Content     | Available for Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Available for Profiles | <New-Profile> | GrantorHome        | Phase Name                | Reassign                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see changed label as "Reassign" inside "Tasks" in side bar sub menu
    Examples:
      | New-Profile                                                                                                  | Old-Profile                                                                                      |
      | Automation; DT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PD; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND; EPOC | DT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PD; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND; EPOC |

  @33884    @validateLabelChangeOfAccordionHeader-gHome
  Scenario: Changing label of accordion Header
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordion Header      | Name      | My Tasks          | GrantorHome        | Phase Name                | Automation                 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordion Header      | Name      | Automation    | GrantorHome        | Phase Name                | My Tasks                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see changed label as "Automation" inside "Tasks" in side accordion header menu

  @33885    @validateChangeAccordianContentSeq-gHome @smokePATCH
  Scenario: validate after changing accordion content sequence for completed inside my tasks
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Sequence  | 1                 | GrantorHome        | Phase Name                | Completed                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Sequence  | 2             | GrantorHome        | Phase Name                | Completed                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see "Completed" shown at number "2" inside "Tasks"

  @33886    @validateAccordionContentOpensInNewWindow-gHome @smokePATCH
  Scenario Outline: validate accordion content opens in new window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Open in new window | false             | GrantorHome        | Phase Name                | Completed                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Open in new window | true          | GrantorHome        | Phase Name                | Completed                  |
    When I login to "As a Grantor" app as "ADMIN" user
    And I setup my app as "As a Grantor"
    And I navigate to "Completed" content inside "Tasks" subheader on left panel
    Then I see "<Page title>" in new tab
    Examples:
      | Page title      |
      | Home: Completed |

  @33887    @validateTargetUrlForAccordionContent-gHome @wip
  Scenario Outline: validate accordion content opens with provided target url
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Target Url | <Old-TargetUrl>   | GrantorHome        | Phase Name                | Completed                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Target Url | <New-TargetUrl> | GrantorHome        | Phase Name                | Completed                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    When I navigate to "Completed" content inside "My Tasks" subheader on left panel
    Then I see page title "Account View"
    Examples:
      | New-TargetUrl              | Old-TargetUrl                                                  |
      | /apex/PendingRegistrations | /apex/FlexTableNewView?ft1=CompletedTasks&ft2=CompletedTasksBy |

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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see cell subtotal as expected as given formula at "AmendmentNumber__c" field

  @77468    @hideCellJsonFieldAtFlexTableForEnhancedDataTableAtSidebar-gHome @smokePATCH
  Scenario: Hiding specific cell value of enhanced data table from config and validating it inside enhanced data table at sidebar -Home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideJsonForEnhancedDataTableForColumn | GrantorRelatedAwards2 | Name                      | FTC-13092                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "*****" shown inside enhanced grid table for specified record "Educational Pro"

  @77471    @hideExpressionJsonFieldAtFlexTableForEnhancedDataTableAtSidebar-gHome @smokePATCH
  Scenario: Set up configuration to hide edit action of parent enhanced grid using UserType IN Internal and validating it inside enhanced data table at sidebar -Home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | GrantorRelatedAwards2 | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I perform quick search for "AD-GTR-01" in "---program:-:GrantorRelatedAwards2gridTableId---" panel
    Then I see "Edit" icon for "AD-GTR-01" is not displayed inside flex table

  @77614    @enablePageSizeFieldAndValidateInsideEnhancedGridAtAtSidebar-gHome @smokePATCH
  Scenario: enabling of page size dropdown at bottom inside enhanced grid at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Page Size  | true              | ApiGeneratedId:0 |
      | Flex Grid             | Default Page Size | 5                 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Page Size  | true          | SubAwardFlexTable  |                           |                            |
      | Flex Grid:General     | Default Page Size | 5             | SubAwardFlexTable  |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:enhancedGridTableId---"

  @77618    @defaultPageSizeFieldAtParentFlexTableForEnhancedGridAtSidebar-gHome
  Scenario: validate change of default page size inside dropdown at bottom enhanced flex grid at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid:General     | Default Page Size | 5                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Default Page Size | 10            | SubAwardFlexTable  |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    #Then I see "10" records inside enhanced grid id "---program:-:enhancedGridTableId---"
    Then I see "10" with page size dropdown at "---program:-:enhancedGridTableId---"

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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see column "GrantAwardName__c" value is in "Descending" order

  @77701     @hideCellJsonFieldAtEnhancedGridAtSideBar-gHome @smokePATCH
  Scenario: Hiding specific cell value of enhanced grid from config and validating it inside enhanced grid at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideCellJsonForEnhancedGrid | SubAwardFlexTable  | Name                      | FTC-13749                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "product flow start" in "---program:-:flexGridEnhancedTableId---" panel
    When I pause execution for "10" seconds
    Then I see "*****" shown inside enhanced grid table for specified record "product flow start"

  @77705     @hideColumnJsonFieldAtEnhancedGridAtSideBar-gHome @smokePATCH
  Scenario: Hiding specific column value of enhanced grid from config and validating it inside enhanced grid at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator | SubAwardFlexTable  | Name                      | FTC-13749                  |
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "Version Number" not displayed in enhanced grid table column title

  @77822    @validateViewActionAtParentFlexTableForEnhancedGridAtSideBar-gHOME
  Scenario: validate view action at enhanced grid at sidebar - home phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "product flow start" in "---program:-:SubAwardFlexTableId---" panel
    When I click on "View" icon for "product flow start" inside table
    Then I see "Grant View" shown as over view header

  @77823    @validateEditActionAtParentFlexTableForEnhancedGridAtSideBar-gHOME
  Scenario: validate edit action at enhanced grid at sidebar - home phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "AD-GTR-01" in "---program:-:SubAwardFlexTableId---" panel
    When I click on "Edit" icon for "AD-GTR-01" inside table
    When I enter values "Test Automation sidebar" into textarea for table id "---program:-:SubAwardFlexTableId---"
    When I click on top right button "Save" in flex table with id "---program:-:SubAwardFlexTableId---"
    When I perform quick search for "AD-GTR-01" in "---program:-:SubAwardFlexTableId---" panel
    Then I see value "Test Automation sidebar" for multiple cells at column "Title"

  @78043    @validateViewActionAtFlexTableEnhancedAtSideBar-gHOME
  Scenario: validate view action at flex table enhanced at sidebar - home phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I perform quick search for "Automation Direct Grant" in "---program:-:GrantorRelatedAwards2gridTableId---" panel
    When I click on "View" icon for "Automation Direct Grant" inside table
    Then I see "Subaward" shown as over view header

  @78068    @validateEditActionAtEnhancedDataTableAtSideBar-gHOME
  Scenario: validate edit action at enhanced table at sidebar - home phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I perform quick search for "AD-GTR-01" in "---program:-:GrantorRelatedAwards2gridTableId---" panel
    When I click on "Edit" icon for "AD-GTR-01" inside table
    When I enter value "Test Automation sidebar" into field "GrantAwardName__c"
    When I click on top right button "Save" in flex table with id "---program:-:GrantorRelatedAwards2gridTableId---"
    When I perform quick search for "Test Automation sidebar" in "---program:-:GrantorRelatedAwards2gridTableId---" panel
    Then I see value "Test Automation sidebar" for multiple cells at column "GrantAwardName__c"

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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see over all total for "NumberofAwards__c" field at enhanced grid

    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                           | defaultFieldsApi                                                                                                                                                                                                         | newFieldsApi                                       |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and GrantAwardName__c like 'Road%' | Name,GrantAwardName__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,AmountAwarded__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,GrantAwardName__c,Status__c,NumberofAwards__c |

  @77466p    @validateOverallTotalAtEnhancedDataTableAtSideBar-gHOME
  Scenario Outline: validate overall total at enhanced table at sidebar - home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names   | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table List       | Enable Over All Total | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names   | <newFieldsApi> | GrantorRelatedAwards2 |                           |                            |
      | Flex Table List       | Enable Over All Total | true           | GrantorRelatedAwards2 | Name                      | FTC-13095                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see over all total for "AmountAwarded__c" at enhanced grid

    Examples:
      | newFieldsApi                                      | defaultFieldsApi                                                                                                                      |
      | Name,GrantAwardName__c,Status__c,AmountAwarded__c | Name,GrantAwardName__c,BudgetPeriodEndDate__c,ExternalOrganization__c,AmendmentNumber__c,Status__c,GrantAwardName__c,AmountAwarded__c |

  @115097    @validateColorOfGlobalSearchBoxAtSidebar-gHome
  Scenario: validate color of global search box at sidebar
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on global search and select "Programs"
    When I perform quick search inside global search "PG-343-0058"
    Then I see cross icon is displayed at search box at "sidebarAppId"

  @119850    @VerifyCompleteTextIsDisplayedOnMouseHoverAtSidebarMenu
  Scenario: validate that complete text is displayed at sidebar menu on mouse hover
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I pause execution for "3" seconds
    When I hover mouse on lookup link "Subawards"
    And I pause execution for "3" seconds
    Then I see "Subawards" shown at mouse hover inside "---program:-:sidebarWrapperId---" table

  @126111p    @VerifyAutoSuggestionDropdownWithRecordIdIsDisplayedAtGlobalSearchQuickSearchBoxIfProgramIsSelected
  Scenario: validate that autosuggestion dropdown with expected record id is displayed at global search quick search if program is selected
#    Given I have "lightening" configuration as below:
#      | booleanValue | integerValue | id                 | description                                                             | name                  |
#      | false        | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
#    And I update custom setting changes:
#      | booleanValue | integerValue | id                 | description                                                             | name                  |
#      | true         | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I perform quick search inside global search "PG-REI-0052" without processing
    When I click on global search and select "Programs"
    When I perform quick search inside global search "PG" without processing
    Then I softly see record "PG" is displayed inside autosuggestion dropdown at global search

  @126114    @VerifyAutoSuggestionDropdownWithRecordIdIsDisplayedAtGlobalSearchQuickSearchBoxIfAnnouncementIsSelected-gHome
  Scenario: validate that autosuggestion dropdown with expected record id is displayed at global search quick search if announcement is selected
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | false        | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | true         | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on global search and select "Announcement"
    When I perform quick search inside global search "FOA-DOC" without processing
    Then I softly see record "FOA-DOC-001" is displayed inside autosuggestion dropdown at global search
   # Then I softly see record "FOA-DOC-002" is displayed inside autosuggestion dropdown at global search

  @126117    @VerifyAutoSuggestionDropdownWithRecordIdIsDisplayedAtGlobalSearchQuickSearchBoxIfGrantIsSelected
  Scenario: validate that autosuggestion dropdown with expected record id is displayed at global search quick search if grant is selected-gGrant
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | false        | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | true         | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on global search and select "Grants"
    When I perform quick search inside global search "GT-TMZDT" without processing
    Then I softly see record "GT-TMZDT-001" is displayed inside autosuggestion dropdown at global search
    Then I softly see record "GT-TMZDT-002" is displayed inside autosuggestion dropdown at global search

  @128291    @VerifyRecordReassignToUserFromReassignTaskSectionIsDisplayedToPendingTaskTableByLoggedInAsReassignedUser
  Scenario: Validate record Reassigned to user from reassign task section is displayed to that user at pending task table
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
#      | Page Tabs Config      | Is Active         | true              | ApiGeneratedId:0 |
#      #| Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:1 |
#    Given I setup test configuration as below:
#      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Page Tabs Config:Page Layout Action | Is Active         | true          | Grantor State Program | Name                      | TAB-027                    |
#     # | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantor State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    And I navigate to "Home" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Automation PM" into field "s2id_autogen1"
    And I select value "Automation EXE" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I check "{SavedValue:PEGMSID}" boxes in flex table with id "---program:-:taskReassigneTableId---"
    And I click on top right button "Reassign" in flex table with id "---program:-:taskReassigneTableId---"
    Then I softly do not see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "---program:-:taskReassigneTableId---"
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    Then I softly see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "PendingTasks"

  @128292    @VerifyRecordReassignToUserFromReassignTaskSectionShoulBeDisplayedAndApprovedByReassignedUser
  Scenario: Validate record Reassigned to user from reassign task section is approved by reassigned user
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
#      | Page Tabs Config      | Is Active         | true              | ApiGeneratedId:0 |
#     # | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:1 |
#    Given I setup test configuration as below:
#      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Page Tabs Config:Page Layout Action | Is Active         | true          | Grantor State Program | Name                      | TAB-027                    |
#    #  | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantor State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    And I navigate to "Home" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Automation PM" into field "s2id_autogen1"
    And I select value "Automation FO" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I check "{SavedValue:PEGMSID}" boxes in flex table with id "---program:-:taskReassigneTableId---"
    And I click on top right button "Reassign" in flex table with id "---program:-:taskReassigneTableId---"
    Then I softly do not see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "---program:-:taskReassigneTableId---"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Home" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Start" icon for "{SavedValue:PEGMSID}" inside table
    And I "Approve" in the approval decision
    Then I see status in Progress-bar is "Approved" and is "green"

  @128293    @VerifyResetButtonWorkingAtReassignedTask
  Scenario: Validate reset button working at reassigned task
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Shambhavi Kulkarni" into field "s2id_autogen1"
    #And I select value "Automation EXE" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    And I click on "Reset" Button in Session Timeout dialogbox
    Then I do not see expected table with id "toggleFlexTableRelatedProgramGoalsandObjectives"

  @128294    @VerifyQuickSearchWorkingAtReassignedUser
  Scenario: Validate quick search working at reassigned user
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
#      | Page Tabs Config      | Is Active         | true              | ApiGeneratedId:0 |
#     # | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:1 |
#    Given I setup test configuration as below:
#      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Page Tabs Config:Page Layout Action | Is Active         | true          | Grantor State Program | Name                      | TAB-027                    |
#      #| Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantor State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    And I navigate to "Home" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Automation PM" into field "s2id_autogen1"
    And I select value "Automation EXE" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    When I perform quick search for "{SavedValue:PEGMSID}"
    Then I softly see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "---program:-:taskReassigneTableId---"

  @128334    @VerifyRecordReassignToUserFromReassignTaskSectionShoulBeDisplayedAndApprovedByReassignedUser
  Scenario: Validate record Reassigned to user from reassign task section is approved by reassigned user
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
#      | Page Tabs Config      | Is Active         | true              | ApiGeneratedId:0 |
#      #| Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:1 |
#    Given I setup test configuration as below:
#      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Page Tabs Config:Page Layout Action | Is Active         | true          | Grantor State Program | Name                      | TAB-027                    |
#     # | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantor State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "Automation Internal Program for Approval and Snapshot scenarios 2" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"

  #128334 create 2nd record
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID1"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details

  #128334 validate reassiged task at pending task table
    And I navigate to "Home" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Automation PM" into field "s2id_autogen1"
    And I select value "Automation EXE" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I check "{SavedValue:PEGMSID}" boxes in flex table with id "---program:-:taskReassigneTableId---"
    When I perform quick search for "{SavedValue:savedValue1}"
    When I check "{SavedValue:savedValue1}" boxes in flex table with id "---program:-:taskReassigneTableId---"
    And I click on top right button "Reassign" in flex table with id "---program:-:taskReassigneTableId---"
    Then I softly do not see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "---program:-:taskReassigneTableId---"
    Then I softly do not see value "{SavedValue:PEGMSID1}" for title "EGMS ID" inside table "---program:-:taskReassigneTableId---"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Home" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    Then I softly see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "PendingTasks"
    When I perform quick search for "{SavedValue:PEGMSID1}"
    Then I softly see value "{SavedValue:PEGMSID1}" for title "EGMS ID" inside table "PendingTasks"

  @130094    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtSidebar
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at sidebar
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Static Internal Program for Testing"
    When I click on "View" icon for "Static Internal Program for Testing" inside table
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    When I hover mouse on lookup link "{SavedValue:PEGMSID}"
    And I pause execution for "3" seconds
    Then I softly see "title" as "{SavedValue:PEGMSID}" inside mini page layout
    And I refresh the page
    When I hover mouse on lookup link "{SavedValue:PEGMSID}"
    And I pause execution for "3" seconds
    Then I softly see "Label" as "EGMS ID" inside mini page layout
    And I refresh the page
    When I hover mouse on lookup link "{SavedValue:PEGMSID}"
    And I pause execution for "3" seconds
    Then I softly see "Value" as "{SavedValue:PEGMSID}" inside mini page layout

  @77698    @enableFormulaFieldAtParentFlexTableForEnhancedGridAtSideBar-gHOME @sidebar
  Scenario: validate subtotal of cell value of total obligated amount by entering formula at config  and validating it inside enhanced grid at sidebar - home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid | SubAwardFlexTable  | Name                      | FTC-1491                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see cell subtotal as expected as given formula at "AmountAwarded__c" field

  @128334 @221536 @255936
  Scenario: Validate record Reassigned to user from reassign task section is approved by reassigned user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation-EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation-PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"

  @115097
  Scenario: validate color of global search box at sidebar
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on global search and select "Programs"
    When I perform quick search inside global search "PG-343-0058"
    Then I see cross icon is displayed at search box at "sidebarAppId"

  @119850 @221523
  Scenario: validate that complete text is displayed at sidebar menu on mouse hover
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I pause execution for "3" seconds
    When I hover mouse on lookup link "Subawards"
    And I pause execution for "3" seconds
    Then I see "Subawards" shown at mouse hover inside "---program:-:sidebarWrapperId---" table

  @126111 @255441
  Scenario: validate that autosuggestion dropdown with expected record id is displayed at global search quick search if program is selected
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I perform quick search inside global search "PG-REI-2049" without processing
    When I click on global search and select "Programs"
    Then I softly see record "PG-REI-2049" is displayed inside autosuggestion dropdown at global search

  @126114 @255863
  Scenario: validate that autosuggestion dropdown with expected record id is displayed at global search quick search if announcement is selected
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | false        | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | true         | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on global search and select "Announcement"
    When I perform quick search inside global search "FOA-DOC" without processing
    Then I softly see record "FOA-DOC-001" is displayed inside autosuggestion dropdown at global search

  @126117 @221533 @255008
  Scenario: validate that autosuggestion dropdown with expected record id is displayed at global search quick search if grant is selected-gGrant
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | false        | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | true         | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on global search and select "Grants"
    When I perform quick search inside global search "GT-TMZDT" without processing
    Then I softly see record "GT-TMZDT-001" is displayed inside autosuggestion dropdown at global search
    Then I softly see record "GT-TMZDT-002" is displayed inside autosuggestion dropdown at global search

  @338811 @236874
  Scenario: validate change of label in My tasks accordion content.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Phase Name | Completed         | GrantorHome        | Phase Name                | Automation                 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Phase Name | Automation    | GrantorHome        | Phase Name                | Completed                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see changed label as "Automation" inside "Tasks" in side bar sub menu

  @338802
  Scenario: validate after changing accordian header sequence for activities
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Sequence  | 9                 | GrantorHome        | Name                      | Manage Forms               |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Sequence  | 1             | GrantorHome        | Name                      | Manage Forms               |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then i see "Manage Forms" shown at number "1" inside "Activities"

  @338836 @255887
  Scenario: validate accordion content Pending in My tasks is available for a specific added profile
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Accordian Content     | Available for Profiles | PM                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Available for Profiles | PM            | GrantorHome        | Phase Name                | Reassign                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see changed label as "Reassign" inside "Tasks" in side bar sub menu

  @338845 @236875
  Scenario: Changing label of accordion Header
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Name      | My Tasks          | GrantorHome        | Phase Name                | Automation                 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Name      | Automation    | GrantorHome        | Phase Name                | My Tasks                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see changed label as "Automation" inside "Tasks" in side accordion header menu

  @338854
  Scenario: validate after changing accordion content sequence for completed inside my tasks
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Sequence  | 1                 | GrantorHome        | Phase Name                | Completed                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Sequence  | 2             | GrantorHome        | Phase Name                | Completed                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see "Completed" shown at number "2" inside "Tasks"

  @338867 @236876
  Scenario: validate accordion content opens in new window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Open in new window | false             | GrantorHome        | Phase Name                | Completed                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Open in new window | true          | GrantorHome        | Phase Name                | Completed                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    When I navigate to "Completed" content inside "Tasks" subheader on left panel
    Then I see "Home: Completed" in new tab

  @338878 @255889
  Scenario: validate accordion content opens with provided target url
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Target Url | Old-TargetUrl     | GrantorHome        | Phase Name                | Completed                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Target Url | New-TargetUrl | GrantorHome        | Phase Name                | Completed                  |
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see column "GrantAwardName__c" value is in "Descending" order

  @780687 @221566
  Scenario: validate edit action at enhanced table at sidebar - home phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I perform quick search for "AD-GTR-01" in "---program:-:GrantorRelatedAwards2gridTableId---" panel
    When I click on "Edit" icon for "AD-GTR-01" inside table
    When I enter value "Test Automation sidebar" into field "GrantAwardName__c"
    When I click on top right button "Save" in flex table with id "---program:-:GrantorRelatedAwards2gridTableId---"
    When I perform quick search for "Test Automation sidebar" in "---program:-:GrantorRelatedAwards2gridTableId---" panel
    Then I see value "Test Automation sidebar" for multiple cells at column "GrantAwardName__c"

  @128291p @222489 @221524
  Scenario: Validate record Reassigned to user from reassign task section is displayed to that user at pending task table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
#    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
#      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
#      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
#    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    And I navigate to "Home" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Automation PM" into field "s2id_autogen1"
    And I select value "Automation EXE" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I check "{SavedValue:PEGMSID}" boxes in flex table with id "---program:-:taskReassigneTableId---"
    And I click on top right button "Reassign" in flex table with id "---program:-:taskReassigneTableId---"
    Then I softly do not see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "---program:-:taskReassigneTableId---"
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    Then I softly see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "PendingTasks"

  @774677 @236878
  Scenario: Validating subtotal of cell value of total obligated amount by entering formula at config and validating it inside enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid | GrantorRelatedAwards2 | Name                      | FTC-13092                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see cell subtotal as expected as given formula at "AmendmentNumber__c" field

  @774686
  Scenario: Hiding specific cell value of enhanced data table from config and validating it inside enhanced data table at sidebar -Home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideJsonForEnhancedDataTableForColumn | GrantorRelatedAwards2 | Name                      | FTC-13092                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "*****" shown inside enhanced grid table for specified record "Educational Pro"

  @774715
  Scenario: Set up configuration to hide edit action of parent enhanced grid using UserType IN Internal and validating it inside enhanced data table at sidebar -Home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue                                                                  | filterId         |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | GrantorRelatedAwards2 | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I perform quick search for "AD-GTR-01" in "---program:-:GrantorRelatedAwards2gridTableId---" panel
    Then I see "Edit" icon for "AD-GTR-01" is not displayed inside flex table

  @776143
  Scenario: enabling of page size dropdown at bottom inside enhanced grid at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Page Size  | true              | ApiGeneratedId:0 |
      | Flex Grid             | Default Page Size | 5                 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Page Size  | true          | SubAwardFlexTable  |                           |                            |
      | Flex Grid:General     | Default Page Size | 5             | SubAwardFlexTable  |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:enhancedGridTableId---"

  @776182
  Scenario: validate change of default page size inside dropdown at bottom enhanced flex grid at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid:General     | Default Page Size | 5                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Default Page Size | 10            | SubAwardFlexTable  |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see "10" with page size dropdown at "---program:-:enhancedGridTableId---"

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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see column "GrantAwardName__c" value is in "Descending" order

  @776976 @255548
  Scenario: validate enabling of overall total field after checking checkbox true of Enable Over All Total from config and validating it inside enhanced grid at sidebar - home phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see over all total for "NumberofAwards__c" field at enhanced grid

  @774665p @255290
  Scenario: validate overall total at enhanced table at sidebar - home phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see over all total for "AmountAwarded__c" at enhanced grid

  @777011 @236873
  Scenario: Hiding specific cell value of enhanced grid from config and validating it inside enhanced grid at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideCellJsonForEnhancedGrid | SubAwardFlexTable  | Name                      | FTC-13749                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "product flow start" in "---program:-:flexGridEnhancedTableId---" panel
    When I pause execution for "10" seconds
    Then I see "*****" shown inside enhanced grid table for specified record "product flow start"

  @777058
  Scenario: Hiding specific column value of enhanced grid from config and validating it inside enhanced grid at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator | SubAwardFlexTable  | Name                      | FTC-13749                  |
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "Version Number" not displayed in enhanced grid table column title

  @778224 @221530
  Scenario: validate view action at enhanced grid at sidebar - home phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "product flow start" in "---program:-:SubAwardFlexTableId---" panel
    When I click on "View" icon for "product flow start" inside table
    Then I see "Grant View" shown as over view header

  @778233
  Scenario: validate edit action at enhanced grid at sidebar - home phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "AD-GTR-01" in "---program:-:SubAwardFlexTableId---" panel
    When I click on "Edit" icon for "AD-GTR-01" inside table
    When I enter values "Test Automation sidebar" into textarea for table id "---program:-:SubAwardFlexTableId---"
    When I click on top right button "Save" in flex table with id "---program:-:SubAwardFlexTableId---"
    When I perform quick search for "AD-GTR-01" in "---program:-:SubAwardFlexTableId---" panel
    Then I see value "Test Automation sidebar" for multiple cells at column "Title"

  @780436 @255405
  Scenario: validate view action at flex table enhanced at sidebar - home phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I perform quick search for "Automation Direct Grant" in "---program:-:GrantorRelatedAwards2gridTableId---" panel
    When I click on "View" icon for "Automation Direct Grant" inside table
    Then I see "Subaward" shown as over view header

  @128292 @221525 @255556
  Scenario: Validate record Reassigned to user from reassign task section is approved by reassigned user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "4" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    And I navigate to "Home" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Automation PM" into field "s2id_autogen1"
    And I select value "Automation FO" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I check "{SavedValue:PEGMSID}" boxes in flex table with id "---program:-:taskReassigneTableId---"
    And I click on top right button "Reassign" in flex table with id "---program:-:taskReassigneTableId---"
    Then I softly do not see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "---program:-:taskReassigneTableId---"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Home" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Start" icon for "{SavedValue:PEGMSID}" inside table
    And I "Approve" in the approval decision
    Then I see status in Progress-bar is "Approved" and is "green"

  @128293 @255547
  Scenario: Validate reset button working at reassigned task
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Shambhavi Kulkarni" into field "s2id_autogen1"
    And I pause execution for "3" seconds
    And I click on "Reset" Button in Session Timeout dialogbox
    Then I do not see expected table with id "toggleFlexTableRelatedProgramGoalsandObjectives"

  @128294 @221526 @255562
  Scenario: Validate quick search working at reassigned user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    And I navigate to "Home" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Automation PM" into field "s2id_autogen1"
    And I select value "Automation EXE" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    When I perform quick search for "{SavedValue:PEGMSID}"
    Then I softly see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "---program:-:taskReassigneTableId---"


  @203026 @203023 @suiteid-199158
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

  @203434 @203435 @203440 @203441 @suiteid-199158
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

  @203437 @203438 @suiteid-199158
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

  @203436 @203439 @203445 @suiteid-199158
  Scenario: Sidebar- SPI- UI- Verify Sidebar Activity menu is visible
  |Sidebar- SPI- UI- Verify Sidebar Collab menu is visible|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see option "Activities" on left panel
    Then I see changed label as "BI&Analytics" inside "Technical Support" in side bar sub menu
    Then I see changed label as "Collab" inside "Technical Support" in side bar sub menu

  @203443 @203444 @203717 @203718 @suiteid-199158
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

  @203720 @203721 @suiteid-199158
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

  @203723 @203724 @203726 @203727 @suiteid-199158
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

  @203728 @203725 @203442 @suiteid-199158
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


  @207269 @207270 @207278 @207279 @suiteid-199158
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

  @207280 @203722 @suiteid-199158
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

  @207271 @suiteid-199158
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

  @207272 @207273 @suiteid-199158
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

  @207275 @207276 @suiteid-199158
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

  @207274 @suiteid-199158
  Scenario:Sidebar- SPI- UI- Verify when we click on (+) button sidebar menu should expand and submenu should display on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I softly see minus icon is displayed at "Tasks" menu inside sidebar
    Then I softly see "Tasks" inside "My Tasks" menu at sidebar

  @207277 @suiteid-199158
  Scenario:Sidebar- SPI- UI- Verify when we click on (-) button sidebar menu should minimize and submenu should not display on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I softly see minus icon is displayed at "Tasks" menu inside sidebar
    Then I softly see "Tasks" inside "My Tasks" menu at sidebar
    And I click on minus icon at "Tasks" menu inside sidebar
    Then I do not see "Task" inside "My Tasks" menu at sidebar

  @207281 @207282 @suiteid-199158
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

  @207283 @suiteid-199158
  Scenario: Search- SPI- UI- If we select ‘All’ in dropdown and search for any program record should display on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click on "View" icon in flex table for first draft record
    And I save the field labeled "Opportunity Title" as "OpportunityTitle"
    When I click on global search and select "All"
    When I perform quick search inside global search "{SavedValue:OpportunityTitle}"
    Then I softly do not see value "{SavedValue:OpportunityTitle}" for title "Application Title" inside table "toggleFlexTableApplication__c"


  @207284 @207285 @207287 @207288 @suiteid-199158
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

  @207286 @203719 @suiteid-199158
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

  @207289 @suiteid-199158
  Scenario: Search- SPI- UI- If we select any record type from dropdown and search for any other type record it should not display on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click on "View" icon in flex table for first draft record
    And I save the field labeled "Opportunity Title" as "OpportunityTitle"
    When I click on global search and select "Grants"
    When I perform quick search inside global search "{SavedValue:OpportunityTitle}"
    Then I softly do not see value "{SavedValue:OpportunityTitle}" for title "Application Title" inside table "toggleFlexTableApplication__c"
