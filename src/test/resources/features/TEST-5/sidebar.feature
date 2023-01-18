@sidebar-component @regression-test5 @sidebar
Business Need: Side bar Component Scenarios
  Test all sidebar component based scenarios
  As a configuration manager i make different configurational changes in side bar component and will validate them.

  @33877    @validateChangeinTaskMenuSequence-gHome
  Scenario: validate after changing sequence of task menu from second to third in side bar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                  | filterId         |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Side Bar Header:General | Sidebar Component Sequence | Search,ActivityMenu,TaskMenu,RecentlyViewed,TechnicalSupport,Links | GrantorHome        |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then i see "Tasks" shown at number "4" in sideBar

  @33876    @validateSidebarTaskMenuRemoval-gHome @smoke
  Scenario: validate disabling of task menu from side bar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                  | filterId         |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Side Bar Header:General | Sidebar Component Sequence | Search,ActivityMenu,RecentlyViewed,TechnicalSupport,Links | GrantorHome        |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I do not see "Tasks" at sidebar

  @33879    @validateSidebarActivityMenuRemoval-gHome @smoke
  Scenario: validate disabling of activity menu from side bar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                  | filterId         |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Side Bar Header:General | Sidebar Component Sequence | Search,TaskMenu,RecentlyViewed,TechnicalSupport,Links | GrantorHome        |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I do not see "Activities" at sidebar

  @33881    @validateLabelChangeOfAccordionContent-gHome @smoke
  Scenario: validate change of label in My tasks accordion content
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Name      | Completed         | GrantorHome        | Name                      | Automation                 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Name      | Automation    | GrantorHome        | Name                      | Completed                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I see changed label as "Automation" inside "Tasks" in side bar sub menu

  @33880    @validateChangeAccordianHeaderSeq-gHome @smoke
  Scenario: validate after changing accordian header sequence for activities
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Sequence  | 9                 | GrantorHome        | Name                      | Manage Forms               |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Sequence  | 1             | GrantorHome        | Name                      | Manage Forms               |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then i see "Manage Forms" shown at number "1" inside "Activities"

  @33883    @validateAccordionContentAllowedProfile-gHome @pankaj-blocked @wip
  Scenario Outline: validate accordion content Pending in My tasks is available for a specific added profile
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Accordian Content     | Available for Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Available for Profiles | <New-Profile> | GrantorHome        | Name                      | Reassign                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I see changed label as "Reassign" inside "Tasks" in side bar sub menu
    Examples:
      | New-Profile                                                                                                  | Old-Profile                                                                                      |
      | Automation; DT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PD; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND; EPOC | DT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PD; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND; EPOC |

  @33884    @validateLabelChangeOfAccordionHeader-gHome
  Scenario: Changing label of accordion Header
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Name      | My Tasks          | GrantorHome        | Name                      | Automation                 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Name      | Automation    | GrantorHome        | Name                      | My Tasks                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I see changed label as "Automation" inside "Tasks" in side accordion header menu

  @33885    @validateChangeAccordianContentSeq-gHome @smoke
  Scenario: validate after changing accordion content sequence for completed inside my tasks
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Sequence  | 1                 | GrantorHome        | Name                      | Completed                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Sequence  | 3             | GrantorHome        | Name                      | Completed                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I see "Completed" shown at number "2" inside "Tasks"

  @33886    @validateAccordionContentOpensInNewWindow-gHome @smoke
  Scenario Outline: validate accordion content opens in new window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Open in new window | false             | GrantorHome        | Name                      | Completed                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Open in new window | true          | GrantorHome        | Name                      | Completed                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    When I navigate to "Completed" content inside "Tasks" subheader on left panel
    Then I see "<Page title>" in new tab
    Examples:
      | Page title      |
      | HOME: Completed |

  @33887    @validateTargetUrlForAccordionContent-gHome
  Scenario Outline: validate accordion content opens with provided target url
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Target Url | <Old-TargetUrl>   | GrantorHome        | Name                      | Completed                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Content     | Target Url | <New-TargetUrl> | GrantorHome        | Name                      | Completed                  |
    When I login as "Automation" user
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
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Page Size  | true          | EnhancedDataTable  |                           |                            |
      | Flex Grid:General     | Default Page Size | 5             | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:EnhancedDataTableId---"

  @77433    @defaultPageSizeFieldAndValidateInsideEnhancedDataTableAtSidebar-gHome
  Scenario: validate change of default page size inside dropdown at bottom of enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Default Page Size | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Default Page Size | 5             | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    Then I see "5" records inside enhanced grid id "---program:-:EnhancedDataTableId---"

  @77462    @orderBySortByFieldAtEnhancedDataTableAtSidebar-gHome @smoke
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | GrantAbbreviation__c | EnhancedDataTable  |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC                  | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    Then I see column "GrantAbbreviation__c" value is in "Ascending" order

  @77463    @orderBySortByFieldDescendingAtEnhancedDataTableAtSidebar-gHome @smoke
  Scenario: Changing specific column value in descending order with order by and sort by field from config and validating it inside enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | GrantAbbreviation__c | EnhancedDataTable  |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC                 | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    Then I see column "GrantAbbreviation__c" value is in "Descending" order

  @77467    @enableFormulaFieldAtFlexTableAtEnhancedDataTableAtSidebar-gHome @smoke
  Scenario: Validating subtotal of cell value of total obligated amount by entering formula at config and validating it inside enhanced flex table at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid | EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    Then I see cell subtotal as expected as given formula at "NumberofProjectAreas__c" field

  @77468    @hideCellJsonFieldAtFlexTableForEnhancedDataTableAtSidebar-gHome @smoke
  Scenario: Hiding specific cell value of enhanced data table from config and validating it inside enhanced data table at sidebar -Home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideJsonForEnhancedDataTableForColumn| EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    Then I see "*****" shown inside enhanced grid table for specified record "Educational Pro"

  @77471    @hideExpressionJsonFieldAtFlexTableForEnhancedDataTableAtSidebar-gHome @smoke
  Scenario: Set up configuration to hide edit action of parent enhanced grid using UserType IN Internal and validating it inside enhanced data table at sidebar -Home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | EnhancedDataTable  | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    When I perform quick search for "Applicationg test88888" in "---program:-:flexGridEnhancedDataTableId---" panel
    Then I see "Edit" icon for "Applicationg test88888" is not displayed inside flex table

  @77614    @enablePageSizeFieldAndValidateInsideEnhancedGridAtAtSidebar-gHome @smoke
  Scenario: enabling of page size dropdown at bottom inside enhanced grid at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Page Size  | true              | ApiGeneratedId:0 |
      | Flex Grid             | Default Page Size | 5                 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Page Size  | true          | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General     | Default Page Size | 5             | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:enhancedGridTableId---"

  @77618    @defaultPageSizeFieldAtParentFlexTableForEnhancedGridAtSidebar-gHome
  Scenario: validate change of default page size inside dropdown at bottom enhanced flex grid at sidebar - Home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid:General     | Default Page Size | 5                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Default Page Size | 10            | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    Then I see "5" records inside enhanced grid id "---program:-:enhancedGridTableId---"

  @77620    @orderBySortByFieldAtParentDataTableEnhancedGridForAscendingOrderAtSidebar-gHome
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced grid at sidebar-gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | TmpActiveGrantsGrid |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | ProjectTitle__c | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC             | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    Then I see column "ProjectTitle__c" value is in "Ascending" order

  @77623    @orderBySortByDescFieldAtParentDataTableEnhancedGridForDescendingOrderAtSidebar-gHome @smoke
  Scenario: Changing specific column value in descending order with order by and sort by field from config and validating it inside enhanced grid at sidebar-gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | TmpActiveGrantsGrid |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | ProjectTitle__c | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC            | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    Then I see column "ProjectTitle__c" value is in "Descending" order

  @77701     @hideCellJsonFieldAtEnhancedGridAtSideBar-gHome @smoke
  Scenario: Hiding specific cell value of enhanced grid from config and validating it inside enhanced grid at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideCellJsonForEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1488                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I pause execution for "10" seconds
    Then I see "*****" shown inside enhanced grid table for specified record "Demo_Title"

  @77705     @hideColumnJsonFieldAtEnhancedGridAtSideBar-gHome @smoke
  Scenario: Hiding specific column value of enhanced grid from config and validating it inside enhanced grid at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator | TmpActiveGrantsGrid | Name                      | FTC-1488                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    Then I see "Project Period" not displayed in enhanced grid table column title

  @77721    @hideExpressionJSONAtEnhancedGridViewActionForInternalUserAtSideBar-gHome @smoke
  Scenario: Set up configuration to hide view action in config and validating it inside enhanced grid at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see "View" icon for "Demo_Title" is not displayed inside flex table

  @77470     @hideColumnJsonFieldAtEnhancedDataTableAtSideBar-gHome
  Scenario: Hiding specific column value from config and validating it inside enhanced data table at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator | EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    Then I see "Number of Project Areas" not displayed in enhanced grid table column title

  @77822    @validateViewActionAtParentFlexTableForEnhancedGridAtSideBar-gHOME
  Scenario: validate view action at enhanced grid at sidebar - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "View" icon for "Demo_Title" inside table
    Then I see "Grant View" shown as over view header

  @77823    @validateEditActionAtParentFlexTableForEnhancedGridAtSideBar-gHOME
  Scenario: validate edit action at enhanced grid at sidebar - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    When I perform quick search for "QA Team Automation Record" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "QA Team Automation Record" inside table
    When I enter values "Test Automation sidebar" into textarea for table id "---program:-:flexGridEnhancedID---"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "QA Team Automation Record" in "---program:-:flexGridEnhancedID---" panel
    Then I see value "Test Automation sidebar" for multiple cells at column "Program Contact Address"

  @78043    @validateViewActionAtFlexTableEnhancedAtSideBar-gHOME
  Scenario: validate view action at flex table enhanced at sidebar - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    When I perform quick search for "APP2- FOA for DHP12" in "---program:-:flexGridEnhancedDataTableId---" panel
    When I click on "View" icon for "APP2- FOA for DHP12" inside table
    Then I see "Grant View" shown as over view header

  @78068    @validateEditActionAtEnhancedDataTableAtSideBar-gHOME
  Scenario Outline: validate edit action at enhanced table at sidebar - home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    When I perform quick search for "APP2- FOA for DHP12" in "---program:-:flexGridEnhancedDataTableId---" panel
    When I click on "Edit" icon for "APP2- FOA for DHP12" inside table
    When I enter values "Test Automation sidebar 1" into textarea for table id "---program:-:flexGridEnhancedDataTableId---"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedDataTableId---"
    When I perform quick search for "APP2- FOA for DHP12" in "---program:-:flexGridEnhancedDataTableId---" panel
    Then I see value "Test Automation sidebar 1" for multiple cells at column "AddressProgramContact__c"

    Examples:
      | newFieldsApi                                                                                                                                                                     | defaultFieldsApi                                                                                                                                        |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,NumberofProjectAreas__c,Status__c,GrantAbbreviation__c,TotalAwardObligatedAmount__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,NumberofProjectAreas__c,Status__c,GrantAbbreviation__c,TotalAwardObligatedAmount__c |

  @77697    @enableOverallTotalFieldAtParentFlexTableForEnhancedGridAtSideBar-gPlanning
  Scenario Outline: validate enabling of overall total field after checking checkbox true of Enable Over All Total from config and validating it inside enhanced grid at sidebar - home phase
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue               | filterId         |
      | Flex Table List           | Enable Over All Total | false                           | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Filter Clause         | <defaultFilterClauseForFLV2539> | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Is Master View        | true                            | ApiGeneratedId:2 |
      | Flex Grid                 | Display Field Names   | <defaultFieldsApi>              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName             | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Enable Over All Total | true                        | TmpActiveGrantsGrid | Name                      | FTC-1497                   |
      | Flex Grid:Flex Table List | Filter Clause         | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Is Master View        | true                        | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Display Field Names   | <newFieldsApi>              | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    Then I see over all total for "NumberofAwards__c" field at enhanced grid

    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         | defaultFieldsApi                                                                                                                                                                                                                   | newFieldsApi                                     |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,Status__c,NumberofAwards__c |

  @77466    @validateOverallTotalAtEnhancedDataTableAtSideBar-gHOME
  Scenario Outline: validate overall total at enhanced table at sidebar - home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names   | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table List       | Enable Over All Total | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names   | <newFieldsApi> | EnhancedDataTable  |                           |                            |
      | Flex Table List       | Enable Over All Total | true           | EnhancedDataTable  | Name                      | FTC-1524                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    Then I see over all total for "TotalAwardObligatedAmount__c" at enhanced grid

    Examples:
      | newFieldsApi                                                | defaultFieldsApi                                                                                                                                        |
      | Name,ProjectTitle__c,Status__c,TotalAwardObligatedAmount__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,NumberofProjectAreas__c,Status__c,GrantAbbreviation__c,TotalAwardObligatedAmount__c |

  @115097    @validateColorOfGlobalSearchBoxAtSidebar-gHome
  Scenario: validate color of global search box at sidebar
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I see sidebar global search box displayed in "blue"

  @115099    @validateColorOfGlobalSearchBoxAtSidebarForExternalUser-gHome
  Scenario: validate color of global search box at sidebar for external user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    Then I see sidebar global search box displayed in "blue"

  @120977    @VerifyCrossIconIsDisplayedAtGlobalSearchQuickSearchBox
  Scenario: validate that cross icon is displayed at global search quick search box
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "Program"
    When I perform quick search inside global search "PG-343-0058"
    Then I see cross icon is displayed at search box at "sidebarAppId"

  @119850    @VerifyCompleteTextIsDisplayedOnMouseHoverAtSidebarMenu
  Scenario: validate that complete text is displayed at sidebar menu on mouse hover
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I pause execution for "3" seconds
    When I hover mouse on lookup link "Data table enhanced record"
    And I pause execution for "3" seconds
    Then I see "Data table enhanced record" shown at mouse hover inside "---program:-:sidebarWrapperId---" table

  @126111    @VerifyAutoSuggestionDropdownWithRecordIdIsDisplayedAtGlobalSearchQuickSearchBoxIfProgramIsSelected
  Scenario: validate that autosuggestion dropdown with expected record id is displayed at global search quick search if program is selected
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | false        | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | true         | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "Program"
    When I perform quick search inside global search "PG-343-008" without processing
    Then I softly see record "PG-343-0083" is displayed inside autosuggestion dropdown at global search
    Then I softly see record "PG-343-0080" is displayed inside autosuggestion dropdown at global search

  @126114    @VerifyAutoSuggestionDropdownWithRecordIdIsDisplayedAtGlobalSearchQuickSearchBoxIfAnnouncementIsSelected-gHome
  Scenario: validate that autosuggestion dropdown with expected record id is displayed at global search quick search if announcement is selected
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | false        | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | true         | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "Announcement"
    When I perform quick search inside global search "FOA-DOC" without processing
    Then I softly see record "FOA-DOC-001" is displayed inside autosuggestion dropdown at global search
    Then I softly see record "FOA-DOC-002" is displayed inside autosuggestion dropdown at global search

  @126117    @VerifyAutoSuggestionDropdownWithRecordIdIsDisplayedAtGlobalSearchQuickSearchBoxIfGrantIsSelected
  Scenario: validate that autosuggestion dropdown with expected record id is displayed at global search quick search if grant is selected-gGrant
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | false        | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                                                             | name                  |
      | true         | 0            | a0b1500000HwJXYAA3 | Setting to set whether type ahead is to be performed for Sidebar Search | EnableSearchTypeAhead |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on global search and select "Grants"
    When I perform quick search inside global search "GT-TMZDT" without processing
    Then I softly see record "GT-TMZDT-001" is displayed inside autosuggestion dropdown at global search
    Then I softly see record "GT-TMZDT-002" is displayed inside autosuggestion dropdown at global search

  @128291    @VerifyRecordReassignToUserFromReassignTaskSectionIsDisplayedToPendingTaskTableByLoggedInAsReassignedUser
  Scenario: Validate record Reassigned to user from reassign task section is displayed to that user at pending task table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active         | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active         | true          | Grantee State Program | Name                      | TAB-027                    |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "3" seconds
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
    And I navigate to "HOME" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Automation PM" into field "s2id_autogen1"
    And I select value "Automation-Reviewer GGPTEST5" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    When I perform quick search for "{SavedValue:savedValue}"
    When I check "{SavedValue:savedValue}" boxes in flex table with id "---program:-:taskReassigneTableId---"
    And I click on top right button "Reassign" in flex table with id "---program:-:taskReassigneTableId---"
    Then I softly do not see value "{SavedValue:savedValue}" for title "Id" inside table "---program:-:taskReassigneTableId---"
    When I re-login to "As a Grantor" app as "AUTOMATION-REVIEWER" user on "default" portal
    And I navigate to "HOME" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:savedValue}"
    Then I softly see value "{SavedValue:savedValue}" for title "Ref. ID" inside table "PendingTasks"

  @128292    @VerifyRecordReassignToUserFromReassignTaskSectionShoulBeDisplayedAndApprovedByReassignedUser
  Scenario: Validate record Reassigned to user from reassign task section is approved by reassigned user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active         | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active         | true          | Grantee State Program | Name                      | TAB-027                    |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "3" seconds
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
    And I navigate to "HOME" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Automation PM" into field "s2id_autogen1"
    And I select value "Automation-Reviewer GGPTEST5" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    When I perform quick search for "{SavedValue:savedValue}"
    When I check "{SavedValue:savedValue}" boxes in flex table with id "---program:-:taskReassigneTableId---"
    And I click on top right button "Reassign" in flex table with id "---program:-:taskReassigneTableId---"
    Then I softly do not see value "{SavedValue:savedValue}" for title "Id" inside table "---program:-:taskReassigneTableId---"
    When I re-login to "As a Grantor" app as "AUTOMATION-REVIEWER" user on "default" portal
    And I navigate to "HOME" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:savedValue}"
    When I click on "Start" icon for "{SavedValue:savedValue}" inside table
    And I "Approve" in the approval decision
    Then I see status in Progress-bar is "Approved" and is "green"

  @128293    @VerifyResetButtonWorkingAtReassignedTask
  Scenario: Validate reset button working at reassigned task
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Automation PM" into field "s2id_autogen1"
    And I select value "Automation-Reviewer GGPTEST5" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    And I click on "Reset" Button in Session Timeout dialogbox
    Then I do not see expected table with id "toggleFlexTableRelatedProgramGoalsandObjectives"

  @128294    @VerifyQuickSearchWorkingAtReassignedUser
  Scenario: Validate quick search working at reassigned user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active         | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active         | true          | Grantee State Program | Name                      | TAB-027                    |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "3" seconds
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
    And I navigate to "HOME" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Automation PM" into field "s2id_autogen1"
    And I select value "Automation-Reviewer GGPTEST5" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    When I perform quick search for "{SavedValue:savedValue}"
    Then I softly see value "{SavedValue:savedValue}" for title "Id" inside table "---program:-:taskReassigneTableId---"

  @128334    @VerifyRecordReassignToUserFromReassignTaskSectionShoulBeDisplayedAndApprovedByReassignedUser
  Scenario: Validate record Reassigned to user from reassign task section is approved by reassigned user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active         | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active         | true          | Grantee State Program | Name                      | TAB-027                    |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "Automation Internal Program for Approval and Snapshot scenarios 2" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "ID" as "savedValue"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "3" seconds
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

  #128334 create 2nd record
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    When I navigate to "Overview" sub tab
    And I enter value "Automation Internal Program for Approval and Snapshot scenarios 2" into field "ProgramName__c"
    And I click on "Save and Close Modal" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Overview" sub tab
    And I save the field labeled "ID" as "savedValue1"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "3" seconds
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

  #128334 validate reassiged task at pending task table
    And I navigate to "HOME" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Automation PM" into field "s2id_autogen1"
    And I select value "Automation-Reviewer GGPTEST5" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    When I perform quick search for "{SavedValue:savedValue}"
    When I check "{SavedValue:savedValue}" boxes in flex table with id "---program:-:taskReassigneTableId---"
    When I perform quick search for "{SavedValue:savedValue1}"
    When I check "{SavedValue:savedValue1}" boxes in flex table with id "---program:-:taskReassigneTableId---"
    And I click on top right button "Reassign" in flex table with id "---program:-:taskReassigneTableId---"
    Then I softly do not see value "{SavedValue:savedValue}" for title "Id" inside table "---program:-:taskReassigneTableId---"
    Then I softly do not see value "{SavedValue:savedValue1}" for title "Id" inside table "---program:-:taskReassigneTableId---"
    When I re-login to "As a Grantor" app as "AUTOMATION-REVIEWER" user on "default" portal
    And I navigate to "HOME" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:savedValue}"
    Then I softly see value "{SavedValue:savedValue}" for title "Ref. ID" inside table "PendingTasks"
    When I perform quick search for "{SavedValue:savedValue1}"
    Then I softly see value "{SavedValue:savedValue1}" for title "Ref. ID" inside table "PendingTasks"

  @130094    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtSidebar
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at sidebar
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    And I save the field labeled "ID" as "PEGMSID"
    And I pause execution for "5" seconds
    And I navigate to "HOME" tab
    When I hover mouse on lookup link "{SavedValue:PEGMSID}"
    And I pause execution for "3" seconds
    Then I softly see "title" as "{SavedValue:PEGMSID}" inside mini page layout
    And I refresh the page
    When I hover mouse on lookup link "{SavedValue:PEGMSID}"
    And I pause execution for "3" seconds
    Then I softly see "Label" as "ID" inside mini page layout
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
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    Then I see cell subtotal as expected as given formula at "TotalAwardObligatedAmount__c" field