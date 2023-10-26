@Modal-component @regression-QA @Modal
Business Need: Modal Component Scenarios
  Test all Modal component based scenarios
  As a configuration manager i make different configurational changes in Modal component and will validate them.

  @201270 @201271 @201272
  Scenario Outline: Modal- Admin- Config- Verify Pop-up window (modal window) should open
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "5" seconds
    Then I see "Create Program" modal window is open in same tab

    Examples:
      | User  |
      | ADMIN |
      #| PM    |
