@Collab-component @regression-test8 @collab
Business Need: collab Component Scenarios
  Test all collab component based scenarios
  As a configuration manager i make different configurational changes in collab component and will validate them.

  @104686    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsAdminUser
  Scenario: validate the pop-up appears by perforing delete action at my feed section by Admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on "Delete" action at "Test Automation Admin Comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Test Automation Admin Comment" in my feed section and share the comment
    And I click on "Delete" action at "Test Automation Admin Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure to delete this comment?" is displayed

  @104678    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsSPIUserFromHomePhase
  Scenario: validate the pop-up appears by perfomring delete action at my feed section by SPI user from home phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    And I click on "Delete" action at "Test Automation SPI Comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    And I click on "Comment" action at "Test Post for automation-SPI DND" comment inside my feed
    And I enter value "Test Automation SPI Comment" in my feed section and share the comment
    And I click on "Delete" action at "Test Automation SPI Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure to delete this comment?" is displayed

  @104681    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsSPIUserAtCollabPhase
  Scenario: validate the pop-up appears by performing delete action at my feed section by SPI user at collab phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Delete" action from dropdown at "Test Automation SPI collab phase Comment" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    And I enter value "Test Automation SPI collab phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation SPI collab phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure to delete this post?" is displayed

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
    And I click modal button "OK"
    When I pause execution for "5" seconds
    And I enter value "Test Automation SPI application phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation SPI application phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure to delete this post?" is displayed

  @104680    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsAdminUserAtCollabTab
  Scenario: validate the pop-up appears by performing delete action at my feed section by Admin user at collab tab
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Delete" action from dropdown at "Test Automation Admin collab phase Comment" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    And I enter value "Test Automation Admin collab phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation Admin collab phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure to delete this post?" is displayed

  @104688    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsPMUser
  Scenario: validate the pop-up appears by perforing delete action at my feed section by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on "Delete" action at "Test Automation PM Comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    And I click on "Comment" action at "Test Post for automation-PM DND" comment inside my feed
    And I enter value "Test Automation PM Comment" in my feed section and share the comment
    And I click on "Delete" action at "Test Automation PM Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure to delete this comment?" is displayed

  @104687    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsPMUserAtCollabTab
  Scenario: validate the pop-up appears by performing delete action at my feed section by PM user at collab tab
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Delete" action from dropdown at "Test Automation PM collab phase Comment" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    And I enter value "Test Automation PM collab phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation PM collab phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure to delete this post?" is displayed

  @104683    @verifyThatByClickOnDeleteCommentActionCommentDeletedByLoggedInAsSPIUserFromHomePhase
  Scenario: validate the delete action at comment section at my feed section by SPI user from home phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    And I click on "Comment" action at "Test Post for automation-SPI DND" comment inside my feed
    And I enter value "Test Automation SPI Comment delete" in my feed section and share the comment
    And I click on "Delete" action at "Test Automation SPI Comment delete" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    Then I do not see "Test Automation SPI Comment delete" inside flex table with id "---program:-:myFeedTableId---"

  @104338    @verifyPostBoxAcceptAndWrapTextInProperFormatByLoggedInAsSPIUserAtApplicationPhase
  Scenario: validate text wrap and alignment at my feed section by SPI user at application phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search f1or "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Collab" sub tab
    Then I see entered text in my feed section displayed properly

  @104335    @verifyPostBoxAcceptAndWrapTextInProperFormatByLoggedInAsPMUserAtApplicationPhase
  Scenario: validate text wrap and alignment at my feed section by PM user at application phase
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Collab" sub tab
    Then I see entered text in my feed section displayed properly

  @104343    @verifyPostBoxAcceptAndWrapTextInProperFormatByLoggedInAsAdminUserAtApplicationPhase
  Scenario: validate text wrap and alignment at my feed section by admin user at application phase
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Collab" sub tab
    Then I see entered text in my feed section displayed properly

  @104675    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsAdminUserAtApplicationPhase
  Scenario: validate the pop-up appears by performing delete action at my feed section by admin user at application phase
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Delete" action from dropdown at "Test Automation ADMIN application phase Comment" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    And I enter value "Test Automation ADMIN application phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation ADMIN application phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure to delete this post?" is displayed

  @104674    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsPMUserAtApplicationPhase
  Scenario: validate the pop-up appears by performing delete action at my feed section by PM user at application phase
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Delete" action from dropdown at "Test Automation PM application phase Comment" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    And I enter value "Test Automation PM application phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation PM application phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure to delete this post?" is displayed