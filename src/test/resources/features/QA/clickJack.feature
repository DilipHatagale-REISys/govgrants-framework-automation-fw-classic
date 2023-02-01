@FrameworkCookies-component @regression-QA @FrameworkCookies
Business Need: FrameworkCookies Component Scenarios
  Test all FrameworkCookies component based scenarios
  As a configuration manager i make different configurational changes in FrameworkCookies component and will validate them.

  @268034 @US-265865
  Scenario: Phase Level-To verify when user changes pagination to Last and click on same phase then table should get open on the page where pagination was set to Last.
    When I login as "ADMIN" user
    And I click on "Setup" tab
    When I perform quick search for "Session Settings"
    And I click on "Session Settings"
    And I enable checkboxces for Clickjack Protection
    And I click on "Save" in the page details
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click on enhanced charts id "---program:-:Enhanced_FunnelID---"
    Then I see "Enhanced Funnel" displayed in modal
