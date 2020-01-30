@footerLinks -component @regression
Feature: Footer Links Component Scenarios
  Test all Footer configuration based scenarios
  As a configuration manager i make different changes related to footer links and will validate them in history component.

  @69950   @508ComplianceStatementlinkShoulDdisplayonFooterWhenActiveCheckboxIsChecked @F3
  Scenario: validate 508 Compliance statement link in Footer when active checkbox is checked
    Given I have "customAppFooter" configuration as below:
      | id                 | Name | DisplayText    | TargetURL                            | Sequence | booleanValue                                         | customSettingApiName          |
      | a0E1500000VP7l5EAD | F3   | 508 Compliance | /apex/GNT__Help?uniqueName=Help-0113 | 3        | GNT__Active__c:true,GNT__TermsAndConditions__c:false | GNT__CustomAppFooterConfig__c |
    And I update custom app footer setting changes:
      | id                 | Name | DisplayText    | TargetURL                            | Sequence | booleanValue                                         | customSettingApiName          |
      | a0E1500000VP7l5EAD | F3   | 508 Compliance | /apex/GNT__Help?uniqueName=Help-0113 | 3        | GNT__Active__c:true,GNT__TermsAndConditions__c:false | GNT__CustomAppFooterConfig__c |
    When I login as "Automation" user
    When I navigate to "Planning" tab
    Then I see "508 Compliance" footer link is present

  @69951   @expectedTargetURLShouldGetsOpenByClickOnFooterLinks @F3
  Scenario Outline: validate given target URL opens by click on 508 Compliance link from footer
    When I login as "Automation" user
    When I navigate to "Planning" tab
    When I click on footer links "508 Compliance"
    When I switch to tab number "1"
    Then I see "Complete" "<Logout_URL>" page is displayed
    Examples:
      | Logout_URL                                                                             |
      | https://ggptest5-dev-ed--gnt.na69.visual.force.com/apex/apex/Help?uniqueName=Help-0094 |

  @69952   @linkNameShouldGetDisplayedOnFooterAsPerGivenTextInDisplayText @F3 @wip
  Scenario: validate footer link name is displayed as given in display text field
    When I login as "Automation" user
    When I navigate to "Planning" tab
    Then I see "Test Automation" footer link is present
#
#  @69953   @footerLinkShouldGetsDisplayedOnGivenSequenceNumber @F3
#  Scenario: validate footer link should get displayed on given sequence no
#    When I login as "Automation" user
#    When I navigate to "Planning" tab
#    Then I see "508 Compliance" footer link is displayed at position "3"





