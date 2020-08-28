@sidebar-component @regression @sidebar
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
    Then I see "Tasks" as disabled from sidebar

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
    Then I see "Activities" as disabled from sidebar

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
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideCellJSONFieldAtEnhancedDataTable | EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    Then I see "*****" shown inside enhanced grid table for specified record "Applicationg test88888"

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
    Then I see "10" records inside enhanced grid id "---program:-:enhancedGridTableId---"

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
    Then I see value "Test Automation sidebar" for multiple cells at column "AddressProgramContact__c"

  @78043    @validateViewActionAtFlexTableEnhancedAtSideBar-gHOME
  Scenario: validate view action at flex table enhanced at sidebar - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    When I perform quick search for "Applicationg test88888" in "---program:-:flexGridEnhancedDataTableId---" panel
    When I click on "View" icon for "Applicationg test88888" inside table
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
    When I perform quick search for "Applicationg test88888" in "---program:-:flexGridEnhancedDataTableId---" panel
    When I click on "Edit" icon for "Applicationg test88888" inside table
    When I enter values "Test Automation sidebar 1" into textarea for table id "---program:-:flexGridEnhancedDataTableId---"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedDataTableId---"
    When I perform quick search for "Applicationg test88888" in "---program:-:flexGridEnhancedDataTableId---" panel
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