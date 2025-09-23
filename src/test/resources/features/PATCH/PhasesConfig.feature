@PhasesConfig-PATCHcomponent @regression-PATCH @phase @vrush-module @skiponjenkins
Business Need: Phase Config Component Scenarios
  Test all phase config component based scenarios
  As a configuration manager i make different configurational changes in phase component and will validate them.

  ############### UI ###############
  @333604
  Scenario: Technical support - SPI- UI- Verify ‘Technical support’ is visible
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see option "Technical Support" on left panel

  @333605 @333576
  Scenario Outline: Technical support - PM- UI- Verify ‘Technical support’ is visible
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see option "Technical Support" on left panel
    Examples:
      | User |
      | PM   |
      #| ADMIN |

  @333608
  Scenario: Recently Viewed - SPI- UI- Verify ‘Recently viewed’ is visible
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see option "Recently Viewed" on left panel

  @333609 @333577
  Scenario Outline: Recently Viewed - PM- UI- Verify ‘Recent Items’ is visible
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see option "Recent Items" on left panel
    Examples:
      | User |
      | PM   |
     # | ADMIN |

  @333610
  Scenario: Sidebar search- SPI- UI- Verify Sidebar search menu is visible
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see option "Search" on left panel

  @333612 @333579 @208351
  Scenario Outline: Sidebar search- PM- UI- Verify Sidebar search menu is visible
  |Sidebar search- PM- UI- Verify Sidebar search menu is visible|
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see option "Search" on left panel
    Examples:
      | User |
      | PM   |

  @333615
  Scenario: Sidebar- SPI- UI- Verify Sidebar "Tasks" menu is visible
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see option "Tasks" on left panel

  @333616 @333581
  Scenario Outline: Sidebar- PM- UI- Verify Sidebar "Tasks" menu is visible
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see option "Tasks" on left panel
    Examples:
      | User |
      | PM   |
    #  | ADMIN |

  @333617
  Scenario: Sidebar- SPI- UI- Verify Sidebar BI &Analytics menu is visible
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                  | filterId         |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Side Bar Header:General | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links,BI&Analytics | RecipientHome      |                           |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see option "BI & Analytics" on left panel

  @333618 @333619
  Scenario Outline: Sidebar- PM- UI- Verify Sidebar BI &Analytics menu is visible
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                  | filterId         |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Side Bar Header:General | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links,BI&Analytics | GrantorHome        |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see option "BI & Analytics" on left panel
    Examples:
      | User |
      | PM   |
     # | ADMIN |

  @333620 @333582
  Scenario Outline: Sidebar- PM- UI- Verify Sidebar Activity menu is visible
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see option "Activities" on left panel
    Examples:
      | User |
      | PM   |
    #  | ADMIN |

  @333621
  Scenario: Sidebar- SPI- UI- Verify Sidebar Activity menu is visible
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see option "Activities" on left panel

  @333628 @333631 @333634
  Scenario: Default Landing Tab- SPI- UI- Verify if we should not land phase which is default
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Phase Config          | Tab Display Label    | Home              | ApiGeneratedId:0 |
      | Phase Config          | Default Landing Tab? | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField |
      | Phase Config:General  | Tab Display Label    | Home          | RecipientHome      |
      | Phase Config:General  | Default Landing Tab? | true          | RecipientHome      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    Then I see "Home" phase

  @333629 @333630 @333632 @333633 @333635 @333359
  Scenario Outline: Default Landing Tab- Admin- Config- Verify if we should not land phase which is default
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Phase Config          | Tab Display Label    | Home              | ApiGeneratedId:0 |
      | Phase Config          | Default Landing Tab? | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField |
      | Phase Config:General  | Tab Display Label    | Home          | GrantorHome        |
      | Phase Config:General  | Default Landing Tab? | true          | GrantorHome        |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    Then I see "Home" phase
    Examples:
      | User |
      | PM   |
     # | ADMIN |

  @333563
  Scenario: Phase name- External To verify 'Default Landing Tab?' field should be active on the phases config page  then display label phase should be open
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Phase Config          | Tab Display Label    | Home              | ApiGeneratedId:0 |
      | Phase Config          | Default Landing Tab? | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField |
      | Phase Config:General  | Tab Display Label    | Home          | RecipientHome      |
      | Phase Config:General  | Default Landing Tab? | true          | RecipientHome      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    Then I see "Home" phase

  @333636
  Scenario Outline: Available for profiles- SPI- UI- Verify ‘Phase’ should not visible on UI when logged in as SPI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Phase Config          | Available for Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField    |
      | Phase Config:General  | Available for Profiles | <New-Profile> | RecipientApplications |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    Then I do not see "Applications" phase
    Examples:
      | New-Profile                                                                                                   | Old-Profile                                                                                                        |
      | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SPA; System Administrator; TR1; TR2; TR3; VND; EBZ; IND | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ; IND |

  @333638
  Scenario Outline: Available for profiles- SPI- UI- Verify ‘Phase’ is visible on UI when logged in as SPI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Phase Config          | Available for Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField |
      | Phase Config:General  | Available for Profiles | <New-Profile> | RecipientHome      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    Then I see "Home" phase
    Examples:
      | New-Profile                                                                                                        | Old-Profile                                                                                                        |
      | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ; IND | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ; IND |

  @333637 @333591
  Scenario Outline:Available for profiles- PM,ADMIN- UI- Verify ‘Phase’ should not visible on UI when logged in as PM
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Phase Config          | Available for Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField |
      | Phase Config:General  | Available for Profiles | <New-Profile> | GrantorPlanning    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    Then I do not see "Planning" phase
    Examples:
      | User | New-Profile                                                                                                    | Old-Profile                                                                                                        |
      | PM   | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ |
   #   | ADMIN | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PO; SME; SPA; SPI; PM; TR1; TR2; TR3; VND; EBZ                   | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ |

  @333639 @333592
  Scenario Outline: Available for profiles- PM- UI- Verify ‘Phase’ is visible on UI when logged in as PM
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Phase Config          | Available for Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField |
      | Phase Config:General  | Available for Profiles | <New-Profile> | GrantorPlanning    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    Then I see "Planning" phase
    Examples:
      | User | New-Profile                                                                                                        | Old-Profile                                                                                                        |
      | PM   | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ |
      #| ADMIN | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ |

  @333640 @333593  @doubtedconfig
  Scenario Outline: Custom App Name - PM- UI - Verify ‘Phase’ should not be visible on UI when logged in as Grantor
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Phase Config          | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField |
      | Phase Config:General  | Active    | false         | GrantorPlanning    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I see "As a Grantor" inside CustomApp dropDown
    And I navigate to "Home" tab
    Then I do not see "Planning" phase
    Examples:
      | User |
      | PM   |
     # | ADMIN |

  @333646 @333647 @333649 @333650
  Scenario Outline: Phase- PM- UI- Verify ‘Phase’ is visible on UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    Then I see "Home" phase
    Then I see "Planning" phase
    Then I see "Announcements" phase
    Then I see "Applications" phase
    Then I see "Grants" phase
    Then I see "Monitoring" phase
    Then I see "Closeout" phase
    Examples:
      | User |
      | PM   |
    #  | ADMIN |

  @333648 @333651
  Scenario: Phase name- SPI- UI- Verify phase name displayed correctly on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    Then I see "Home" phase
    Then I see "Opportunities" phase
    Then I see "Applications" phase
    Then I see "Grants" phase
    Then I see "Monitoring" phase
    Then I see "Closeout" phase

  @333606
  Scenario: Sidebar Links - SPI- UI- Verify ‘Useful Links’ is visible.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see option "Useful Links" on left panel

  @333644 @333645
  Scenario Outline: Custom App Name - PM- UI- Verify ‘Phase’ is visible on UI when logged in as Grantor
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I see "As a Grantor" inside CustomApp dropDown
    Then I see "Home" phase
    Then I see "Planning" phase
    Then I see "Announcements" phase
    Then I see "Applications" phase
    Then I see "Grants" phase
    Then I see "Monitoring" phase
    Then I see "Closeout" phase
    Examples:
      | User |
      | PM   |
   #   | ADMIN |

  @333643 @333642
  Scenario Outline: Custom App Name - Admin- Config - Verify ‘Phase’ is visible on UI when logged in as Grantee
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantee"
    And I see "As a Grantee" inside CustomApp dropDown
    Then I see "Home" phase
    Then I see "Planning" phase
    Then I see "Opportunities" phase
    Then I see "Applications" phase
    Then I see "Grants" phase
    Then I see "Monitoring" phase
    Then I see "Closeout" phase
    Examples:
      | User |
      | PM   |
     # | ADMIN |

  @333642 @333594  @doubtedconfig
  Scenario Outline: Custom App Name - PM- UI - Verify ‘Phase’ is visible on UI when logged in as Grantee
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Phase Config          | Default Landing Tab? | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField |
      | Phase Config:General  | Default Landing Tab? | false         | GrantorPlanning    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantee"
    And I see "As a Grantee" inside CustomApp dropDown
    And I navigate to "Home" tab
    Then I do not see "Planning" phase
    Examples:
      | User |
      | PM   |
      #| ADMIN |

  @333607 @333578
  Scenario Outline: Sidebar Links - PM- UI- Verify "Useful Links" is visible
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see option "Useful Links" on left panel
    Examples:
      | User |
      | PM   |
    #  | ADMIN |

  @333625
  Scenario: Charts- PM- UI- Verify we can add charts up to value of ‘Total charts allowed per row’
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                    | fieldOrignalValue | filterId         |
      | Phase Config          | Total Charts Allowed Per Row | 2                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                    | fieldNewValue | coreComponentField |
      | Phase Config:General  | Total Charts Allowed Per Row | 1             | GrantorPlanning    |
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
#      | Phase Config          | Total Charts Allowed | 3                 | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName            | fieldNewValue | coreComponentField |
#      | Phase Config:General  | Total Charts Allowed | 1             | GrantorPlanning    |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see single row contains single chart with width "941" or "1246"
   # Then I see single row contains two charts with width "464" or "592"

  @333557 @333561
  Scenario Outline: Phase name- Admin- To verify 'Tab Icon CSS' should be added on the phases config page for respective 'Tab Display Label'
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue                            | filterId         |
      | Phase Config          | Tab Icon Css | govgrants_config:accordionHeaderIconCSSValue | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue               | coreComponentField |
      | Phase Config:General  | Tab Icon Css | govgrants_config:TabIconCss | GrantorHome        |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    Then I see book icon as "Home" tab
    Examples:
      | User |
      | PM   |
  #    | ADMIN |

  @333565
  Scenario: Phase name- External- To verify 'Tab Icon CSS' should be added on the phases config page for respective 'Tab Display Label'
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue                            | filterId         |
      | Phase Config          | Tab Icon Css | govgrants_config:accordionHeaderIconCSSValue | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue               | coreComponentField |
      | Phase Config:General  | Tab Icon Css | govgrants_config:TabIconCss | RecipientHome      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    Then I see book icon as "Home" tab

  @333556 @333560
  Scenario Outline:Phase name- Admin- To verify 'Default Landing Tab?' field should be inactive on the phases config page  then display label phase should not be open
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
   #   | Phase Config          | Tab Display Label    | Home              | ApiGeneratedId:0 |
      | Phase Config          | Default Landing Tab? | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField |
     # | Phase Config:General  | Tab Display Label    | Home          | GrantorHome        |
      | Phase Config:General  | Default Landing Tab? | false         | GrantorHome        |
      #| Phase Config:General  | Default Landing Tab? | true          | GrantorPlanning    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    #Then I see "Home" phase
    #Then I see "Planning" tab is highlighted for particular program
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    When I setup my app as "As a Grantor"
    Then I see "Planning" tab is highlighted for particular program
    Examples:
      | User |
      | PM   |
    #  | ADMIN |

  @34419    @validatePlanningPhaseAllowedProfile-gplanning
  Scenario Outline: Remove admin profile from config. and validate that Plannign phase doesn't show up in admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Phase Config          | Available for Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField |
      | Phase Config:General  | Available for Profiles | <New-Profile> | GrantorPlanning    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I do not see "Planning" phase
    Examples:
      | New-Profile                                                                                  | Old-Profile                                                                                                        |
      | ADT; CON; CTR; DA; DEV; EBZ; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND | ADT; CON; CTR; DA; DEV; EBZ; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND |

  @34420  @validateTabDisplayName-gplanning
  Scenario Outline: Setup tab name as Automation from config. and validate that tab name for planning is changed to Automation
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Phase Config          | Tab Display Label | Planning          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField |
      | Phase Config:General  | Tab Display Label | Automation    | GrantorPlanning    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    Then I see "Automation" phase
    Examples:
      | User |
    #  | ADMIN |
      | PM   |

  @333566 @333569
  Scenario Outline:Phase name- Admin-UI- To verify user enters numbers in 'Tab Display Label' fields added on the phase's config page, then it should display on UI.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Phase Config          | Tab Display Label | Planning          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField |
      | Phase Config:General  | Tab Display Label | 0123456789    | GrantorPlanning    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    Then I see "0123456789" phase
    Examples:
      | User |
    ##  | ADMIN |
      | PM   |


  @333568 @333567
  Scenario Outline: Phase name- Internal- UI- To verify user enter long text in 'Tab Display Label' fields added on the phase's config page, then it should display on UI.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Phase Config          | Tab Display Label | Planning          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue          | coreComponentField |
      | Phase Config:General  | Tab Display Label | AutomationTestingPhase | GrantorPlanning    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    Then I see "AutomationTestingPhase" phase

    Examples:
      | User |
    #  | ADMIN |
      | PM   |

  @333571
  Scenario: Phase name- External- UI- To verify user enter long text in 'Tab Display Label' fields added on the phase's config page, then it should display on UI.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Phase Config          | Tab Display Label | Opportunities     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue          | coreComponentField     |
      | Phase Config:General  | Tab Display Label | AutomationTestingPhase | RecipientAnnouncements |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    Then I see "AutomationTestingPhase" phase

  @333570
  Scenario: Phase name- External -UI- To verify user enters numbers in 'Tab Display Label' fields added on the phase's config page, then it should display on UI.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Phase Config          | Tab Display Label | Opportunities     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField     |
      | Phase Config:General  | Tab Display Label | 01234567891   | RecipientAnnouncements |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    Then I see "01234567891" phase

  @34484    @validatePhaseSequence-gplanning
  Scenario: Setup tab sequence as "0" from config. and validate that tab name for planning is changed to first position
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Phase Config          | Sequence  | 2                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField |
      | Phase Config:General  | Sequence  | 0             | GrantorPlanning    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see "Planning" phase at position "0"

  @34487  @333547  @validateChartsDisplayedAtBottom-gplanning
  Scenario Outline: Setup body bottom page url for charts in config. and validate charts are displayed at bottom are displayed inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Phase Config          | Body Bottom Page URL |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                    | coreComponentField |
      | Phase Config:General  | Body Bottom Page URL | /apex/GNT__ChartsView?t=Planning | GrantorPlanning    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I charts are displayed at "Bottom"

    Examples:
      | User |
    #  | ADMIN |
      | PM   |

  @333542p @333545
  Scenario Outline: Phase name- admin- To verify 'Body Top Page URL' should be added on the phases config page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue                | filterId         |
      | Phase Config          | Body Top Page URL | /apex/GNT__ChartsView?t=Planning | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue                    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Phase Config:General  | Body Top Page URL | /apex/GNT__ChartsView?t=Planning | GrantorPlanning    | Name                      | SPC-0746                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I charts are displayed at "Top"

    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @333548
  Scenario: Phase name- External- To verify 'Body Top Page URL' should be added on the phases config page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue                             | filterId         |
      | Phase Config          | Body Top Page URL | /apex/GNT__ChartsView?t=RecipientApplications | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue                                 | coreComponentField    |
      | Phase Config:General  | Body Top Page URL | /apex/GNT__ChartsView?t=RecipientApplications | RecipientApplications |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    Then I charts are displayed at "Top"

  @333550
  Scenario: Phase name-External- To verify 'Body Bottom Page URL' field should be added on the phases config page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue          | filterId         |
      | Phase Config          | Body Bottom Page URL | /apex/ExternalApplications | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                 | coreComponentField    |
      | Phase Config:General  | Body Bottom Page URL | /apex/GNT__ChartsView?t=RecipientApplications | RecipientApplications |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    Then I charts are displayed at "Bottom"

  @333549
  Scenario: Phase name- External-  To verify 'Body Flex Table' field should be added on phases config page  then  added flex table should displayed on phases
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Phase Config          | Body Flex Table | GrantsList        | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField |
      | Phase Config:General  | Body Flex Table |               | RecipientAwards    |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    Then I see "New" button inside "Grants - Active" flex table not displayed

  @333543 @333546
  Scenario Outline: Phase name- admin-  To verify 'Body Flex Table' field should be added on phases config page  then  added flex table should displayed on phases
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Phase Config          | Body Flex Table | Programs          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField |
      | Phase Config:General  | Body Flex Table |               | GrantorPlanning    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "New" button inside "Internal Programs - Active" flex table not displayed

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @34587    @validateIsPlanningDisplayedInTaskSummary-gplanning
  Scenario: Uncheck is Phase for planning in config. and validate Planning is not displayed in Task Summary on home page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Phase Config          | Is Phase  | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField |
      | Phase Config:General  | Is Phase  | false         | GrantorPlanning    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" charts are displayed

  @44735    @highlightPhaseFieldInSobjectPhaseConfig-gplanning @o
  Scenario: validate highlighting of planning tab by making changes at sobject phase config and validate inside planning-gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Phase Config Sobject  | Highlight Phase? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Phase Config Sobject  | Highlight Phase? | true          | GrantorPlanning    | Name                      | SPC-0746                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement testing"
    And I save the value from row "1" for column name "Program ID" as "SaveID" from flex table "flexTableDivId"
    When I click on "View" icon for "Announcement testing" inside table
    Then I see "Planning" tab is highlighted for particular program

  @44736    @globalsearchlabelfieldAtphaseConfigSobject-gplanning
  Scenario: Setup label change of program at sobject phase config and validating changed label for program inside global search at planning phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Phase Config Sobject  | Global Search Label | Programs          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Phase Config Sobject  | Global Search Label | Program Automation | GrantorPlanning    | Name                      | SPC-0746                   |
    When I login to "As a Grantor" app as "ADMIN" user
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
      | Phase Config Sobject  | Add to Global Search? | false         | GrantorPlanning    | Name                      | SPC-0827                   |
    When I login to "As a Grantor" app as "ADMIN" user
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
      | Phase Config Sobject  | Add to Recently Viewed? | false         | GrantorPlanning    | Name                      | SPC-0827                   |
    When I login to "As a Grantor" app as "ADMIN" user
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
      | Phase Config Sobject  | Add to Recently Viewed? | true          | GrantorPlanning    | Name                      | SPC-0827                   |
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see "0" at "Late" inside task summary by due date chart

    ################# Charts ###############
  @333535 @333537 @333538 @333539 @333540 @333541
  Scenario Outline:Phase name- Internal- To verify 'Total Charts Allowed Per Row' should be added on the phases config page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Phase Config          | Total Charts Allowed | 8                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField |
      | Phase Config:General  | Total Charts Allowed | 3             | GrantorPlanning    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "3" charts are displayed

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @333532 @333533 @333534
  Scenario: Phase name- External- To verify 'Total Charts Allowed Per Row' should be added on the phases config page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Phase Config          | Total Charts Allowed | 2                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField     |
      | Phase Config:General  | Total Charts Allowed | 1             | RecipientAnnouncements |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    Then I see "1" charts are displayed

  @208354 @suiteid-199158
  Scenario: Recently Viewed - PM- UI- Verify ‘Recently viewed items’ is visible
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "Title" as "PrgTitle"
    Then I see "{SavedValue:PrgTitle}" records are present in Recently Viewed link in Sidebar

  @208352 @suiteid-199158
  Scenario: Sidebar search- SPI- UI- Verify Sidebar search menu is visible
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    And I pause execution for "1" seconds
    Then I see option "Search" on left panel