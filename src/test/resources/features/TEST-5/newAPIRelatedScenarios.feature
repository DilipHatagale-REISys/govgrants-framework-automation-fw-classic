@NewAPIRelatedScenarios @regression-test5
Business Need: New API related scenarios temporary

  @61467   @VerifySessionTimeoutRemainderDialogBoxShownInBrowserTab
  Scenario: Verify session Timeout reminder dialog box shown in browser tab title after 1 min of session login
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                 | name                        |
      | false        | 2            | a0b1C00000M9lj9QAB | SessionTimeoutReminderValue | SessionTimeoutReminderValue |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                  |
      | true         | 0            | a0b1C00000M9ljOQAR | Session Enable Reminder | SessionEnableReminder |
    When I navigate to "Planning" tab
    When I pause execution for "60" seconds
    Then I see session timeout remainder as "01" countdown is shown in browser tab

  @61468   @VerifyLogoutPageDisplayedAfterTimeGivenInSessionTimeoutValue
  Scenario: Verify that session will get expired after given SessionTimeoutValue and Logout Page gets Displayed
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                           | name                |
      | false        | 3            | a0b1C00000M9ljEQAR | Value for session timeout in a minute | SessionTimeoutValue |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description               | name                      |
      | true         | 1            | a0b1C00000LaBhVQAV | SessionDialogTimeoutLimit | SessionDialogTimeoutLimit |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                   |
      | true         | 0            | a0b1C00000M9ljTQAR | Session Enable DialogBox | SessionEnableDialogBox |
    When I navigate to "Planning" tab
    When I pause execution for "200" seconds
    Then I see "Logout" in current url

  @61434   @VerifySessionTimeoutPopUpAppears
  Scenario: Verify session timeout pop-up appears after 2 min of session login
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description               | name                      |
      | true         | 1            | a0b1C00000LaBhVQAV | SessionDialogTimeoutLimit | SessionDialogTimeoutLimit |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                   |
      | true         | 0            | a0b1C00000M9ljTQAR | Session Enable DialogBox | SessionEnableDialogBox |
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    Then I softly see Session Timeout dialogue box with title "Session Expiration Warning" is displayed

  @61462 @VerifySessionGetsContinueByClickOnStayLoggedInButton @checkcannotSee @wip
  Scenario: Verify that session will get continue by click on Stay Logged In Button
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    When I click on "Stay Logged In" Button in Session Timeout dialogbox
    Then I softly cannot see Session Timeout dialogue box with title "Session Expiration Warning" is displayed

  @61637   @VerifySessionTimeoutPopUpAppears
  Scenario: Verify session timeout pop-up appears after 1 min of session login
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I navigate to "Planning" tab
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    When I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I pause execution for "120" seconds
    Then I softly see Session Timeout dialogue box with title "Session Expiration Warning" is displayed

  @61455   @VerifySessionTimeoutDialogBoxTitle @checkSoftly @checkCustomLabel @wip
  Scenario: Verify session timeout Dialog Box title
    When I login as "Automation" user
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    Then I softly see Session Timeout dialogue box with title "Test Automation" is displayed

  @61635   @VerifySessionTimeoutDialogBoxText @checkCustomLabel @wip
  Scenario: Verify session timeout Dialog Box body text
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    Then I see Session Timeout dialogbox with text "Test Automation Body Text"

  @68373   @VerifySessionTimeoutDialogBoxTimeRemainingText @checkCustomLabel @wip
  Scenario: Verify session timeout Dialog time remaining text
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    Then I see Session Timeout dialogbox with text "Time remaining test Automation:"

  @68376   @VerifySessionTimeoutDialogBoxWithTestLoggedInButton  @checkCustomLabel @wip
  Scenario: Verify session timeout Dialog Box text
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    Then I see button "Test Logged In"

  @68377   @VerifySessionTimeoutDialogBoxWithTestLoggedOutButton  @checkCustomLabel @wip
  Scenario: Verify session timeout Dialog Box text
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    Then I see button "Test Log Out"

  @148203   @VerifyLogoutPageDisplayedAfterTimeGivenInSessionTimeoutValueForSPIUser
  Scenario: Verify that session will get expired after given SessionTimeoutValue and Logout Page gets Displayed for SPI User
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                           | name                |
      | false        | 3            | a0b1C00000M9ljEQAR | Value for session timeout in a minute | SessionTimeoutValue |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I pause execution for "200" seconds
    Then I see "Logout" in current url

  @148208   @VerifySessionTimeoutPopUpAppearsOnFormLayout
  Scenario: Verify session timeout pop-up appears after 1 min of session login on form layout
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description               | name                      |
      | true         | 1            | a0b1C00000LaBhVQAV | SessionDialogTimeoutLimit | SessionDialogTimeoutLimit |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                   |
      | true         | 0            | a0b1C00000M9ljTQAR | Session Enable DialogBox | SessionEnableDialogBox |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Cover Page" program in flex table
    When I pause execution for "120" seconds
    Then I softly see Session Timeout dialogue box with title "Session Expiration Warning" is displayed

  @148207   @VerifySessionTimeoutPopUpAppearsOnFormLayoutForSPIUser
  Scenario: Verify session timeout pop-up appears after 1 min of session login on form layout for spi user
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description               | name                      |
      | true         | 1            | a0b1C00000LaBhVQAV | SessionDialogTimeoutLimit | SessionDialogTimeoutLimit |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                   |
      | true         | 0            | a0b1C00000M9ljTQAR | Session Enable DialogBox | SessionEnableDialogBox |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    When I pause execution for "120" seconds
    Then I softly see Session Timeout dialogue box with title "Session Expiration Warning" is displayed

  @148205   @VerifySessionTimeoutPopUpAppearsOnModalLayoutForSPIUser
  Scenario: Verify session timeout pop-up appears after 1 min of session login on modal layout for spi user
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description               | name                      |
      | true         | 1            | a0b1C00000LaBhVQAV | SessionDialogTimeoutLimit | SessionDialogTimeoutLimit |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                   |
      | true         | 0            | a0b1C00000M9ljTQAR | Session Enable DialogBox | SessionEnableDialogBox |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    And I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:ApplicationRolesAndResponsibilityTableId---"
    When I pause execution for "120" seconds
    Then I softly see Session Timeout dialogue box with title "Session Expiration Warning" is displayed

  @164290 @ValidateUserPerformClickOnTheOneTabThenSessionTimeoutCountdownRestarts @vaibhavC
  Scenario: Validate User Perform Click On The One Tab Then Session Timeout Countdown Restarts
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I pause execution for "60" seconds
    Then I see session timeout remainder as "01" countdown is shown in browser tab

  @161158  @verifyThatWhenUserPerformClickOnThePageLayoutThenSessionTimeoutCountdownShouldRestarts
  Scenario: To verify that user perform click on the page layout then session timeout coundown shoild restarts
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    When I navigate to "Planning" tab
    When I perform quick search for "Demo_Title"
    When I pause execution for "70" seconds
    Then I see session timeout remainder as "01" countdown is shown in browser tab

  @161159  @verifyThatWhwnUserPerformScrollUpword/DownwordThenSessionTimeoutCountdownShouldRestarts
  Scenario: To verify that user perform scrollupupword/downword then session timeout coundown shoild restarts
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I perform scroll on page layout
    When I pause execution for "60" seconds
    Then I see session timeout remainder as "01" countdown is shown in browser tab

  @161161  @verifyThatWhwnUserPerformScrollMouseMoveThenSessionTimeoutCountdownShouldRestarts @skiponjenkins
  Scenario: To verify that user perform Mouse move then session timeout coundown shoild restarts
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "10" seconds
    When I hovering mouse on help text icon inside "Test's September Program"
    When I pause execution for "200" seconds
    Then I see session timeout remainder as "01" countdown is shown in browser tab

