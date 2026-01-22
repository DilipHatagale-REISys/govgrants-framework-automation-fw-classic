@Collab @collab
Business Need: collab Component Scenarios
  Test all collab component based scenarios
  As a configuration manager i make different configurational changes in collab component and will validate them.

  @382125
  Scenario: Sanity TC_Admin_To verify that, logged in user name & email id should be visible on Collab phase.
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    Then I see Username "Automation Admin" is displayed Collab phase
    Then I see emailid "automationadmin@yopmail.com" is displayed Collab phase

  @382128
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
    When I login to "As a Grantor" app as "PM" user
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

  @382144
  Scenario: side bar options on collab phase is clickable for SPI User
  |Sanity TC_SPI_To verify that, 'To me' link should be clickable from side bar option on Collab phase.|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    Then I see "To Me" link on collab phase is displayed and clickable

  @382213 @382222 @382238 @382232 @382257 @382272
  Scenario: side bar options on collab phase is clickable for Admin User,My Colleagues,External Users,My Groups,Membership Requests
  |Sanity TC_Admin_To verify that, 'My Colleagues' link should be clickable from side bar option on Collab phase.|
  |Sanity TC_Admin_To verify that, 'External Users' link should be clickable from side bar option on Collab phase. |
  |Sanity TC_Admin_To verify that, 'My Groups' link should be clickable from feed side bar option on Collab phase. |
  |Sanity TC_Admin_To verify that, 'Membership Requests' link should be clickable from side bar option on Collab phase. |
  |Sanity TC_Admin_To verify that, 'My Content' link should be clickable from side bar option on Collab phase. |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Home" tab
    And I navigate to "Collaboration (Collab)" tab
    Then I see "My Colleagues" link on collab phase is displayed and clickable
    Then I see "External Users" link on collab phase is displayed and clickable
    Then I see "My Groups" link on collab phase is displayed and clickable
    Then I see "Membership Requests" link on collab phase is displayed and clickable
    Then I see "My Content" link on collab phase is displayed and clickable

  @382214 @382226 @382235 @382268 @382275
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

  @382220 @382230 @382238 @382278
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

  @382383 @382395
  Scenario:Sanity TC_Admin_To verify that, user should be able to search post using quick search|
  |Sanity TC_Admin_To verify that, user should be able to like the comment by click on 'like' action link added by self and another user.|
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "search post using quick search" in my feed section and share the post
    When I perform quick search for "search post using quick search"
    Then I softly see "search post using quick search" inside flex table with id "---program:-:myFeedTableId---"
    Then I softly see "Like" button is displayed and enabled inside comment "search post using quick search"

  @115988 @382389
  Scenario: validate that if admin user at mention user in comment then mention auto complete list is displayed
  |Sanity TC_Admin_To verify that, user should be able to enter comment, tag people and share post by click on 'Share' button.|
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on parallel menu button in flex table title "My Feed"
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for automation-Admin DND" comment inside my feed
    And I enter value "Hello @Automation" in the comment at collab
    And I pause execution for "5" seconds
    Then I see mention auto complete list is displayed at collab comment

  @382398 @382390
  Scenario:TC_PM_To verify that, user should be able to like the comment by click on 'like' action link added by self and another user.|
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "search post using quick search" in my feed section and share the post
    When I perform quick search for "search post using quick search"
    Then I softly see "search post using quick search" inside flex table with id "---program:-:myFeedTableId---"
    Then I softly see "Like" button is displayed and enabled inside comment "search post using quick search"

  @382394 @382401 @382407
  Scenario:Sanity TC_SPI_To verify that, user should be able to enter comment, tag people and share post by click on 'Share' button.|
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

  @104686 @382404 @382462
  Scenario: validate the pop-up appears by perforing delete action at my feed section by Admin user
    When I login to "As a Grantor" app as "PM" user
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

  @104678 @382406 @382463
  Scenario:scenario 1  To  verify after delete the comment  we have to given the confirmation box  on collab  phase  for pm user|
  |Sanity TC_PM_To verify that, user should be able to delete the shared post by clicking on delete action button.|
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I enter value "Test Automation Admin collab phase Comment" in my feed section and share the comment
    And I click on "Delete" action at "Test Automation Admin collab phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this comment?" is displayed

  @382408
  Scenario:Sanity TC_Admin_To verify that, user should be able to share link by adding link URL & name under link section|
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Collaboration (Collab)" tab
    When I click on "Link" inside My Feed
    And I enter value "https://www.Rei.com" inside "Link URL" in My Feed
    And I enter value "Sanity testing" inside "Link Name" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    Then I softly see "https://www.Rei.com" inside flex table with id "---program:-:myFeedTableId---"

  @382411
  Scenario: Sanity TC_PM_To verify that, user should be able to share link by adding link URL & name under link section|
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Collaboration (Collab)" tab
    When I click on "Link" inside My Feed
    And I enter value "https://www.Rei.com" inside "Link URL" in My Feed
    And I enter value "Sanity testing" inside "Link Name" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    Then I softly see "https://www.Rei.com" inside flex table with id "---program:-:myFeedTableId---"

  @382412 @382416
  Scenario:Sanity TC_SPI_To verify that, user should be able to share link by adding link URL & name under link section|
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

  @382413 @382415
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
     # | Admin |
      | PM    |

  @382421
  Scenario: Sanity TC_Admin_To verify that, user should be able to see like count for added comments.
    When I login to "As a Grantor" app as "PM" user
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

  @382422 @385452
  Scenario:Sanity TC_PM_To verify that, user should be able to see like count for added comments. |
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

  @382454
  Scenario: Sanity TC_Admin_To verify that, user should be able to see date and time details for posted comments by user.
    When I login to "As a Grantor" app as "PM" user
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

  @382458
  Scenario: Sanity TC_SPI_To verify that, user should be able to see date and time details for posted comments by user.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    Then I softly see "Just now" button is displayed and enabled inside comment "Post DO NOT DELETE"

  @104681 @382464
  Scenario:validate the pop-up appears by performing delete action at my feed section by SPI user at collab phase|
  |Sanity TC_PM_To verify that, user should be able to delete the shared post by clicking on delete action button.|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation SPI collab phase Comment" in my feed section and share the post
    When I pause execution for "5" seconds
    And I click on "Delete" action from dropdown at "Test Automation SPI collab phase Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this post and its comments?" is displayed

 @382498
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

  @382500
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

  @382503
  Scenario:  Sanity TC_SPI_To verify that, user should be able to delete the comments posted by another user by clicking on '❌' (cross )icon.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test Automation Spi Comment" in my feed section and share the post
    And I click on "Delete" action at "Test Automation Spi Comment" comment inside my feed
    Then I see confirmation box with body "Are you sure you want to delete this comment?" is displayed

  @382504
  Scenario:  Sanity TC_Admin_To verify that, user should be able to see list of user along with email id on click of 'My Colleagues' link.
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Colleagues" menu inside collab sidebar
    Then I see "Automation EXE" as user name and "exe.automation@yopmail.com" as emailid
    Then I see "Automation EXE1" as user name and "exe1.automation@yopmail.com" as emailid

  @382506
  Scenario:  Sanity TC_PM_To verify that, user should be able to see list of user along with email id on click of 'My Colleagues' link.
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Colleagues" menu inside collab sidebar
    Then I see "Automation EXE" as user name and "exe.automation@yopmail.com" as emailid
    Then I see "Automation PM1" as user name and "pm1.automation@yopmail.com" as emailid

  @382507
  Scenario:  Sanity TC_SPI_To verify that, user should be able to see list of user along with email id on click of 'My Colleagues' link.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Colleagues" menu inside collab sidebar
    Then I see "Automation SPI" as user name and "jameshanknew@yopmail.com" as emailid

  @382511
  Scenario:  Sanity TC_Admin_To verify that, user should be able to see list of users along with email id , profile picture on click of 'External users' link.
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "External Users" menu inside collab sidebar
    Then I see "Automation SPI" as user name and "automationspi@yopmail.com" as emailid with profile picture

  @382512
  Scenario:  Sanity TC_PM_To verify that, user should be able to see list of users along with email id , profile picture on click of 'External users' link.
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "External Users" menu inside collab sidebar
    Then I see "Automation SPI" as user name and "automationspi@yopmail.com" as emailid with profile picture

  @382518
  Scenario: Sanity TC_Admin_To verify that, user should be able to see the created groups along with member details on click of 'My groups' link
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Groups" menu inside collab sidebar
    Then I see group name "Test group Automation" with member details count "Members: 1"

  @382520
  Scenario:  Sanity TC_SPI_To verify that, user should be able to see the created groups along with member details on click of 'My groups' link
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Groups" menu inside collab sidebar
    Then I do not see group name "Test group Automation" with member details count "Members: 1"

  @382525
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
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Collaboration (Collab)" tab
    When I navigate to "My Content" menu inside collab sidebar
    Then I see "Add Files" button name inside table id "WorkSpaceFilesFlexToggle"
    Then I see "1" to "10" indexing inside table id "WorkSpaceFilesFlexToggle"

  @382526
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

  @382527
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