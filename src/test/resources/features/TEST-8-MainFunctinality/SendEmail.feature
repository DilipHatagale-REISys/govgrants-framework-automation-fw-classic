@SendEmail-Component @regression-QA @SendEmail
Business Need: SendEmai Component Scenarios Send Email Functionality Send Email Attachment Send Email Send Files
  Test all SendEmail component based scenarios
  As a configuration manager I make different configurational changes in SendEmail component and will validate them.

  ##########Test suite: Send Email UI/UX (Suite ID: 332319)##########
  @332320 @dilip
  Scenario: UI - when Internal user Hover on the TO field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "To" inside Send Email Modal
    Then I see help text "Use semicolon(;) to separate multiple To email addresses" is displayed related field "To" inside Send Email

  @332321 @dilip
  Scenario: when PM user Hover on the  TO field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "To" inside Send Email Modal
    Then I see help text "Use semicolon(;) to separate multiple To email addresses" is displayed related field "To" inside Send Email

  @332322 @dilip
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

  @332323 @dilip
  Scenario: when Internal user Hover on the  CC field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Cc" inside Send Email Modal
    Then I see help text "Use semicolon(;) to separate multiple Cc email addresses" is displayed related field "Cc" inside Send Email

  @332324 @dilip
  Scenario: when  PM user Hover on the  CC field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Cc" inside Send Email Modal
    And I pause execution for "5" seconds
    Then I see help text "Use semicolon(;) to separate multiple Cc email addresses" is displayed related field "Cc" inside Send Email

  @332325 @dilip
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

  @332326 @dilip
  Scenario: when  user Hover on the Send Copy (Cc) to Me field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Send Copy (Cc) to Me" inside Send Email Modal
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed related field "Send Copy (Cc) to Me" inside Send Email

  @332327 @dilip
  Scenario: when  Internal user Hover on the Send Copy (Cc) to Me field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Send Copy (Cc) to Me" inside Send Email Modal
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed related field "Send Copy (Cc) to Me" inside Send Email

  @332328 @dilip
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

  @332329 @dilip
  Scenario: Send Email -UI - when  Internal user Hover on the Subject field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Subject" inside Send Email Modal
    Then I see help text "Enter subject here" is displayed related field "Subject" inside Send Email

  @332330 @dilip
  Scenario: Send Email -UI - when user Hover on the Subject field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Subject" inside Send Email Modal
    Then I see help text "Enter subject here" is displayed related field "Subject" inside Send Email

  @332331 @dilip
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

  @332332 @dilip
  Scenario: Send Email -UI - when user Hover on the Body Content  field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Body Content" inside Send Email Modal
    Then I see help text "Enter email content here" is displayed related field "Body Content" inside Send Email

  @332333 @dilip
  Scenario: Send Email -UI - when Internal user Hover on the Body Content  field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Body Content" inside Send Email Modal
    Then I see help text "Enter email content here" is displayed related field "Body Content" inside Send Email

  @332334 @dilip
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

  @332335 @dilip
  Scenario: Send Email -UI - when Internal user Hover on the Attachments field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Attachments" inside Send Email Modal
    Then I see help text "File Attachment" is displayed related field "Attachments" inside Send Email

  @332337 @dilip
  Scenario: Send Email -UI - when  user Hover on the Attachments field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Attachments" inside Send Email Modal
    Then I see help text "File Attachment" is displayed related field "Attachments" inside Send Email

  @332338 @dilip
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

  @332339 @dilip
  Scenario: Send Email -UI - when  user Hover on the Select file field help icon and help text is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Select Files" inside Send Email Modal
    Then I see help text "Open files table to add links" is displayed related field "Select Files" inside Send Email

  @332340 @dilip
  Scenario: Send Email -UI - when Internal  user Hover on the Select file field help icon and help text is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Select Files" inside Send Email Modal
    Then I see help text "Open files table to add links" is displayed related field "Select Files" inside Send Email

  @332341 @dilip
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

  @332342 @dilip
  Scenario: Send Email -UI - Required to save fields  (*)  is displayed for admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see help text "*" is displayed related field "To" inside Send Email

  @332343 @dilip
  Scenario: Send Email -UI - Required to save fields  (*)  is displayed for Internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see help text "*" is displayed related field "To" inside Send Email

  @332344 @dilip
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
  @332780 @dilip
  Scenario: Send Email-To verify,Internal User send the email from TO field as 'internal'
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilipmyd@gmail.com" Subject "Subject Line" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332781 @dilip
  Scenario: Send Email-To verify,Internal User send the email from TO field as 'External'
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilipmyd@gmail.com" Subject "Subject Line" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332784 @dilip
  Scenario: Send Email-To verify,Internal User send the email from TO field as 'Group'
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilipmyd@gmail.com" Subject "Subject Line" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332785 @dilip
  Scenario: Send Email-To verify,Internal User send the email from TO & CC field as 'internal'
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Internal" value
    And I click on dropdown inside "Cc" field and Select "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilipmyd@gmail.com" Subject "Subject Line" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332786 @dilip
  Scenario: Send Email-To verify,Internal User send the email from TO & CC field as 'External'
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    And I click on dropdown inside "Cc" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilipmyd@gmail.com" Subject "Subject Line" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332787 @dilip
  Scenario: Send Email-To verify,Internal User send the email from TO & CC field as 'Group'
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilipmyd@gmail.com" Subject "Subject Line" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332788 @dilip
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO (internal) field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332790 @dilip
  Scenario: Send Email -To verify , When Internal user sends an Email with an Attachment  from TO (internal) field
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Internal" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332791 @dilip
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

  @332792 @dilip
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO (External) field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332794 @dilip
  Scenario: Send Email -To verify , When Internal  user sends an Email with an Attachment  from TO (External) field
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332795 @dilip
  Scenario: Send Email -To verify , When Internal  user sends an Email with an Attachment  from TO (Group) field
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332796 @dilip
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO (Group) field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332798 @dilip
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO (Group) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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

  @332799 @dilip
  Scenario: Send Email -To verify , When Internal  user sends an Email with an Attachment  from TO (Group)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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

  @332800 @dilip
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO (Internal) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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

  @332801 @dilip
  Scenario: Send Email -To verify , When  Internal user sends an Email with an Attachment  from TO (Internal) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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

  @332803 @dilip
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO (External) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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

  @332804 @dilip
  Scenario: Send Email -To verify , When  Internal user sends an Email with an Attachment  from TO (External) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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

  @332805 @dilip
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO & CC (Internal) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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

  @332806 @dilip
  Scenario: Send Email -To verify , When  Internal user sends an Email with an Attachment  from TO & CC (Internal) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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

  @332807 @dilip
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO & CC  (External) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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

  @332808 @dilip
  Scenario: Send Email -To verify , When Internal user sends an Email with an Attachment  from TO & CC  (External) field then attached file is displayed on the View modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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

  @332809 @dilip
  Scenario: Send Email -To verify , When  user sends an Email with an more than 10 Attachment  then Do not attach more than 10 Files, Attachment limit is Exceeded." error message is getting displayed on the send email modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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

