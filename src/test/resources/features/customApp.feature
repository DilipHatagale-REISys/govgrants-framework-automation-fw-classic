@customAppConfig-component @regression
Feature: Custom App Config Component Scenarios
  Test all custom app config component based scenarios
  As a configuration manager i make different configurational changes in custom app component and will validate them.

  @52893    @labelFieldAtCustomAppConfig
  Scenario: Changing name at label field from custom app confiuration and validating the changed label at custom app dropdown 
    Given I have "default" configuration as below:
      | configurationCategory| fieldName  | fieldOrignalValue | filterId         |
      | Custom App Config    | Label      | As a Grantor      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName  | fieldNewValue  | coreComponentField| 
      | Custom App Config:General| Label      | Test Automation| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "Test Automation" inside CustomApp dropDown

  @52896    @availableForProfilesFieldAtCustomAppConfig
  Scenario Outline: Remove admin profile from config. and validate that As a Grantor custom App doesn't show up in custom App drop down for admin user
    Given I have "default" configuration as below:
      | configurationCategory| fieldName             | fieldOrignalValue | filterId         |
      | Custom App Config    | Available For Profiles| <Old-Profile>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue  | coreComponentField| 
      | Custom App Config:General| Available For Profiles | <New-Profile>  | StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown not displayed
    
    Examples:
      | New-Profile                                                               | Old-Profile                                                                                                        |
      | GA; GMO; PO; PM; EPOC; FO; FD; CON; CTR; EXE; ADT; TR1; TR2; TR3; DA; DEV | GA; GMO; PO; PM; EPOC; FO; FD; CON; CTR; EXE; ADT; TR1; TR2; TR3; DA; DEV; System Administrator|

  @52897    @activeFieldAtCustomAppConfig
  Scenario: Uncheck checkbox of Active Field from custom app confiuration and validate As a Grantor is not visible at custom app dropdown 
    Given I have "default" configuration as below:
      | configurationCategory| fieldName  | fieldOrignalValue | filterId         |
      | Custom App Config    | Active     | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName  | fieldNewValue  | coreComponentField| 
      | Custom App Config:General| Active     | false          | StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown not displayed

  @52898    @urlFieldAtCustomAppConfig
  Scenario Outline: Removing the url from URL Field from custom app confiuration and validate that custom app is not displayed
    Given I have "default" configuration as below:
      | configurationCategory| fieldName  | fieldOrignalValue | filterId         |
      | Custom App Config    | URL        | <defaultUrl>      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName  | fieldNewValue  | coreComponentField|
      | Custom App Config:General| URL        |                | StateasGrantor    |
    When I login as "Automation" user
    Then I see complete custom app is not displayed

    Examples:
    |defaultUrl                    |
    | apex/PhaseView?t=GrantorHome |

  @52894    @sequenceFieldAtCustomAppConfig
  Scenario: Changing sequence of custom app config values from confiuration and validating the changed sequenc at custom app dropdown
    Given I have "default" configuration as below:
      | configurationCategory| fieldName  | fieldOrignalValue | filterId         |
      | Custom App Config    | Sequence   | 5                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName  | fieldNewValue  | coreComponentField|
      | Custom App Config:General| Sequence   | 4              | Admin             |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As an Administrator" option of custom App is at position "2"