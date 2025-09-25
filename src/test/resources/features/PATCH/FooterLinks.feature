@FooterLinks
Business Need: Footer Links Component Scenarios
  Test all Footer configuration based scenarios
  As a configuration manager i make different changes related to footer links and will validate them in history component.

      @544847_1
    Scenario Outline: All footer link should open in New tab
      When I login to "As a Grantor" app as "<User>" user
      When I navigate to "Home" tab
      Then I softly see "Accessibility Policy" footer link is present
      Then I softly see "Privacy Policy" footer link is present
      Then I softly see "Disclaimers" footer link is present
      Then I softly see "508 Compliance" footer link is present
      And I click on "Accessibility Policy" footer link
      Then I see new tab is opened
      And I switch to parent tab
      And I click on "Privacy Policy" footer link
      Then I see new tab is opened
      And I switch to parent tab
      And I click on "Disclaimers" footer link
      Then I see new tab is opened
      And I switch to parent tab
      And I click on "508 Compliance" footer link
      Then I see new tab is opened

      Examples:
        | User |
     #| ADMIN |
        | PM    |

  @544847_2
  Scenario: All footer link should open in New tab
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I softly see "Accessibility Policy" footer link is present
    Then I softly see "Privacy Policy" footer link is present
    Then I softly see "Disclaimers" footer link is present
    Then I softly see "508 Compliance" footer link is present
    And I click on "Accessibility Policy" footer link
    Then I see new tab is opened
    And I switch to parent tab
    And I click on "Privacy Policy" footer link
    Then I see new tab is opened
    And I switch to parent tab
    And I click on "Disclaimers" footer link
    Then I see new tab is opened
    And I switch to parent tab
    And I click on "508 Compliance" footer link
    Then I see new tab is opened