@Collab-PATCHcomponent @regression-PATCH @collab
Business Need: collab Component Scenarios
  Test all collab component based scenarios
  As a configuration manager i make different configurational changes in collab component and will validate them.

  @104686p @382404 @SanityPATCH @SanityPATCHCollab @382462  @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsAdminUser
  Scenario: validate the pop-up appears by perforing delete action at my feed section by Admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I pause execution for "5" seconds
    And I enter value "Test Automation Admin Comment" in my feed section and share the comment
    Then I softly see "Test Automation Admin Comment" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete this comment" action at "Test Automation Admin Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this comment?" is displayed

  @104678 @382406 @382463 @SanityPATCH @SanityPATCHCollab
  Scenario:
  |scenario 1  To  verify after delete the comment  we have to given the confirmation box  on collab  phase  for pm user|
  |Sanity TC_PM_To verify that, user should be able to delete the shared post by clicking on delete action button.|
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation Admin collab phase Comment" in my feed section and share the comment
    And I click on "Delete" action at "Test Automation Admin collab phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this comment?" is displayed

  @104681 @382464 @SanityPATCH @SanityPATCHCollab   @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsSPIUserAtCollabPhase
  Scenario:
  |validate the pop-up appears by performing delete action at my feed section by SPI user at collab phase|
  |Sanity TC_PM_To verify that, user should be able to delete the shared post by clicking on delete action button.|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation SPI collab phase Comment" in my feed section and share the post
    When I pause execution for "5" seconds
    And I click on "Delete" action from dropdown at "Test Automation SPI collab phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

  @104679    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsSPIUserAtApplicationPhase
  Scenario: validate the pop-up appears by performing delete action at my feed section by SPI user at application phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    And I enter value "Test Automation SPI application phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation SPI application phase Comment" comment inside my feed
    And I click modal button "Ok"
    When I pause execution for "5" seconds
    And I enter value "Test Automation SPI application phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation SPI application phase Comment" comment inside my feed
    And I pause execution for "3" seconds
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

  @104680    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsAdminUserAtCollabTab
  Scenario: validate the pop-up appears by performing delete action at my feed section by Admin user at collab tab
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation Admin collab phase Comment" in my feed section and share the comment
    Then I softly see "Test Automation Admin collab phase Comment" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation Admin collab phase Comment" comment inside my feed
    And I click modal button "Ok"
    When I pause execution for "5" seconds
    And I enter value "Test Automation Admin collab phase Comment" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation Admin collab phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

  @104688    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsPMUser
  Scenario: validate the pop-up appears by perforing delete action at my feed section by PM user
    When I login to "As a Grantor" app as "PM" user
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
    And I click modal button "Ok"
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
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation PM collab phase Comment" in my feed section and share the post
    When I pause execution for "5" seconds
    And I enter value "Test Automation PM collab phase Comment" in my feed section and share the comment
    And I click on "Delete" action from dropdown at "Test Automation PM collab phase Comment" comment inside my feed
    And I pause execution for "5" seconds
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

  @104683    @verifyThatByClickOnDeleteCommentActionCommentDeletedByLoggedInAsSPIUserFromHomePhase
  Scenario: validate the delete action at comment section at my feed section by SPI user from home phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    And I click on "Comment" action at "Test Post for automation-SPI DND" comment inside my feed
    And I enter value "Test Automation SPI Comment delete" in my feed section and share the comment
    And I click on "Delete" action at "Test Automation SPI Comment delete" comment inside my feed
    And I click modal button "Ok"
    And I refresh the page
    And I pause execution for "5" seconds
    Then I do not see "Test Automation SPI Comment delete" comment inside "Test Post for automation-SPI DND" post at collab

  @104338    @verifyPostBoxAcceptAndWrapTextInProperFormatByLoggedInAsSPIUserAtApplicationPhase
  Scenario: validate text wrap and alignment at my feed section by SPI user at application phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Collab" sub tab
    Then I see entered text in my feed section displayed properly

  @104335    @verifyPostBoxAcceptAndWrapTextInProperFormatByLoggedInAsPMUserAtApplicationPhase
  Scenario: validate text wrap and alignment at my feed section by PM user at application phase
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    Then I see entered text in my feed section displayed properly

  @104343    @verifyPostBoxAcceptAndWrapTextInProperFormatByLoggedInAsAdminUserAtApplicationPhase
  Scenario: validate text wrap and alignment at my feed section by admin user at application phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    Then I see entered text in my feed section displayed properly

  @104675    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsAdminUserAtApplicationPhase
  Scenario: validate the pop-up appears by performing delete action at my feed section by admin user at application phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    #And I click on "Delete" action from dropdown at "Test Automation ADMIN application phase Comment" comment inside my feed
    #And I click modal button "Ok"
    When I pause execution for "5" seconds
    And I enter value "Test Automation ADMIN application phase Comment" in my feed section and share the post
    And I pause execution for "3" seconds
    And I click on "Delete" action from dropdown at "Test Automation ADMIN application phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

  @104674    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsPMUserAtApplicationPhase
  Scenario: validate the pop-up appears by performing delete action at my feed section by PM user at application phase
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    #And I click on "Delete" action from dropdown at "Test Automation PM application phase Comment" comment inside my feed
    #And I click modal button "Ok"
    When I pause execution for "5" seconds
    And I enter value "Test Automation PM application phase Comment" in my feed section and share the post
    And I pause execution for "5" seconds
    And I click on "Delete" action from dropdown at "Test Automation PM application phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

  @111868    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtCollabTabByLoginAsADMINUser
  Scenario: validate that by click on refresh icon, a loading icon appears at collab tab by login as ADMIN user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @111864    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtCollabTabByLoginAsPMUser
  Scenario: validate that by click on refresh icon, a loading icon appears at collab tab by login as pm user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @111866    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtCollabTabByLoginAsSPIUser
  Scenario: validate that by click on refresh icon, a loading icon appears at collab tab by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @112487    @verifyThatByClickOnDeleteActionAtPostThenRespectivePostIsGettingDeletedByAdminUserFromHomePhase
  Scenario: validate the delete action at post present under home phase -  my feed section by admin user
    When I login to "As a Grantor" app as "ADMIN" user
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
    And I click modal button "Ok"
    And I pause execution for "5" seconds
    Then I do not see "Test Automation Admin Post Delete Action Access" inside flex table with id "---program:-:myFeedTableId---"

  @112484    @verifyThatByClickOnDeleteActionAtPostThenRespectivePostIsGettingDeletedByAdminUserFromCollabPhase
  Scenario: validate the delete action at post present under collab phase-my feed section by admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I refresh the page
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation collab Delete action by admin" in my feed section and share the post
    And I pause execution for "5" seconds
    And I click on "Delete" action from dropdown at "Test Automation collab Delete action by admin" comment inside my feed
    And I click modal button "Ok"
    Then I do not see "Test Automation collab Delete action by admin" inside flex table with id "---program:-:myFeedTableId---"

  @112490    @verifyThatAdminUserCanPostFromCollabPhase
  Scenario: validate that a post can be shared from collab phase-my feed section by admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation collab admin to check post share accessa" in my feed section and share the comment
    Then I softly see "Test Automation collab admin to check post share accessa" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation collab admin to check post share accessa" comment inside my feed
    And I click modal button "Ok"
    Then I softly do not see "Test Automation collab admin to check post share access" inside flex table with id "---program:-:myFeedTableId---"

  @112485    @verifyThatByClickOnDeleteActionAtPostUnderRecordLevelCollabPhaseThenRespectivePostIsGettingDeletedByAdminUser
  Scenario: validate that delete action at post present at record detail collab phase by admin user from application phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    And I enter value "Test Automation record admin to check post delete access" in my feed section and share the post
    And I pause execution for "3" seconds
    And I click on "Delete" action from dropdown at "Test Automation record admin to check post delete access" comment inside my feed
    And I click modal button "Ok"
    Then I do not see "Test Automation record admin to check post delete access" inside flex table with id "---program:-:myFeedTableId---"

  @112491    @verifyThatAdminCanSendACommentFromRecordLevelPlanningPhase-MyFeedSection
  Scenario: validate that admin can send a comment to post from record level collab tab
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation record comment" in my feed section and share the comment
    Then I softly see "Test Automation record comment" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation record comment" comment inside my feed
    And I click modal button "Ok"
    Then I softly do not see "Test Automation record comment" inside flex table with id "---program:-:myFeedTableId---"

  @112492    @verifyThatAdminCanSendACommentFromHomePhase-MyFeedSection
  Scenario: validate that admin can send a comment to post from home phase-my feed section
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Post for automation-Admin DND" in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Test Automation Admin Comment home" in my feed section and share the comment
    Then I softly see "Test Automation Admin Comment home" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation Admin Comment home" comment inside my feed
    And I click modal button "Ok"
    And I pause execution for "3" seconds
    Then I do not see "Test Automation Admin Comment home" inside "Test Post for automation-Admin DND" comment at collab

  @112199    @verifyThatPMUserCanSeeToMeOptionInsideMenuAtHomePhase-MyFeedSection
  Scenario: validate that PM user can see To Me option inside menu at home phase-my feed section
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    Then I see "To Me" option is displayed at collab menu

  @112213    @verifyThatPMUserCanSeeAllUsersOptionInsideMenuAtHomePhase-MyFeedSection
  Scenario: validate that PM user can see all users option inside menu at home phase-my feed section
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    Then I see "All Users" option is displayed at collab menu

  @112202    @verifyThatSPIUserCanNotSeeToMeOptionInsideMenuAtHomePhase-MyFeedSection
  Scenario: validate that SPI user can see To Me option inside menu at home phase-my feed section
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see Menu Icon is not displayed at my feed section

  @112217    @verifyThatSPIUserCanNotSeeAllUsersOptionInsideMenuAtHomePhase-MyFeedSection
  Scenario: validate that SPI user can see all users option inside menu at home phase-my feed section
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see Menu Icon is not displayed at my feed section

  @112219    @verifyThatPMUserCanClickOnAllUsersOptionInsideMenuAtHomePhaseThenAllUsersPostDisplayed
  Scenario: validate that by click on All users menu then, all users post/comment are displayed to PM user at home phase-my feed section
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

  @112027    @verifyThatIfpmUserTriesToMentionExternalUserThenAutoCompleteListShouldNotDisplayedAtPost
  Scenario: validate that if pm user tries to mention external user in post then mention auto complete list is not displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation SPI" in the post at collab
    And I pause execution for "7" seconds
    Then I do not see mention auto complete list is displayed at collab post

  @114121    @verifyThatIfPMUserTriesToMenionExternalUserThenAutoCompleteListShouldNotDisplayedAtComment @wip
  Scenario: validate that if pm user tries to mention external user in comment then mention auto complete list is not displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation SPI" in the comment at collab
    Then I do not see mention auto complete list is displayed at collab comment

  @115006    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtRecordLevelCollabByLoginAsADMINUser
  Scenario: validate that by click on refresh icon, a loading icon appears at record level collab tab by login as ADMIN user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{Framework_recordUsed:programforsendemail}"
    When I click on "View" icon for "{Framework_recordUsed:programforsendemail}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Refresh" button inside collab tab
    Then I see collab my feed page refreshed

  @115004    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtHomeLevelCollabByLoginAsADMINUser
  Scenario: validate that by click on refresh icon, a loading icon appears at home level collab tab by login as ADMIN user
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see Menu bar is not displayed at my feed

  @115347    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtHomeLevelCollabByLoginAsSPIUser
  Scenario: validate that by click on refresh icon, a loading icon appears at home level collab tab by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @112330   @verifyThatNoFeedAvailableIsDisplayedAtCollabPhaseInsideToMeByLoginAsPMUser
  Scenario: validate that No feed available is displayed at my feed-to me only section at collab phase by login as PM user
    When I login as "PM1" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "To Me" from dropdown
    Then I see "Automation Admin" inside flex table with id "---program:-:myFeedTableId---"
   # Then I see "No feeds available." inside flex table with id "---program:-:myFeedTableId---"

  @115482    @verifyThatNameOfUsersWhoLikesThePostIsDisplayedAtMyFeedSectionToAdminUser
  Scenario: validate that name of users who like the post is displayed at my feed-to me only section by login as admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "You and Automation PM like this." in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I pause execution for "10" seconds
    Then I see "You and Automation PM like this." inside flex table with id "---program:-:myFeedTableId---"

  @115483    @verifyThatNameOfUsersWhoLikesThePostIsDisplayedAtMyFeedSectionToPMUser
  Scenario: validate that name of users who like the post is displayed at my feed-to me only section by login as PM user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "You and Automation PM like this." in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I pause execution for "5" seconds
    Then I see "You and Automation PM like this." inside flex table with id "---program:-:myFeedTableId---"

  @115494   @verifyGovGrantLogoIsDisplayedAtCollabPhaseByLoginAsAdminUser
  Scenario: validate that govgrants logo is displayed at collab phase by login as admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    Then I see navigation logo on page

  @115528    @verifyGovGrantLogoIsDisplayedAtCollabPhaseByLoginAsSPIUser
  Scenario: validate that govgrants logo is displayed at collab phase by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    Then I see navigation logo on page

  @115988 @382389 @SanityPATCH @SanityPATCHCollab @verifyThatIfAdminUserUsedAtMentionInCommentThenAutoCompleteListIsDisplayedAtComment
  Scenario: validate that if admin user at mention user in comment then mention auto complete list is displayed
  |Sanity TC_Admin_To verify that, user should be able to enter comment, tag people and share post by click on 'Share' button.|
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation" in the comment at collab
    And I pause execution for "5" seconds
    Then I see mention auto complete list is displayed at collab comment

  @115989  @verifyThatIfAdminUserUsedAtMentionInCommentThenAutoCompleteListIsDisplayedAtCommentAtCollabPhase
  Scenario: validate that if PM user at mention user in comment then mention auto complete list is displayed at collab phase
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Post for automation-Admin DND" in my feed section and share the post
    And I refresh the page
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation" in the comment at collab
    Then I see mention auto complete list is displayed at collab comment

  @115990     @verifyThatIfAdminUserUsedAtMentionInCommentThenAutoCompleteListIsDisplayedAtCommentAtRecordLevelCollab
  Scenario: validate that if admin user at mention user in comment then mention auto complete list is displayed at record level collab phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on "View" icon in flex table for first draft record
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
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see Menu Icon is not displayed at my feed section

  @118099  @verifyThatAdminUserCanCommentOnPostAtCollabPhase
  Scenario: validate that pop-up appears by perfomring delete action at my feed section by SPI user from home phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Post for automation-Admin DND" in my feed section and share the post
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "@Simon PM" in my feed section and share the comment
    Then I see "@Simon PM" inside flex table with id "---program:-:myFeedTableId---"

  @120990   @VerifyCrossIconIsDisplayedAtCollabPhaseQuickSearchBox
  Scenario: validate that cross icon is displayed at collab phase quick search box
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabFeeds"

  @120991   @VerifyCrossIconIsDisplayedAtCollabPhaseMyColleaguesQuickSearchBox
  Scenario: validate that cross icon is displayed at collab phase - my colleagues quick search box
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Colleagues" menu inside collab sidebar
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabColleagues"

  @120992   @VerifyCrossIconIsDisplayedAtCollabPhaseExternalUserTabQuickSearchBox
  Scenario: validate that cross icon is displayed at collab phase - external users quick search box
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "External Users" menu inside collab sidebar
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabCommunityUsers"

  @120992   @VerifyCrossIconIsDisplayedAtCollabPhaseExternalUserTabQuickSearchBox
  Scenario: validate that cross icon is displayed at collab phase - external users quick search box
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "External Users" menu inside collab sidebar
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabCommunityUsers"

  @120994   @VerifyCrossIconIsDisplayedAtCollabPhaseMyGroupsTabQuickSearchBox
  Scenario: validate that cross icon is displayed at collab phase - my group quick search box
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Groups" menu inside collab sidebar
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabGroups"

  @119853   @VerifyFlexGridDisplayedAtCollabPhaseMyContentTab
  Scenario: validate flex grid displayed at collab phase my content tab
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Content" menu inside collab sidebar
    Then I see expected table with id "WorkSpaceFilesFlexToggle"

  @120448    @verifyThatUserLogoAtCollabCommentIsSmallerAsCompareToPostLogoAtCollabMyFeedSection
  Scenario: validate that user logo at comment section is small in size at collab - my feed section
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation Admin Comment" in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Automation Admin Comment" comment inside my feed
    Then I see user logo at comment "Test Automation Admin Comment" is small in size inside my feed home

  @121192    @verifyThatUploadFileFromComputerAndLibraryTabsDisplayedAtAttachFileModalAtRecordLevelCollabTab @doubt
  Scenario: validate that upload file from library and computer is displayed at attach file modal at record level collab tab
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on "View" icon in flex table for first draft record
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I see "Add Files" opens in overLay window

  @121305    @verifyThatAddFilesModalDisplayedAtHomePhaseByClickOnAttachButton
  Scenario: validate that add file modal displayed by click on Attach File button at my feed - Home phase
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    And I enter value "Test Automation Admin Comment" in my feed section and share the post
    And I pause execution for "7" seconds
    And I click on "Comment" action at "Test Automation Admin Comment" comment inside my feed
    And I click on "Attach File" button at collab
    Then I see label as "Choose a File OR Drag it here" is displayed at upload file button

  @122007    @verifyThatUserLogoAtCollabCommentIsSmallerAsCompareToPostLogoAtCollabMyFeedSectionAtCollabPhase
  Scenario: validate that user logo at comment section is small in size at collab - my feed section at collab phase
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation PM Comment" in my feed section and share the post
    And I click on "Comment" action at "Test Automation PM Comment" comment inside my feed
    Then I see user logo at comment "Test Automation PM Comment" is small in size inside my feed collab

  @123530    @verifyThatUploadFileFromComputerAndLibraryTabsIsDisplayedAtAttachFileModalAtHomePhaseOnlyForPostsFromRecord
  Scenario: validate that upload file from library and computer is displayed at attach file modal at home phase posts but posted from record
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    Then I do not see "I'm Following" inside "My Feeds" menu at collab sidebar

  @104324 @VerifyPerticularSubMenuIsNotDisplayedInsideCollabSidebarForPMUser
  Scenario: validate that "I'm Following" submenu is not displayed inside collab sidebar for PM user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    Then I see "I'm Following" inside "My Feeds" menu at collab sidebar

  @125729    @verifyThatUploadFileFromComputerAndLibraryTabsIsNotDisplayedAtAttachFileModalAtGroupPostAtCollabPhase
  Scenario: validate that upload file from library and computer is not displayed at attach file modal at group post on collab phase
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on button "Share" under collab for comment box
    Then I see alert message "A comment is required"

  @207088 @UserNameShouldDisplyedInTextFormat @Sprint8
  Scenario: Collab-To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the  record level collab
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    #And I enter value "Test @Automation PM" in my feed section and share the post
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207094 @MiddleUserNameShouldDisplyedInTextFormat @Sprint8
  Scenario: Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the home level collab for internal user
    When I login to "As a Grantor" app as "PM" user
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
    When I login to "As a Grantor" app as "PM" user
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
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation PM" in my feed section and share the post
    Then I see "Hello @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207086 @UserNameShouldBeDisplayedAtTheSSamePositionOfTheHomeLevel @Sprint8
  Scenario: To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the  home level collab for internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation PM" in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207095 @UserNameShouldBeDisplayedAtTheSSamePositionOfTherecordLevel @sprint8
  Scenario: Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the record level collab for internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation PM" inside "Post" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    Then I see "Hello @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207091 @UserNameShouldBeDisplayedAtStartingOfComment @sprint8
  Scenario:Collab-To verify, If i add a user in a line then that user name should be displayed at the starting of the comment on the record  level collab for internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation PM1" in my Feed and click on Share button
    And I pause execution for "3" seconds
    Then I see "@Automation PM1" inside flex table with id "---program:-:myFeedTableId---"

  @223914 @UserNameShouldBeDisplayedAtStartingOfComment
  Scenario: Collab-To verify, If i add a user in a starting of line  then the user name should be displayed at the starting position in text format on the home
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter user "@Automation PM1" and value "Hello" in my Feed and click on Share post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "@Automation PM1 Hello" inside flex table with id "---program:-:myFeedTableId---"

  @223917 @UserNameShouldBeDisplayedAtStartingOfCollabPhase
  Scenario: To verify, If i added user name should  be displayed at the starting of the comment on the collab phase for admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation PM" in my feed section and share the post
    Then I see "@Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207083 @UserNameShouldBeDisplayedAtSamePosition @Sprint8
  Scenario: Collab-To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the collab phase  for internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation Admin" inside "Post" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    And I pause execution for "5" seconds
    Then I see "@Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

  @176820 @Jyoti
  Scenario:  Collab - To verify, on Collab phase if the user clicks on 'Share' button after entering some text in the Comment/Post-box, the alert message should not display "A comment is required"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value " @Automation Admin" in my feed section and share the post
    And I pause execution for "5" seconds
    Then I do not see alert popup box

  @207018 @ToVerifyIfIaddauserinaline @Sprint8 @wip
  Scenario: Collab-To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the collab phase
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test @Automation PM" in my feed section and share the post
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207020 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: To verify, If i add a user in a line then that user name should not  be displayed at the starting of the comment on the collab phase
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "test @Automation PM" in my feed section and share the post
    And I pause execution for "5" seconds
    Then I see "test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207047 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: Collab-To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the  home level collab
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test @Automation PM" in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I pause execution for "3" seconds
    And I click on "Comment" action at "Test @Automation PM" comment inside my feed
    And I enter value "Test Automation PM" in my feed section and share the comment
    Then I see "Test Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207048 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: Collab-To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the  record level collab
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value " @Automation PM" inside "Post" in My Feed
    And I click on "Share" button inside collab tab
    Then I see " @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207049 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: Collab-To verify, If i add a user in a line then that user name should be displayed at the starting of the comment on the home level collab
    When I login to "As a Grantor" app as "PM" user
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hi @Automation PM" in my feed section and share the post
    Then I see "Hi @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207052 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the collab phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test @Automation PM" in my feed section and share the post
    And I pause execution for "5" seconds
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207053 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the home level collab
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test @Automation PM" in my feed section and share the post
    And I pause execution for "5" seconds
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207054 @ToVerifyIfIaddauserinaline @Sprint8
  Scenario: Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the record level collab
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "hi @Automation PM" in my feed section and share the post
    Then I see "hi @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @207060 @vrushali @sprint-8
  Scenario:To verify,If add one user in starting of the line & second one is middle  then the user name should be displayed at the same position in text format on the record level collab
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Automation PM Automation Admin" in my feed section and share the post
    Then I see "Automation PM Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

  @382125 @SanityPATCH @SanityPATCHCollab
  Scenario: Sanity TC_Admin_To verify that, logged in user name & email id should be visible on Collab phase.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    Then I see Username "Automation Admin" is displayed Collab phase
    Then I see emailid "automationadmin@yopmail.com" is displayed Collab phase


  @382128 @SanityPATCH @SanityPATCHCollab
  Scenario: Sanity TC_pm_To verify that, logged in user name & email id should be visible on Collab phase.
    When I login to "As a Grantor" app as "pm" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    Then I see Username "Automation PM" is displayed Collab phase
    Then I see emailid "automationpm@yopmail.com" is displayed Collab phase

  @382130 @SanityPATCH @SanityPATCHCollab
  Scenario: Sanity TC_SPI_To verify that, logged in user name & email id should be visible on Collab phase.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    Then I see Username "Automation SPI" is displayed Collab phase
    Then I see emailid "automationspi@yopmail.com" is displayed Collab phase

  @382132 @SanityPATCH @SanityPATCHCollab
  Scenario: Sanity TC_Admin_To verify that, all side bar links should be visible on Collab phase.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    Then I see side bar links "My Feeds" is displayed on collab phase
    Then I see side bar links "My Colleagues" is displayed on collab phase
    Then I see side bar links "External Users" is displayed on collab phase
    Then I see side bar links "My Groups" is displayed on collab phase
    Then I see side bar links "Membership Requests" is displayed on collab phase
    Then I see side bar links "My Content" is displayed on collab phase
    Then I see "All Users" inside "My Feeds" menu at collab sidebar
    Then I see "To Me" inside "My Feeds" menu at collab sidebar
    Then I see "What I Follow(Internal)" inside "My Feeds" menu at collab sidebar
    Then I see "What I Follow(External)" inside "My Feeds" menu at collab sidebar

  @382135 @SanityPATCH @SanityPATCHCollab
  Scenario: Sanity TC_PM_To verify that, all side bar links should be visible on Collab phase.
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    Then I see side bar links "My Feeds" is displayed on collab phase
    Then I see side bar links "My Colleagues" is displayed on collab phase
    Then I see side bar links "External Users" is displayed on collab phase
    Then I see side bar links "My Groups" is displayed on collab phase
    Then I see side bar links "Membership Requests" is displayed on collab phase
    Then I see side bar links "My Content" is displayed on collab phase
    Then I see "All Users" inside "My Feeds" menu at collab sidebar
    Then I see "To Me" inside "My Feeds" menu at collab sidebar
    Then I see "What I Follow(Internal)" inside "My Feeds" menu at collab sidebar
    Then I see "What I Follow(External)" inside "My Feeds" menu at collab sidebar

  @382136 @SanityPATCH @SanityPATCHCollab
  Scenario: Sanity TC_SPI_To verify that, all side bar links should be visible on Collab phase.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    Then I see side bar links "My Feeds" is displayed on collab phase
    Then I see side bar links "My Colleagues" is displayed on collab phase
    Then I see side bar links "My Groups" is displayed on collab phase
    Then I see side bar links "My Content" is displayed on collab phase
    Then I see "What I Follow" inside "My Feeds" menu at collab sidebar

  @382138 @382141 @382147 @382150
  Scenario: side bar options on collab phase is clickable for Admin User
  |Sanity TC_Admin_To verify that, All user link should be clickable under My feed side bar option on Collab phase.|
  |Sanity TC_Admin_To verify that, 'What I Follow (Internal)' link should be clickable under My feed side bar option on Collab phase. |
  |Sanity TC_Admin_To verify that, 'What I Follow (External)' link should be clickable under My feed side bar option on Collab phase. |
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    Then I see "All Users" link on collab phase is displayed and clickable
    Then I see "To Me" link on collab phase is displayed and clickable
    Then I see "What I Follow(Internal)" link on collab phase is displayed and clickable
    Then I see "What I Follow(External)" link on collab phase is displayed and clickable

  @382139 @382142 @382148 @382151
  Scenario:side bar options on collab phase is clickable for PM User
  |Sanity TC_Admin_To verify that, All user link should be clickable under My feed side bar option on Collab phase.|
  |Sanity TC_Admin_To verify that, 'What I Follow (Internal)' link should be clickable under My feed side bar option on Collab phase. |
  |Sanity TC_Admin_To verify that, 'What I Follow (External)' link should be clickable under My feed side bar option on Collab phase. |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    Then I see "All Users" link on collab phase is displayed and clickable
    Then I see "To Me" link on collab phase is displayed and clickable
    Then I see "What I Follow(Internal)" link on collab phase is displayed and clickable
    Then I see "What I Follow(External)" link on collab phase is displayed and clickable

  @382144p @SanityPATCH @SanityPATCHCollab
  Scenario: side bar options on collab phase is clickable for SPI User
  |Sanity TC_SPI_To verify that, 'To me' link should be clickable from side bar option on Collab phase.|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    Then I see "To Me" link on collab phase is displayed and clickable

  @382213 @382222 @382238 @382232 @382257 @382272 @SanityPATCH @SanityPATCHCollab
  Scenario: side bar options on collab phase is clickable for Admin User,My Colleagues,External Users,My Groups,Membership Requests
  |Sanity TC_Admin_To verify that, 'My Colleagues' link should be clickable from side bar option on Collab phase.|
  |Sanity TC_Admin_To verify that, 'External Users' link should be clickable from side bar option on Collab phase. |
  |Sanity TC_Admin_To verify that, 'My Groups' link should be clickable from feed side bar option on Collab phase. |
  |Sanity TC_Admin_To verify that, 'Membership Requests' link should be clickable from side bar option on Collab phase. |
  |Sanity TC_Admin_To verify that, 'My Content' link should be clickable from side bar option on Collab phase. |
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    Then I see "My Colleagues" link on collab phase is displayed and clickable
    Then I see "External Users" link on collab phase is displayed and clickable
    Then I see "My Groups" link on collab phase is displayed and clickable
    Then I see "Membership Requests" link on collab phase is displayed and clickable
    Then I see "My Content" link on collab phase is displayed and clickable


  @382214 @382226 @382235 @382268 @382275 @SanityPATCH @SanityPATCHCollab
  Scenario: side bar options on collab phase is clickable for PM User,My Colleagues,External Users,My Groups,Membership Requests
  |Sanity TC_PM_To verify that, 'My Colleagues' link should be clickable from side bar option on Collab phase.|
  |Sanity TC_PM_To verify that, 'External Users' link should be clickable from side bar option on Collab phase.|
  |Sanity TC_PM_To verify that, 'My Groups' link should be clickable from feed side bar option on Collab phase.|
  |Sanity TC_PM_To verify that, 'Membership Requests' link should be clickable from side bar option on Collab phase.|
  |Sanity TC_PM_To verify that, 'My Content' link should be clickable from side bar option on Collab phase.|
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    Then I see "My Colleagues" link on collab phase is displayed and clickable
    Then I see "External Users" link on collab phase is displayed and clickable
    Then I see "My Groups" link on collab phase is displayed and clickable
    Then I see "Membership Requests" link on collab phase is displayed and clickable

  @382220 @382230 @382238 @382278 @SanityPATCH @SanityPATCHCollab
  Scenario: side bar options on collab phase is clickable for SPI User
  |Sanity TC_SPI_To verify that, 'My Colleagues' link should be clickable from side bar option on Collab phase.|
  |Sanity TC_SPI_To verify that, 'My Groups' link should be clickable from side bar option on Collab phase.|
  |Sanity TC_SPI_To verify that, 'My Content' link should be clickable from side bar option on Collab phase.|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    Then I see "My Colleagues" link on collab phase is displayed and clickable
    Then I see "My Groups" link on collab phase is displayed and clickable
    Then I see "My Content" link on collab phase is displayed and clickable

  @382383 @382395 @SanityPATCH @SanityPATCHCollab
  Scenario:
  |Sanity TC_Admin_To verify that, user should be able to search post using quick search|
  |Sanity TC_Admin_To verify that, user should be able to like the comment by click on 'like' action link added by self and another user.|
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "search post using quick search" in my feed section and share the post
    When I perform quick search for "search post using quick search"
    Then I softly see "search post using quick search" inside flex table with id "---program:-:myFeedTableId---"
    Then I softly see "Like" button is displayed and enabled inside comment "search post using quick search"

  @382398 @382390 @SanityPATCH @SanityPATCHCollab
  Scenario:
  |TC_PM_To verify that, user should be able to like the comment by click on 'like' action link added by self and another user.|
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "search post using quick search" in my feed section and share the post
    When I perform quick search for "search post using quick search"
    Then I softly see "search post using quick search" inside flex table with id "---program:-:myFeedTableId---"
    Then I softly see "Like" button is displayed and enabled inside comment "search post using quick search"

  @382394 @382401 @382407 @SanityPATCH @SanityPATCHCollab
  Scenario:
  |Sanity TC_SPI_To verify that, user should be able to enter comment, tag people and share post by click on 'Share' button.|
  |Sanity TC_SPI_To verify that, user should be able to reply for the comment added by self and another user by clicking on  'Comment' action link.|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation PM" in my feed section and share the post
    When I perform quick search for "Hello @Automation PM"
    Then I softly see "Hello @Automation PM" inside flex table with id "---program:-:myFeedTableId---"
    Then I softly see "Like" button is displayed and enabled inside comment "Hello @Automation PM"
    And I click on "Comment" action at "Hello @Automation PM" comment inside my feed
    And I enter value "Test Automation Admin collab phase Comment" in my feed section and share the comment
    Then I softly see "Test Automation Admin collab phase Comment" inside flex table with id "---program:-:myFeedTableId---"

  @382408 @SanityPATCH @SanityPATCHCollab
  Scenario:
  |Sanity TC_Admin_To verify that, user should be able to share link by adding link URL & name under link section|
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Collaboration (Collab)" tab
    When I click on "Link" inside My Feed
    And I enter value "https://www.Rei.com" inside "Link URL" in My Feed
    And I enter value "Sanity testing" inside "Link Name" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    Then I softly see "https://www.Rei.com" inside flex table with id "---program:-:myFeedTableId---"

  @382411 @SanityPATCH @SanityPATCHCollab
  Scenario:
  |Sanity TC_PM_To verify that, user should be able to share link by adding link URL & name under link section|
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Collaboration (Collab)" tab
    When I click on "Link" inside My Feed
    And I enter value "https://www.Rei.com" inside "Link URL" in My Feed
    And I enter value "Sanity testing" inside "Link Name" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    Then I softly see "https://www.Rei.com" inside flex table with id "---program:-:myFeedTableId---"

  @382412 @382416 @SanityPATCH @SanityPATCHCollab
  Scenario:
  |Sanity TC_SPI_To verify that, user should be able to share link by adding link URL & name under link section|
  |Sanity TC_SPI_To verify that, user should be able to add file by clicking on 'Attach file' link while adding comments.|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    When I click on "Link" inside My Feed
    And I enter value "https://www.Rei.com" inside "Link URL" in My Feed
    And I enter value "Sanity testing" inside "Link Name" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    Then I softly see "https://www.Rei.com" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I attach file "SendEmailAttachment.pdf" in add file Modal
    When I click on "Upload" button in send email modal
    And I enter value "Test Automation Admin Comment" in my feed section and share the comment
    Then I see "SendEmailAttachment.pdf" inside flex table with id "---program:-:myFeedTableId---"


  @382413 @382415 @SanityPATCH @SanityPATCHCollab
  Scenario Outline: validate that upload file from library and computer is displayed at attach file modal at collab phase
  |Sanity TC_Admin_To verify that, user should be able to add file by clicking on 'Attach file' link while adding comments.|
  |Sanity TC_PM_To verify that, user should be able to add file by clicking on 'Attach file' link while adding comments |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I attach file "SendEmailAttachment.pdf" in add file Modal
    When I click on "Upload" button in send email modal
    And I enter value "Test Automation Admin Comment" in my feed section and share the comment
    Then I see "SendEmailAttachment.pdf" inside flex table with id "---program:-:myFeedTableId---"
    Examples:
      | Users |
      | Admin |
      | PM    |

  @382421
  Scenario: Sanity TC_Admin_To verify that, user should be able to see like count for added comments.
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Like button testing" in my feed section and share the post
    And I click on "Like" action at "Like button testing" comment inside my feed
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Like" action at "Like button testing" comment inside my feed
    Then I see "You and Automation Admin like this." inside flex table with id "---program:-:myFeedTableId---"
    When I re-login to "As a Grantor" app as "FO" user on "INTERNAL" portal
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Like" action at "Like button testing" comment inside my feed
    Then I see "You, Automation PM and Automation Admin like this." inside flex table with id "---program:-:myFeedTableId---"
    When I re-login to "As a Grantor" app as "Admin" user on "INTERNAL" portal
    And I navigate to "Collaboration (Collab)" tab
    And I click on "You, Automation FO, and Automation PM like this." inside comment "Like button testing" in collab phase
    Then I see "Automation Admin" in collab like list
    Then I see "Automation FO" in collab like list
    Then I see "Automation PM" in collab like list

  @382422 @385452 @SanityPATCH @SanityPATCHCollab
  Scenario:
  |Sanity TC_PM_To verify that, user should be able to see like count for added comments. |
  |Sanity TC_PM_To verify that, user should be able to see user details (who like this comment) by clicking on like count.|
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Like button testing" in my feed section and share the post
    And I click on "Like" action at "Like button testing" comment inside my feed
    When I re-login to "As a Grantor" app as "Admin" user on "INTERNAL" portal
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Like" action at "Like button testing" comment inside my feed
    Then I see "You and Automation Admin like this." inside flex table with id "---program:-:myFeedTableId---"
    When I re-login to "As a Grantor" app as "FO" user on "INTERNAL" portal
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Like" action at "Like button testing" comment inside my feed
    Then I see "You, Automation PM and Automation Admin like this." inside flex table with id "---program:-:myFeedTableId---"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Collaboration (Collab)" tab
    And I click on "You, Automation FO, and Automation Admin like this." inside comment "Like button testing" in collab phase
    Then I see "Automation Admin" in collab like list
    Then I see "Automation FO" in collab like list
    Then I see "Automation PM" in collab like list

  @382453
  Scenario: Sanity TC_SPI_To verify that, user should be able to see user details (who like this comment) by clicking on like count.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Like button testing" in my feed section and share the post
    And I click on "Like" action at "Like button testing" comment inside my feed
    When I re-login to "As a Grantor" app as "Admin" user on "INTERNAL" portal
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Like" action at "Like button testing" comment inside my feed
    Then I see "You and Automation Admin like this." inside flex table with id "---program:-:myFeedTableId---"
    When I re-login to "As a Grantor" app as "FO" user on "INTERNAL" portal
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Like" action at "Like button testing" comment inside my feed
    Then I see "You, Automation PM and Automation Admin like this." inside flex table with id "---program:-:myFeedTableId---"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Collaboration (Collab)" tab
    And I click on "You, Automation FO, and Automation Admin like this." inside comment "Like button testing" in collab phase
    Then I see "Automation Admin" in collab like list
    Then I see "Automation FO" in collab like list
    Then I see "Automation PM" in collab like list

  @382454p @SanityPATCH @SanityPATCHCollab
  Scenario: Sanity TC_Admin_To verify that, user should be able to see date and time details for posted comments by user.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    Then I softly see "Just now" button is displayed and enabled inside comment "Post DO NOT DELETE"


  @382455
  Scenario: Sanity TC_PM_To verify that, user should be able to see date and time details for posted comments by user.
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    Then I softly see "Just now" button is displayed and enabled inside comment "Post DO NOT DELETE"
    Then I softly see "January 14, 2024 at 5:11 PM" button is displayed and enabled inside comment "Post DO NOT DELETE"

  @382458p @SanityPATCH @SanityPATCHCollab
  Scenario: Sanity TC_SPI_To verify that, user should be able to see date and time details for posted comments by user.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    Then I softly see "Just now" button is displayed and enabled inside comment "Post DO NOT DELETE"

  @382498 @SanityPATCH @SanityPATCHCollab
  Scenario:  Sanity TC_Admin_To verify that, user should be able to delete the comments posted by another user by clicking on '❌' (cross )icon.
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation PM Comment" in my feed section and share the post
    And I pause execution for "5" seconds
    When I re-login to "As a Grantor" app as "Admin" user on "INTERNAL" portal
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Delete" action at "Test Automation PM Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this comment?" is displayed

  @382500 @SanityPATCH @SanityPATCHCollab
  Scenario:  Sanity TC_PM_To verify that, user should be able to delete the comments posted by another user by clicking on '❌' (cross )icon.
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation Admin Comment" in my feed section and share the post
    And I pause execution for "5" seconds
    When I re-login to "As a Grantor" app as "Admin" user on "INTERNAL" portal
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Delete" action at "Test Automation Admin Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this comment?" is displayed

  @382503 @SanityPATCH @SanityPATCHCollab
  Scenario:  Sanity TC_SPI_To verify that, user should be able to delete the comments posted by another user by clicking on '❌' (cross )icon.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation Spi Comment" in my feed section and share the post
    And I click on "Delete" action at "Test Automation Spi Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this comment?" is displayed

  @382504p @SanityPATCH @SanityPATCHCollab
  Scenario:  Sanity TC_Admin_To verify that, user should be able to see list of user along with email id on click of 'My Colleagues' link.
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Colleagues" menu inside collab sidebar
    Then I see "Automation EXE" as user name and "exe.automation@yopmail.com" as emailid
    Then I see "Automation EXE1" as user name and "exe1.automation@yopmail.com" as emailid

  @382506 @SanityPATCH @SanityPATCHCollab
  Scenario:  Sanity TC_PM_To verify that, user should be able to see list of user along with email id on click of 'My Colleagues' link.
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Colleagues" menu inside collab sidebar
    Then I see "Automation EXE" as user name and "exe.automation@yopmail.com" as emailid
    Then I see "Automation PM1" as user name and "pm1.automation@yopmail.com" as emailid

  @382507p @SanityPATCH @SanityPATCHCollab
  Scenario:  Sanity TC_SPI_To verify that, user should be able to see list of user along with email id on click of 'My Colleagues' link.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Colleagues" menu inside collab sidebar
    Then I see "Automation SPI" as user name and "jameshanknew@yopmail.com" as emailid

  @382511 @SanityPATCH @SanityPATCHCollab
  Scenario:  Sanity TC_Admin_To verify that, user should be able to see list of users along with email id , profile picture on click of 'External users' link.
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "External Users" menu inside collab sidebar
    Then I see "Automation SPI" as user name and "automationspi@yopmail.com" as emailid with profile picture

  @382512 @SanityPATCH @SanityPATCHCollab
  Scenario:  Sanity TC_PM_To verify that, user should be able to see list of users along with email id , profile picture on click of 'External users' link.
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "External Users" menu inside collab sidebar
    Then I see "Automation SPI" as user name and "automationspi@yopmail.com" as emailid with profile picture

  @382518 @SanityPATCH @SanityPATCHCollab
  Scenario: Sanity TC_Admin_To verify that, user should be able to see the created groups along with member details on click of 'My groups' link
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Groups" menu inside collab sidebar
    Then I see group name "Test group Automation" with member details count "Members: 1"

  @382520p @SanityPATCH @SanityPATCHCollab
  Scenario:  Sanity TC_SPI_To verify that, user should be able to see the created groups along with member details on click of 'My groups' link
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Groups" menu inside collab sidebar
    Then I do not see group name "Test group Automation" with member details count "Members: 1"

  @382525p @SanityPATCH @SanityPATCHCollab
  Scenario: Sanity TC_Admin_To verify that, user should be able to see all available list of files along with Add File button on click of 'My Content' link
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
      | Flex Table            | Enable Auto Index   | true              | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | WorkSpaceFiles     | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 10            | WorkSpaceFiles     | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | WorkSpaceFiles     | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | WorkSpaceFiles     | Name                      |                            |
      | Flex Table:General    | Enable Auto Index   | true          | WorkSpaceFiles     | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Content" menu inside collab sidebar
    Then I see "Add Files" button name inside table id "WorkSpaceFilesFlexToggle"
    Then I see "1" to "10" indexing inside table id "WorkSpaceFilesFlexToggle"

  @382526 @SanityPATCH @SanityPATCHCollab
  Scenario:  Sanity TC_PM_To verify that, user should be able to see all available list of files along with Add File button on click of 'My Content' link
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
      | Flex Table            | Enable Auto Index   | true              | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | WorkSpaceFiles     | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 10            | WorkSpaceFiles     | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | WorkSpaceFiles     | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | WorkSpaceFiles     | Name                      |                            |
      | Flex Table:General    | Enable Auto Index   | true          | WorkSpaceFiles     | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Content" menu inside collab sidebar
    Then I see "Add Files" button name inside table id "WorkSpaceFilesFlexToggle"
    Then I see "1" to "10" indexing inside table id "WorkSpaceFilesFlexToggle"

  @382527p @SanityPATCH @SanityPATCHCollab
  Scenario:  Sanity TC_SPI_To verify that, user should be able to see all available list of files along with Add File button on click of 'My Content' link
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
      | Flex Table            | Enable Auto Index   | true              | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | WorkSpaceFiles     | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 10            | WorkSpaceFiles     | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | WorkSpaceFiles     | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | WorkSpaceFiles     | Name                      |                            |
      | Flex Table:General    | Enable Auto Index   | true          | WorkSpaceFiles     | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    And I navigate to "My Content" menu inside collab sidebar
    Then I see "#" in flex table header "WorkSpaceFilesFlexToggle"
    Then I see "Add Files" button name inside table id "WorkSpaceFilesFlexToggle"

  @204362
  Scenario: Collab Phase - PM User - To verify,  the quick search functionality by entering the text in quick search text box.
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    When I perform quick search for "Automation PM"
    Then I see "Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @204366
  Scenario: Collab Phase - PM User -To verify the quick search functionality without entering any text in quick search text box.
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    When I perform quick search for ""
    Then I see "Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

  @204406 @204559
  Scenario: Collab Phase - PM User -To verify, user should able to see all posts on click of Post icon.
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    Then I see "Automation SPI" inside flex table with id "---program:-:myFeedTableId---"

  @204413 @204560
  Scenario: Collab Phase - PM User -To verify, user should able to mention peoples in comment box by entering name after '@' symbol.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hi @Automation PM" in my feed section and share the post
    Then I see "Hi @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @218748 @218750
  Scenario: validate the delete action at comment section at my feed section by SPI user from home phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    And I click on "Comment" action at "Test Post for automation-SPI DND" comment inside my feed
    And I enter value "Test Automation SPI Comment delete" in my feed section and share the comment
    And I click on "Delete" action at "Test Automation SPI Comment delete" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    And I pause execution for "5" seconds
    Then I do not see "Test Automation SPI Comment delete" comment inside "Test Post for automation-SPI DND" post at collab

  @218751 @218754
  Scenario: validate text wrap and alignment at my feed section by SPI user at application phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    Then I see entered text in my feed section displayed properly

  @204613 @204563
  Scenario: validate text wrap and alignment at my feed section by PM user at application phase
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    Then I see entered text in my feed section displayed properly

  @204614 @204566
  Scenario: validate text wrap and alignment at my feed section by admin user at application phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    Then I see entered text in my feed section displayed properly

  @204630 @204638
  Scenario: validate the pop-up appears by performing delete action at my feed section by admin user at application phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    When I pause execution for "5" seconds
    And I enter value "Test Automation ADMIN application phase Comment" in my feed section and share the post
    And I pause execution for "3" seconds
    And I click on "Delete" action from dropdown at "Test Automation ADMIN application phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

  @204642 @204568
  Scenario: validate the pop-up appears by performing delete action at my feed section by PM user at application phase
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    When I pause execution for "5" seconds
    And I enter value "Test Automation PM application phase Comment" in my feed section and share the post
    And I pause execution for "5" seconds
    And I click on "Delete" action from dropdown at "Test Automation PM application phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

  @204650
  Scenario: validate that by click on refresh icon, a loading icon appears at collab tab by login as ADMIN user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @204658
  Scenario: validate that by click on refresh icon, a loading icon appears at collab tab by login as pm user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @204659
  Scenario: validate that by click on refresh icon, a loading icon appears at collab tab by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @204661 @204663 @204576
  Scenario: validate the delete action at post present under home phase -  my feed section by admin user
    When I login to "As a Grantor" app as "ADMIN" user
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

  @204664 @204578
  Scenario: validate the delete action at post present under collab phase-my feed section by admin user
    When I login to "As a Grantor" app as "ADMIN" user
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

  @204666
  Scenario: validate that a post can be shared from collab phase-my feed section by admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation collab admin to check post share access" in my feed section and share the comment
    Then I softly see "Test Automation collab admin to check post share access" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation collab admin to check post share access" comment inside my feed
    And I click modal button "OK"
    Then I softly do not see "Test Automation collab admin to check post share access" inside flex table with id "---program:-:myFeedTableId---"

  @204668
  Scenario: validate that delete action at post present at record detail collab phase by admin user from application phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    And I enter value "Test Automation record admin to check post delete access" in my feed section and share the post
    And I pause execution for "3" seconds
    And I click on "Delete" action from dropdown at "Test Automation record admin to check post delete access" comment inside my feed
    And I click modal button "OK"
    Then I do not see "Test Automation record admin to check post delete access" inside flex table with id "---program:-:myFeedTableId---"

  @204669 @204580
  Scenario: validate that admin can send a comment to post from record level collab tab
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation record comment" in my feed section and share the comment
    Then I softly see "Test Automation record comment" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation record comment" comment inside my feed
    And I click modal button "OK"
    Then I softly do not see "Test Automation record comment" inside flex table with id "---program:-:myFeedTableId---"

  @204671 @204674
  Scenario: validate that admin can send a comment to post from home phase-my feed section
    When I login to "As a Grantor" app as "ADMIN" user
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

  @204675
  Scenario: validate that PM user can see To Me option inside menu at home phase-my feed section
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    Then I see "To Me" option is displayed at collab menu

  @204677
  Scenario: validate that PM user can see all users option inside menu at home phase-my feed section
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    Then I see "All Users" option is displayed at collab menu

  @204678
  Scenario: validate that SPI user can see To Me option inside menu at home phase-my feed section
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see Menu Icon is not displayed at my feed section

  @204679
  Scenario: validate that SPI user can see all users option inside menu at home phase-my feed section
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see Menu Icon is not displayed at my feed section

  @204680
  Scenario: validate that by click on All users menu then, all users post/comment are displayed to PM user at home phase-my feed section
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

  @208148
  Scenario: validate that if pm user tries to mention external user in post then mention auto complete list is not displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation SPI" in the post at collab
    And I pause execution for "7" seconds
    Then I do not see mention auto complete list is displayed at collab post

  @208149
  Scenario: validate that if pm user tries to mention external user in comment then mention auto complete list is not displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation SPI" in the comment at collab
    Then I do not see mention auto complete list is displayed at collab comment

  @208151 @204583
  Scenario: validate that by click on refresh icon, a loading icon appears at record level collab tab by login as ADMIN user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    And I click on "Refresh" button inside collab tab
    Then I see collab my feed page refreshed

  @208152
  Scenario: validate that by click on refresh icon, a loading icon appears at home level collab tab by login as ADMIN user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on refresh button at collab
    And I pause execution for "5" seconds
    Then I see collab my feed page refreshed

  @208158
  Scenario: validate that only my feed section is displayed to SPI user at home phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see Menu bar is not displayed at my feed

  @208159
  Scenario: validate that by click on refresh icon, a loading icon appears at home level collab tab by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @208160
  Scenario: validate that No feed available is displayed at my feed-to me only section at collab phase by login as PM user
    When I login as "PM1" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "To Me" from dropdown
    Then I see "Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

  @208163 @208164
  Scenario: validate that name of users who like the post is displayed at my feed-to me only section by login as admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "You and Automation PM like this." in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I pause execution for "10" seconds
    Then I see "You and Automation PM like this." inside flex table with id "---program:-:myFeedTableId---"

  @208166 @208168
  Scenario: validate that name of users who like the post is displayed at my feed-to me only section by login as PM user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "You and Automation PM like this." in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I pause execution for "5" seconds
    Then I see "You and Automation PM like this." inside flex table with id "---program:-:myFeedTableId---"

  @208169
  Scenario: validate that govgrants logo is displayed at collab phase by login as admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    Then I see navigation logo on page

  @208177
  Scenario: validate that govgrants logo is displayed at collab phase by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    Then I see navigation logo on page

  @208178 @208179
  Scenario: validate that if admin user at mention user in comment then mention auto complete list is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation" in the comment at collab
    And I pause execution for "5" seconds
    Then I see mention auto complete list is displayed at collab comment

  @208095 @208099 @208146 @208153 @208157 @204591
  Scenario: My feed section for external user
  |My Feed - External user - To verify , user should be able to see the my feed on right hand side of home page.|
  |My Feed - Externals user - To verify , user should be able to refresh the my feed on click of refresh icon available besides my feed.|
  |My Feed - External user - To verify , user should be able to see comments posted by all users.|
  |My Feed - External user - To verify , user should be able to see comments liked by which user on my feed.|
  |My Feed - External user - To verify , user should be able to see comments posted by another user on my feed.|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test @Automation PM" in my feed section and share the post
    And I pause execution for "5" seconds
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test @Automation PM" comment inside my feed
    And I pause execution for "5" seconds
    And I enter value "Test Automation @Automation PM" in my feed section and share the comment
    Then I softly see "Test Automation @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @208117
  Scenario: My Feed - PM user - To verify , user should be able to apply filters for 'To me' from burger icon available besides my feed. |  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "To Me" from dropdown

  @208134 @204592
  Scenario: My Feed - Admin user - To verify , user should be able to apply filters for 'To me' from burger icon available besides my feed.
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "To Me" from dropdown

  @208091 @208090 @204681 @204609 @204611 @204612 @204635 @204613 @204614 @208145 @204633 @208144 @208156 @208108 @208111 @204635 @204639 @208097 @208098
  Scenario: To verify, user should be able to enter text with different combinations in my feed
  |My Feed - PM user - To verify , user should be able to see the my feed on right hand side of home page.|
  |My Feed - Admin user - To verify , user should be able to see the my feed on right hand side of home page.|
  |To verify, user should be able to verify the my feed functionality available on home page.|
  |To verify, user should able to mention people in my feed after entering @ symbol.|
  |To verify,  the quick search functionality by entering the text in quick search text box.|
  |To verify the quick search functionality without entering any text in quick search text box|
  |To verify,  user should able to share comment by entering comment and mentioning people.|
  |My Feed - Admin user - To verify , user should be able to see comments posted by another user on my feed.|
  |My Feed - Admin user - To verify , user should be able to see comments posted by all users by applying 'All Users' filter.|
  |My Feed - PM user - To verify , user should be able to apply filters for 'All user' from burger icon available besides my feed.|
  |My Feed - Admin user - To verify , user should be able to apply filters for 'All user' from burger icon available besides my feed.|
  |My Feed - PM user - To verify , user should be able to see comments posted by all users by applying 'All Users' filter.|
  |To verify , user should be able to delete comment by click on delete dropdown|
  |To verify, user should able to see the confirm message  box on click of delete comment button from delete dropdown.|
  |To verify, user should be able to refresh the quick search by clicking on refresh icon.|
  |My Feed - PM user - To verify , user should be able to refresh the my feed on click of refresh icon available besides my feed.|
  |My Feed - Admin user - To verify , user should be able to refresh the my feed on click of refresh icon available besides my feed.|
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    #208091 #208090 #204681 #204609 #204611 #204612 #204613 #204614 #208145 #208144 #208108 #208111
    And I enter value "Test @Automation PM" in my feed section and share the post
    And I pause execution for "5" seconds
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"
    When I perform quick search for "Test @Automation PM"
    When I perform quick search for ""
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test @Automation PM" comment inside my feed
    And I pause execution for "5" seconds
    And I enter value "Test Automation @Automation PM" in my feed section and share the comment
    Then I softly see "Test Automation @Automation PM" inside flex table with id "---program:-:myFeedTableId---"
    #204633 #204635 #204639 #208097
    And I click on "Delete" action at "Test Automation @Automation PM" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this comment?" is displayed

  @208180
  Scenario: validate that PM user can see all users option inside menu at home phase-my feed section
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    Then I see "All Users" option is displayed at collab menu

  @208181 @204598
  Scenario: validate that SPI user can see To Me option inside menu at home phase-my feed section
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see Menu Icon is not displayed at my feed section

  @208182
  Scenario: validate that SPI user can see all users option inside menu at home phase-my feed section
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see Menu Icon is not displayed at my feed section

  @208184 @204606
  Scenario: validate that by click on All users menu then, all users post/comment are displayed to PM user at home phase-my feed section
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

  @208185
  Scenario: validate that if pm user tries to mention external user in post then mention auto complete list is not displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation SPI" in the post at collab
    And I pause execution for "7" seconds
    Then I do not see mention auto complete list is displayed at collab post

  @208186
  Scenario: validate that if pm user tries to mention external user in comment then mention auto complete list is not displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation SPI" in the comment at collab
    Then I do not see mention auto complete list is displayed at collab comment

  @208189 @204615
  Scenario: validate that by click on refresh icon, a loading icon appears at record level collab tab by login as ADMIN user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    And I click on "Refresh" button inside collab tab
    Then I see collab my feed page refreshed

  @208190 @205302
  Scenario: validate that by click on refresh icon, a loading icon appears at home level collab tab by login as ADMIN user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on refresh button at collab
    And I pause execution for "5" seconds
    Then I see collab my feed page refreshed

  @208191 @208192
  Scenario: validate that only my feed section is displayed to SPI user at home phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see Menu bar is not displayed at my feed

  @208193
  Scenario: validate that by click on refresh icon, a loading icon appears at home level collab tab by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @208194 @205306
  Scenario: validate that No feed available is displayed at my feed-to me only section at collab phase by login as PM user
    When I login as "PM1" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "To Me" from dropdown
    Then I see "Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

  @208196 @208197
  Scenario: validate that name of users who like the post is displayed at my feed-to me only section by login as admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "You and Automation PM like this." in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I pause execution for "10" seconds
    Then I see "You and Automation PM like this." inside flex table with id "---program:-:myFeedTableId---"

  @208198 @208199
  Scenario: validate that name of users who like the post is displayed at my feed-to me only section by login as PM user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "You and Automation PM like this." in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I pause execution for "5" seconds
    Then I see "You and Automation PM like this." inside flex table with id "---program:-:myFeedTableId---"

  @208200
  Scenario: validate that govgrants logo is displayed at collab phase by login as admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    Then I see navigation logo on page

  @208201
  Scenario: validate that govgrants logo is displayed at collab phase by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    Then I see navigation logo on page

  @208202 @205308
  Scenario: validate that if admin user at mention user in comment then mention auto complete list is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation" in the comment at collab
    And I pause execution for "5" seconds
    Then I see mention auto complete list is displayed at collab comment

  @208203 @205309
  Scenario: validate that if admin user at mention user in comment then mention auto complete list is displayed at collab phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Post for automation-Admin DND" in my feed section and share the post
    And I refresh the page
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation" in the comment at collab
    Then I see mention auto complete list is displayed at collab comment

  @208204 @208426
  Scenario: validate that if admin user at mention user in comment then mention auto complete list is displayed at record level collab phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    And I pause execution for "5" seconds
    And I enter value "Post at record level" in my feed section and share the post
    And I click on "Comment" action at "Post at record level" comment inside my feed
    And I enter value "Hello @Automation" in the comment at collab
    And I pause execution for "10" seconds
    Then I see mention auto complete list is displayed at collab comment

  @208427
  Scenario: validate that burger menu icon is not displayed at my feed section by login as external user - home phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see Menu Icon is not displayed at my feed section

  @208428 @205310
  Scenario: validate that pop-up appears by perfomring delete action at my feed section by SPI user from home phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Post for automation-Admin DND" in my feed section and share the post
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "@Simon PM" in my feed section and share the comment
    Then I see "@Simon PM" inside flex table with id "---program:-:myFeedTableId---"

  @208429
  Scenario: validate that cross icon is displayed at collab phase quick search box
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabFeeds"

  @208430
  Scenario: validate that cross icon is displayed at collab phase - my colleagues quick search box
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Colleagues" menu inside collab sidebar
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabColleagues"

  @208431
  Scenario: validate that cross icon is displayed at collab phase - external users quick search box
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "External Users" menu inside collab sidebar
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabCommunityUsers"

  @208432
  Scenario: validate that cross icon is displayed at collab phase - external users quick search box
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "External Users" menu inside collab sidebar
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabCommunityUsers"

  @208433
  Scenario: validate that cross icon is displayed at collab phase - my group quick search box
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Groups" menu inside collab sidebar
    When I perform quick search for "text"
    Then I see cross icon is displayed at search box at "CollabGroups"

  @208434
  Scenario: validate flex grid displayed at collab phase my content tab
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Content" menu inside collab sidebar
    Then I see expected table with id "WorkSpaceFilesFlexToggle"

  @208435 @205311
  Scenario: validate that user logo at comment section is small in size at collab - my feed section
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation Admin Comment" in my feed section and share the post
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Automation Admin Comment" comment inside my feed
    Then I see user logo at comment "Test Automation Admin Comment" is small in size inside my feed home

  @204362
  Scenario: validate that upload file from library and computer is displayed at attach file modal at record level collab tab
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I softly see tab label as "Upload File from Computer" at files library upload modal
    Then I softly see tab label as "Upload File from Library" at files library upload modal

  @204366
  Scenario: validate that upload file from library and computer is displayed at attach file modal at collab phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I see "Add Files" opens in overLay window

  @204383 @204388
  Scenario: validate that add file modal displayed by click on Attach File button at my feed - Home phase
    When I login to "As a Grantor" app as "ADMIN" user
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

  @204406 @204407
  Scenario: validate that upload file from library and computer is not displayed at attach file modal at home phase
    When I login to "As a Grantor" app as "ADMIN" user
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

  @204413 @204418
  Scenario: validate that user logo at comment section is small in size at collab - my feed section record level
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    And I enter value "Test Automation Admin Comment" in my feed section and share the post
    And I pause execution for "7" seconds
    And I click on "Comment" action at "Test Automation Admin Comment" comment inside my feed
    Then I softly see tab label as "Choose a File OR Drag it here" at files library upload modal

  @204423
  Scenario: validate that user logo at comment section is small in size at collab - my feed section at collab phase
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation PM Comment" in my feed section and share the post
    And I click on "Comment" action at "Test Automation Admin Comment" comment inside my feed
    Then I see user logo at comment "Test Automation PM Comment" is small in size inside my feed collab

  @204429
  Scenario: validate that upload file from library and computer is displayed at attach file modal at home phase posts but posted from record
    When I login to "As a Grantor" app as "ADMIN" user
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

  @204442
  Scenario: validate that "I'm Following" submenu is not displayed inside collab sidebar for admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    Then I do not see "I'm Following" inside "My Feeds" menu at collab sidebar

  @204443
  Scenario: validate that "I'm Following" submenu is not displayed inside collab sidebar for PM user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    Then I do not see "I'm Following" inside "My Feeds" menu at collab sidebar

  @204453
  Scenario: validate that upload file from library and computer is not displayed at attach file modal at group post on collab phase
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Post for automation-Admin DND" in my feed section and share the post
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I softly do not see tab label as "Upload File from Computer" at files library upload modal
    Then I softly do not see tab label as "Upload File from Library" at files library upload modal

  @204455
  Scenario: Collab - To verify, on Collab phase if the user clicks on 'Share' button without entering any text in the Comment/Post-box, the alert message should display "A comment is required"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on button "Share" under collab for comment box
    Then I see alert message "A comment is required"

  @204457
  Scenario: Collab-To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the  record level collab
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @204459 @204508
  Scenario: Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the home level collab for internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test @Automation PM" inside "Post" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @204511 @204523
  Scenario: Collab-To verify, If i add a user in a line then that user name should be displayed at the starting of the comment on the home level collab  for internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation FO" inside "Post" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "@Automation FO" inside flex table with id "---program:-:myFeedTableId---"

  @204532
  Scenario: Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the home level collab for internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation PM" in my feed section and share the post
    Then I see "Hello @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @204535 @204555
  Scenario: To verify, If i add a user in a line then the user name should be displayed at the same position in text format on the  home level collab for internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation Admin" in my feed section and share the post
    And I pause execution for "5" seconds
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    Then I see "@Automation Admin" inside flex table with id "---program:-:myFeedTableId---"

  @204556
  Scenario: Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the record level collab for internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation PM" inside "Post" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    Then I see "Hello @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @204557
  Scenario: Collab-To verify, If i add a user in a line then that user name should be displayed at the starting of the comment on the record  level collab for internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "@Automation PM" in my feed section and share the post
    And I pause execution for "3" seconds
    Then I see "@Automation PM" inside flex table with id "---program:-:myFeedTableId---"

  @208090 @208108 @208144 @208097 @208154
  Scenario: Scenario for My feed section for PM user
  |My Feed - PM user - To verify , user should be able to see the my feed on right hand side of home page. |
  |My Feed - PM user - To verify , user should be able to apply filters for 'All user' from burger icon available besides my feed.|
  |My Feed - PM user - To verify , user should be able to see comments posted by all users by applying 'All Users' filter.|
  |My Feed - PM user - To verify , user should be able to see comments posted by another user on my feed.|
  |My Feed - PM user - To verify , user should be able to refresh the my feed on click of refresh icon available besides my feed|
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test @Automation PM" in my feed section and share the post
    And I pause execution for "5" seconds
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test @Automation PM" comment inside my feed
    And I pause execution for "5" seconds
    And I enter value "Test Automation @Automation PM" in my feed section and share the comment
    Then I softly see "Test Automation @Automation PM" inside flex table with id "---program:-:myFeedTableId---"

