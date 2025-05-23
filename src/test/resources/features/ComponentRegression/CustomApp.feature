@CustomApp-PATCHcomponent @regression-PATCH @customApp @vrush-module
Business Need: UI (Suite ID: 306389)
  customApp Component Scenarios
  Test all customApp component based scenarios
  As a configuration manager i make different configurational changes in customApp component and will validate them.

  ######Test suite: General Test cases (Suite ID: 332483)#####
  @223923 @223924 @SanityPATCH
  Scenario Outline: To verify, As a grantor portal option display under custom app option
  |To verify, As a grantee portal option display under custom app option|
  Custom App- To verify, for the Grantor user 'StateasGrantor' Label name is displayed.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As a Grantor      | ApiGeneratedId:0 |
      | Custom App Config     | Label     | As a Grantee      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Label     | As a Grantor  | StateasGrantor     |
      | Custom App Config:General | Label     | As a Grantee  | StateasGrantee     |
    When I login to "As a Grantor" app as "<User>" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown
    Then I see "As a Grantee" inside CustomApp dropDown
    Examples:
      | User |
      | PM   |

  @223925
  Scenario: To verify, As Administrator portal option display under custom app option
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As a Grantor      | ApiGeneratedId:0 |
      | Custom App Config     | Label     | As a Grantee      | ApiGeneratedId:1 |
      | Custom App Config     | Label     | As Administrator  | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue    | coreComponentField |
      | Custom App Config:General | Label     | As a Grantor     | StateasGrantor     |
      | Custom App Config:General | Label     | As a Grantee     | StateasGrantee     |
      | Custom App Config:General | Label     | As Administrator | Admin              |
    When I login to "As a Grantor" app as "Admin" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown
    Then I see "As a Grantee" inside CustomApp dropDown
    Then I see "As Administrator" inside CustomApp dropDown


  @223926
  Scenario:To verify, when we click on As a grantor option it should redirect on grantor portal
  |  To verify, when we click on As a grantor option it should redirect on grantor portal|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As a Grantor      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Label     | As a Grantor  | StateasGrantor     |
    When I login to "As a Grantor" app as "Admin" user
    Then I see page title "Home ~ As a Grantor"

  @223927
  Scenario: To verify, when we click on As a grantee option it should redirect on grantee portal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As a Grantee      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Label     | As a Grantee  | StateasGrantee     |
    When I login to "As a Grantee" app as "PM" user
    And I pause execution for "5" seconds
    Then I see page title "Home ~ As a Grantee"

  @223928
  Scenario: To verify, when we click on As Administrator option it should redirect on Admin portal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As Administrator  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue    | coreComponentField |
      | Custom App Config:General | Label     | As Administrator | Admin              |
    When I login to "As Administrator" app as "ADMIN" user
    Then I see page title "Home ~ As a Grantor"

