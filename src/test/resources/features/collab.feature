@Collab-component @regression-test8 @collab
Business Need: collab Component Scenarios
  Test all collab component based scenarios
  As a configuration manager i make different configurational changes in collab component and will validate them.

  @104686    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsAdminUser
  Scenario: validate the pop-up appears by perforing delete action at my feed section by Admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on "Delete" action from dropdown at "Test Automation Admin Comment" comment inside my feed
    When I click alert button "OK"
    When I pause execution for "2" seconds
    And I enter value "Test Automation Admin Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation Admin Comment" comment inside my feed
    Then I see alert message "Are you sure to delete this post?"

  @104678    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsSPIUserFromHomePhase
  Scenario: validate the pop-up appears by perfomring delete action at my feed section by SPI user from home phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    And I click on "Delete" action at "Test Automation SPI Comment" comment inside my feed
    When I click alert button "OK"
    When I pause execution for "2" seconds
    And I enter value "Test Automation SPI Comment" in my feed section and share the comment
    And I click on "Delete" action at "Test Automation SPI Comment" comment inside my feed
    Then I see alert message "Are you sure to delete this post?"

  @104681    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsSPIUserAtCollabPhase
  Scenario: validate the pop-up appears by performing delete action at my feed section by SPI user at collab phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Delete" action from dropdown at "Test Automation SPI collab phase Comment" comment inside my feed
    When I click alert button "OK"
    When I pause execution for "2" seconds
    And I enter value "Test Automation SPI collab phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation SPI collab phase Comment" comment inside my feed
    Then I see alert message "Are you sure to delete this post?"

  @104679    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsSPIUserAtApplicationPhase
  Scenario: validate the pop-up appears by performing delete action at my feed section by SPI user at application phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Delete" action from dropdown at "Test Automation SPI application phase Comment" comment inside my feed
    When I click alert button "OK"
    When I pause execution for "2" seconds
    And I enter value "Test Automation SPI application phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation SPI application phase Comment" comment inside my feed
    Then I see alert message "Are you sure to delete this post?"

  @    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsAdminUserAtCollabTab
  Scenario: validate the pop-up appears by perforing delete action at my feed section by Admin user at collab tab
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Delete" action from dropdown at "Test Automation Admin collab phase Comment" comment inside my feed
    When I click alert button "OK"
    When I pause execution for "2" seconds
    And I enter value "Test Automation Admin collab phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation Admin collab phase Comment" comment inside my feed
    Then I see alert message "Are you sure to delete this post?"