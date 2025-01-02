@CustomApp-PATCHcomponent @regression-PATCH @customApp @vrush-module
Business Need: customApp Component Scenarios
  Test all customApp component based scenarios
  As a configuration manager i make different configurational changes in customApp component and will validate them.

  ######## As a Grantor ###
  @332481 @332482 @332484 @332534 @382715 @382716 @SanityPATCH
  Scenario Outline: Custom App- To verify, for the Grantor user 'StateasGrantor' Label name is displayed.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As a Grantor      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Label     | As a Grantor  | StateasGrantor     |
    When I login to "As a Grantor" app as "<User>" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown
    Examples:
      | User  |
#      | ADMIN |
      | PM    |

  @332491
  Scenario: Custom App- To verify, when Default Theme Name is "ColorContrast_Grantor" should be saved on the Custom App:grantor
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue     | filterId         |
      | Custom App Config     | Default Theme Name | ColorContrast_Grantor | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName          | fieldNewValue | coreComponentField |
      | Custom App Config:General | Default Theme Name |  ColorContrast_Grantor             | StateasGrantor     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see "ColorContrast_Grantor" on complete page for custom App as a Grantor

  @332490
  Scenario:Custom App- To verify, Logo Document Name field should be as 'GrantorHeaderLogo' in custom app configuration.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see govgrants logo "Current App logo" is displayed with name "As a Grantor"

  @332486
  Scenario: Custom App- To verify, to verify, on Sequence when user provide sequence as "2" then As a Grantor app should display at 2nd position
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Sequence  | 2                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Sequence  | 2             | StateasGrantor     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I click CustomApp select dropdown
    Then I see position "As a Grantor" option of custom app is at "2"

  @332487
  Scenario: Custom App- To verify,  when User add the Abbreviation as "GRNTR' then it should get saved.
    When I login to "As a Grantor" app as "ADMIN" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown

  @332488 @382717 @382718 @SanityPATCH
  Scenario Outline: Custom App- To verify, when URL is "/apex/PhaseView?t=GrantorHome" should be saved on Custom App:grantor
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | URL       | <defaultUrl>      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | URL       | <defaultUrl>  | StateasGrantor     |
    When I login to "As a Grantor" app as "<User>" user
    Then I see "As a Grantor" inside CustomApp dropDown
    Then I see "Home" tab is highlighted for particular program
    Examples:
      | User  | defaultUrl                   |
    #  | ADMIN | apex/PhaseView?t=GrantorHome |
      | PM    | apex/PhaseView?t=GrantorHome |

  @332601
  Scenario Outline: when system administrator is not in available for profile then As a  grantor should not display to admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config     | Available For Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName              | fieldNewValue | coreComponentField |
      | Custom App Config:General | Available For Profiles | <New-Profile> | StateasGrantor     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown not displayed

    Examples:
      | New-Profile                                                               | Old-Profile                                                                                     |
      | GA; GMO; PO; PM; EPOC; FO; FD; CON; CTR; EXE; ADT; TR1; TR2; TR3; DA; DEV | GA; GMO; PO; PM; EPOC; FO; FD; CON; CTR; EXE; ADT; TR1; TR2; TR3; DA; DEV; System Administrator |

  @332489
  Scenario Outline: Custom App- To verify, for the Grantor user profile should be available for profiles mentioned in 'Available for Profiles' field.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config     | Available For Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName              | fieldNewValue | coreComponentField |
      | Custom App Config:General | Available For Profiles | <New-Profile> | StateasGrantor     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown

    Examples:
      | New-Profile                                                                                     | Old-Profile                                                                                     |
      | GA; GMO; PO; PM; EPOC; FO; FD; CON; CTR; EXE; ADT; TR1; TR2; TR3; DA; DEV; System Administrator | GA; GMO; PO; PM; EPOC; FO; FD; CON; CTR; EXE; ADT; TR1; TR2; TR3; DA; DEV; System Administrator |

    #### As a Grantee ####
  @332505 @332506 @332507 @332528
  Scenario: Custom App- To verify, for the Grantee user 'StateasGrantee' Label name is displayed.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As a Grantee      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Label     | As a Grantee  | StateasGrantee     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I click CustomApp select dropdown
    Then I see "As a Grantee" inside CustomApp dropDown

  @332508
  Scenario: Custom App- To verify, to verify, on Sequence when user provide sequence as "2" then As a Grantee app should display at 2ndst position
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Sequence  | 3                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Sequence  | 2             | StateasGrantee     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I click CustomApp select dropdown
    Then I see position "As a Grantee" option of custom app is at "3"

  @332510
  Scenario:Custom App- To verify,  when User add the Abbrevation as "GRNTE" then this should be saved
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
#      | Custom App Config     | Abbreviation | GRNTE             | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory     | fieldName    | fieldNewValue | coreComponentField |
#      | Custom App Config:General | Abbreviation | GRNTE         | StateasGrantee     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I click CustomApp select dropdown
    Then I see "As a Grantee" inside CustomApp dropDown

  @332511 @382719 @382720 @SanityPATCH
  Scenario Outline: Custom App- To verify, when URL is "/apex/PhaseView?t=GranteeHome" should be saved on Custom App:grantee
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | URL       | <defaultUrl>      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | URL       | <defaultUrl>  | StateasGrantee     |
    When I login to "As a Grantor" app as "<User>" user
    Then I see "As a Grantee" inside CustomApp dropDown
    Then I see "Home" tab is highlighted for particular program
    Examples:
      | User  | defaultUrl                    |
  #    | ADMIN | /apex/PhaseView?t=GranteeHome |
      | PM    | /apex/PhaseView?t=GranteeHome |

  @332512
  Scenario Outline: Custom App- To verify, for the Grantee user profile should be available for profiles mentioned in 'Available For Profiles' field.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config     | Available For Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName              | fieldNewValue | coreComponentField |
      | Custom App Config:General | Available For Profiles | <New-Profile> | StateasGrantee     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I click CustomApp select dropdown
    Then I see "As a Grantee" inside CustomApp dropDown

    Examples:
      | New-Profile                                                                                              | Old-Profile                                                                                              |
      | GA; GMO; PO; PM; EPOC; FO; FD; CON; CTR; EXE; ADT; TR1; TR2; TR3; DA; DEV; System Administrator; Auditor | GA; GMO; PO; PM; EPOC; FO; FD; CON; CTR; EXE; ADT; TR1; TR2; TR3; DA; DEV; System Administrator; Auditor |

  @332513
  Scenario: Custom App- To verify, Logo Document Name field should be as 'GranteeLogo' in custom app configuration.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As a Grantee      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Label     | As a Grantee  | StateasGrantee     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantee"
    Then I see govgrants logo "Current App logo" is displayed with name "As a Grantee"

  @332514
  Scenario: Custom App- To verify, when Default Theme Name is "ColorContrast_Grantee" should be saved on the Custom App:grantee
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue     | filterId         |
      | Custom App Config     | Default Theme Name | ColorContrast_Grantee | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName          | fieldNewValue | coreComponentField |
      | Custom App Config:General | Default Theme Name |               | StateasGrantee     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantee"
    Then I see "ColorContrast_Grantee" on complete page for custom App as a Grantor

    ###### As a Administrator #####
  @332492 @332493 @332494 @332529
  Scenario: Custom App- To verify, for the admin user Grantor ,grantee and as a administaratater Label name is displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As Administrator  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue    | coreComponentField |
      | Custom App Config:General | Label     | As Administrator | Admin              |
   # When I login to "As a Grantor" app as "ADMIN" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown
    Then I see "As a Grantee" inside CustomApp dropDown
    Then I see "As Administrator" inside CustomApp dropDown

  @332495
  Scenario: Custom App- To verify, to verify, on Sequence when user provide sequence as "3" then As a administrator app should display at 3rd position
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Sequence  | 1                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Sequence  | 1             | Admin              |
    When I login to "As a Grantor" app as "ADMIN" user
    When I click CustomApp select dropdown
    Then I see position "As Administrator" option of custom app is at "1"

  @332496
  Scenario: Custom App- To verify, when User add the Abbreviation as "ADM" then this should be saved.
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
#      | Custom App Config     | Abbreviation | ADM               | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory     | fieldName    | fieldNewValue | coreComponentField |
#      | Custom App Config:General | Abbreviation | ADM           | Admin              |
    When I login to "As a Grantor" app as "ADMIN" user
    When I click CustomApp select dropdown
    Then I see "As Administrator" inside CustomApp dropDown

  @332497
  Scenario Outline: Custom App- To verify, when URL is  "/apex/PhaseView?t=AdminHome" should be  saved on  Custom App: Admin
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | URL       | <defaultUrl>      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | URL       | <defaultUrl>  | Admin              |
    When I login to "As a Grantor" app as "ADMIN" user
    Then I see "As Administrator" inside CustomApp dropDown
    Then I see "Home" tab is highlighted for particular program
    Examples:
      | defaultUrl                  |
      | /apex/PhaseView?t=AdminHome |

  @332498
  Scenario Outline: Custom App- To verify, for the Admin user profile should be available for profiles mentioned in 'Available for Profiles' field.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config     | Available For Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName              | fieldNewValue | coreComponentField |
      | Custom App Config:General | Available For Profiles | <New-Profile> | Admin              |
    When I login to "As a Grantor" app as "ADMIN" user
    When I click CustomApp select dropdown
    Then I see "As Administrator" inside CustomApp dropDown

    Examples:
      | New-Profile          | Old-Profile          |
      | System Administrator | System Administrator |

  @332499
  Scenario: Custom App- To verify, Logo Document Name field should be as 'AdminHeaderLogo' in custom app configuration.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As a Grantee      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue    | coreComponentField |
      | Custom App Config:General | Label     | As Administrator | Admin              |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As Administrator"
    Then I see govgrants logo "Current App logo" is displayed with name "As Administrator"

  @332501
  Scenario: Custom App- To verify, when Default Theme Name is  "ColorContrast_Admin" should be saved on the  Custom App: Admin
    When I login to "As Administrator" app as "ADMIN" user
  #  When I setup my app as "As Administrator"
    And I pause execution for "5" seconds
    Then I see "ColorContrast_Admin" on complete page for custom App as a Grantor

    #### As a recipient #####
  @332516 @332517 @332518
  Scenario: Custom App- To verify, for the  Recipient user Grants Portal Label name is displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | Grants Portal     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Label     | Grants Portal | Recipient          |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    When I click CustomApp select dropdown
    Then I see "Grants Portal" inside CustomApp dropDown

  @332521p
  Scenario: Custom App- To verify, to verify, on Sequence when user provide sequence as "1" then As a Recipient app should display at 1st position
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Sequence  | 4                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Sequence  | 1             | Recipient          |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    When I click CustomApp select dropdown
    Then I see "Grants Portal" option of custom App is at position "1"

  @332522
  Scenario: Custom App- To verify,  when User add the Abbrevation as "RPT" then this should be saved
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
#      | Custom App Config     | Abbreviation | RPT               | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory     | fieldName    | fieldNewValue | coreComponentField |
#      | Custom App Config:General | Abbreviation | RPT           | Recipient          |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    When I click CustomApp select dropdown
    Then I see "Grants Portal" inside CustomApp dropDown

  @332523
  Scenario Outline: Custom App- To verify, when URL is "/apex/ExternalUserRedirect" should be saved on Custom App:Recipient
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | URL       | <defaultUrl>      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | URL       | <defaultUrl>  | Recipient          |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    Then I see "Grants Portal" inside CustomApp dropDown
    Then I see "Home" tab is highlighted for particular program
    Examples:
      | defaultUrl                 |
      | /apex/ExternalUserRedirect |

  @332524
  Scenario: Custom App- To verify, when Default Theme Name is "ColorContrast_Recipient" should be saved on the Custom App:Recipient
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue       | filterId         |
      | Custom App Config     | Default Theme Name | ColorContrast_Recipient | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName          | fieldNewValue | coreComponentField |
      | Custom App Config:General | Default Theme Name |               | Recipient          |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    When I setup my app as "Grants Portal"
    Then I see "ColorContrast_Recipient" on complete page for custom App as a Grantor

  @332525
  Scenario Outline: Custom App- To verify, for the recipient user profile should be available for profiles mentioned in 'Available For Profiles' field.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config     | Available For Profiles | <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName              | fieldNewValue | coreComponentField |
      | Custom App Config:General | Available For Profiles | <New-Profile> | Recipient          |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    When I click CustomApp select dropdown
    Then I see "Grants Portal" inside CustomApp dropDown

    Examples:
      | New-Profile | Old-Profile |
      | SPA; SPI    | SPA; SPI    |

  @332526
  Scenario: Custom App- To verify, Logo Document Name field should be as 'RecipientHeaderLogo' in custom app configuration.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | Grants Portal     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Label     | Grants Portal | Recipient          |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    When I setup my app as "Grants Portal"
    Then I see govgrants logo "Current App logo" is displayed with name "Grants Portal"

    #### Custom App #####
  @332530 @Vrushali
  Scenario: To verify, when we click on As a grantor option it should redirect on grantor portal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As a Grantor      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Label     | As a Grantor  | Admin              |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see "As a Grantor" inside CustomApp dropDown
#    Then I see the header is "As a Grantor" in the page details
#    Then I see the

  @332531
  Scenario: To verify, when we click on As a grantee option it should redirect on grantee portal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As a Grantee      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Label     | As a Grantee  | StateasGrantee     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantee"
    Then I see "As a Grantee" inside CustomApp dropDown

  @332533
  Scenario: To verify, when we click on As Administrator option it should redirect on Admin portal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As Administrator  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue    | coreComponentField |
      | Custom App Config:General | Label     | As Administrator | Admin              |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As Administrator"
    Then I see "As Administrator" inside CustomApp dropDown