######Test suite: Recipient (Suite ID: 305838)######
  @306036 @306039 @306041 @330880
  Scenario: Custom App- To verify, for the  Recipient user Grants Portal Label name is displayed
  | Custom App- To verify, to verify, on Sequence when user provide sequence as "1" then As a Recipient app should display at 1st position |
  | Custom App- To verify, when URL is "/apex/ExternalUserRedirect" should be saved on Custom App:Recipient|
  |Custom App- To verify, for the recipient user profile should be available for profiles mentioned in 'Available For Profiles' field.|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue          | filterId         |
      | Custom App Config     | Label                  | Grants Portal              | ApiGeneratedId:0 |
      | Custom App Config     | Sequence               | 4                          | ApiGeneratedId:1 |
      | Custom App Config     | URL                    | /apex/ExternalUserRedirect | ApiGeneratedId:2 |
      | Custom App Config     | Available For Profiles | SPA; SPI                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName              | fieldNewValue              | coreComponentField |
      | Custom App Config:General | Label                  | Grants Portal              | Recipient          |
      | Custom App Config:General | Sequence               | 1                          | Recipient          |
      | Custom App Config:General | URL                    | /apex/ExternalUserRedirect | Recipient          |
      | Custom App Config:General | Available For Profiles | SPA; SPI                   | Recipient          |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    When I click CustomApp select dropdown
    #306036 #306041 #330880
    Then I see "Grants Portal" inside CustomApp dropDown
    #306039
    Then I see "Grants Portal" option of custom App is at position "0"

  @306037 @306038 @306036
  Scenario: Custom App- To verify, when label as "as a Recipien then custom app name is Recipient
  |when user add the label in "Custom App Name " then it should get saved|
  | Custom App- To verify,  when user add the label in "Custom App Name " then it should get saved|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | Grants Portal     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue            | coreComponentField |
      | Custom App Config:General | Label     | Grants Portal Automation | Recipient          |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal Automation" app as "SPI3" user
    When I click CustomApp select dropdown
   #306037 #306038 #306036
    Then I see "Grants Portal Automation" inside CustomApp dropDown

  @306042
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

  @330881
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

    #####Test suite: As a Administrator (Suite ID: 305837)#####

  @305883 @305884 @305887
  Scenario: Custom App- To verify, for the admin user Grantor ,grantee and as a administaratater Label name is displayed
  |Custom App- To verify, when label as "as a administrator then custom app name is Admin|
  |Custom App- To verify, to verify, on Sequence when user provide sequence as "3" then As a administrator app should display at 3rd position|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As a Grantor      | ApiGeneratedId:0 |
      | Custom App Config     | Label     | As a Grantee      | ApiGeneratedId:1 |
      | Custom App Config     | Label     | As Administrator  | ApiGeneratedId:2 |
      | Custom App Config     | Sequence  | 1                 | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue    | coreComponentField |
      | Custom App Config:General | Label     | As a Grantor     | StateasGrantor     |
      | Custom App Config:General | Label     | As a Grantee     | StateasGrantee     |
      | Custom App Config:General | Label     | As Administrator | Admin              |
      | Custom App Config:General | Sequence  | 1                | Admin              |
    When I login to "As a Grantor" app as "Admin" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown
    #305883
    Then I see "As a Grantee" inside CustomApp dropDown
   #305884
    Then I see "As Administrator" inside CustomApp dropDown
   #305887
    Then I see position "As Administrator" option of custom app is at "0"

  @305889 @330878 @330879 @SanityPATCH
  Scenario Outline: Custom App- To verify, when URL is  "/apex/PhaseView?t=GrantorHome" should be  saved on  Custom App: Admin
  |Custom App- To verify, for the Admin user profile should be available for profiles mentioned in 'Available for Profiles' field.|
  |Custom App- To verify, Logo Document Name field should be as 'AdminHeaderLogo' in custom app configuration. |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue    | filterId         |
      | Custom App Config     | URL                    | <defaultUrl>         | ApiGeneratedId:0 |
      | Custom App Config     | Available For Profiles | System Administrator | ApiGeneratedId:1 |
      | Custom App Config     | Label                  | As Administrator     | ApiGeneratedId:2 |
#      | Custom App Config     | Logo Document Name     | AdminHeaderLogo      | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName              | fieldNewValue        | coreComponentField |
      | Custom App Config:General | URL                    | <defaultUrl>         | Admin              |
      | Custom App Config:General | Available For Profiles | System Administrator | Admin              |
      | Custom App Config:General | Label                  | As Administrator     | Admin              |
#      | Custom App Config:General | Logo Document Name     | AdminHeaderLogo      | Admin              |
    When I login to "As Administrator" app as "<User>" user
    When I click CustomApp select dropdown
    #305889 #330878
    Then I see "As Administrator" inside CustomApp dropDown
    #330879
    Then I see govgrants logo "Current App logo" is displayed with name "As Administrator"
    Examples:
      | User  | defaultUrl                   |
      | ADMIN | apex/PhaseView?t=GrantorHome |

  @305890
  Scenario: Custom App- To verify, when Default Theme Name is  "ColorContrast_Admin" should be saved on the  Custom App: Admin
    When I login to "As a Grantor" app as "ADMIN" user
    And I pause execution for "5" seconds
    When I click CustomApp select dropdown
    Then I see "ColorContrast_Admin" on complete page for custom App as a Grantor

