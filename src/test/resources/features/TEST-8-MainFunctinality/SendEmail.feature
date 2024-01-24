@SendEmail-Component @regression-QA @SendEmail
Business Need: SendEmai Component Scenarios Send Email Functionality Send Email Attachment Send Email Send Files
  Test all SendEmail component based scenarios
  As a configuration manager I make different configurational changes in SendEmail component and will validate them.

  ##########Test suite: Send Email UI/UX (Suite ID: 332319)##########
  @332320
  Scenario: UI - when Internal user Hover on the TO field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "To" inside Send Email Modal
    Then I see help text "Use semicolon(;) to separate multiple To email addresses" is displayed related field "To" inside Send Email

  @332321
  Scenario: when PM user Hover on the  TO field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "To" inside Send Email Modal
    Then I see help text "Use semicolon(;) to separate multiple To email addresses" is displayed related field "To" inside Send Email

  @332322
  Scenario: when External user Hover on the  TO field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "To" inside Send Email Modal
    Then I see help text "Use semicolon(;) to separate multiple To email addresses" is displayed related field "To" inside Send Email

  @332323
  Scenario: when Internal user Hover on the  CC field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Cc" inside Send Email Modal
    Then I see help text "Use semicolon(;) to separate multiple Cc email addresses" is displayed related field "Cc" inside Send Email

  @332324
  Scenario: when  PM user Hover on the  CC field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Cc" inside Send Email Modal
    And I pause execution for "5" seconds
    Then I see help text "Use semicolon(;) to separate multiple Cc email addresses" is displayed related field "Cc" inside Send Email

  @332325
  Scenario: when External user Hover on the  cc field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Cc" inside Send Email Modal
    Then I see help text "Use semicolon(;) to separate multiple Cc email addresses" is displayed related field "Cc" inside Send Email

  @332326
  Scenario: when  user Hover on the Send Copy (Cc) to Me field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Send Copy (Cc) to Me" inside Send Email Modal
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed related field "Send Copy (Cc) to Me" inside Send Email

  @332327
  Scenario: when  Internal user Hover on the Send Copy (Cc) to Me field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Send Copy (Cc) to Me" inside Send Email Modal
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed related field "Send Copy (Cc) to Me" inside Send Email

  @332328
  Scenario: Send Email -UI - when External user Hover on the  Send Copy (Cc) to Me field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Send Copy (Cc) to Me" inside Send Email Modal
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed related field "Send Copy (Cc) to Me" inside Send Email

  @332329
  Scenario: Send Email -UI - when  Internal user Hover on the Subject field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Subject" inside Send Email Modal
    Then I see help text "Enter subject here" is displayed related field "Subject" inside Send Email

  @332330
  Scenario: Send Email -UI - when user Hover on the Subject field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Subject" inside Send Email Modal
    Then I see help text "Enter subject here" is displayed related field "Subject" inside Send Email

  @332331
  Scenario: Send Email -UI - when External user Hover on the Subject  field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Subject" inside Send Email Modal
    Then I see help text "Enter subject here" is displayed related field "Subject" inside Send Email

  @332332
  Scenario: Send Email -UI - when user Hover on the Body Content  field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Body Content" inside Send Email Modal
    Then I see help text "Enter email content here" is displayed related field "Body Content" inside Send Email

  @332333
  Scenario: Send Email -UI - when Internal user Hover on the Body Content  field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Body Content" inside Send Email Modal
    Then I see help text "Enter email content here" is displayed related field "Body Content" inside Send Email

  @332334
  Scenario: Send Email -UI - when External user Hover on the Body Content field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Body Content" inside Send Email Modal
    Then I see help text "Enter email content here" is displayed related field "Body Content" inside Send Email

  @332335
  Scenario: Send Email -UI - when Internal user Hover on the Attachments field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Attachments" inside Send Email Modal
    Then I see help text "File Attachment" is displayed related field "Attachments" inside Send Email

  @332337
  Scenario: Send Email -UI - when  user Hover on the Attachments field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Attachments" inside Send Email Modal
    Then I see help text "File Attachment" is displayed related field "Attachments" inside Send Email

  @332338
  Scenario: Send Email -UI - when External user Hover on the Attachments field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Attachments" inside Send Email Modal
    Then I see help text "File Attachment" is displayed related field "Attachments" inside Send Email

  @332339
  Scenario: Send Email -UI - when  user Hover on the Select file field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Select Files" inside Send Email Modal
    Then I see help text "Open files table to add links" is displayed related field "Select Files" inside Send Email

  @332340
  Scenario: Send Email -UI - when Internal  user Hover on the Select file field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Select Files" inside Send Email Modal
    Then I see help text "Open files table to add links" is displayed related field "Select Files" inside Send Email

  @332341
  Scenario: Send Email -UI - when External user Hover on the  Select file  field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Select Files" inside Send Email Modal
    Then I see help text "Open files table to add links" is displayed related field "Select Files" inside Send Email

  @332342
  Scenario: Send Email -UI - Required to save fields  (*)  is displayed for admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see help text "*" is displayed related field "To" inside Send Email

  @332343
  Scenario: Send Email -UI - Required to save fields  (*)  is displayed for Internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see help text "*" is displayed related field "To" inside Send Email

  @332344
  Scenario: Send Email -UI - Required to save fields  (*)  is displayed for External user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see help text "*" is displayed related field "To" inside Send Email

    ##########Test suite: Send Email Attachments (Suite ID: 332777)#########
  @332780
  Scenario: Send Email-To verify,Internal User send the email from TO field as 'internal'
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilipmyd@gmail.com" Subject "Subject Line" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332781 @382441 @Sanity
  Scenario: Send Email-To verify,Internal User send the email from TO field as 'External'
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilipmyd@gmail.com" Subject "Subject Line" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332784
  Scenario: Send Email-To verify,Internal User send the email from TO field as 'Group'
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilipmyd@gmail.com" Subject "Subject Line" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332785
  Scenario: Send Email-To verify,Internal User send the email from TO & CC field as 'internal'
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Internal" value
    And I click on dropdown inside "Cc" field and Select "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilipmyd@gmail.com" Subject "Subject Line" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332786
  Scenario: Send Email-To verify,Internal User send the email from TO & CC field as 'External'
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    And I click on dropdown inside "Cc" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilipmyd@gmail.com" Subject "Subject Line" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332787
  Scenario: Send Email-To verify,Internal User send the email from TO & CC field as 'Group'
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilipmyd@gmail.com" Subject "Subject Line" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332788 @382439 @Sanity
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO (internal) field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332790
  Scenario: Send Email -To verify , When Internal user sends an Email with an Attachment  from TO (internal) field
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332791 @382442 @smoke
  Scenario: Send Email -To verify , When External user sends an Email with an Attachment  from TO (internal) field
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332792
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO (External) field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332794
  Scenario: Send Email -To verify , When Internal  user sends an Email with an Attachment  from TO (External) field
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332795
  Scenario: Send Email -To verify , When Internal  user sends an Email with an Attachment  from TO (Group) field
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332796
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO (Group) field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332798
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO (Group) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test SendEmailAttachment" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I select value inside table "---program:-:communicationHistoryTableId---" is "All"
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332799
  Scenario: Send Email -To verify , When Internal  user sends an Email with an Attachment  from TO (Group)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test SendEmailAttachment" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
     # And I select value inside table "---program:-:communicationHistoryTableId---" is "All"
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332800
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO (Internal) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test SendEmailAttachment" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I select value inside table "---program:-:communicationHistoryTableId---" is "All"
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332801
  Scenario: Send Email -To verify , When  Internal user sends an Email with an Attachment  from TO (Internal) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test SendEmailAttachment" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
     # And I select value inside table "---program:-:communicationHistoryTableId---" is "All"
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332803
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO (External) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test SendEmailAttachment" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I select value inside table "---program:-:communicationHistoryTableId---" is "All"
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332804
  Scenario: Send Email -To verify , When  Internal user sends an Email with an Attachment  from TO (External) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test SendEmailAttachment" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I see "Email Sent Successfully." message is displayed on Send Email Modal
    When I close modal by clicking the top right x button
   #     And I select value inside table "---program:-:communicationHistoryTableId---" is "All"
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332805
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO & CC (Internal) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Internal" value
    And I click on dropdown inside "Cc" field and Select "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "diliphatagale@yopmail.com" Subject "Test SendEmailAttachment" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I select value inside table "---program:-:communicationHistoryTableId---" is "All"
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332806
  Scenario: Send Email -To verify , When  Internal user sends an Email with an Attachment  from TO & CC (Internal) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Internal" value
    And I click on dropdown inside "Cc" field and Select "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "diliphatagale@yopmail.com" Subject "Test SendEmailAttachment" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
     # And I select value inside table "---program:-:communicationHistoryTableId---" is "All"
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332807
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO & CC  (External) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    And I click on dropdown inside "Cc" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "diliphatagale@yopmail.com" Subject "Test for To External Cc External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I select value inside table "---program:-:communicationHistoryTableId---" is "All"
    And I click on "View" icon for "Test for To External Cc External" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332808
  Scenario: Send Email -To verify , When Internal user sends an Email with an Attachment  from TO & CC  (External) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    And I click on dropdown inside "Cc" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "diliphatagale@yopmail.com" Subject "Test for To External Cc External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
  #And I select value inside table "---program:-:communicationHistoryTableId---" is "All"
    And I click on "View" icon for "Test for To External Cc External" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332809 @382756 @Sanity
  Scenario: Send Email -To verify , When  user sends an Email with an more than 10 Attachment  then Do not attach more than 10 Files, Attachment limit is Exceeded." error message is getting displayed on the send email modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "diliphatagale@yopmail.com" Subject "Test" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I upload attachment "DuplicateFile.txt" in Send Email Modal
    When I upload attachment "TestFileSharing.docx" in Send Email Modal
    When I upload attachment "TestAutomationFile.pptx" in Send Email Modal
    When I upload attachment "SendEmailMP4File.mp4" in Send Email Modal
    When I upload attachment "SharingAtCollabTest.png" in Send Email Modal
    When I upload attachment "actionsAtEgrid.png" in Send Email Modal
    When I upload attachment "actionsAtAttachment.png" in Send Email Modal
    When I upload attachment "actionsAtEnhancedDataTable.png" in Send Email Modal
    When I upload attachment "actionsAtMeGridTable.png" in Send Email Modal
    When I upload attachment "captureModalFields.png" in Send Email Modal
    Then I see "Do not attach more than 10 Files, Attachment limit is Exceeded." error massage in attachment section

  @332811 @382757 @Sanity
  Scenario: Send Email -To verify , When Internal  user sends an Email with an more than 10 Attachment  then Do not attach more than 10 Files, Attachment limit is Exceeded." error message is getting displayed on the send email modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    And I click on dropdown inside "Cc" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "diliphatagale@yopmail.com" Subject "Test" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I upload attachment "DuplicateFile.txt" in Send Email Modal
    When I upload attachment "TestFileSharing.docx" in Send Email Modal
    When I upload attachment "TestAutomationFile.pptx" in Send Email Modal
    When I upload attachment "SendEmailMP4File.mp4" in Send Email Modal
    When I upload attachment "SharingAtCollabTest.png" in Send Email Modal
    When I upload attachment "actionsAtEgrid.png" in Send Email Modal
    When I upload attachment "actionsAtAttachment.png" in Send Email Modal
    When I upload attachment "actionsAtEnhancedDataTable.png" in Send Email Modal
    When I upload attachment "actionsAtMeGridTable.png" in Send Email Modal
    When I upload attachment "captureModalFields.png" in Send Email Modal
    Then I see "Do not attach more than 10 Files, Attachment limit is Exceeded." error massage in attachment section

  @382758 @Sanity
  Scenario: sanity TC-SPI-To verify if user is getting error message "File Size Exceeded Attachments Limits of 25MB" if the total file size is more than 25MB
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    And I click on dropdown inside "Cc" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "diliphatagale@yopmail.com" Subject "Test" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I upload attachment "DuplicateFile.txt" in Send Email Modal
    When I upload attachment "TestFileSharing.docx" in Send Email Modal
    When I upload attachment "TestAutomationFile.pptx" in Send Email Modal
    When I upload attachment "SendEmailMP4File.mp4" in Send Email Modal
    When I upload attachment "SharingAtCollabTest.png" in Send Email Modal
    When I upload attachment "actionsAtEgrid.png" in Send Email Modal
    When I upload attachment "actionsAtAttachment.png" in Send Email Modal
    When I upload attachment "actionsAtEnhancedDataTable.png" in Send Email Modal
    When I upload attachment "actionsAtMeGridTable.png" in Send Email Modal
    When I upload attachment "captureModalFields.png" in Send Email Modal
    Then I see "Do not attach more than 10 Files, Attachment limit is Exceeded." error massage in attachment section

  @332815
  Scenario: Send Email -To verify , when user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- send email attachment section
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    When I upload attachment "Maketodayfilematter.pdf" in Send Email Modal
    Then I see "Single File Size Attachment upto 1.5MB Limit Exceeded." error massage in attachment section

  @332816
  Scenario: Send Email -To verify , when Internal user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- send email attachment section
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I pause execution for "10" seconds
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "Maketodayfilematter.pdf" in Send Email Modal
    Then I see "Single File Size Attachment upto 1.5MB Limit Exceeded." error massage in attachment section

  @332821
  Scenario: Send Email -To verify , when Internal user try to add more then 1.5mb file then " Insert links to file(s) from the record"' message is displayed on the LWC- reply email attachment section
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    And I click on dropdown inside "Cc" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "diliphatagale@yopmail.com" Subject "Test for To External Cc External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
  #And I select value inside table "---program:-:communicationHistoryTableId---" is "All"
    And I click on "Reply" icon for "Test for To External Cc External" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "Maketodayfilematter.pdf" in Send Email Modal
    Then I see "Single File Size Limit is Exceeded" error massage in attachment section

  @332822
  Scenario: Send Email -To verify , when user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- reply email attachment section
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    And I click on dropdown inside "Cc" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "diliphatagale@yopmail.com" Subject "Test for To External Cc External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I select value inside table "---program:-:communicationHistoryTableId---" is "All"
    And I click on "Reply" icon for "Test for To External Cc External" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "Maketodayfilematter.pdf" in Send Email Modal
    Then I see "Single File Size Limit is Exceeded" error massage in attachment section

  @332833
  Scenario: Send Email -Attachment - To verify ,  user are remove the attachement from  sends email modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    And I click on X Action Button of "SendEmailAttachment.pdf" file
    Then I do not see "SendEmailAttachment.pdf" file is displayed in modal

  @332834
  Scenario: Send Email -Attachment - To verify ,  Internal user are remove the attachement from  sends email modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    And I click on X Action Button of "SendEmailAttachment.pdf" file
    Then I do not see "SendEmailAttachment.pdf" file is displayed in modal

  @382774
  Scenario: Sanity-TC-Admin-verify that the user is able to click on the checkbox under "Send Copy (Cc) to Me" if user wants to send the copy of the mail to themselves
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed related field "Send Copy (Cc) to Me" inside Send Email

      ##########################Sanity#####################

  @69092 @382346 @382348 @Sanity
  Scenario Outline: Validate If internal checkbox is checked at To Field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Automation Internal Program for send Email"
    When I click on "View" icon for "Automation Internal Program for send Email" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    Then I see iconName "fa fa-user" with user "Automation PM" is displayed on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    Then I see iconName "fa fa-user" with user "Automation PM" is displayed on send email modal
    Examples:
      | Users |
      | Admin |
      | PM    |

  @161870 @382353 @382354 @382356 @382357 @382359 @382360 @Sanity
  Scenario Outline: To verify when user send email with multiple email addresses are separated by comma
  Sanity TC-Admin/PM-To verify that the user can type the email in the email-'Body Content' section.
  Sanity TC-Admin/PM-TO verify that the user can type Subject line in the ‘Subject’ text box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Automation Internal Program for send Email"
    When I click on "View" icon for "Automation Internal Program for send Email" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in,ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I enter value "Test Automation Email1" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Email Sent Successfully. |
    Examples:
      | Users |
      | Admin |
      | PM    |

  @382355 @382358 @382361 @382377 @Sanity
  Scenario: Sanity TC-SPI-To verify that the user can enter multiple comma-separated emailIds in ‘To’, ‘cc’ and ‘bcc’ sections.
  Sanity TC-spi-TO verify that the user can type Subject line in the ‘Subject’ text box,
  Sanity TC-SPI-To verify that the user can type the email in the email-'Body Content' section.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Automationadminpm@yopmail.com,ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "dilip.hatagale@reisystems.in,ashwini.mahore@reisystems.in" into field "{testData:CCField}" on send email modal
    When I enter value "Test Automation Email" into field "Subject" on send email modal
    When I enter value "Test Automation Email" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Email Sent Successfully. |
    And I checkout to yopmail with mailid "Automationadminpm@yopmail.com"
    And I pause execution for "120" seconds
    Then I refresh the page
    And I see the mail subject is as follows :
  """
  Sandbox: Test Automation Email
  """

  @147248  @382362 @382363 @verifyTextInsideCkEditorInputBoxIsDisplayedAsBoldInsideSendEmailModal @Sanity
  Scenario Outline: validate text inside ck editor input box is displayed as bold text at send email modal,
  Sanity TC-Admin/PM-To verify that users can format mail using editor-options provided like choosing font-family, font-size, bold-italic-underline, etc.
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Automation Internal Program for send Email"
    When I click on "View" icon for "Automation Internal Program for send Email" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Bold" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "Bold" format inside CK editor
    And I close modal by clicking the top right x button
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Italic" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "Italic" format inside CK editor
    Examples:
      | Users |
      | Admin |
      | PM    |

  @382364 @Sanity
  Scenario: Sanity TC-SPI-To verify that users can format mail using editor-options provided like choosing font-family, font-size, bold-italic-underline, etc.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Bold" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "Bold" format inside CK editor
    And I close modal by clicking the top right x button
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting Italic" into field "Body Content" on send email modal
    And I change formatting of all text to "Italic" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting Italic" displayed in "Italic" format inside CK editor

  @332834 @382365 @382366 @Sanity
  Scenario Outline: Sanity TC-Admin/PM-Verify that the user can attach file in the  Attachement section.
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for send Email"
    When I click on "View" icon for "Automation Internal Program for send Email" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    Then I see "SendEmailAttachment.pdf" file is displayed in modal
    Examples:
      | Users |
      | Admin |
      | PM    |

  @382367 @Sanity
  Scenario: Sanity TC-SPI-Verify that the user can attach file in the  Attachement section.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @382371 @382372 @Sanity
  Scenario Outline:Sanity -TC-Admin-Verify that you can Insert links to file(s) from the record by clicking on "Select files" button
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for send Email"
    When I click on "View" icon for "Automation Internal Program for send Email" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Select Files" button send email modal
    Then I softly see "FilesLink" page block displayed
    Examples:
      | Users |
      | Admin |
      | PM    |

  @382373 @Sanity
  Scenario: Sanity -TC-SPI-Verify that you can Insert links to file(s) from the record by clicking on "Select files" button
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Select Files" button send email modal
    Then I softly see "FilesLink" page block displayed

  @382375 @382376 @Sanity
  Scenario Outline:Sanity -TC-Admin/PM-Verify that after entering email Ids in either of the ‘To’, ‘cc’  sections, entering Subject line and mail body and clicking ‘Send’ button, mail gets delivered to intended receivers.
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Automation Internal Program for send Email"
    When I click on "View" icon for "Automation Internal Program for send Email" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automationadminpm@yopmail.com,dilip.hatagale@reisystems.in,vrishali.raskar@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test case 382375 and 382376" into field "Subject" on send email modal
    When I enter value "Test case 382375 and 382376" into field "Body Content" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automationadminpm@yopmail.com" into field "{testData:CcField}" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Email Sent Successfully. |
    And I checkout to yopmail with mailid "Automationadminpm@yopmail.com"
    And I pause execution for "120" seconds
    Then I refresh the page
    And I see the mail subject is as follows :
  """
  Sandbox: Test case 382375 and 382376
  """
    Examples:
      | Users |
      | Admin |
      | PM    |

  @382419 @382420 @Sanity
  Scenario Outline:Sanity -TC-Admin/PM- Verify that if the email is sent without Subject, a pop-up is generated warning "Enter Subject for Email."
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Automation Internal Program for send Email"
    When I click on "View" icon for "Automation Internal Program for send Email" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automationadminpm@yopmail.com,dilip.hatagale@reisystems.in,vrishali.raskar@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test case automation" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Enter Subject for Email. |
    Examples:
      | Users |
      | Admin |
      | PM    |

  @382423 @Sanity
  Scenario: Sanity -TC-SPI- Verify that if the email is sent without Subject, a pop-up is generated warning "Enter Subject for Email."
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Automationadminpm@yopmail.com,ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test Automation Email" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Enter Subject for Email. |

  @382428 @382429 @Sanity
  Scenario Outline: Sanity-TC-Admin/PM- Verify that if the email is sent without email address, a pop-up is generated warning "Enter To Email Address.
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Automation Internal Program for send Email"
    When I click on "View" icon for "Automation Internal Program for send Email" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Test Automation Email" into field "Subject" on send email modal
    When I enter value "Test" into field "Body Content" on send email modal
    And I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Enter To Email Address. |
    Examples:
      | Users |
      | Admin |
      | PM    |

  @collabFileAttachFunctionality @Sanity
  Scenario Outline: validate that upload file from library and computer is displayed at attach file modal at collab phase
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

  @382430 @Sanity
  Scenario: Sanity-TC-SPI- Verify that if the email is sent without email address, a pop-up is generated warning "Enter To Email Address.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Test Automation Email" into field "Subject" on send email modal
    When I enter value "Test" into field "Body Content" on send email modal
    And I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Enter To Email Address. |
