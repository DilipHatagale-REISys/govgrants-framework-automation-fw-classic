@phaseconfig-component @regression-test5 @phase
Business Need: Phase Config Component Scenarios
  Test all phase config component based scenarios
  As a configuration manager i make different configurational changes in phase component and will validate them.

  @34419    @validatePlanningPhaseAllowedProfile-gplanning
  Scenario Outline: Remove admin profile from config. and validate that Plannign phase doesn't show up in admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Phase Config          | Available for Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField |
      | Phase Config:General  | Available for Profiles | <New-Profile> | GrantorPlanning    |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I do not see "Planning" phase
    Examples:
      | New-Profile                                                                                  | Old-Profile                                                                                                        |
      | ADT; CON; CTR; DA; DEV; EBZ; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND | ADT; CON; CTR; DA; DEV; EBZ; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND |

  @34420    @validateTabDisplayName-gplanning
  Scenario: Setup tab name as Automation from config. and validate that tab name for planning is changed to Automation
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Phase Config          | Tab Display Label | Planning          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField |
      | Phase Config:General  | Tab Display Label | Automation    | GrantorPlanning    |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see "Automation" phase

  @34484    @validatePhaseSequence-gplanning
  Scenario: Setup tab sequence as "0" from config. and validate that tab name for planning is changed to first position
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Phase Config          | Sequence  | 2                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField |
      | Phase Config:General  | Sequence  | 0             | GrantorPlanning    |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see "Planning" phase at position "0"

  @34487    @validateChartsDisplayedAtBottom-gplanning
  Scenario: Setup body bottom page url for charts in config. and validate charts are displayed at bottom are displayed inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Phase Config          | Body Bottom Page URL |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                    | coreComponentField |
      | Phase Config:General  | Body Bottom Page URL | /apex/GNT__ChartsView?t=Planning | GrantorPlanning    |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I charts are displayed at "Bottom"

  @34587    @validateIsPlanningDisplayedInTaskSummary-gplanning
  Scenario: Uncheck is Phase for planning in config. and validate Planning is not displayed in Task Summary on home page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Phase Config          | Is Phase  | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField |
      | Phase Config:General  | Is Phase  | false         | GrantorPlanning    |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I donot see "Planning" in task summary by phase

  @34589    @validateSettingAsDefaultLandingTab-gplanning
  Scenario: Select planning as "Default landing tab" in config. and validate Planning is default landing page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Phase Config          | Default Landing Tab? | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField |
      | Phase Config:General  | Default Landing Tab? | false         | GrantorHome        |
      | Phase Config:General  | Default Landing Tab? | true          | GrantorPlanning    |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see "GrantorPlanning" in current url

  @34590    @validateIconForTab-gplanning
  Scenario: Set up tab icon css for planning tab in config. and validate book is displayed instead of planning tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Phase Config          | Tab Icon Css |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue               | coreComponentField |
      | Phase Config:General  | Tab Icon Css | govgrants_config:TabIconCss | GrantorPlanning    |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see book icon as "Planning" tab

  @34599    @validateTotalChartsInRow-gplanning
  Scenario: Setup number of charts as "1" from config. and validate only two charts are displayed inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Phase Config          | Total Charts Allowed | 3                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField |
      | Phase Config:General  | Total Charts Allowed | 1             | GrantorPlanning    |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" charts are displayed

  @44735    @highlightPhaseFieldInSobjectPhaseConfig-gplanning
  Scenario: validate highlighting of planning tab by making changes at sobject phase config and validate inside planning-gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Phase Config Sobject  | Highlight Phase? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Phase Config Sobject  | Highlight Phase? | true          | GrantorPlanning    | Name                      | SPC-0086                   |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementForAdminUserInClosedState}"
    And I save the value from row "1" for column name "Program ID" as "SaveID" from flex table "flexTableDivId"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementForAdminUserInClosedState}" inside table
    Then I see "Planning" tab is highlighted for particular program

  @44736    @globalsearchlabelfieldAtphaseConfigSobject-gplanning
  Scenario: Setup label change of program at sobject phase config and validating changed label for program inside global search at planning phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Phase Config Sobject  | Global Search Label | Program           | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Phase Config Sobject  | Global Search Label | Program Automation | GrantorPlanning    | Name                      | SPC-0086                   |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on global search and select "All"
    Then I see "Program Automation" in search dropdown

  @44737    @addToGlobalSearchfieldAtphaseConfigSobject-gplanning
  Scenario: Disabling program inside global search and validating it inside global search of planning tab-gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Phase Config Sobject  | Add to Global Search? | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Phase Config Sobject  | Add to Global Search? | false         | GrantorPlanning    | Name                      | SPC-0086                   |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on global search and select "All"
    Then I see "Program" is not displayed in global search All dropdown

  @44738    @disableProgramInRecentViewedLinkInSideBar-gplanning
  Scenario: Disabling the programs in Recent Viewed Link in Sidebar inside planning-gplanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Phase Config Sobject  | Add to Recently Viewed? | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Phase Config Sobject  | Add to Recently Viewed? | false         | GrantorPlanning    | Name                      | SPC-0086                   |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "PG" records are not present in Recently Viewed link in Sidebar

  @56846    @enablingProgramInRecentViewedLinkInSideBar-gplanning
  Scenario: Enabling the programs in Recent Viewed Link in Sidebar inside planning-gplanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Phase Config Sobject  | Add to Recently Viewed? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Phase Config Sobject  | Add to Recently Viewed? | true          | GrantorPlanning    | Name                      | SPC-0086                   |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "PG" records are present in Recently Viewed link in Sidebar

  @118446    @validateThatZeroIsDisplayedInLateTaskInsideTaskSummaryByDueDateChart    @wip @bugLogged
  Scenario: Check zero is displayed for late task inside Task Summary by due date chart on home page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Phase Config          | Is Phase  | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField |
      | Phase Config:General  | Is Phase  | true          | GrantorPlanning    |
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "0" at "Late" inside task summary by due date chart