#    When I upload attachment "CollabFileTemp.png" in Send Email Modal
#    When I upload attachment "CollabFileVanish.png" in Send Email Modal
#    When I upload attachment "miniPageLayoutImage.png" in Send Email Modal
#    When I upload attachment "MultipleFileUploadCollabDND.png" in Send Email Modal
#    When I upload attachment "MultipleFileUploadDND1.png" in Send Email Modal
    Then I see "Do not attach more than 10 Files, Attachment limit is Exceeded." error massage in attachment section

  @332811 @dilip
  Scenario: Send Email -To verify , When Internal  user sends an Email with an more than 10 Attachment  then Do not attach more than 10 Files, Attachment limit is Exceeded." error message is getting displayed on the send email modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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
#
#    When I upload attachment "CollabFileTemp.png" in Send Email Modal
#    When I upload attachment "CollabFileVanish.png" in Send Email Modal
#    When I upload attachment "miniPageLayoutImage.png" in Send Email Modal
#    When I upload attachment "MultipleFileUploadCollabDND.png" in Send Email Modal
#    When I upload attachment "MultipleFileUploadDND1.png" in Send Email Modal
    Then I see "Do not attach more than 10 Files, Attachment limit is Exceeded." error massage in attachment section

  @332815 @dilip
  Scenario: Send Email -To verify , when user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- send email attachment section
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I upload attachment "Maketodayfilematter.pdf" in Send Email Modal
    Then I see "Single File Size Attachment upto 1.5MB Limit Exceeded." error massage in attachment section

  @332816 @dilip
  Scenario: Send Email -To verify , when Internal user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- send email attachment section
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I pause execution for "10" seconds
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "Maketodayfilematter.pdf" in Send Email Modal
    Then I see "Single File Size Attachment upto 1.5MB Limit Exceeded." error massage in attachment section

  @332821 @dilip
  Scenario: Send Email -To verify , when Internal user try to add more then 1.5mb file then " Insert links to file(s) from the record"' message is displayed on the LWC- reply email attachment section
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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

  @332822 @dilip
  Scenario: Send Email -To verify , when user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- reply email attachment section
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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

  @332833 @dilip
  Scenario: Send Email -Attachment - To verify ,  user are remove the attachement from  sends email modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    And I click on X Action Button of "SendEmailAttachment.pdf" file
    Then I do not see "SendEmailAttachment.pdf" file is displayed in modal

  @332834 @dilip
  Scenario: Send Email -Attachment - To verify ,  Internal user are remove the attachement from  sends email modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    And I click on X Action Button of "SendEmailAttachment.pdf" file
    Then I do not see "SendEmailAttachment.pdf" file is displayed in modal

