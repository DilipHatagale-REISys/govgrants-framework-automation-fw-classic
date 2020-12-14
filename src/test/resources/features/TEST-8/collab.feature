@Collab-component @regression-test8 @collab
Business Need: collab Component Scenarios
  Test all collab component based scenarios
  As a configuration manager i make different configurational changes in collab component and will validate them.

  @104686    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsAdminUser
  Scenario: validate the pop-up appears by perforing delete action at my feed section by Admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Delete" action at "Test Automation Admin Comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Test Automation Admin Comment" in my feed section and share the comment
    And I click on "Delete" action at "Test Automation Admin Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this comment?" is displayed

  @104678    @verifyThatByClickOnDeleteCommentAPopUpToConfirmDeleteActionWillAppearsByLoggedInAsSPIUserFromHomePhase
  Scenario: validate the pop-up appears by perfomring delete action at my feed section by SPI user from home phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Delete" action at "Test Automation SPI Comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
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
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Delete" action at "Test Automation PM Comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for automation-PM DND" comment inside my feed
    And I enter value "Test Automation PM Comment" in my feed section and share the comment
    And I click on "Delete" action at "Test Automation PM Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this comment?" is displayed

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

  @111868    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtCollabTabByLoginAsADMINUser
  Scenario: validate that by click on refresh icon, a loading icon appears at collab tab by login as ADMIN user
    When I login as "Admin" user
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
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation Admin Post Delete Action Access" in my feed section and share the post
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Delete" action from dropdown at "Test Automation Admin Post Delete Action Access" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    Then I do not see "Test Automation Admin Post Delete Action Access" inside flex table with id "---program:-:myFeedTableId---"

  @112484    @verifyThatByClickOnDeleteActionAtPostThenRespectivePostIsGettingDeletedByAdminUserFromCollabPhase
  Scenario: validate the delete action at post present under collab phase-my feed section by admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation collab Delete action by admin" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation collab Delete action by admin" comment inside my feed
    And I click modal button "OK"
    Then I do not see "Test Automation collab Delete action by admin" inside flex table with id "---program:-:myFeedTableId---"

  @112490    @verifyThatAdminUserCanPostFromCollabPhase
  Scenario: validate that a post can be shared from collab phase-my feed section by admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation collab admin to check post share access" in my feed section and share the post
    Then I softly see "Test Automation collab admin to check post share access" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action from dropdown at "Test Automation collab admin to check post share access" comment inside my feed
    And I click modal button "OK"
    Then I softly do not see "Test Automation collab admin to check post share access" inside flex table with id "---program:-:myFeedTableId---"

  @112485    @verifyThatByClickOnDeleteActionAtPostUnderRecordLevelCollabPhaseThenRespectivePostIsGettingDeletedByAdminUser
  Scenario: validate that delete action at post present at record detail collab phase by admin user from application phase
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}" inside table
    When I navigate to "Collab" sub tab
    And I enter value "Test Automation record admin to check post delete access" in my feed section and share the post
    And I click on "Delete" action from dropdown at "Test Automation record admin to check post delete access" comment inside my feed
    And I click modal button "OK"
    Then I do not see "Test Automation record admin to check post delete access" inside flex table with id "---program:-:myFeedTableId---"

  @112491    @verifyThatAdminCanSendACommentFromRecordLevelPlanningPhase-MyFeedSection
  Scenario: validate that admin can send a comment to post from record level collab tab
    When I login as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Test Automation Admin Comment record detail" in my feed section and share the comment
    Then I softly see "Test Automation Admin Comment record detail" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation Admin Comment record detail" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    Then I softly do not see "Test Automation Admin Comment home" inside flex table with id "---program:-:myFeedTableId---"

  @112492    @verifyThatAdminCanSendACommentFromHomePhase-MyFeedSection
  Scenario: validate that admin can send a comment to post from home phase-my feed section
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Test Automation Admin Comment home" in my feed section and share the comment
    Then I softly see "Test Automation Admin Comment home" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Test Automation Admin Comment home" comment inside my feed
    And I click modal button "OK"
    And I pause execution for "3" seconds
    And I refresh the page
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    Then I softly do not see "Test Automation Admin Comment home" comment inside "Test Post for automation-Admin DND" post at collab

  @112199    @verifyThatPMUserCanSeeToMeOptionInsideMenuAtHomePhase-MyFeedSection
  Scenario: validate that PM user can see To Me option inside menu at home phase-my feed section
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    Then I see "To Me" option is displayed at collab menu

  @112213    @verifyThatPMUserCanSeeAllUsersOptionInsideMenuAtHomePhase-MyFeedSection
  Scenario: validate that PM user can see all users option inside menu at home phase-my feed section
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    Then I see "All Users" option is displayed at collab menu

  @112202    @verifyThatSPIUserCanSeeToMeOptionInsideMenuAtHomePhase-MyFeedSection
  Scenario: validate that SPI user can see To Me option inside menu at home phase-my feed section
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    Then I see "To Me" option is displayed at collab menu

  @112217    @verifyThatSPIUserCanSeeAllUsersOptionInsideMenuAtHomePhase-MyFeedSection
  Scenario: validate that SPI user can see all users option inside menu at home phase-my feed section
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    Then I see "All Users" option is displayed at collab menu

  @112219    @verifyThatPMUserCanClickOnAllUsersOptionInsideMenuAtHomePhaseThenAllUsersPostDisplayed
  Scenario: validate that by click on All users menu then, all users post/comment are displayed to PM user at home phase-my feed section
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    Then I see "Framework Admin" inside flex table with id "---program:-:myFeedTableId---"

  @112027    @verifyThatIfpmUserTriesToMentionExternalUserThenAutoCompleteListShouldNotDisplayedAtPost
  Scenario: validate that if pm user tries to mention external user in post then mention auto complete list is not displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation SPI" in the post at collab
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
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}" inside table
    When I navigate to "Collab" sub tab
    And I click on refresh button at collab
    Then I see collab my feed page refreshed

  @115004    @verifyThatByClickOnRefreshIconALoadingIconAppearsAtHomeLevelCollabByLoginAsADMINUser
  Scenario: validate that by click on refresh icon, a loading icon appears at home level collab tab by login as ADMIN user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on refresh button at collab
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

  @115450    @verifyThatNoFeedAvailableIsDisplayedAtMyFeedSectionToAdminUser
  Scenario: validate that No feed available is displayed at my feed-to me only section by login as admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    And I select "To Me" from dropdown
    Then I see "No feeds available." inside flex table with id "---program:-:myFeedTableId---"

  @112330   @verifyThatNoFeedAvailableIsDisplayedAtCollabPhaseInsideToMeByLoginAsAdminUser
  Scenario: validate that No feed available is displayed at my feed-to me only section at collab phase by login as admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "To Me" submenu inside "My Feeds" menu on collab left panel
    Then I see "No feeds available." inside flex table with id "---program:-:myFeedTableId---"

  @115482    @verifyThatNameOfUsersWhoLikesThePostIsDisplayedAtMyFeedSectionToAdminUser
  Scenario: validate that name of users who like the post is displayed at my feed-to me only section by login as admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    Then I see "You, David FO, and 2 others like this." inside flex table with id "---program:-:myFeedTableId---"

  @115483    @verifyThatNameOfUsersWhoLikesThePostIsDisplayedAtMyFeedSectionToPMUser
  Scenario: validate that name of users who like the post is displayed at my feed-to me only section by login as PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    Then I see "You, David FO, and 2 others like this." inside flex table with id "---program:-:myFeedTableId---"

  @115494   @verifyGovGrantLogoIsDisplayedAtCollabPhaseByLoginAsAdminUser
  Scenario: validate that govgrants logo is displayed at collab phase by login as admin user
    When I login as "Admin" user
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
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation" in the comment at collab
    Then I see mention auto complete list is displayed at collab comment

  @115989     @verifyThatIfAdminUserUsedAtMentionInCommentThenAutoCompleteListIsDisplayedAtCommentAtCollabPhase
  Scenario: validate that if admin user at mention user in comment then mention auto complete list is displayed at collab phase
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation" in the comment at collab
    Then I see mention auto complete list is displayed at collab comment

  @115990     @verifyThatIfAdminUserUsedAtMentionInCommentThenAutoCompleteListIsDisplayedAtCommentAtRecordLevelCollab
  Scenario: validate that if admin user at mention user in comment then mention auto complete list is displayed at record level collab phase
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation" in the comment at collab
    Then I see mention auto complete list is displayed at collab comment

  @115346    @verifyBurgerMenuIconIsNotDisplayedAtExternalUserCollabMyFeedSection-HomePhase
  Scenario: validate that burger menu icon is not displayed at my feed section by login as external user - home phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    Then I see Menu Icon is not displayed at my feed section

  @118099    @verifyThatAdminUserCanCommentOnPostAtCollabPhase
  Scenario: validate that pop-up appears by perfomring delete action at my feed section by SPI user from home phase
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I click on "Delete" action at "test @Simon Automation" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "test @Simon Automation" in my feed section and share the comment
    Then I see "test @Simon Automation" inside flex table with id "---program:-:myFeedTableId---"