@QAtrial-component1 @regression-QA
Business Need: collab Component Scenarios
  Test all collab component based scenarios
  As a configuration manager i make different configurational changes in collab component and will validate them.

  @207058
    Scenario:asd
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation PM @Automation Admin" in my feed section and share the post
    And I pause execution for "3" seconds
    Then I see "@Automation PM@Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

    @207060
    Scenario: Automated
      When I login as "ADMIN" user
      When I setup my app as "As a Grantor"
      And I navigate to "Home" tab
      And I navigate to "Collaboration (Collab)" tab
      And I enter value "Automation PM Automation Admin" in my feed section and share the post
      Then I see "Automation PM Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

    @207084
    Scenario:
      When I login as "PM" user
      When I setup my app as "As a Grantor"
      And I navigate to "Home" tab
      And I navigate to "Collaboration (Collab)" tab
      And I enter value "Test Automation @[Automation EXE] collab phase Comment" in my feed section and share the post
      Then I see "@Automation EXE Test Automation @Automation EXE collab phase Comment" inside flex table with id "---program:-:myFeedTableId---"

    @207106 @vip
    Scenario:
      When I login as "PM" user
      When I setup my app as "As a Grantor"
      And I navigate to "Home" tab
      And I navigate to "Collaboration (Collab)" tab
      And I enter value "@Automation PM@Automation EXE" in my feed section and share the post
      And I navigate to "Home" tab
      And I click on parallel menu button in flex table title "My Feed"
      And I select "All Users" from dropdown
      Then I see "@Automation PM @Automation EXE @Automation PM @Automation EXE" inside flex table with id "---program:-:myFeedTableId---"


      @221293
      Scenario:
        Given I am on "SUBPORTAL" portal
        When I login to "Grants Portal" app as "SPI" user
        And I navigate to "Grants" tab
        When I perform quick search for "{Framework_recordUsed:GrantsRecord}"
        When I click on "View Program Details" icon for "{Framework_recordUsed:GrantsRecord}" inside table
        When I navigate to "Subawards" sub tab
        And I save the field containing "Active Subaward" as "SUBAWARD_EGMSID"
        And I click on "View" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
        When I navigate to "Budget" sub tab
        Then I softly see "Award Budget" page block displayed

    @221291
    Scenario:
      When I login as "Admin" user
      When I setup my app as "As a Grantor"
      And I navigate to "Applications" tab
      And I click toggle button to select "Applications - All"
      When I perform quick search for "AP-A11-002"
      When I click on "View" icon for "AP-A11-002" inside table
      When I navigate to "Budget" sub tab
      Then I softly see "Budget Periods" page block displayed
      And I perform scroll on page layout
      Then I see