#####Test suite: As a Grantee (Suite ID: 305836)#####

  @306043 @306044 @306047
  Scenario: Custom App- To verify, for the Grantee user 'StateasGrantee' Label name is displayed.
  |Custom App- To verify, when label as "As a Grantee" then custom app name is 'StateasGrantee'|
  | Custom App- To verify, to verify, on Sequence when user provide sequence as "2" then As a Grantee app should display at 2ndst position |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As a Grantee      | ApiGeneratedId:0 |
      | Custom App Config     | Sequence  | 3                 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Label     | As a Grantee  | StateasGrantee     |
      | Custom App Config:General | Sequence  | 3             | StateasGrantee     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I click CustomApp select dropdown
    Then I see "As a Grantee" inside CustomApp dropDown
    Then I see position "As a Grantee" option of custom app is at "3"

  @306049 @330865 @SanityPATCH
  Scenario Outline: Custom App- To verify, when URL is "/apex/PhaseView?t=GranteeHome" should be saved on Custom App:grantee
  |Custom App- To verify, for the Grantee user profile should be available for profiles mentioned in 'Available For Profiles' field. |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue                                                                                        | filterId         |
      | Custom App Config     | URL                    | <defaultUrl>                                                                                             | ApiGeneratedId:0 |
      | Custom App Config     | Available For Profiles | GA; GMO; PO; PM; EPOC; FO; FD; CON; CTR; EXE; ADT; TR1; TR2; TR3; DA; DEV; System Administrator; Auditor | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName              | fieldNewValue                                                                                            | coreComponentField |
      | Custom App Config:General | URL                    | <defaultUrl>                                                                                             | StateasGrantee     |
      | Custom App Config:General | Available For Profiles | GA; GMO; PO; PM; EPOC; FO; FD; CON; CTR; EXE; ADT; TR1; TR2; TR3; DA; DEV; System Administrator; Auditor | StateasGrantee     |
    When I login to "As a Grantor" app as "<User>" user
    Then I see "As a Grantee" inside CustomApp dropDown
    Then I see "Home" tab is highlighted for particular program
    Examples:
      | User | defaultUrl                    |
      | PM   | /apex/PhaseView?t=GranteeHome |

  @330867 @306050
  Scenario: Custom App- To verify, Logo Document Name field should be as 'GranteeLogo' in custom app configuration.
  | Custom App- To verify, when Default Theme Name is "ColorContrast_Grantee" should be saved on the Custom App:grantee|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue     | filterId         |
      | Custom App Config     | Label              | As a Grantee          | ApiGeneratedId:0 |
      | Custom App Config     | Default Theme Name | ColorContrast_Grantee | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName          | fieldNewValue         | coreComponentField |
      | Custom App Config:General | Label              | As a Grantee          | StateasGrantee     |
      | Custom App Config:General | Default Theme Name | ColorContrast_Grantee | StateasGrantee     |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantee"
    #330867
    Then I see govgrants logo "Current App logo" is displayed with name "As a Grantee"
    #306050
    Then I see "ColorContrast_Grantee" on complete page for custom App as a Grantor

#####Test suite: As a Grantor (Suite ID: 305834)######

  @306052 @306053 @306056
  Scenario: Custom App- To verify, for the Grantor user 'StateasGrantor' Label name is displayed.
  |Custom App- To verify, when label as "As a Grantor" then custom app name is 'StateasGrantor'. |
  | Custom App- To verify, to verify, on Sequence when user provide sequence as "1" then As a Grantor app should display at 1st position |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Custom App Config     | Label     | As a Grantee      | ApiGeneratedId:0 |
      | Custom App Config     | Sequence  | 2                 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue | coreComponentField |
      | Custom App Config:General | Label     | As a Grantee  | StateasGrantor     |
      | Custom App Config:General | Sequence  | 2             | StateasGrantor     |
    When I login to "As a Grantor" app as "PM" user
    When I click CustomApp select dropdown
    #306052
    Then I see "As a Grantor" inside CustomApp dropDown
   #306053 #306056
    Then I see position "As a Grantor" option of custom app is at "2"

  @306058 @330874 @330875 @SanityPATCH
  Scenario Outline:  Custom App- To verify, when URL is "/apex/PhaseView?t=GrantorHome" should be saved on Custom App:grantor
  |Custom App- To verify, for the Grantor user profile should be available for profiles mentioned in 'Available for Profiles' field.|
  |Custom App- To verify, Logo Document Name field should be as 'GrantorHeaderLogo Undo' in custom app configuration.|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue                                                                               | filterId         |
      | Custom App Config     | URL                    | <defaultUrl>                                                                                    | ApiGeneratedId:0 |
      | Custom App Config     | Available For Profiles | GA; GMO; PO; PM; EPOC; FO; FD; CON; CTR; EXE; ADT; TR1; TR2; TR3; DA; DEV; System Administrator | ApiGeneratedId:1 |
      | Custom App Config     | Label                  | As a Grantor                                                                                    | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName              | fieldNewValue                                                                                   | coreComponentField |
      | Custom App Config:General | URL                    | <defaultUrl>                                                                                    | StateasGrantor     |
      | Custom App Config:General | Available For Profiles | GA; GMO; PO; PM; EPOC; FO; FD; CON; CTR; EXE; ADT; TR1; TR2; TR3; DA; DEV; System Administrator | StateasGrantor     |
      | Custom App Config:General | Label                  | As a Grantor                                                                                    | StateasGrantor     |
    When I login to "As a Grantor" app as "<User>" user
    When I click CustomApp select dropdown
    #306058 #330874
    Then I see "As a Grantor" inside CustomApp dropDown
    #330875
    Then I see govgrants logo "Current App logo" is displayed with name "As a Grantor"
    Examples:
      | User  | defaultUrl                   |
      | ADMIN | apex/PhaseView?t=GrantorHome |


  @306059
  Scenario: Custom App- To verify, when Default Theme Name is "ColorContrast_Grantor" should be saved on the Custom App:grantor
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue     | filterId         |
      | Custom App Config     | Default Theme Name | ColorContrast_Grantor | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName          | fieldNewValue         | coreComponentField |
      | Custom App Config:General | Default Theme Name | ColorContrast_Grantor | StateasGrantor     |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    Then I see "ColorContrast_Grantor" on complete page for custom App as a Grantor