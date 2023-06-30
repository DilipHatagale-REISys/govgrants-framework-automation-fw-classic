@phasesConfig-component @regression-QA @phase
Business Need: Phase Config Component Scenarios
  Test all phase config component based scenarios
  As a configuration manager i make different configurational changes in phase component and will validate them.

  ############### UI ###############
  @333604 @Vrushali
  Scenario: Technical support - SPI- UI- Verify ‘Technical support’ is visible
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    Then I see option "Technical Support" on left panel

  @333605 @333576 @Vrushali
  Scenario Outline: Technical support - PM- UI- Verify ‘Technical support’ is visible
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see option "Technical Support" on left panel
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @333608 @Vrushali
  Scenario: Recently Viewed - SPI- UI- Verify ‘Recently viewed’ is visible
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    Then I see option "Recently Viewed" on left panel

  @333609 @333577 @Vrushali
  Scenario Outline: Recently Viewed - PM- UI- Verify ‘Recent Items’ is visible
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see option "Recent Items" on left panel
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @333610 @Vrushali
  Scenario: Sidebar search- SPI- UI- Verify Sidebar search menu is visible
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    Then I see option "Search" on left panel

  @333612 @333579 @Vrushali
  Scenario Outline: Sidebar search- PM- UI- Verify Sidebar search menu is visible
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see option "Search" on left panel
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @333615 @Vrushali
  Scenario: Sidebar- SPI- UI- Verify Sidebar "Tasks" menu is visible
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    Then I see option "Tasks" on left panel

  @333616 @333581 @Vrushali
  Scenario Outline: Sidebar- PM- UI- Verify Sidebar "Tasks" menu is visible
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see option "Tasks" on left panel
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @333617 @Vrushali
  Scenario: Sidebar- SPI- UI- Verify Sidebar BI &Analytics menu is visible
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                                  | filterId         |
      | Side Bar Header       | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                  | fieldNewValue                                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Side Bar Header:General | Sidebar Component Sequence | Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links,BI&Analytics | RecipientHome      |                           |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
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
      | User  |
      | PM    |
      | ADMIN |

  @333620 @333582 @Vrushali
  Scenario Outline: Sidebar- PM- UI- Verify Sidebar Activity menu is visible
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see option "Activities" on left panel
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @333621
  Scenario: Sidebar- SPI- UI- Verify Sidebar Activity menu is visible
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
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
    When I login to "Grants Portal" app as "SPI" user
    Then I see "Home" phase

  @333629 @333630 @333632 @333633 @333635
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
      | User  |
      | PM    |
      | ADMIN |

  @333636
  Scenario Outline: Available for profiles- SPI- UI- Verify ‘Phase’ should not visible on UI when logged in as SPI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Phase Config          | Available for Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField    |
      | Phase Config:General  | Available for Profiles | <New-Profile> | RecipientApplications |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    Then I do not see "Applications" phase
    Examples:
      | New-Profile                                                                                                   | Old-Profile                                                                                                        |
      | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SPA; System Administrator; TR1; TR2; TR3; VND; EBZ; IND | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ; IND |

  @333638 @Vrushali
  Scenario Outline: Available for profiles- SPI- UI- Verify ‘Phase’ is visible on UI when logged in as SPI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Phase Config          | Available for Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField |
      | Phase Config:General  | Available for Profiles | <New-Profile> | RecipientHome      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    Then I see "Home" phase
    Examples:
      | New-Profile                                                                                                        | Old-Profile                                                                                                        |
      | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ; IND | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ; IND |

  @333637 @333591 @Vrushali
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
      | User  | New-Profile                                                                                                    | Old-Profile                                                                                                        |
      | PM    | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ |
      | ADMIN | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PO; SME; SPA; SPI; PM; TR1; TR2; TR3; VND; EBZ                   | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ |

  @333639 @333592 @Vrushali
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
      | User  | New-Profile                                                                                                        | Old-Profile                                                                                                        |
      | PM    | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ |
      | ADMIN | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ | ADT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND; EBZ |

  @333640 @333593 @Vrushali @doubtedconfig
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
      | User  |
      | PM    |
      | ADMIN |

  @333646 @333647 @333649 @333650 @Vrushali
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
      | User  |
      | PM    |
      | ADMIN |

  @333648 @333651 @Vrushali
  Scenario: Phase name- SPI- UI- Verify phase name displayed correctly on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    Then I see "Home" phase
    Then I see "Opportunities" phase
    Then I see "Applications" phase
    Then I see "Grants" phase
    Then I see "Monitoring" phase
    Then I see "Closeout" phase

  @333606 @Vrushali
  Scenario: Sidebar Links - SPI- UI- Verify ‘Useful Links’ is visible.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    Then I see option "Useful Links" on left panel

  @333644 @333645  @Vrushali
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
      | User  |
      | PM    |
      | ADMIN |

  @333643 @333642 @Vrushali
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
      | User  |
      | PM    |
      | ADMIN |

  @333642 @333594 @Vrushali @doubtedconfig
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
      | User  |
      | PM    |
      | ADMIN |

  @333607 @333578 @Vrushali
  Scenario Outline: Sidebar Links - PM- UI- Verify "Useful Links" is visible
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see option "Useful Links" on left panel
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @333625 @Vrushali
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

  @333557 @333561 @Vrushali
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
      | User  |
      | PM    |
      | ADMIN |

  @333565
  Scenario: Phase name- External- To verify 'Tab Icon CSS' should be added on the phases config page for respective 'Tab Display Label'
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue                            | filterId         |
      | Phase Config          | Tab Icon Css | govgrants_config:accordionHeaderIconCSSValue | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue               | coreComponentField |
      | Phase Config:General  | Tab Icon Css | govgrants_config:TabIconCss | RecipientHome      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    Then I see book icon as "Home" tab

  @333556
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
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    Then I see "Planning" tab is highlighted for particular program
    Examples:
      | User |
      | PM   |
     # | ADMIN |

