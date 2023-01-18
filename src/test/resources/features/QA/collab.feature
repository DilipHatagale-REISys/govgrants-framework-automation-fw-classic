@Collab-component1 @regression-QA @collab
Business Need: collab Component Scenarios
  Test all collab component based scenarios
  As a configuration manager i make different configurational changes in collab component and will validate them.

  @104686    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsAdminUser
  Scenario: validate the pop-up appears by perforing delete action at my feed section by Admin user
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I refresh the page
    And I enter value "Test Post for automation-Admin DND" in my feed section and share the post
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I pause execution for "5" seconds
    And I enter value "Test Automation Admin Comment" in my feed section and share the comment
    Then I softly see "Test Automation Admin Comment" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation Admin Comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Test Automation Admin Comment" in my feed section and share the comment
    Then I softly see "Test Automation Admin Comment" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation Admin Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this comment?" is displayed

  @104678    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsSPIUserFromHomePhase
  Scenario: validate the pop-up appears by perfomring delete action at my feed section by SPI user from home phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Delete" action at "Test Automation SPI Comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    And I click on "Comment" action at "Test Post for automation-SPI DND" comment inside my feed
    And I enter value "Test Automation SPI Comment" in my feed section and share the comment
    And I click on "Delete" action at "Test Automation SPI Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this comment?" is displayed

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
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

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
    And I pause execution for "3" seconds
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

  @104680    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsAdminUserAtCollabTab
  Scenario: validate the pop-up appears by performing delete action at my feed section by Admin user at collab tab
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation Admin collab phase Comment" in my feed section and share the comment
    Then I softly see "Test Automation Admin collab phase Comment" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation Admin collab phase Comment" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    And I enter value "Test Automation Admin collab phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation Admin collab phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

  @104688    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsPMUser
  Scenario: validate the pop-up appears by perforing delete action at my feed section by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation PM Comment" in my feed section and share the comment
    Then I softly see "Test Automation PM Comment" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation PM Comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation PM Comment" in my feed section and share the comment
    Then I softly see "Test Automation PM Comment" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation PM Comment" comment inside my feed
    And I pause execution for "5" seconds
    Then I see confirmation box with body "Are you sure you want to delete this comment?" is displayed

  @104687    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsPMUserAtCollabTab
  Scenario: validate the pop-up appears by performing delete action at my feed section by PM user at collab tab
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation PM collab phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation PM collab phase Comment" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    And I enter value "Test Automation PM collab phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation PM collab phase Comment" comment inside my feed
    And I pause execution for "5" seconds
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

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
    And I pause execution for "5" seconds
    Then I do not see "Test Automation SPI Comment delete" comment inside "Test Post for automation-SPI DND" post at collab

  @104338    @verifyPostBoxAcceptAndWrapTextInProperFormatByLoggedInAsSPIUserAtApplicationPhase
  Scenario: validate text wrap and alignment at my feed section by SPI user at application phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Collab" sub tab
    Then I see entered text in my feed section displayed properly

  @104335    @verifyPostBoxAcceptAndWrapTextInProperFormatByLoggedInAsPMUserAtApplicationPhase
  Scenario: validate text wrap and alignment at my feed section by PM user at application phase
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    Then I see entered text in my feed section displayed properly

  @104343    @verifyPostBoxAcceptAndWrapTextInProperFormatByLoggedInAsAdminUserAtApplicationPhase
  Scenario: validate text wrap and alignment at my feed section by admin user at application phase
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    Then I see entered text in my feed section displayed properly

  @104675    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsAdminUserAtApplicationPhase
  Scenario: validate the pop-up appears by performing delete action at my feed section by admin user at application phase
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    #And I click on "Delete" action from dropdown at "Test Automation ADMIN application phase Comment" comment inside my feed
    #And I click modal button "OK"
    When I pause execution for "5" seconds
    And I enter value "Test Automation ADMIN application phase Comment" in my feed section and share the post
    And I pause execution for "3" seconds
    And I click on "Delete" action from dropdown at "Test Automation ADMIN application phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

  @104674    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsPMUserAtApplicationPhase
  Scenario: validate the pop-up appears by performing delete action at my feed section by PM user at application phase
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    #And I click on "Delete" action from dropdown at "Test Automation PM application phase Comment" comment inside my feed
    #And I click modal button "OK"
    When I pause execution for "5" seconds
    And I enter value "Test Automation PM application phase Comment" in my feed section and share the post
    And I pause execution for "5" seconds
    And I click on "Delete" action from dropdown at "Test Automation PM application phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

  @111868    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtCollabTabByLoginAsADMINUser
  Scenario: validate that by click on refresh icon, a loading icon appears at collab tab by login as ADMIN user
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @111864    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtCollabTabByLoginAsPMUser
  Scenario: validate that by click on refresh icon, a loading icon appears at collab tab by login as pm user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @111866    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtCollabTabByLoginAsSPIUser
  Scenario: validate that by click on refresh icon, a loading icon appears at collab tab by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Collaboration (Collab)" tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @112487    @verifyThatByClickOnDeleteActionAtPostThenRespectivePostIsGettingDeletedByAdminUserFromHomePhase
  Scenario: validate the delete action at post present under home phase -  my feed section by admin user
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I refresh the page
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation Admin Post Delete Action Access" in my feed section and share the post
    When I pause execution for "10" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Delete" action from dropdown at "Test Automation Admin Post Delete Action Access" comment inside my feed
    And I pause execution for "7" seconds
    And I click modal button "OK"
    And I pause execution for "5" seconds
    Then I do not see "Test Automation Admin Post Delete Action Access" inside flex table with id "---program:-:myFeedTableId---"

  @112484    @verifyThatByClickOnDeleteActionAtPostThenRespectivePostIsGettingDeletedByAdminUserFromCollabPhase
  Scenario: validate the delete action at post present under collab phase-my feed section by admin user
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I refresh the page
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation collab Delete action by admin" in my feed section and share the post
    And I pause execution for "5" seconds
    And I click on "Delete" action from dropdown at "Test Automation collab Delete action by admin" comment inside my feed
    And I click modal button "OK"
    Then I do not see "Test Automation collab Delete action by admin" inside flex table with id "---program:-:myFeedTableId---"

  @112490    @verifyThatAdminUserCanPostFromCollabPhase
  Scenario: validate that a post can be shared from collab phase-my feed section by admin user
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation collab admin to check post share access" in my feed section and share the comment
    Then I softly see "Test Automation collab admin to check post share access" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation collab admin to check post share access" comment inside my feed
    And I click modal button "OK"
    Then I softly do not see "Test Automation collab admin to check post share access" inside flex table with id "---program:-:myFeedTableId---"

  @112485    @verifyThatByClickOnDeleteActionAtPostUnderRecordLevelCollabPhaseThenRespectivePostIsGettingDeletedByAdminUser
  Scenario: validate that delete action at post present at record detail collab phase by admin user from application phase
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:programInTestingPurposeOnlyAdminDraft}"
    When I click on "View" icon for "{Framework_recordUsed:programInTestingPurposeOnlyAdminDraft}" inside table
    When I navigate to "Collab" sub tab
    And I enter value "Test Automation record admin to check post delete access" in my feed section and share the post
    And I pause execution for "3" seconds
    And I click on "Delete" action from dropdown at "Test Automation record admin to check post delete access" comment inside my feed
    And I click modal button "OK"
    Then I do not see "Test Automation record admin to check post delete access" inside flex table with id "---program:-:myFeedTableId---"

  @112491    @verifyThatAdminCanSendACommentFromRecordLevelPlanningPhase-MyFeedSection
  Scenario: validate that admin can send a comment to post from record level collab tab
    When I login as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:programInTestingPurposeOnlyAdminDraft}"
    When I click on "View" icon for "{Framework_recordUsed:programInTestingPurposeOnlyAdminDraft}" inside table
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation record comment" in my feed section and share the comment
    Then I softly see "Test Automation record comment" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation record comment" comment inside my feed
    And I click modal button "OK"
    Then I softly do not see "Test Automation record comment" inside flex table with id "---program:-:myFeedTableId---"

  @112492    @verifyThatAdminCanSendACommentFromHomePhase-MyFeedSection
  Scenario: validate that admin can send a comment to post from home phase-my feed section
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Test Automation Admin Comment home" in my feed section and share the comment
    Then I softly see "Test Automation Admin Comment home" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation Admin Comment home" comment inside my feed
    And I click modal button "OK"
    And I pause execution for "3" seconds
    And I refresh the page
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I softly do not see "Test Automation Admin Comment home" comment inside "Test Post for automation-Admin DND" post at collab

  @112199    @verifyThatPMUserCanSeeToMeOptionInsideMenuAtHomePhase-MyFeedSection
  Scenario: validate that PM user can see To Me option inside menu at home phase-my feed section
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    Then I see "To Me" option is displayed at collab menu

  @112213    @verifyThatPMUserCanSeeAllUsersOptionInsideMenuAtHomePhase-MyFeedSection
  Scenario: validate that PM user can see all users option inside menu at home phase-my feed section
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    Then I see "All Users" option is displayed at collab menu

  @112202    @verifyThatSPIUserCanNotSeeToMeOptionInsideMenuAtHomePhase-MyFeedSection
  Scenario: validate that SPI user can see To Me option inside menu at home phase-my feed section
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    Then I see Menu Icon is not displayed at my feed section

  @112217    @verifyThatSPIUserCanNotSeeAllUsersOptionInsideMenuAtHomePhase-MyFeedSection
  Scenario: validate that SPI user can see all users option inside menu at home phase-my feed section
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    Then I see Menu Icon is not displayed at my feed section

  @112219    @verifyThatPMUserCanClickOnAllUsersOptionInsideMenuAtHomePhaseThenAllUsersPostDisplayed
  Scenario: validate that by click on All users menu then, all users post/comment are displayed to PM user at home phase-my feed section
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

  @112027    @verifyThatIfpmUserTriesToMentionExternalUserThenAutoCompleteListShouldNotDisplayedAtPost
  Scenario: validate that if pm user tries to mention external user in post then mention auto complete list is not displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation SPI" in the post at collab
    And I pause execution for "7" seconds
    Then I do not see mention auto complete list is displayed at collab post

  @114121    @verifyThatIfPMUserTriesToMenionExternalUserThenAutoCompleteListShouldNotDisplayedAtComment @wip
  Scenario: validate that if pm user tries to mention external user in comment then mention auto complete list is not displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation SPI" in the comment at collab
    Then I do not see mention auto complete list is displayed at collab comment

  @115006    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtRecordLevelCollabByLoginAsADMINUser
  Scenario: validate that by click on refresh icon, a loading icon appears at record level collab tab by login as ADMIN user
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:programInTestingPurposeOnlyAdminDraft}"
    When I click on "View" icon for "{Framework_recordUsed:programInTestingPurposeOnlyAdminDraft}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Refresh" button inside collab tab
    Then I see collab my feed page refreshed

  @115004    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtHomeLevelCollabByLoginAsADMINUser
  Scenario: validate that by click on refresh icon, a loading icon appears at home level collab tab by login as ADMIN user
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on refresh button at collab
    And I pause execution for "5" seconds
    Then I see collab my feed page refreshed

  @115344    @verifyThatOnlyMyFeedSectionDisplayedToSPIUserAtHomePhase
  Scenario: validate that only my feed section is displayed to SPI user at home phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    Then I see Menu bar is not displayed at my feed

  @115347    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtHomeLevelCollabByLoginAsSPIUser
  Scenario: validate that by click on refresh icon, a loading icon appears at home level collab tab by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @115450    @verifyThatNoFeedAvailableIsDisplayedAtMyFeedSectionToPMUser
  Scenario: validate that No feed available is displayed at my feed-to me only section by login as PM user
    When I login as "PM1" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "To Me" from dropdown
    Then I see "No feeds available." inside flex table with id "---program:-:myFeedTableId---"

  @112330   @verifyThatNoFeedAvailableIsDisplayedAtCollabPhaseInsideToMeByLoginAsPMUser
  Scenario: validate that No feed available is displayed at my feed-to me only section at collab phase by login as PM user
    When I login as "PM1" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "To Me" submenu inside "My Feeds" menu on collab left panel
    Then I see "No feeds available." inside flex table with id "---program:-:myFeedTableId---"

  @115482    @verifyThatNameOfUsersWhoLikesThePostIsDisplayedAtMyFeedSectionToAdminUser
  Scenario: validate that name of users who like the post is displayed at my feed-to me only section by login as admin user
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "You and Automation PM like this." in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "You and Automation PM like this." inside flex table with id "---program:-:myFeedTableId---"

  @115483    @verifyThatNameOfUsersWhoLikesThePostIsDisplayedAtMyFeedSectionToPMUser
  Scenario: validate that name of users who like the post is displayed at my feed-to me only section by login as PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "You and Automation PM like this." in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "You and Automation PM like this." inside flex table with id "---program:-:myFeedTableId---"

  @115494   @verifyGovGrantLogoIsDisplayedAtCollabPhaseByLoginAsAdminUser
  Scenario: validate that govgrants logo is displayed at collab phase by login as admin user
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    Then I see navigation logo on page

  @115528    @verifyGovGrantLogoIsDisplayedAtCollabPhaseByLoginAsSPIUser
  Scenario: validate that govgrants logo is displayed at collab phase by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Collaboration (Collab)" tab
    Then I see navigation logo on page

  @115988    @verifyThatIfAdminUserUsedAtMentionInCommentThenAutoCompleteListIsDisplayedAtComment
  Scenario: validate that if admin user at mention user in comment then mention auto complete list is displayed
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation" in the comment at collab
    And I pause execution for "5" seconds
    Then I see mention auto complete list is displayed at collab comment

  @115989     @verifyThatIfAdminUserUsedAtMentionInCommentThenAutoCompleteListIsDisplayedAtCommentAtCollabPhase
  Scenario: validate that if admin user at mention user in comment then mention auto complete list is displayed at collab phase
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Post for automation-Admin DND" in my feed section and share the post
    And I refresh the page
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation" in the comment at collab
    Then I see mention auto complete list is displayed at collab comment

  @115990     @verifyThatIfAdminUserUsedAtMentionInCommentThenAutoCompleteListIsDisplayedAtCommentAtRecordLevelCollab
  Scenario: validate that if admin user at mention user in comment then mention auto complete list is displayed at record level collab phase
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:programInTestingPurposeOnlyAdminDraft}"
    When I click on "View" icon for "{Framework_recordUsed:programInTestingPurposeOnlyAdminDraft}" inside table
    When I navigate to "Collab" sub tab
    And I pause execution for "5" seconds
    And I enter value "Post at record level" in my feed section and share the post
    And I click on "Comment" action at "Post at record level" comment inside my feed
    And I enter value "Hello @Automation" in the comment at collab
    And I pause execution for "10" seconds
    Then I see mention auto complete list is displayed at collab comment

  @lmn @115346    @verifyBurgerMenuIconIsNotDisplayedAtExternalUserCollabMyFeedSection-HomePhase
  Scenario: validate that burger menu icon is not displayed at my feed section by login as external user - home phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    Then I see Menu Icon is not displayed at my feed section

  @118099    @verifyThatAdminUserCanCommentOnPostAtCollabPhase
  Scenario: validate that pop-up appears by perfomring delete action at my feed section by SPI user from home phase
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Post for automation-Admin DND" in my feed section and share the post
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "@Simon PM" in my feed section and share the comment
    Then I see "@Simon PM" inside flex table with id "---program:-:myFeedTableId---"

  @120990   @VerifyCrossIconIsDisplayedAtCollabPhaseQuickSearchBox
  Scenario: validate that cross icon is displayed at collab phase quick search box
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabFeeds"

  @120991   @VerifyCrossIconIsDisplayedAtCollabPhaseMyColleaguesQuickSearchBox
  Scenario: validate that cross icon is displayed at collab phase - my colleagues quick search box
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Colleagues" menu inside collab sidebar
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabColleagues"

  @120992   @VerifyCrossIconIsDisplayedAtCollabPhaseExternalUserTabQuickSearchBox
  Scenario: validate that cross icon is displayed at collab phase - external users quick search box
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "External Users" menu inside collab sidebar
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabCommunityUsers"

  @120992   @VerifyCrossIconIsDisplayedAtCollabPhaseExternalUserTabQuickSearchBox
  Scenario: validate that cross icon is displayed at collab phase - external users quick search box
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "External Users" menu inside collab sidebar
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabCommunityUsers"

  @120994   @VerifyCrossIconIsDisplayedAtCollabPhaseMyGroupsTabQuickSearchBox
  Scenario: validate that cross icon is displayed at collab phase - my group quick search box
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Groups" menu inside collab sidebar
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabGroups"

  @119853   @VerifyFlexGridDisplayedAtCollabPhaseMyContentTab
  Scenario: validate flex grid displayed at collab phase my content tab
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Content" menu inside collab sidebar
    Then I see expected table with id "WorkSpaceFilesFlexToggle"

  @120448    @verifyThatUserLogoAtCollabCommentIsSmallerAsCompareToPostLogoAtCollabMyFeedSection
  Scenario: validate that user logo at comment section is small in size at collab - my feed section
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation Admin Comment" in my feed section and share the post
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Automation Admin Comment" comment inside my feed
    Then I see user logo at comment "Test Automation Admin Comment" is small in size inside my feed home

  @121192    @verifyThatUploadFileFromComputerAndLibraryTabsDisplayedAtAttachFileModalAtRecordLevelCollabTab @doubt
  Scenario: validate that upload file from library and computer is displayed at attach file modal at record level collab tab
    When I login as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:programInTestingPurposeOnlyAdminDraft}"
    When I click on "View" icon for "{Framework_recordUsed:programInTestingPurposeOnlyAdminDraft}" inside table
    When I navigate to "Collab" sub tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    #Then I softly see tab label as "Upload File" at files library upload modal
    Then I softly see tab label as "Upload File from Computer" at files library upload modal
    Then I softly see tab label as "Upload File from Library" at files library upload modal

  @121306    @verifyThatUploadFileFromComputerAndLibraryTabsDisplayedAtAttachFileModalAtCollabPhase
  Scenario: validate that upload file from library and computer is displayed at attach file modal at collab phase
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I softly see tab label as "Upload File from Computer" at files library upload modal
    Then I softly see tab label as "Upload File from Library" at files library upload modal

  @121305    @verifyThatAddFilesModalDisplayedAtHomePhaseByClickOnAttachButton
  Scenario: validate that add file modal displayed by click on Attach File button at my feed - Home phase
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "5" seconds
    Then I see "Add Files" opens in overLay window

  @121625    @verifyThatUploadFileFromComputerAndLibraryTabsIsNotDisplayedAtAttachFileModalAtHomePhase
  Scenario: validate that upload file from library and computer is not displayed at attach file modal at home phase
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Post for automation-Admin DND" in my feed section and share the post
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I softly do not see tab label as "Upload File" at files library upload modal
    Then I softly do not see tab label as "Upload File" at files library upload modal

  @122006    @verifyThatUserLogoAtCollabCommentIsSmallerAsCompareToPostLogoAtCollabMyFeedSectionRecordLevel
  Scenario: validate that user logo at comment section is small in size at collab - my feed section record level
    When I login as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:programInTestingPurposeOnlyAdminDraft}"
    When I click on "View" icon for "{Framework_recordUsed:programInTestingPurposeOnlyAdminDraft}" inside table
    When I navigate to "Collab" sub tab
    Then I see user logo at comment "Test Automation PM Comment" is small in size inside my feed collab

  @122007    @verifyThatUserLogoAtCollabCommentIsSmallerAsCompareToPostLogoAtCollabMyFeedSectionAtCollabPhase
  Scenario: validate that user logo at comment section is small in size at collab - my feed section at collab phase
    When I login as "ADMIN" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation PM Comment" in my feed section and share the post
    And I click on "Comment" action at "Test Automation Admin Comment" comment inside my feed
    Then I see user logo at comment "Test Automation PM Comment" is small in size inside my feed collab

  @123530    @verifyThatUploadFileFromComputerAndLibraryTabsIsDisplayedAtAttachFileModalAtHomePhaseOnlyForPostsFromRecord
  Scenario: validate that upload file from library and computer is displayed at attach file modal at home phase posts but posted from record
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I softly see tab label as "Choose a File OR Drag it here" at files library upload modal

  @104329   @VerifyPerticularSubMenuIsNotDisplayedInsideCollabSidebarForAdminUser
  Scenario: validate that "I'm Following" submenu is not displayed inside collab sidebar for admin user
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    Then I do not see "I'm Following" inside "My Feeds" menu at collab sidebar

  @104324 @VerifyPerticularSubMenuIsNotDisplayedInsideCollabSidebarForPMUser
  Scenario: validate that "I'm Following" submenu is not displayed inside collab sidebar for PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    Then I do not see "I'm Following" inside "My Feeds" menu at collab sidebar

  @125729    @verifyThatUploadFileFromComputerAndLibraryTabsIsNotDisplayedAtAttachFileModalAtGroupPostAtCollabPhase
  Scenario: validate that upload file from library and computer is not displayed at attach file modal at group post on collab phase
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Post for automation-Admin DND" in my feed section and share the post
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I softly do not see tab label as "Upload File from Computer" at files library upload modal
    Then I softly do not see tab label as "Upload File from Library" at files library upload modal

  @176819 @jyoti
  Scenario: Collab - To verify, on Collab phase if the user clicks on 'Share' button without entering any text in the Comment/Post-box, the alert message should display "A comment is required"
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on button "Share" under collab for comment box
    Then I see alert message "A comment is required"

  @207088 @UserNameShouldDisplyedInTextFormat @Sprint8
  Scenario: Collab-To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the  record level collab
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    #And I enter value "Test @Automation PM" in my feed section and share the post
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207094 @MiddleUserNameShouldDisplyedInTextFormat @Sprint8
  Scenario: Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the home level collab for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test @Automation PM" inside "Post" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
  #  And I enter value "Test @Automation PM" in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207089 @UserNameShouldBeDisplayedAtTheStartingOfTheComment @Sprint8
  Scenario: Collab-To verify, If i add a user in a line then that user name should be displayed at the starting of the comment on the home level collab  for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation FO" inside "Post" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    #And I enter value "@Automation FO" in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "@Automation FO" inside flex table with id "---program:-:myFeedTableId---"

  @207092 @UserNameShouldBeDisplayedAtTheSMiddleOfTheComment @Sprint8
  Scenario:Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the home level collab for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation PM" in my feed section and share the post
    Then I see "Hello @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207086 @UserNameShouldBeDisplayedAtTheSSamePositionOfTheHomeLevel @Sprint8
  Scenario: To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the  home level collab for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation Admin" in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "@Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

  @207095 @UserNameShouldBeDisplayedAtTheSSamePositionOfTherecordLevel @sprint8
  Scenario: Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the record level collab for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation PM" inside "Post" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    Then I see "Hello @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207091 @UserNameShouldBeDisplayedAtStartingOfComment @sprint8
  Scenario:Collab-To verify, If i add a user in a line then that user name should be displayed at the starting of the comment on the record  level collab for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation PM" in my feed section and share the post
    And I pause execution for "3" seconds
    Then I see "@Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @223914 @UserNameShouldBeDisplayedAtStartingOfComment
  Scenario: Collab-To verify, If i add a user in a starting of line  then the user name should be displayed at the starting position in text format on the home
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation PM Hello" in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "@Automation PM Hello" inside flex table with id "---program:-:myFeedTableId---"

  @223917 @UserNameShouldBeDisplayedAtStartingOfCollabPhase
  Scenario: To verify, If i added user name should  be displayed at the starting of the comment on the collab phase for admin user
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation PM" in my feed section and share the post
    Then I see "@Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207083 @UserNameShouldBeDisplayedAtSamePosition @Sprint8
  Scenario: Collab-To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the collab phase  for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation Admin" inside "Post" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    And I pause execution for "5" seconds
    Then I see "@Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

  @176820 @Jyoti
  Scenario:  Collab - To verify, on Collab phase if the user clicks on 'Share' button after entering some text in the Comment/Post-box, the alert message should not display "A comment is required"
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation Admin" in my feed section and share the post
    And I pause execution for "5" seconds
    Then I do not see alert popup box

  @207018 @ToVerifyIfIaddauserinaline @Sprint8 @wip
  Scenario: Collab-To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the collab phase
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test @Automation PM" in my feed section and share the post
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207020 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: To verify, If i add a user in a line then that user name should not  be displayed at the starting of the comment on the collab phase
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test @Automation PM" in my feed section and share the post
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207047 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: Collab-To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the  home level collab
    When I login as "PM" user
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I pause execution for "3" seconds
    And I click on "Comment" action at "Test @Automation PM" comment inside my feed
    And I enter value "Test Automation PM" in my feed section and share the comment
    Then I see "Test Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207048 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: Collab-To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the  record level collab
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation PM " in my feed section and share the post
    Then I see "@Automation PM " inside flex table with id "---program:-:myFeedTableId---"

  @207049 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: Collab-To verify, If i add a user in a line then that user name should be displayed at the starting of the comment on the home level collab
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    #And I enter value "@Automation PM" in my feed section and share the post
    Then I see "@Automation PM" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "@Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207050 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: Collab-To verify, If i add a user in a line then that user name should be displayed at the starting of the comment on the record  level collab
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hi @Automation PM" in my feed section and share the post
    Then I see "Hi @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207052 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the collab phase
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
   # And I enter value "Test@Automation PM" in my feed section and share the post
    Then I see "Test@Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207053 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the home level collab
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    #And I enter value "Hello@Automation PM" in my feed section and share the post
    Then I see "Hello@Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207054 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the record level collab
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
  #  And I enter value "hi @Automation PM hello" in my feed section and share the post
    Then I see "hi @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207060 @vrushali @sprint-8
  Scenario:To verify,If add one user in starting of the line & second one is middle  then the user name should be displayed at the same position in text format on the record level collab
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Automation PM Automation Admin" in my feed section and share the post
    Then I see "Automation PM Automation Admin" inside flex table with id "---program:-:myFeedTableId---"