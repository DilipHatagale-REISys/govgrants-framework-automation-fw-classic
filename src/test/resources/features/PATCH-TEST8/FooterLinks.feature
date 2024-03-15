@FooterLinks-PATCHcomponent @regression-PATCH @footerLinks
Business Need: Footer Links Component Scenarios
  Test all Footer configuration based scenarios
  As a configuration manager i make different changes related to footer links and will validate them in history component.

  @69950   @508ComplianceStatementlinkShoulDdisplayonFooterWhenActiveCheckboxIsChecked
  Scenario: validate 508 Compliance statement link in Footer when active checkbox is checked
    Given I have "customAppFooter" configuration as below:
      | id                 | Name | DisplayText    | TargetURL                            | Sequence | booleanValue                                         | customSettingApiName          |
      | a0E1500000VP7l5EAD | F3   | 508 Compliance | /apex/GNT__Help?uniqueName=Help-0113 | 3        | GNT__Active__c:true,GNT__TermsAndConditions__c:false | GNT__CustomAppFooterConfig__c |
    And I update custom app footer setting changes:
      | id                 | Name | DisplayText    | TargetURL                            | Sequence | booleanValue                                         | customSettingApiName          |
      | a0E1500000VP7l5EAD | F3   | 508 Compliance | /apex/GNT__Help?uniqueName=Help-0113 | 3        | GNT__Active__c:true,GNT__TermsAndConditions__c:false | GNT__CustomAppFooterConfig__c |
    When I login to "As a Grantor" app as "ADMIN" user
    When I navigate to "Planning" tab
    Then I see "508 Compliance" footer link is present

  @69952   @linkNameShouldGetDisplayedOnFooterAsPerGivenTextInDisplayText
  Scenario: validate footer link name is displayed as given in display text field
    Given I have "customAppFooter" configuration as below:
      | id              | Name | DisplayText          | TargetURL                                 | Sequence | booleanValue                                         | customSettingApiName          |
      | a0H4T000001MvkP | EL3  | Accessibility Policy | /web/grants/accessibility-compliance.html | 2        | GNT__Active__c:true,GNT__TermsAndConditions__c:false | GNT__CustomAppFooterConfig__c |
    And I update custom app footer setting changes:
      | id              | Name | DisplayText   | TargetURL                                 | Sequence | booleanValue                                         | customSettingApiName          |
      | a0H4T000001MvkP | EL3  | Accessibility | /web/grants/accessibility-compliance.html | 2        | GNT__Active__c:true,GNT__TermsAndConditions__c:false | GNT__CustomAppFooterConfig__c |
    When I login to "As a Grantor" app as "ADMIN" user
    When I navigate to "Planning" tab
    Then I see "Accessibility" footer link is present

  @70085   @linkNameShouldGetDisplayedOnFooterAtRecepientLoginPage
  Scenario: validate if Terms and condition checkbox is checked then that footer link name is displayed on recepient login page
    Given I have "customAppFooter" configuration as below:
      | id              | Name | DisplayText          | TargetURL                                 | Sequence | booleanValue                                          | customSettingApiName          |
      | a0HR000000BZKsD | EL2  | Terms and Conditions | /web/grants/accessibility-compliance.html | 1        | GNT__Active__c:false,GNT__TermsAndConditions__c:false | GNT__CustomAppFooterConfig__c |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update custom app footer setting changes:
      | id              | Name | DisplayText          | TargetURL                                 | Sequence | booleanValue                                        | customSettingApiName          |
      | a0HR000000BZKsD | EL2  | Terms and Conditions | /web/grants/accessibility-compliance.html | 1        | GNT__Active__c:true,GNT__TermsAndConditions__c:true | GNT__CustomAppFooterConfig__c |
    When I navigate to url "{environment:QASUBPORTAL}"
    And I refresh the page
    Then I see "Terms and Conditions" footer link is present

  @69951   @expectedTargetURLShouldGetsOpenByClickOnFooterLinks @footerLinks
  Scenario Outline: validate given target URL opens by click on 508 Compliance link from footer
    Given I have "customAppFooter" configuration as below:
      | id              | Name | DisplayText    | TargetURL                            | Sequence | booleanValue                                         | customSettingApiName          |
      | a0H4T000001MvkQ | F3   | 508 Compliance | /apex/GNT__Help?uniqueName=Help-0113 | 7        | GNT__Active__c:true,GNT__TermsAndConditions__c:false | GNT__CustomAppFooterConfig__c |
    And I update custom app footer setting changes:
      | id              | Name | DisplayText    | TargetURL                            | Sequence | booleanValue                                         | customSettingApiName          |
      | a0H4T000001MvkQ | F3   | 508 Compliance | /apex/GNT__Help?uniqueName=Help-0113 | 7        | GNT__Active__c:true,GNT__TermsAndConditions__c:false | GNT__CustomAppFooterConfig__c |
    When I login to "As a Grantor" app as "ADMIN" user
    When I navigate to "Planning" tab
    When I click on footer links "508 Compliance"
    When I switch to tab number "1"
    When I pause execution for "3" seconds
    Then I see "Complete" "<Logout_URL>" page is displayed
    Examples:
      | Logout_URL                                                                                 |
      | https://test8-internal--fwautomat--gnt.sandbox.vf.force.com/apex/Help?uniqueName=Help-0113 |