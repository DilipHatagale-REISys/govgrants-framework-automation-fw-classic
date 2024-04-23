@Stickybottom-PATCHcomponent @regression-PATCH @stickyBottom @vrush-module
Business Need: Sticky Bottom Component Scenarios
  Test all sticky Bottom component based scenarios
  As a configuration manager i make different configurations changes in sticky bottom component custom settings and will validate them.

  @69394p @validateEnableGovGrantSetupAndEnablePlatformSetupOptionsAreNotShownInStickyBottomForUser
  Scenario: Disabling Enable Admin setup custom setting and validating display of Enable GovGrant Setup And Enable Platform Setup Options in sticky bottom
    Given I have "global" configuration as below:
      | id              | ownerId         | booleanValue                  | customSettingApiName |
      | 0054T000001V8h6 | 00DDa000000AP2p | GNT__EnableAdminSetup__c:true | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id              | ownerId         | booleanValue                   | customSettingApiName |
      | 0054T000001V8h6 | 00DDa000000AP2p | GNT__EnableAdminSetup__c:false | GNT__GlobalConfig__c |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I click on botton menu "sticky_bottom_Menu"
    Then I softly do not see "Enable GovGrants Setup" inside bottom menu
    Then I softly do not see "Platform Setup" inside bottom menu

  @69400 @validateSystemAlertsOptionsAreNotShownInStickyBottomForUser
  Scenario: Disabling Enable Alert custom setting and validating display of System Alerts Option in sticky bottom
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue             | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableAlert__c:true | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue              | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableAlert__c:false | GNT__GlobalConfig__c |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I click on botton menu "sticky_bottom_Menu"
    Then I softly do not see "System Alerts" inside bottom menu

  @69401 @validateSendFeedbackOptionsAreNotShownInStickyBottomForUser
  Scenario: Disabling Enable Feedback custom setting and validating display of Send Feedback Option in sticky bottom
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableFeedback__c:true | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue                 | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableFeedback__c:false | GNT__GlobalConfig__c |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I click on botton menu "sticky_bottom_Menu"
    Then I softly do not see "Send Feedback" inside bottom menu

  @69402 @validatestickyBottomMenuButtonNotShownInStickyBottomForUser
  Scenario: Disabling Enable Sticky Bottom Menu custom setting and validating display of sticky bottom menu button in sticky bottom
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                        | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableStickyBottomMenu__c:true | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue                         | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableStickyBottomMenu__c:false | GNT__GlobalConfig__c |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see sticky bottom menu button with id "sticky_bottom_Menu" is not present

  @69403 @validateOrgNameIsNotShownInStickyBottomForUser
  Scenario: Disabling Enable Org Name custom setting and validating display of org name Option in sticky bottom
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableOrgName__c:true | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableOrgName__c:false | GNT__GlobalConfig__c |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I click on botton menu "sticky_bottom_Menu"
    Then I softly do not see "GGPTEST5" inside bottom menu

  @69444 @validateOrgNameIsNotShownInStickyBottomForSPIProfileUsers
  Scenario: Disabling Enable Org Name custom setting and validating display of org name Option in sticky bottom
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1C00000KyIeBUAV | 00515000005xr9aAAA | GNT__EnableOrgName__c:true | GNT__GlobalConfig__c |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1C00000KyIeBUAV | 00515000005xr9aAAA | GNT__EnableOrgName__c:false | GNT__GlobalConfig__c |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I click on botton menu "sticky_bottom_Menu"
    Then I softly do not see "GGPTEST5" inside bottom menu

  @69445 @validateOrgNameIsNotShownInStickyBottomForPMProfileUsers @stickyBottom
  Scenario: Disabling Enable Org Name custom setting and validating display of org name Option in sticky bottom
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1C00000KyBBdUAN | 0051C000007cehzQAA | GNT__EnableOrgName__c:true | GNT__GlobalConfig__c |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1C00000KyBBdUAN | 0051C000007cehzQAA | GNT__EnableOrgName__c:false | GNT__GlobalConfig__c |
    When I re-login as "PM" user on "default" portal
    And I pause execution for "5" seconds
    When I setup my app as "As a Grantor"
    And I click on botton menu "sticky_bottom_Menu"
    Then I softly do not see "GGPTEST5" inside bottom menu