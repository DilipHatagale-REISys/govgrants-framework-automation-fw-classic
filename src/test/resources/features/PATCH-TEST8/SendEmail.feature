@SendEmail-PATCHComponent @regression-PATCH @SendEmail
Business Need: SendEmai Component Scenarios Send Email Functionality Send Email Attachment Send Email Send Files
  Test all SendEmail component based scenarios
  As a configuration manager I make different configurational changes in SendEmail component and will validate them.

  ##########Test suite: Send Email UI/UX (Suite ID: 332319)##########
  @createRecordForSenEmail
  Scenario Outline:  create program
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "<programname>" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Examples:
      | Users | programname                         |
      | Admin | Send Email Component active program |
      | PM    | Send Email Component active program |
      | Admin | Send Email Active program           |
      | PM    | Send Email Active program           |

  @332320p
  Scenario: UI - when Internal user Hover on the TO field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "To" inside Send Email Modal
    Then I see help text "Use semicolon(;) to separate multiple To email addresses" is displayed related field "To" inside Send Email

  @332321
  Scenario: when PM user Hover on the  TO field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
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
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "To" inside Send Email Modal
    Then I see help text "Use semicolon(;) to separate multiple To email addresses" is displayed related field "To" inside Send Email

  @332323
  Scenario: when Internal user Hover on the  CC field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Cc" inside Send Email Modal
    Then I see help text "Use semicolon(;) to separate multiple Cc email addresses" is displayed related field "Cc" inside Send Email

  @332324
  Scenario: when  PM user Hover on the  CC field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
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
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Cc" inside Send Email Modal
    Then I see help text "Use semicolon(;) to separate multiple Cc email addresses" is displayed related field "Cc" inside Send Email

  @332326
  Scenario: when  user Hover on the Send Copy (Cc) to Me field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Send Copy (Cc) to Me" inside Send Email Modal
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed related field "Send Copy (Cc) to Me" inside Send Email

  @332327
  Scenario: when  Internal user Hover on the Send Copy (Cc) to Me field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I hover mouse on text "Send Copy (Cc) to Me" inside Send Email Modal
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed related field "Send Copy (Cc) to Me" inside Send Email

  @332328
  Scenario: Send Email -UI - when External user Hover on the  Send Copy (Cc) to Me field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Send Copy (Cc) to Me" inside Send Email Modal
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed related field "Send Copy (Cc) to Me" inside Send Email

  @332329
  Scenario: Send Email -UI - when  Internal user Hover on the Subject field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Subject" inside Send Email Modal
    Then I see help text "Enter subject here" is displayed related field "Subject" inside Send Email

  @332330
  Scenario: Send Email -UI - when user Hover on the Subject field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
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
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Subject" inside Send Email Modal
    Then I see help text "Enter subject here" is displayed related field "Subject" inside Send Email

  @332332
  Scenario: Send Email -UI - when user Hover on the Body Content  field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Body Content" inside Send Email Modal
    Then I see help text "Enter email content here" is displayed related field "Body Content" inside Send Email

  @332333
  Scenario: Send Email -UI - when Internal user Hover on the Body Content  field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
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
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Body Content" inside Send Email Modal
    Then I see help text "Enter email content here" is displayed related field "Body Content" inside Send Email

  @332335
  Scenario: Send Email -UI - when Internal user Hover on the Attachments field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Attachments" inside Send Email Modal
    Then I see help text "File Attachment" is displayed related field "Attachments" inside Send Email

  @332337
  Scenario: Send Email -UI - when  user Hover on the Attachments field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
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
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Attachments" inside Send Email Modal
    Then I see help text "File Attachment" is displayed related field "Attachments" inside Send Email

  @332339
  Scenario: Send Email -UI - when  user Hover on the Select file field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Select Files" inside Send Email Modal
    Then I see help text "Open files table to add links" is displayed related field "Select Files" inside Send Email

  @332340
  Scenario: Send Email -UI - when Internal  user Hover on the Select file field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
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
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Select Files" inside Send Email Modal
    Then I see help text "Open files table to add links" is displayed related field "Select Files" inside Send Email

  @332342
  Scenario: Send Email -UI - Required to save fields  (*)  is displayed for admin user
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see help text "*" is displayed related field "To" inside Send Email

  @332343
  Scenario: Send Email -UI - Required to save fields  (*)  is displayed for Internal user
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see help text "*" is displayed related field "To" inside Send Email

  @332344
  Scenario: Send Email -UI - Required to save fields  (*)  is displayed for External user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see help text "*" is displayed related field "To" inside Send Email

    ##########Test suite: Send Email Attachments (Suite ID: 332777)#########
  @332780
  Scenario: Send Email-To verify,Internal User send the email from TO field as 'internal'
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
    When I enter value "Test automation mail subject 1" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332781 @382441 @SanityPATCH  @SanityPATCHSendEmail
  Scenario: Send Email-To verify,Internal User send the email from TO field as 'External'
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "automationadminpatch@yopmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
    When I enter value "Test automation mail subject 1" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332784
  Scenario: Send Email-To verify,Internal User send the email from TO field as 'Group'
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332785
  Scenario: Send Email-To verify,Internal User send the email from TO & CC field as 'internal'
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "automationadminpatch@yopmail.com" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "automationadminpatch@yopmail.com" into field "{testData:CcField}" on send email modal
    When I enter value "Test automation mail subject" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332786
  Scenario: Send Email-To verify,Internal User send the email from TO & CC field as 'External'
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "automationadminpatch@yopmail.com" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "automationadminpatch@yopmail.com" into field "{testData:CcField}" on send email modal
    When I enter value "Test automation mail subject" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332787
  Scenario: Send Email-To verify,Internal User send the email from TO & CC field as 'Group'
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test automation mail subject" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332788 @382439 @SanityPATCH  @SanityPATCHSendEmail
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO (internal) field
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "automationadminpatch@yopmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "Test automation mail subject" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332790
  Scenario: Send Email -To verify , When Internal user sends an Email with an Attachment  from TO (internal) field
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "automationadminpatch@yopmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "Test automation mail subject" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332791 @382442 @smoke
  Scenario: Send Email -To verify , When External user sends an Email with an Attachment  from TO (internal) field
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332792
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO (External) field
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "automationadminpatch@yopmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "Test automation mail subject" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332794
  Scenario: Send Email -To verify , When Internal  user sends an Email with an Attachment  from TO (External) field
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "automationadminpatch@yopmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "Test automation mail subject" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332795
  Scenario: Send Email -To verify , When Internal  user sends an Email with an Attachment  from TO (Group) field
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332796
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO (Group) field
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I enter value "Test SendEmailAttachment" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Validate send email" in "---program:-:communicationHistoryTableId---" panel
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332798
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO (Group) field then attached file is displayed on the View modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I enter value "Validate send email" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Validate send email" in "---program:-:communicationHistoryTableId---" panel
    And I click on "View" icon for "Validate send email" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332799
  Scenario: Send Email -To verify , When Internal  user sends an Email with an Attachment  from TO (Group)
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I enter value "Test SendEmailAttachment" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Validate send email" in "---program:-:communicationHistoryTableId---" panel
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332800
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO (Internal) field then attached file is displayed on the View modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test SendEmailAttachment" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I enter value "Test pass" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test pass" in "---program:-:communicationHistoryTableId---" panel
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332801
  Scenario: Send Email -To verify , When  Internal user sends an Email with an Attachment  from TO (Internal) field then attached file is displayed on the View modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I enter value "Test SendEmailAttachment" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Validate send email" in "---program:-:communicationHistoryTableId---" panel
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332803
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO (External) field then attached file is displayed on the View modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automationadmin@yopmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I enter value "Test SendEmailAttachment" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Validate send email" in "---program:-:communicationHistoryTableId---" panel
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332804
  Scenario: Send Email -To verify , When  Internal user sends an Email with an Attachment  from TO (External) field then attached file is displayed on the View modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automationadmin@yopmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I enter value "Test SendEmailAttachment" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Validate send email" in "---program:-:communicationHistoryTableId---" panel
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332805
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO & CC (Internal) field then attached file is displayed on the View modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automationadmin@yopmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I enter value "Test SendEmailAttachment" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test SendEmailAttachment" in "---program:-:communicationHistoryTableId---" panel
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332806
  Scenario: Send Email -To verify , When  Internal user sends an Email with an Attachment  from TO & CC (Internal) field then attached file is displayed on the View modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I enter value "Test SendEmailAttachment internal" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Validate send email" in "---program:-:communicationHistoryTableId---" panel
    And I click on "View" icon for "Test SendEmailAttachment internal" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332807
  Scenario: Send Email -To verify , When  user sends an Email with an Attachment  from TO & CC  (External) field then attached file is displayed on the View modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I enter value "Test SendEmailAttachment cc" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test SendEmailAttachment cc" in "---program:-:communicationHistoryTableId---" panel
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332808
  Scenario: Send Email -To verify , When Internal user sends an Email with an Attachment  from TO & CC  (External) field then attached file is displayed on the View modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I enter value "Test SendEmailAttachment External" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test SendEmailAttachment External" in "---program:-:communicationHistoryTableId---" panel
    And I click on "View" icon for "Test SendEmailAttachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @332809 @382756 @SanityPATCH  @SanityPATCHSendEmail
  Scenario: Send Email -To verify , When  user sends an Email with an more than 10 Attachment  then Do not attach more than 10 Files, Attachment limit is Exceeded." error message is getting displayed on the send email modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
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

  @332811 @382757 @SanityPATCH  @SanityPATCHSendEmail
  Scenario: Send Email -To verify , When Internal  user sends an Email with an more than 10 Attachment  then Do not attach more than 10 Files, Attachment limit is Exceeded." error message is getting displayed on the send email modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
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

  @382758 @SanityPATCH  @SanityPATCHSendEmail
  Scenario: sanity TC-SPI-To verify if user is getting error message "File Size Exceeded Attachments Limits of 25MB" if the total file size is more than 25MB
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
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

  @332815
  Scenario: Send Email -To verify , when user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- send email attachment section
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I upload attachment "Maketodayfilematter.pdf" in Send Email Modal
    Then I see "Single File Size Attachment upto 1.5MB Limit Exceeded." error massage in attachment section

  @332816
  Scenario: Send Email -To verify , when Internal user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- send email attachment section
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I pause execution for "10" seconds
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "Maketodayfilematter.pdf" in Send Email Modal
    Then I see "Single File Size Attachment upto 1.5MB Limit Exceeded." error massage in attachment section

  @332821
  Scenario: Send Email -To verify , when Internal user try to add more then 1.5mb file then " Insert links to file(s) from the record"' message is displayed on the LWC- reply email attachment section
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "diliphatagale@yopmail.com" Subject "Test for To External Cc External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for To External Cc External" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for To External Cc External" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "Maketodayfilematter.pdf" in Send Email Modal
    Then I see "Single File Size Limit is Exceeded" error massage in attachment section

  @332822
  Scenario: Send Email -To verify , when user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- reply email attachment section
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "diliphatagale@yopmail.com" Subject "Test for To External Cc External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for To External Cc External" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for To External Cc External" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "Maketodayfilematter.pdf" in Send Email Modal
    Then I see "Single File Size Limit is Exceeded" error massage in attachment section

  @332833
  Scenario: Send Email -Attachment - To verify ,  user are remove the attachement from  sends email modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    And I click on X Action Button of "SendEmailAttachment.pdf" file
    Then I do not see "SendEmailAttachment.pdf" file is displayed in modal

  @382774
  Scenario: Sanity-TC-Admin-verify that the user is able to click on the checkbox under "Send Copy (Cc) to Me" if user wants to send the copy of the mail to themselves
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed related field "Send Copy (Cc) to Me" inside Send Email

      ##########################Sanity#####################

  @69004 @validateDisplayOfAttachmentComponentInSendEmailModal
  Scenario: Enabling Attachment section from custom metadata config and validating display of attachments in send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see Attachment section is displayed under send email modal


  @69094 @validateIfExternalCheckboxCheckedAtToFieldThenOnlyExternalUserIsShownInAutoSuggestionBox
  Scenario Outline: Validate If External checkbox is checked At To Field then only external user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}" inside table
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

  @69096 @validateIfGroupCheckboxCheckedAtToFieldThenOnlyUserGroupsIsShownInAutoSuggestionBox
  Scenario: Validate If Group checkbox is checked At To Field then only Group is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    Then I see iconName "fa fa-users" with user "group 1" is displayed on send email modal

  @69214 @validateIfInternalCheckboxCheckedAtCCFieldThenOnlyInternalUserIsShownInAutoSuggestionBox
  Scenario: Validate If internal checkbox is checked at CC field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    Then I see iconName "fa fa-user" with user "Automation PM" is displayed on send email modal

  @69215 @validateIfExternalCheckboxCheckedAtCCFieldThenOnlyExternalUserIsShownInAutoSuggestionBox @needToUpdate
  Scenario Outline: Validate If External checkbox is checked At CC Field then only external user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}" inside table
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

  @382349
  Scenario:Sanity TC-SPI-To verify that user can enter email Ids in ‘To’, ‘cc’ sections and also user will get suggestions while typing the emailds based on the existing emailIds in user’s email list.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    Then I see iconName "fa fa-user" with user "Automation PM" is displayed on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    Then I see iconName "fa fa-user" with user "Automation PM" is displayed on send email modal


  @382355 @382358 @382361 @382377 @SanityPATCH  @SanityPATCHSendEmail
  Scenario: Sanity TC-SPI-To verify that the user can enter multiple comma-separated emailIds in ‘To’, ‘cc’ and ‘bcc’ sections.
  Sanity TC-spi-TO verify that the user can type Subject line in the ‘Subject’ text box,
  Sanity TC-SPI-To verify that the user can type the email in the email-'Body Content' section.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
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

  @147248  @382362 @382363 @SanityPATCH  @SanityPATCHSendEmail
  Scenario Outline: validate text inside ck editor input box is displayed as bold text at send email modal,
  Sanity TC-Admin/PM-To verify that users can format mail using editor-options provided like choosing font-family, font-size, bold-italic-underline, etc.
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName       |
      | Automation PM  |
      | Automation SPI |
    Examples:
      | Users |
      | Admin |
      | PM    |

  @69216 @validateIfInternal+ExternalCheckboxCheckedAtCCFieldThenBothUserIsShownInAutoSuggestionBox @needToUpdate
  Scenario:Verify if Internal+External user checkbox is checked and search user in CC email then both Internal+External users is displayed in suggestion
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName       |
      | Automation PM  |
      | Automation FO  |
      | Automation EXE |

  @69090p @validateIfAttachmentUploadedAndEmailSendThenEmailIsSentWithUploadedFile
  Scenario: Validate If attachment uploaded and email is send then email is sent with uploaded attachment under send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Bold" inside CK editor
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "Bold" format inside CK editor
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal

  @81106 @validateAtReplyModalIfInternalCheckboxCheckedAtCCFieldThenOnlyInternalUserIsShownInAutoSuggestionBox
  Scenario: Validate while replying to email If internal checkbox is checked at CC field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in,ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test automation mail 81106tc" into field "Subject" on send email modal
    When I enter value "Test automation mail body content" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test automation mail 81106tc" in "---program:-:communicationHistoryTableId---" panel
    When I click on "reply" icon for "Test automation mail 81106tc" inside table
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    Then I see iconName "fa fa-user" with user "Automation PM" is displayed on send email modal

  @81118 @validateAtReplyModalIfExternalCheckboxCheckedAtCCFieldThenOnlyExternalUserIsShownInAutoSuggestionBox @needToUpdate
  Scenario: Validate while replying to email If internal checkbox is checked at CC field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "checkbox is checked at CC" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "checkbox is checked at CC" inside table
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "DILIP" into field "{testData:CcField}" on send email modal
    Then I see iconName "fa fa-user" with user "DILIP Hatagale" is displayed on send email modal

  @81120 @validateAtReplyModalIfInternal+ExternalCheckboxCheckedAtCCFieldThenBothUserIsShownInAutoSuggestionBox @needToUpdate
  Scenario: Validate while replying to email If internal checkbox is checked at CC field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "checkbox is checked at CC" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "checkbox is checked at CC" inside table
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Au" into field "{testData:CcField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName       |
      | Automation PM  |
      | Automation EXE |

  @89268 @validateTheItemsPresentInSearByFieldDropDownAtTOEmailFieldAtSendEmailModal @sendEmail
  Scenario: Validate the options present under search by field dropdown at TO email field at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field
    Then I softly see "{testData:ToField}" email search by field contains dropdown value as "Internal"
    Then I softly see "{testData:ToField}" email search by field contains dropdown value as "External"
    Then I softly see "{testData:ToField}" email search by field contains dropdown value as "Groups"

  @89269 @validateTheItemsPresentInSearByFieldDropDownAtCCEmailFieldAtSendEmailModal @sendEmail
  Scenario: Validate the options present under search by field dropdown at CC email field at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field
    Then I softly see "{testData:CcField}" email search by field contains dropdown value as "Internal"
    Then I softly see "{testData:CcField}" email search by field contains dropdown value as "External"
    Then I softly see "{testData:CcField}" email search by field contains dropdown value as "Groups"

  @89615 @validateEmailSubjectWithSpecialCharacterIsShownProperlyInViewModal @sendEmail
  Scenario: Validate special characters present under subject in sent email view modal are displayed properly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I pause execution for "2" seconds
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "1@&%#$*\|/test;:!<>?[]{}()" into field "Subject" on send email modal
    When I enter value "1@&%#$*\|/test;:!<>?[]{}()" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "1@&%#$*\|/test;:!<>?[]{}()" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "1@&%#$*\|/test;:!<>?[]{}()" inside table
    Then I see "1@&%#$*\|/test;:!<>?[]{}()" as "Subject" on send email modal

  @89619 @validateEmailBodyWithSpecialCharacterIsShownProperlyInViewModal @sendEmail
  Scenario: Validate special characters present under body in sent email view modal are displayed properly    Given I have "default" configuration as below:
  | configurationCategory | fieldName | fieldOrignalValue | filterId         |
  | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "1@&%#$*\|/test;:!<>?[]{}()" into field "Subject" on send email modal
    When I enter value "1@&%#$*\|/test;:!<>?[]{}()" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "1@&%#$*\|/test;:!<>?[]{}()" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "1@&%#$*\|/test;:!<>?[]{}()" inside table
    Then I see "1@&%#$*\|/test;:!<>?[]{}()" as "Body Content" on send email modal

  @89617 @validateReplyEmailSubjectAndBodyWithSpecialCharacterIsShownProperlyInReplyEmailViewModal @sendEmail
  Scenario: Validate special characters present under body and subject in reply mail on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "test@123.com" into field "{testData:ToField}" on send email modal
    When I enter value "DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" inside table
    When I enter value "body @&%#$*\|/test;:!<>?[]{}()" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "RE: DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "RE: DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" inside table
    Then I softly see "RE: DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" as "Subject" on send email modal
    Then I softly see "body @&%#$*\|/test;:!<>?[]{}()" as "Body Content" on send email modal

  @89743 @validateReplyModalTitleAtSendEmail @sendEmail
  Scenario: Validate reply modal title at send email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Validate reply modal title" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I perform quick search for "Validate reply modal title" in "---program:-:communicationHistoryTableId---" panel
    When I click on "reply" icon for "Validate reply modal title" inside table
    Then I see "Reply" opens in overLay window

  @89675 @validateThatFileIsDeletedSuccessfullyByclickOnCrossIconAtAttachedFileInSendEmailModal @sendEmail
  Scenario: Validate that attached file is deleted successfully by click on cross icon at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on cross icon at "SendEmailAttachment.pdf" attachment inside send email modal
    Then I see attached file "SendEmailAttachment.pdf" is deleted successfully inside send email modal

  @89677 @validateThatFileIsDeletedSuccessfullyFromMultipleFilesByclickOnCrossIconAtAttachedFileInSendEmailModal @sendEmail
  Scenario: Validate that attached file is deleted successfully from multiple uploaded file by click on cross icon at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I upload attachment "AttachmentTesting.pdf" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    When I click on cross icon at "SendEmailAttachment.pdf" attachment inside send email modal
    And I pause execution for "3" seconds
    Then I see attached file "SendEmailAttachment.pdf" is deleted successfully inside send email modal

  @90397 @validateDisplayOfRequiredFieldvalidationMessageInSendEmailModal @sendEmail
  Scenario: Validate if required field value is not entered and click on save then alert message is displayed on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details contains:
      | Enter To Email Address. |

  @90390 @validateToEmailSuggestionBoxSizeIfGreaterThan5RecordAreSuggestedInSendEmailModal @sendEmail @needToUpdateLogic
  Scenario: Validate suggested email's box size at To field if more than 5 records are suggested inside send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "test" into field "{testData:ToField}" on send email modal
    Then I see search item display box size at "{testData:ToField}" field is proper for "greater than 5" results

  @90388 @validateToEmailSuggestionBoxSizeIfLessThan5RecordAreSuggestedInSendEmailModal @sendEmail
  Scenario: Validate suggested email's box size at To field if less than 5 records are suggested inside send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "David PM" into field "{testData:ToField}" on send email modal
    Then I see search item display box size at "{testData:ToField}" field is proper for "Less than 5" results

  @89234 @validateDisplayOfToEmailSentSUccessfullyMessageInSendEmailModal @sendEmail
  Scenario: Validate if reply email is sent then alert message is displayed on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test Email Sent Succesfully" into field "Subject" on send email modal
    When I enter value "Test Email Sent Succesfully" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "Test Email Sent Succesfully" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @89725 @validateAsteriskMarkAtRequiredFieldsInSendEmailModalAtViewSendEmailWindow @sendEmail
  Scenario: Validate asterisk mark is displayed at required fields in send email modal at view mail window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "asterisk mark view modal" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I perform quick search for "asterisk mark view modal" in "---program:-:communicationHistoryTableId---" panel
    When I perform quick search for "asterisk mark view modal" in "---program:-:communicationHistoryTableId---" panel
    When I click on "view" icon for "asterisk mark view modal" inside table
    Then I see current date is displayed in "View" on send email modal

  @91328 @validateAsteriskMarkAtRequiredFieldsInSendEmailModalAtReplyMailWindow @sendEmail
  Scenario: Validate asterisk mark is displayed at required fields in send email modal at reply mail window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test asterisk mark" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test asterisk mark" in "---program:-:communicationHistoryTableId---" panel
    When I click on "reply" icon for "Test asterisk mark" inside table
    Then I see asterisk mark at "{testData:ToField}" field is displayed at send email modal

  @101035 @validateSentDateOfEmailInISTModeAtSendEmailModal @wip
  Scenario: Validate send date of an email on send email modal for IST time zone
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation mail subject1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "15" seconds
    When I perform quick search for "Test automation mail subject1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "view" icon for "Test automation mail subject1" inside table
    Then I softly see "7/11/2023" on html page

  @101041 @validateSentDateOfEmailInEDTModeAtSendEmailModal @wip
  Scenario: Validate send date of an email on send email modal for EDT time zone
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation mail subject2" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "15" seconds
    When I perform quick search for "Test automation mail subject2" in "---program:-:communicationHistoryTableId---" panel
    When I click on "view" icon for "Test automation mail subject2" inside table
    Then I softly see "11/07/2023" on html page

  @101042 @validateSentDateOfEmailInESTModeAtSendEmailModal
  Scenario: Validate send date of an email on send email modal for EST time zone
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
#    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
#    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
#    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
#    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
#    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
#    When I click on "Send" button in send email modal
#    When I close modal by clicking the top right x button
#    When I click on "view" icon for "Test automation mail subject 1" inside table
#    Then I softly see "7/31/2023 " on html page

  @102057 @validateDisplayOfSelectFilesComponentInSendEmailModal @needManagedAPI @wip
  Scenario: Enabling select files section from custom metadata config and validating display of attachments in send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see select files section is displayed under send email modal

  @102059 @validateSelectFilesComponentIsNotDisplayedWhenCheckboxIsUncheckedInCustomMetadataInSendEmailModal  @needManagedAPI @wip
  Scenario: disabling select files section from custom metadata config and validating display of attachments in send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I do not see select files section is displayed under send email modal

  @102090 @validateThatSelectFilesModalIsDisplayedByClickOnSelectFileSectionInSendEmailModal  @needManagedAPI @wip
  Scenario: validate that select file modal is displayed by click on select files section in send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I have "customMetaData" configuration as below:
      | id                 | label                          | booleanValue | customMetaDataApiName    |
      | m031C000000XZXyQAO | SendEmailFilesLinkConfigHolder | false        | GNT__KeyValueHolder__mdt |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    And I update custom metadata setting changes:
      | id                 | label                          | booleanValue | customMetaDataApiName    |
      | m031C000000XZXyQAO | SendEmailFilesLinkConfigHolder | true         | GNT__KeyValueHolder__mdt |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click modal button "Select Files"
    Then I see "Select File(s)" modal window is displayed

  @102092 @validateThatByClickOnSelectFileModalWindowAddFileWindowDisappearsUnderSendEmailModal  @needManagedAPI @wip
  Scenario: validate that by click on select file modal window, add file modal disappears and send email modal displays
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I have "customMetaData" configuration as below:
      | id                 | label                          | booleanValue | customMetaDataApiName    |
      | m031C000000XZXyQAO | SendEmailFilesLinkConfigHolder | false        | GNT__KeyValueHolder__mdt |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    And I update custom metadata setting changes:
      | id                 | label                          | booleanValue | customMetaDataApiName    |
      | m031C000000XZXyQAO | SendEmailFilesLinkConfigHolder | true         | GNT__KeyValueHolder__mdt |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click modal button "Select Files"
    When I click on "×" icon at "Select File(s)" modal under Library
    Then I see "Select File(s)" modal is closed

  @102237 @validateThatFileUploadedFromSelectFileSectionIsDisplayedUnderSendEmailModalInEditMode
  Scenario: validate that file uploaded from select files section in send email modal in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "10" seconds
    When I close modal by clicking the top right x button
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal

  @102238 @validateThatFileIsDeletedSuccessfullyByclickOnCrossIconAtSelectectFileInSendEmailModal @sendEmail
  Scenario: Validate that selected file is deleted successfully by click on cross icon at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click modal button "Select Files"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "10" seconds
    When I close modal by clicking the top right x button
    When I click on cross icon at "actionsAtEgrid.png" attachment inside send email modal
    And I pause execution for "10" seconds
    Then I see attached file "actionsAtEgrid.png" is deleted successfully inside send email modal

  @102239 @validateThatFileUploadedFromSelectFileSectionIsDisplayedUnderSendEmailModalInViewMode
  Scenario: validate that file uploaded from select files section in send email modal in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I enter value "Demo Email select files" into field "Subject" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal

  @101273 @SentDateOfEmailAtSendEmailModalForNewlyCreatedRecord
  Scenario: Validate send date of an email on send email modal for newly created record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "DND Email Created To Check Date" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND Email Created To Check Date" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "DND Email Created To Check Date" inside table
    Then I see current date is displayed in "Send Date" on send email modal

  @102240 @validateDisplayOfHypelinkInsertedAtSelectFileSectionWhileSendingEmil @wip @functionalityDeprecated
  Scenario: Validate if email is sent by inserting link then a hyperlink is displayed inside message table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios1}"
    When I click on "View" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios1}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "Email Created To Check Attached File Link" in "---program:-:communicationHistoryTableId---" panel
    Then I see hyperlink at column value "ProgramRecordDoNotDelete.png" inside "---program:-:communicationHistoryTableId---" table

  @104344 @validateDisplayOfSelectFilesComponentInSendEmailModalAtReply
  Scenario: Enabling select files section from custom metadata config and validating display of attachments in send email modal at reply
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automat@invalid.com" into field "{testData:CcField}" on send email modal
    When I enter value "select files section Demo" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "select files section Demo" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "select files section Demo" inside table
    Then I see select files section is displayed under send email modal

  @104330 @validateDisplayOfHyperlinkAtSelectFileNameInsideBodyAtReplyModal
  Scenario: validate hyperlink is displayed for the selected linked file name inside body at reply modal window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation@gmail.com" into field "{testData:CcField}" on send email modal
    When I enter value "Email Created To Check Attached File Link" into field "Subject" on send email modal
    When I enter value "Email Created To Check Attached File Link" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal
    When I close "Send Email" modal by clicking on x top right button
    When I navigate to "Collab" sub tab
    When I perform quick search for "Email Created To Check Attached File Link" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Email Created To Check Attached File Link" inside table
    Then I see hyperlink is present at "SendEmailAttachment.pdf" in rich text area field

  @104328 @validateDisplayOfHyperlinkAtSelectFileNameInsideBodyAtViewModal
  Scenario: validate hyperlink is displayed for the selected linked file name inside body at view modal window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I enter value "Demo Email select files" into field "Subject" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal
    Then I see hyperlink at value "SendEmailAttachment.pdf" inside "sendEmail" modal

  @116303 @validateIfOneMailIdIsRemovedFromReplyEmailToFieldThenEmailSentSuccessfullyOnIt
  Scenario: Validate if one email id is removed from reply modal TO field then email sent successfully
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "test@123.com;test@gmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I enter value "Test Automation Email1" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Test Automation Email1" inside table
    When I enter value "test@gmail.com" into field "{testData:ToField}" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Re: Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    Then I see "RE: Test Automation Email1" value in flex table id "---program:-:communicationHistoryTableId---"

  @116290 @validateNameIsDisplayedForExternalUserSelectedInToFieldInViewMode @needToUpdate
  Scenario: Validate if external user selected in TO field then name of user is displayed in view modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "test the email for external user" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "test the email for external user" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "test the email for external user" inside table
    Then I softly see "James Hank" on html page

  @116243 @validateNameIsDisplayedForSelectedUserInToFieldAtReplyMailWhenOpenInViewMode @needToUpdate
  Scenario: Validate if external user selected in TO field at reply email then name of user is displayed in view modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation@gmail.com" into field "{testData:CcField}" on send email modal
    When I enter value "external user selected in TO" into field "Subject" on send email modal
    When I enter value "external user selected in TO" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close "Send Email" modal by clicking on x top right button
    When I navigate to "Collab" sub tab
    When I perform quick search for "external user selected in TO" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "external user selected in TO" inside table
    Then I softly see "dilip@reisystems.in" on html page
    Then I softly see "Automation@gmail.com" on html page

  @116299 @validateGroupNameIsDisplayedForSelectedGroupInToAndCCFieldAtViewAndReplyMailWhenOpenInViewMode  @wip @BugLogged_161456
  Scenario: Validate if group is selected in TO field at email and reply email modal then name of group is dsplayed in view modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Automation Testing Group" into field "{testData:ToField}" on send email modal
    When I select value "Automation Testing Group" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Test Automation Email1" inside table
    Then I softly see "Automation Testing Group" on html page

  # @116299 to validate group name in cc email at reply email modal -
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Test Automation Email1" inside table
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Automation Testing Group" into field "{testData:CcField}" on send email modal
    When I select value "Automation Testing Group" with iconName "fa fa-users" into field on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Re: Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Re: Test Automation Email1" inside table
    Then I softly see "Automation Testing Group" on html page

  @116300 @validateToAndCCUserNameIsDisplayedInsideBodyFieldAtViewAndReplyMailWhenOpenInViewMode @needToUpdate
  Scenario: Validate that TO and CC email displayed properly inside body field at reply and email modal in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM1" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM1" with iconName "fa fa-user" into field on send email modal
    When I enter value "TO and CC email displayed properly" into field "Subject" on send email modal
    When I enter value "Test Mail Body Content" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I navigate to "Collab" sub tab
    When I perform quick search for "TO and CC email displayed properly" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "TO and CC email displayed properly" inside table
    Then I softly see "Test Mail Body Content" as "Body Content" on send email modal

  # @116300 to validate user name in body content at reply email modal -
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "TO and CC email displayed properly" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "TO and CC email displayed properly" inside table
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "View" icon for "TO and CC email displayed properly" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Test Mail Body Content" as "Body Content" on send email modal

  @116304 @validateIfUserRemovesNameFromToEmailThenAutoSuggestionBoxDisappearsFromToEmailField @needToUpdate
  Scenario: Validate if user remove name from To email and keep the To email field blank then auto suggestion box disappears
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal
    When I enter value "" into field "{testData:ToField}" on send email modal
    Then I softly do not see user suggestion box displayed at send email modal

  @118790 @validateEmailIsSentSuccessfullyToMultipleGroupsAndIsDisplayedInToFieldAtSendEmailModal
  Scenario: Validate if multiple group is selected in TO field at email modal then email sent successfully and name displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see "group 1" on html page

  @121365 @validateThatMultipleFilesUploadedFromSelectFileSectionIsDisplayedUnderSendEmailModalInEditMode
  Scenario: validate that multiple files uploaded from select files section in send email modal in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test multiple file" into field "Subject" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "4" seconds
    When I close modal by clicking the top right x button
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal


  @147282  @verifyTextInsideCkEditorInputBoxIsDisplayedAsItalicInsideSendEmailModal
  Scenario Outline: validate text inside ck editor input box is displayed as italic text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
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

  @382364 @SanityPATCH  @SanityPATCHSendEmail
  Scenario: Sanity TC-SPI-To verify that users can format mail using editor-options provided like choosing font-family, font-size, bold-italic-underline, etc.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
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

  @332834 @382365 @382366 @SanityPATCH  @SanityPATCHSendEmail
  Scenario Outline: Sanity TC-Admin/PM-Verify that the user can attach file in the  Attachement section.
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    Then I see "SendEmailAttachment.pdf" file is displayed in modal
    Examples:
      | Users |
      | Admin |
      | PM    |

  @382367 @SanityPATCH  @SanityPATCHSendEmail
  Scenario: Sanity TC-SPI-Verify that the user can attach file in the  Attachement section.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @382371 @382372 @SanityPATCH  @SanityPATCHSendEmail
  Scenario Outline:Sanity -TC-Admin-Verify that you can Insert links to file(s) from the record by clicking on "Select files" button
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Select Files" button send email modal
    Then I softly see "FilesLink" page block displayed
    Examples:
      | Users |
      | Admin |
#      | PM    |

  @382373 @SanityPATCH  @SanityPATCHSendEmail
  Scenario: Sanity -TC-SPI-Verify that you can Insert links to file(s) from the record by clicking on "Select files" button
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Select Files" button send email modal
    Then I softly see "FilesLink" page block displayed

  @382375 @382376 @SanityPATCH  @SanityPATCHSendEmail
  Scenario Outline:Sanity -TC-Admin/PM-Verify that after entering email Ids in either of the ‘To’, ‘cc’  sections, entering Subject line and mail body and clicking ‘Send’ button, mail gets delivered to intended receivers.
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}" inside table
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

  @382419 @382420 @SanityPATCH  @SanityPATCHSendEmail
  Scenario Outline:Sanity -TC-Admin/PM- Verify that if the email is sent without Subject, a pop-up is generated warning "Enter Subject for Email."
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}" inside table
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

  @382423 @SanityPATCH  @SanityPATCHSendEmail
  Scenario: Sanity -TC-SPI- Verify that if the email is sent without Subject, a pop-up is generated warning "Enter Subject for Email."
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Automationadminpm@yopmail.com,ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test Automation Email" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Enter Subject for Email. |

  @382428 @382429 @SanityPATCH  @SanityPATCHSendEmail
  Scenario Outline: Sanity-TC-Admin/PM- Verify that if the email is sent without email address, a pop-up is generated warning "Enter To Email Address.
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}" inside table
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

  @collabFileAttachFunctionality @SanityPATCH  @SanityPATCHSendEmail
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

  @147285  @verifyTextInsideCkEditorInputBoxIsDisplayedAsUnderlineInsideSendEmailModal
  Scenario: validate text inside ck editor input box is displayed as underline text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Underline" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "Underline" format inside CK editor

  @147288  @verifyTextInsideCkEditorInputBoxIsDisplayedAsStrikeThroughInsideSendEmailModal
  Scenario: validate text inside ck editor input box is displayed as Strike Through text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
#    And I change formatting of all text to "Deleted Text" inside CK editor
    And I change style of all text to "Deleted Text" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "Deleted Text" format inside CK editor

  @147301  @verifyTextInsideCkEditorInputBoxIsDisplayedAsplainTextInsideSendEmailModal
  Scenario: validate text inside ck editor input box is displayed as plain text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Underline" inside CK editor
    And I change formatting of all text to "Remove Format" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "Plain" format inside CK editor

  @147337  @verifyTextInsideCkEditorInputBoxIsDisplayedAsNumberedListInsideSendEmailModal
  Scenario: validate text inside ck editor input box is displayed as "Numbered List" text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Insert/Remove Numbered List" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "NUMBERED LIST" format inside CK editor

  @147358  @verifyTextInsideCkEditorInputBoxIsNotDisplayedAsNumberedListButAsNormalInsideSendEmailModal
  Scenario: validate text inside ck editor input box is not displayed as "Numbered List" text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Insert/Remove Numbered List" inside CK editor
    And I change formatting of all text to "Insert/Remove Numbered List" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "PLAIN" format inside CK editor

  @147455  @verifyTextInsideCkEditorInputBoxIsDisplayedAsBulletedListInsideSendEmailModal
  Scenario: validate text inside ck editor input box is displayed as "Bulleted List" text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Insert/Remove Bulleted List" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "BULLET LIST" format inside CK editor

  @147374  @verifyTextInsideCkEditorInputBoxIsNotDisplayedAsBulletedListButAsNormalInsideSendEmailModal
  Scenario: validate text inside ck editor input box is not displayed as "Bulleted List" text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Insert/Remove Bulleted List" inside CK editor
    And I change formatting of all text to "Insert/Remove Bulleted List" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "PLAIN" format inside CK editor

  @147909  @verifyTextInsideCkEditorInputBoxIsDisplayedAsBlockQuoteInsideSendEmailModal
  Scenario: validate text inside ck editor input box is displayed as "Block Quote" text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Block Quote" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "Block Quote" format inside CK editor

  @147374  @verifyTextInsideCkEditorInputBoxIsNotDisplayedAsBlockQuoteButAsNormalInsideSendEmailModal @wip
  Scenario: validate text inside ck editor input box is not displayed as "Block Quote" text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Formatting Styles" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "PLAIN" format inside CK editor

  @149357 @validateThatFilesUploadedFromSelectFileSectionIsDisplayedIntoToReceiversEmail
  Scenario: validate that files uploaded from select files section is displayed in to receivers email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I enter value "Test Automation Email1" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "4" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    Then I see the text "SendEmailAttachment.pdf" inside Body

  @150755 @SendCopyCCToMeFieldIsPresentOnModalWhileSendingEmail
  Scenario: Validate display of "Send Copy (Cc) to Me" field on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see the text "Send Copy (Cc) to Me" in send email page

  @150757 @verifyHelpTextAtSendCopyCCToMeFieldIsPresentOnModalWhileSendingEmail
  Scenario: Validate display help text at "Send Copy (Cc) to Me" field on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hovering mouse on help text icon at "{testData:SendCopyCheckbox}" inside send email modal
    Then I see "Enable this checkbox to include yourself in Cc" shown at mouse hover inside "sendEmail" table

  @150758 @verifyIfSendCopyCCToMeFieldIsCheckedThenLoggedInUserMilIdIsDisplayedInCCField
  Scenario: Validate display help text at "Send Copy (Cc) to Me" field on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Send Copy (Cc) to Me" inside Send Email Modal
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed related field "Send Copy (Cc) to Me" inside Send Email

  @141604    @validateSuccessMsgDisplayedBySendingEmailSuccessFullyByLoginAsAdminUser
  Scenario: validate success msg displayed by sucessfully sending of email by admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "test@gmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I enter value "Test Automation Email1" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details :
      | Email Sent Successfully. |

  @159444 @validateAttentionToFieldValueAtSendEmailMessageTable @wip
  Scenario: Validate Attention To field at reply email inside message table at send email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Temp Record" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Temp Record" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Temp Record" inside table
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Temp Record" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "" for title "Attention To" inside table "---program:-:PlanningFilesFlexGridId---"

  @163532 @ValidateUserSelectInternalToFieldItShowActiveInternalUserWithStandardUser
  Scenario: Validate User Select Internal To Field It Show Active Internal User With Standard User
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName         |
      | Automation Admin |

  @163533 @ValidateUserSelectInternalCcFieldItShowActiveInternalUserWithStandardUser
  Scenario: Validate User Select Internal Cc Field It Show Active Internal User With Standard User
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName         |
      | Automation Admin |

  @163534 @ValidateUserSelectInternalToFieldItShowActiveInternalUserWithStandardUserAndShowContactOfUser
  Scenario: Validate User Select Internal To Field It Show Active Internal User With Standard User And Show Contact Of User
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName         |
      | Automation Admin |
    Then I see contacts "automationadminpatch@yopmail.com" in suggestion box

  @163535 @ValidateUserSelectInternalCcFieldItShowActiveInternalUserWithStandardUserAndShowContactOfUser
  Scenario: Validate User Select Internal Cc Field It Show Active Internal User With Standard User And Show Contact Of User
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName         |
      | Automation admin |
    Then I see contacts "automationadminpatch@yopmail.com" in suggestion box

  @161867 @ValidateUserSendEmailWithMultipleEmailAddressesAreSeparatedBySemicolon
  Scenario: Validate User Send Email With Multiple Email Addresses Are Separated By Semicolon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in;ashutosh.thakur@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details :
      | Email Sent Successfully. |

  @161872 @ValidateUserRplyToAnEmailFromCollabTabSendEmailSubjectLineStartWithRe
  Scenario: Validate User Rply To An Email From Collab Tab Send Email Subject Line Start With Re
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Testing Email" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Testing Email" inside table
    When I click on "Send" button in send email modal
    Then I softly see "RE: Testing Email" as "Subject" on send email modal

  @161998  @verifyForThePlanningPhaseInMyFeedSectionToThisProgramIsDispalyOnCollabTab   @abhishekS
  Scenario: Validate that in planning phase in my feed section text To this program is display
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    Then I softly see the text containing :
      | this record |
      | To          |


  @161871  @VerifyThatUserSendEmailWithMultipleEmailAddressesAreSeparatedBySpace    @abhishekS
  Scenario: To verify when user send email with multiple email addresses are separated by space
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I enter value "Test Automation Email1" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Email Sent Successfully. |

  @164064  @VerifyThatUserSendEmailWithMultipleEmailAddressesAreSeparatedBySemicolon    @abhishekS
  Scenario: To verify when user send email with multiple email addresses are separated by Semicolon for TO and cc
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I enter value "Test Automation Email1" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Email Sent Successfully. |

  @164262 @ValidateUserSendEmailWithMultipleEmailAddressAreSeparatedByCommaTo&CcField @vaibhavC
  Scenario: Validate User Send Email With Multiple Email Address Are Separated By Comma To & Cc Field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in,ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in,ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details :
      | Email Sent Successfully. |

  @164271 @ValidateUserSendEmailWithMultipleEmailAddressAreSeparatedBySpaceTo&CcField @vaibhavC
  Scenario: Validate User Send Email With Multiple Email Address Are Separated By Space To & Cc Field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details :
      | Email Sent Successfully. |

  @169493
  Scenario: verify,User send the email from TO &CC field as 'External' and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Send Email" opens in overLay window
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test for external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I click on "View" icon for "Test" inside table
    Then I see "test for external" as "Body Content" on send email modal

  @169491 @wip
  Scenario: verify User send the email from TO&CC  field as 'internal' and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Send Email" opens in overLay window
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I perform quick search for "Test" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Test" inside table
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "test" as "Body Content" on send email modal

  @169289 @wip
  Scenario: verify User send the email from TO field as 'Group' with multiple attachment & files  and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Send Email" opens in overLay window
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test group for attachment and files" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Links to Additional Attachments " as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "DuplicateFile.txt" as "Body Content" on send email modal
    Then I see "actionsAtEgrid.png" as "Body Content" on send email modal
    Then I see "test group for attachment and files" as "Body Content" on send email modal

  @169263 @wip
  Scenario: Verify User send the email from TO field as 'internal' with attachment  and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Send Email" opens in overLay window
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test for internal with attachment" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I perform quick search for "Test" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Test" inside table
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "test for internal with attachment" as "Body Content" on send email modal

  @169286 @wip
  Scenario: Verify User send the email from TO field as 'Group' with multiple attachment and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test group for attachment" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I perform quick search for "Test" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Test" inside table
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "test group for attachment" as "Body Content" on send email modal

  @169287 @wip
  Scenario: Verify User send the email from TO field as 'Group' with multiple files and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test group for files" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Links to Additional Attachments " as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "DuplicateFile.txt" as "Body Content" on send email modal
    Then I see "actionsAtEgrid.png" as "Body Content" on send email modal
    Then I see "test group for files" as "Body Content" on send email modal

  @169527
  Scenario: Verify User send the email from TO&CC field as 'Group' with multiple files and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test group for files" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    When I close "Send Email" modal by clicking on x top right button
    And I pause execution for "5" seconds
    And I click on "View" icon for "Test" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "DuplicateFile.txt" as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "test group for files" as "Body Content" on send email modal

  @169529
  Scenario: Verify User send the email from TO&  CC field as 'Group' with multiple attachment & files  and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test group for attachment and files" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I click on "View" icon for "Test" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "DuplicateFile.txt" as "Body Content" on send email modal
    Then I see "actionsAtEgrid.png" as "Body Content" on send email modal
    Then I see "test group for attachment and files" as "Body Content" on send email modal
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal
    Then I see attachment "captureModalFields.png" is present in send email modal
    Then I see attachment "actionsAtEgrid.png" is present in send email modal

  @169266 @wip
  Scenario: Verify User send the email from TO& CC field as 'internal' with attachment & files and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
#    When I navigate to "Files" sub tab
#    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
#    When I upload file "SendEmailAttachment.pdf" into library with sharing
#    When I select Classification as "Medical Reports" at upload file modal
#    When I click on "Upload" button in send email modal
#    And I pause execution for "3" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test for files & attachment" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Links to Additional Attachments " as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "test for files & attachment" as "Body Content" on send email modal

  @169265 @wip
  Scenario: Verify user send the email from TO field as 'internal' with files and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
#    When I navigate to "Files" sub tab
#    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
#    When I upload file "SendEmailAttachment.pdf" into library with sharing
#    When I select Classification as "Medical Reports" at upload file modal
#    When I click on "Upload" button in send email modal
#    And I pause execution for "3" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test for internal with file" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Links to Additional Attachments " as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "test for internal with file" as "Body Content" on send email modal

  @169688 @jyoti
  Scenario:Send Email-To verify,User reply email previously send from TO field as 'internal' and click on  reply View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test for reply" into field "Subject" on send email modal
    When I enter value "test for reply with internal" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "test for reply" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "View" icon for "RE: test for reply" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "test for reply" as "Body Content" on send email modal

  @169690 @jyoti
  Scenario: Send Email-To verify,User reply email previously send from TO field as 'External' and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "reply for external" into field "Subject" on send email modal
    When I enter value "test reply for external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    And I click on "View" icon for "RE: reply for external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "Subject" as "Body Content" on send email modal

  @169693 @jyoti @complete @wip
  Scenario: Send Email-To verify,User reply email previously send from TO field as 'Group' and click on  reply View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "reply group" into field "Subject" on send email modal
    When I enter value "reply group" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply group" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "View" icon for "RE: reply group" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com, Nauman Shahid" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Transportation |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal

  @169696 @jyoti
  Scenario: Send Email-To verify,To verify,User reply email previously send from TO field as 'internal&external' and click on reply View action on that reply mai then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Automation PM1" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM1" with iconName "fa fa-user" into field on send email modal
    When I enter value "reply internal &external" into field "Subject" on send email modal
    When I enter value "reply internal &external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply internal &external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "View" icon for "RE: reply internal &external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "reply internal &external" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "pm1.automation@yopmail.com" as "Body Content" on send email modal

  @169931 @jyoti @wip
  Scenario: Send Email-To verify,User reply with file the email from TO &CC field as 'internal&external' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active         | false             | ApiGeneratedId:0 |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active         | true          | Grantee State Program | Name                      | TAB-026                    |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I have "customMetaData" configuration as below:
      | id                 | label        | booleanValue | customMetaDataApiName    |
      | m036O000000fxpeQAA | SendEmaiBody | false        | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label        | booleanValue | customMetaDataApiName    |
      | m036O000000fxpeQAA | SendEmaiBody | true         | GNT__KeyValueHolder__mdt |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "id"
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.csv" into library with sharing
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Surya Namasivayam" into field "{testData:ToField}" on send email modal
    When I select value "Surya Namasivayam" with iconName "fa fa-phone" into field on send email modal
    When I enter value "Jason FD" into field "{testData:ToField}" on send email modal
    When I select value "Jason FD" with iconName "fa fa-user" into field on send email modal
    When I enter value "Rawimas GGPTEST5" into field "{testData:ToField}" on send email modal
    When I select value "Rawimas GGPTEST5" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Surya Namasivayam" into field "{testData:CcField}" on send email modal
    When I select value "Surya Namasivayam" with iconName "fa fa-phone" into field on send email modal
    When I enter value "Jason FD" into field "{testData:CcField}" on send email modal
    When I select value "Jason FD" with iconName "fa fa-user" into field on send email modal
    When I enter value "Rawimas GGPTEST5" into field "{testData:CcField}" on send email modal
    When I select value "Rawimas GGPTEST5" with iconName "fa fa-user" into field on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Subject" on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply TO& CC with internal & external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "TestAutomationFile.csv" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com, Nauman Shahid" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal

  @169703 @wip
  Scenario: Verify user reply email previously send from TO field as 'internal' with files and click on  reply View action on that reply mailthen added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test reply" into field "Subject" on send email modal
    When I enter value "test reply" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "Reply" icon for "test reply" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I click on "View" icon for "RE: test reply" inside table
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com, Nauman Shahid" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Links to Additional Attachments " as "Body Content" on send email modal
    Then I see text as "TestAutomationFile.csv" on View modal
    Then I see text as "(Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment.):" on reply email modal
    Then I see "TestAutomationFile.csv" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see text as "From: ashwini.mahore@yopmail.com" on reply email modal
    Then I see text as "Sent:" on reply email modal
    Then I see text as "To: snehal.mulange@reisystems.in" on reply email modal
    Then I see text as "Subject: test reply" on reply email modal
    Then I see "test reply" as "Body Content" on send email modal

  @169931 @jyoti @wip
  Scenario: Send Email-To verify,User reply with file the email from TO &CC field as 'internal&external' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
#    When I navigate to "Files" sub tab
#    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
#    When I upload file "SendEmailAttachment.pdf" into library with sharing
#    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
#    When I select Classification as "Medical Reports" at upload file modal
#    When I click on "Upload" button in send email modal
#    When I pause execution for "5" seconds
#    And I refresh the page
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "tejashree.damdhar@reisystems.in;tejashree.deshpandea@reisystems.in;automationpm1@yopmail.com" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "tejashree.damdhar@reisystems.in;tejashree.deshpandea@reisystems.in;automationpm1@yopmail.com" into field "{testData:CcField}" on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Subject" on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply TO& CC with internal & external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "70" seconds
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To: tejashree.damdhar@reisystems.in;tejashree.deshpandea@reisystems.in;automationpm1@yopmail.com" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see "reply TO& CC with internal & external" as "Body Content" on send email modal

  @169930 @jyoti
  Scenario:Send Email-To verify,User reply with attachment the email from TO &CC field as 'internal&external' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
#    When I navigate to "Files" sub tab
#    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
#    When I upload file "SendEmailAttachment.pdf" into library with sharing
#    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
#    When I select Classification as "Medical Reports" at upload file modal
#    When I click on "Upload" button in send email modal
#    When I pause execution for "5" seconds
#    And I refresh the page
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "DILIP" into field "{testData:ToField}" on send email modal
    When I select value "DILIP Hatagale" with iconName "fa fa-user" into field on send email modal
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM1" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "DILIP" into field "{testData:CcField}" on send email modal
    When I select value "DILIP Hatagale" with iconName "fa fa-user" into field on send email modal
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM1" with iconName "fa fa-user" into field on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Subject" on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply TO& CC with internal & external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    When I perform quick search for "RE: reply TO& CC with internal & external" in "---program:-:communicationHistoryTableId---" panel
    And I click on "View" icon for "RE: reply TO& CC with internal & external" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "60" seconds
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see text as "reply TO& CC with internal & external" in reply email modal
#    Then I see "reply TO& CC with internal & external" as "Body Content" on send email modal

  @169929 @jyoti
  Scenario: Send Email-To verify,User reply the email from TO &CC field as 'internal&external' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" into field "{testData:ToField}" on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Subject" on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply TO& CC with internal & external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "View" icon for "RE: reply TO& CC with internal & external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From: automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To: test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal

  @169876 @jyoti
  Scenario:Send Email-To verify,User reply the email with files& attachment  from TO&CC field as 'Group' and click on View action on that reply  mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "Group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for  To & cc group" into field "Subject" on send email modal
    When I enter value "reply for  To & cc group" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply for  To & cc group" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "View" icon for "RE: reply for To & cc group" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From: automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To: automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment" as "Body Content" on send email modal

  @169875 @jyoti
  Scenario:Send Email-To verify,User reply the email with files  from TO  & CC field as 'Group' and click on View action on that reply  mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "Group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for To & cc group" into field "Subject" on send email modal
    When I enter value "reply for To & cc group" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply for To & cc group" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    And I click on "View" icon for "RE: reply for To & cc group" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal

  @169873 @jyoti
  Scenario: Send Email-To verify,User reply the email from TO  & CC field as 'Group' and click on View action on that reply  mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "Group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for  To & cc group 2" into field "Subject" on send email modal
    When I enter value "reply for  To & cc group 2" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply for  To & cc group 2" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    And I click on "View" icon for "RE: reply for  To & cc group 2" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal

  @169833 @jyoti
  Scenario: Send Email-To verify,User reply the email with attachment  from TO &CC field as 'External' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    And I click on "View" icon for "RE: reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" as "Body Content" on send email modal

  @169835 @jyoti
  Scenario:Send Email-To verify,User reply the email with files from TO &CC field as 'External' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    And I click on "View" icon for "RE: reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" as "Body Content" on send email modal

  @169844 @jyoti
  Scenario: Send Email-To verify,User reply the email with files & attachment from TO &CC field as 'External' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    When I close "Reply" modal by clicking on x top right button
    And I pause execution for "5" seconds
    And I click on "View" icon for "RE: reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal

  @169874 @jyoti
  Scenario: Send Email-To verify,User reply the email with attachment  from TO  & CC field as 'Group' and click on View action on that reply  mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "Group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for To & cc group" into field "Subject" on send email modal
    When I enter value "reply for To & cc group" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for To & cc group" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    When I close "Reply" modal by clicking on x top right button
    And I pause execution for "5" seconds
    And I click on "View" icon for "RE: reply for To & cc group" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
   # Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal

  @169699
  Scenario: Verify user reply email  previously send from  TO field as 'internal' with attachment  and click on  reply View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test for reply with attachment" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I click on "Reply" icon for "test" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I click on "View" icon for "RE: test" inside table
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see "test" as "Body Content" on send email modal
    Then I see "test for reply with attachment" as "Body Content" on send email modal

  @160296 @jyoti
  Scenario: Send Email-To verify,  For Reply action show only Contacts from 'Cc' field whose Account Record Type Name is not Internal, No user records will be shown for external
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
#      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                    |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Dilip" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160284 @jyoti
  Scenario: Send Email-To Verify,When For Reply action User select 'Internal'  from Cc field only users records should be visible not a contact record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "DILIP" into field "{testData:ToField}" on send email modal
    When I select value "DILIP Hatagale" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "DILIP" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160261 @jyoti
  Scenario: Send EMail-To Verify If user select the group from 'Cc' field  then  email get received to all group members Internal & External.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group for Admin" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160256 @jyoti
  Scenario: Send Email-To Verify, When user select Internal/External From 'Cc' field only internal users display and External Contacts display.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @169810
  Scenario: Verify User reply email from TO field as 'Group' with multiple attachment & files  and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply group with attachment & files" into field "Subject" on send email modal
    When I enter value "reply group with attachment & files" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I refresh the page
    When I click on "Reply" icon for "reply group with attachment & files" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    When I click on "View" icon for "RE: reply group with attachment & files" inside table
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "DuplicateFile.txt" as "Body Content" on send email modal
    Then I see "actionsAtEgrid.png" as "Body Content" on send email modal

  @169700
  Scenario: Verify user reply email with attachment to previously send from  TO field as 'internal' with attachment  and click on  reply View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test for reply with attachment" into field "Subject" on send email modal
    When I enter value "test for reply with attachment" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I close modal by clicking the top right x button
    When I click on "Reply" icon for "test for reply with attachment" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I click on "View" icon for "RE: test for reply with attachment" inside table
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent: " as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "dilip.hatagale@reisystems.in" as "Body Content" on send email modal
    Then I see "test for reply with attachment" as "Body Content" on send email modal
    Then I see "Name" as "Attachments" on send email modal
    Then I see "Action" as "Attachments" on send email modal

  @169703
  Scenario: Verify user reply email previously send from TO field as 'internal' with files and click on  reply View action on that reply mailthen added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test reply" into field "Subject" on send email modal
    When I enter value "test reply" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "Reply" icon for "test reply" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I click on "View" icon for "RE: test reply" inside table
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "dilip.hatagale@reisystems.in" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see "test reply" as "Body Content" on send email modal
    Then I see text as "Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment" in reply email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal

  @169710
  Scenario: Verify reply email with attachment & files that previously send from TO& CC field as 'internal' with attachment & files and click on reply View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "test reply" into field "Subject" on send email modal
    When I enter value "test reply" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I refresh the page
    When I click on "Reply" icon for "test reply" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I refresh the page
    When I click on "View" icon for "RE: test reply" inside table
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From: automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To: dilip.hatagale@reisystems.in" as "Body Content" on send email modal
    Then I see "Name" as "Attachments" on send email modal
    Then I see "Action" as "Attachments" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Attachments" on send email modal
    Then I see the text containing :
      | Attachments |


  @160556 @jyoti
  Scenario: Send Email: To Verify, For Reply action when user not select Internal, External or Group from 'To' field, user records & contact records should not be visible.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Shambhavi" into field "{testData:ToField}" on send email modal
    Then I softly do not see user suggestion box displayed at send email modal

  @160489 @jyoti
  Scenario: Send Email: To Verify, When user not select Internal, External or Group From 'To' field then user record and  contact record should not be visible.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Shambhavi" into field "{testData:ToField}" on send email modal
    Then I softly do not see user suggestion box displayed at send email modal

  @159970 @jyoti
  Scenario: Send Email-To verify , When user select Active Internal user & Active External user from 'To' field then for Internal user record  & for External  contact should be visible.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation Admin" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation Admin" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160198 @jyoti
  Scenario: Send Mail-To Verify, for Reply action When user select the group From 'TO' field email get received to all group members(Internal/External)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160141 @jyoti
  Scenario: Send Email- To Verify, when user select the group  from 'To' field then  email get received to all group members Internal & External.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160313 @jyoti
  Scenario: Send Email- To Verify, For Relpy  action When user select the group from 'Cc' field  the email get received to all group members as a External & Internal.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "test grop 1" into field "{testData:CcField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160300 @jyoti
  Scenario: Send Email-To Verify, For Reply action select the both Internal/External from 'Cc' field only Internal users display and External Contacts display.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Neelima GGPTEST5" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @159887 @jyoti
  Scenario: Send Email-To Verify,When User select 'Internal' from 'TO' field only users records should be visible.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160468 @jyoti
  Scenario: Send Email- To Verify,For Reply action  When user select Internal/External from 'To' field Only internal user and external contact should be visible
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @159937 @jyoti
  Scenario: Send Email-To Verify, When user select external from  'To'  field whose Account Record Type Name is not Internal then only contact should be display  user records should not be visible
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "dilip" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160226 @jyoti
  Scenario:  Send EMail-To Verify,  when user select External from 'Cc'  field then show only Contacts whose Account Record Type Name is not Internal  No user records will be shown.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    And I wait for "2" seconds
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160207 @jyoti
  Scenario: Send Email-To Verify,When User select 'Internal' from 'CC' field only users records should be visible & contact record should not be display
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation EXE" into field "{testData:ToField}" on send email modal
    When I select value "Automation EXE" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160177 @jyoti
  Scenario: Send Mail-To Verify, for Reply action  when user select the external from 'To' field then show only contact whose record type is not internal and also user records should not shown
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160159 @jyoti
  Scenario: Send Email To Verify, For Reply action when user select the internal from 'To' field then It will show only Active Internal Users no contact record should be visible.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @169708
  Scenario: Verify Send Email-User reply email previously send from TO& CC field as 'internal' with attachment & files and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "test reply 2" into field "Subject" on send email modal
    When I enter value "test reply 2" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "Reply" icon for "test reply 2" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I pause execution for "2" seconds
    When I click on "View" icon for "RE: test reply 2" inside table
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From: automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "Subject: test reply 2" as "Body Content" on send email modal
    Then I see "Links to Additional Attachments" as "Body Content" on send email modal
    Then I see text as "Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment" in reply email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see the text containing :
      | Attachments |

  @169825p
  Scenario: Verify user reply the email with files&attachment  from TO&CC  field as 'internal' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "reply TO& CC internal" into field "Subject" on send email modal
    When I enter value "reply TO& CC internal" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "Reply" icon for "reply TO& CC internal" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I pause execution for "2" seconds
    When I click on "View" icon for "RE: reply TO& CC internal" inside table
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From: automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To: snehal.mulange@reisystems.in" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see text as "Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment" in reply email modal
    Then I see text as "Links to Additional Attachments" on reply email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal

  @169832
  Scenario: Verify user reply the email from TO &CC field as 'External' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    And I pause execution for "3" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "reply for to &cc external 2" into field "Subject" on send email modal
    When I enter value "reply for to &cc external 2" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I pause execution for "2" seconds
    When I click on "Reply" icon for "reply for to &cc external 2" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I pause execution for "2" seconds
    When I close "Reply" modal by clicking on x top right button
    When I click on "View" icon for "RE: reply for to &cc external 2" inside table
    Then I see "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" as "Body Content" on send email modal
    Then I see text as "reply for to &cc external 2" in reply email modal

  @169813
  Scenario: Verify user reply email with attachment& files from TO field as 'Group' with multiple attachment & files  and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply group with attachment & files" into field "Subject" on send email modal
    When I enter value "reply group with attachment & files" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I refresh the page
    When I click on "Reply" icon for "reply group with attachment & files" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    When I click on "View" icon for "RE: reply group with attachment & files" inside table
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see text as "Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment" in reply email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "DuplicateFile.txt" as "Body Content" on send email modal
    Then I see "actionsAtEgrid.png" as "Body Content" on send email modal

  @168932 @SendEmail-Toverify,UserreplytheemailwithattachmentfromTO&CCfieldExternalandclickonViewactiononthatreplymailthenaddedfieldsEmailBodystructureareseeninthemailbody @jyoti @wip
  Scenario: Send Email-To verify,User reply the email with attachment  from TO &CC field as 'External' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    And I click on "View" icon for "RE: reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see text as "From: ashwini.mahore@yopmail.com" on reply email modal
    Then I see text as "Sent:" on reply email modal
    Then I see text as "To: surya.namasivayam@reisystems.com" on reply email modal
    Then I see text as "Subject: reply for to &cc external" on reply email modal
    Then I see "reply for to &cc external" as "Body Content" on send email modal

  @169843 @wip
  Scenario: Send Email-To verify,User reply the email with files & attachment from TO &CC field as 'External' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    When I close "Reply" modal by clicking on x top right button
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "automationpm@yopmail.com" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see attachment "captureModalFields.png" is present in send email modal

  @168973 @jyoti
  Scenario: Send email -To verify,When User click on  reply icon on Collab emails table, then  reply back content is aligned properly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "test" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "60" seconds
    Then I validate that following reply back content is aligned properly:
      | -----Original Message-----             |
      | From: automationadminpatch@yopmail.com |
      | Sent:                                  |
      | To: snehal.mulange@reisystems.in       |
      | Subject: test                          |

  @168974 @jyoti
  Scenario: Send email -To verify,When User click on  reply icon when attachment is attached for the mail , then  reply back content is aligned properly
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "test" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I validate that following reply back content is aligned properly:
      | -----Original Message-----       |
      | From: ashwini.mahore@yopmail.com |
      | Sent:                            |
      | To: snehal.mulange@reisystems.in |
      | Subject: test                    |

  @168976 @jyoti
  Scenario:Send email -To verify,When User click on  reply icon when file  is attached for the mail , then  reply back content is aligned properly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I refresh the page
    And I click on "Reply" icon for "test" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I validate that following reply back content is aligned properly:
      | -----Original Message-----       |
      | From: ashwini.mahore@yopmail.com |
      | Sent:                            |
      | To: snehal.mulange@reisystems.in |
      | Subject: test                    |

  @168977 @jyoti
  Scenario: Send email -To verify,When User click on  reply icon when enternal is selected  for the mail , then reply back content is aligned properly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:ToField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "James Hank" into field "{testData:CcField}" on send email modal
    When I select value "James Hank" with iconName "fa fa-phone" into field on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "test" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "60" seconds
    Then I validate that following reply back content is aligned properly:
      | -----Original Message-----             |
      | From: automationadminpatch@yopmail.com |
      | Sent:                                  |
      | To: testcontact@yopmail.com            |
      | Subject: test                          |


  @173457
  Scenario: Verify user should see the Required field symbol ( * ) for TO field  at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    Then I see asterisk mark at "{testData:ToField}" field is displayed at send email modal

  @181340 @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO  (External)  field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Attachment  from to  (External)" into field "Subject" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181347 @sprint23 @needtoaddattachment
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO &  CC (Group)   field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Attachment  from TO &  CC (Group)" into field "Subject" on send email modal
    When I enter value "test for internal with file" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181342 @sprint23 @jyoti
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO (group )  field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "7" seconds
    And I refresh the page
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181343 @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO & CC (External) field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Files" sub tab
#    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
#    When I upload file "SendEmailAttachment.pdf" into library with sharing
#    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
#    When I select Classification as "Medical Reports" at upload file modal
#    When I click on "Upload" button in send email modal
#    When I pause execution for "5" seconds
#    And I refresh the page
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "jyoti.dede@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Attachment  from to  (External)" into field "Subject" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181339 @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO (internal) field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Attachment  from to  (External)" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181344 @sprint23
  Scenario: Send Email -To verify , When user reply  an Email with an Attachment  from TO  (External)  field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Attachment  from to  (External)" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "Attachment  from to  (External)" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181345 @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO &  CC (External)   field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "jyoti.dede@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Attachment  from to  (External)" into field "Subject" on send email modal
    And I pause execution for "5" seconds
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "Attachment  from to  (External)" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181346 @sprint23
  Scenario: Send Email -To verify , When user reply  an Email with an Attachment  from TO (group )  field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "grou" into field "{testData:ToField}" on send email modal
    When I select value "Test group Automation one" with iconName "fa fa-users" into field on send email modal
    When I enter value "Attachment  from TO (group )" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "Attachment  from TO (group )" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181376 @sprint23
  Scenario: Send Email -To verify , When user reply  an Email with an Attachment  from TO (internal) field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Attachment from to (Internal)" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "Attachment from to (Internal)" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Reply test Attachment from to Internal" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "7" seconds
    And I refresh the page
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @1838951 @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an multiple Attachment  from TO & CC  (internal &External) field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
#    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "multiple Attachment  from TO (internal &External)" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @183842 @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an multiple Attachment  from TO (internal &External) field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "multiple Attachment  from TO (internal &External)" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @183830 @sprint23
  Scenario: Send Email -To verify , When user reply an Email with an multiple Attachment  from TO (internal) field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "multiple Attachment from TO (internal &External)" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "multiple Attachment from TO (internal &External)" inside table
    When I enter value "reply test" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    And I refresh the page
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181341 @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO &  CC (Internal)   field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186124 @sprint24
  Scenario:Send Email -To verify , User should be able to "true" when select file is attached to "TO- External " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186685 @sprint24
  Scenario: Send Email -To verify , User should be able to see "false" when select file is does not attached to "TO- group" reply email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "send email select file attachment" inside table
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186684 @sprint24
  Scenario: Send Email -To verify , User should be able to see "false" when select file is does not attached to "TO- internal" reply email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "send email select file attachment" inside table
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    And I refresh the page
    When I perform quick search for "RE: send email select file attachment" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186681 @sprint24
  Scenario: Send Email -To verify , User should be able to see "false" when select file is does not attached to "TO-external" reply email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "send email select file attachment" inside table
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186677 @sprint24
  Scenario:Send Email -To verify , User should be able to see "true" mark when select file is attached to "TO- internal " reply email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "send email select file attachment	" inside table
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true " for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186678 @sprint24
  Scenario:Send Email -To verify , User should be able to see "true" when select file is attached to "TO- external " reply email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "send email select file attachment" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "send email select file attachment" inside table
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186294 @sprint24
  Scenario:Send Email -To verify , User should be able to see "true" when select file is attached to "TO & CC- Internal " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186295 @sprint24
  Scenario:Send Email -To verify , User should be able to see "true" when select file is attached to "TO & CC- External " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186297 @sprint24
  Scenario:Send Email -To verify , User should be able to see "false" when user did not select any attached to "TO- Internal " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186298 @sprint24
  Scenario:Send Email -To verify , User should be able to see "false" when user did not select any attached to "TO- External " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186300 @sprint24
  Scenario:Send Email -To verify , User should be able to see "false" when user did not select any attached to "TO- Group " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    And I refresh the page
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186296 @sprint24
  Scenario:Send Email -To verify , User should be able to see "true" when select file is attached to "TO & CC- group   " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for  To group" into field "Subject" on send email modal
    When I enter value "reply for  To group" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186679 @sprint24
  Scenario:Send Email -To verify , User should be able to see "true" when select file is attached to "TO- group " reply email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for  To group" into field "Subject" on send email modal
    When I enter value "reply for  To group" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @187614 @sprint24
  Scenario:Send Email -To verify , User should be able to see "true" mark when select file is attached to "TO & CC- internal " reply  email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "reply for  To group" into field "Subject" on send email modal
    When I enter value "reply for  To group" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @187627 @sprint26
  Scenario:Send Email -To verify , User should be able to see "true" mark when select file is attached to "TO & CC- group " reply  email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for  To group" into field "Subject" on send email modal
    When I enter value "reply for  To group" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @187630 @sprint26
  Scenario:Send Email -To verify , User should be able to see "true" mark when select file is attached to "TO & CC- external " reply  email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test able to see true" into field "Subject" on send email modal
    When I enter value "Test able to see true" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "Test able to see true" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @187635 @sprint26
  Scenario:Send Email -To verify , User should be able to see "false" mark when select file is attached to "TO & CC- internal " reply  email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test able to see false" into field "Subject" on send email modal
    When I enter value "Test able to see false" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I perform quick search for "Test able to see false" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test able to see false" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test able to see false" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @195079 @ToverifyUsershouldnotbeabletosee"Uploadfilemodal"whentheusercheck"Group"inthecheckbox&typeanytextin"TO"fieldandpressenter @jyoti @userstory_174060
  Scenario:To verify , User should not be able to see "Upload file modal" when the user check "Group" in the checkbox & type any text in "TO" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Automation Testing Group" into field "{testData:CcField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195078 @ToverifyUsershouldnotbeabletosee"Uploadfilemodal"whentheusercheck"External"inthecheckbox&typeanytextin"TO"fieldandpressenter @userstory_174060 @jyoti
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "External" in the checkbox & type any text in "TO" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "ExternalP User 1" into field "{testData:ToField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195077 @ToverifyUsershouldnotbeabletosee"Uploadfilemodal"whentheusercheck"Internal"inthecheckbox&typeanytextin"TO"fieldandpressenter @userstory_174060 @jyoti
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "Internal" in the checkbox & type any text in "TO" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195081 @ToverifyUsershouldnotbeabletosee"Uploadfilemodal"whentheusercheck"Internal"inthecheckbox&typeanytextin"TO"&CC"fieldandpressenter @userstory_174060 @jyoti
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "Internal" in the checkbox & type any text in "TO" & "CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "ExternalP User 1" into field "{testData:ToField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195082 @ToverifyUsershouldnotbeabletosee"Uploadfilemodal"whentheusercheck"External"inthecheckbox&typeanytextin"TO"&"CC"fieldandpressenter @userstory_174060 @jyoti
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "External" in the checkbox & type any text in "TO" & "CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Rawimas GGPTEST5" into field "{testData:CcField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195083 @Toverify,Usershouldnotbeabletosee"Uploadfilemodal"whentheusercheck"Group"inthecheckbox&typeanytextin"TO"&"CC"fieldandpressenter @userstory_174060 @jyoti
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "Group" in the checkbox & type any text in "TO" & "CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Automation Testing Group" into field "{testData:CcField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @187636 @sprint26
  Scenario:Send Email -To verify , User should be able to see "false" mark when select file is attached to "TO & CC- external " reply  email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test false Attachment" into field "Subject" on send email modal
    When I enter value "Test false Attachment" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I perform quick search for "Test false Attachment" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test false Attachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test false Attachment" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @187639 @sprint26
  Scenario:Send Email -To verify , User should be able to see "false" mark when select file is attached to "TO & CC- group " reply  email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for To group" into field "Subject" on send email modal
    When I enter value "reply for To group" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply for To group" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "reply for To group" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @205452 @sprint6 @ToVerifySpelling
  Scenario:Send Email -To verify,Spelling of 'Successfully' in confirmation message of Send Email modal is now corrected.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Email Created" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details :
      | Email Sent Successfully. |

  @205481 @sprint6 @ToVerifySpelling
  Scenario:Send Email -To verify,Spelling of 'Successfully' in confirmation message of Send Email modal is now corrected for internal user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test confirmation message" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details :
      | Email Sent Successfully. |

  @194897p @ToVerifyUserShouldNotSee"UploadFileModal"WhenTypeTextpressEnter @sprint1
  Scenario: Send Email - To verify , User should not be able to see "Upload file modal" when type any text in " TO " field and press "Enter"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @194912 @ToVerifyUserShouldNotSee"UploadFileModal"WhenTypeTextpressEnter @sprint1
  Scenario: To verify , User should not be able to see "Upload file modal" when type any text in " TO & CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @194914 @ToVerifyUserShouldNotSee"UploadFileModal"WhenTypeTextpressEnter @sprint1
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "Internal" in the checkbox & type any text in "CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195096 @ToVerifyUserShouldNotSee"UploadFileModal"WhenTypeTextpressEnter @sprint1
  Scenario:  To verify , User should not be able to see "Upload file modal" when the user check "Internal" in the checkbox & type any text in "TO" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195098 @ToVerifyUserShouldNotSee"UploadFileModal"WhenTypeTextpressEnter @sprint1
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "Group" in the checkbox & type any text in "CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Automation Testing Group" into field "{testData:CcField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195097 @ToVerifyUserShouldNotSee"UploadFileModal"WhenTypeTextpressEnter @sprint1
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "External" in the checkbox & type any text in "CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @69217 @validateIfGroupCheckboxCheckedAtCCFieldThenOnlyUserGroupsIsShownInAutoSuggestionBox @sendEmail
  Scenario: Validate If Group checkbox is checked At CC Field then only Group is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "3" seconds
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    Then I see iconName "fa fa-users" with user "group 1" is displayed on send email modal
    Then I see iconName "fa fa-users" with user "group for Admin" is displayed on send email modal

  @69095 @validateIfInternal+ExternalCheckboxCheckedAtToFieldThenBothUserIsShownInAutoSuggestionBox @sendEmail @needToUpdate
  Scenario: Validate If Internal+ External checkbox is checked At To Field then only Group is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName         |
      | Automation EXE   |
      | Automation PM1   |
      | Automation Admin |

  @169705
  Scenario: Verify user reply email with select file that previously send from TO field as 'internal' with files and click on  reply View action on that reply mailthen added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test reply" into field "Subject" on send email modal
    When I enter value "test reply" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "Reply" icon for "test reply" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "View" icon for "RE: test reply" inside table
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From: automationadminpatch@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To: snehal.mulange@reisystems.in" as "Body Content" on send email modal
    Then I see "Subject: test reply" as "Body Content" on send email modal
    Then I see text as "Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment" in reply email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal

  @332845 @332847 @332849 @332850 @332852 @332853 @332855 @332856 @333064 @333062
  Scenario: Send Email Functionality
  |Send Email -"Send Copy (Cc) to Me" - To verify , checked checkbox for "Send Copy (Cc) to Me" on send modal|
  |Send Email -"Send Copy (Cc) to Me" - To verify ,Internal user  checked checkbox for "Send Copy (Cc) to Me" on send modal|
  |Send Email -"Send Copy (Cc) to Me" - To verify ,Internal user  checked checkbox for "Send Copy (Cc) to Me" on View modal|
  |Send Email -"Send Copy (Cc) to Me" - To verify ,user  checked checkbox for "Send Copy (Cc) to Me" on View modal|
  |Send Email -"Send Copy (Cc) to Me" - To verify ,user  checked checkbox for "Send Copy (Cc) to Me" on displayed on send modal but not displayed on Reply modal|
  |Send Email -"Send Copy (Cc) to Me" - To verify ,Internal user  checked checkbox for "Send Copy (Cc) to Me" on displayed on send modal but not displayed on Reply modal|
  |Send Email -"Send Copy (Cc) to Me" - To verify ,Internal user  checked checkbox for "Send Copy (Cc) to Me" on Reply modal   it will show checked on after send reply|
  |Send Email -"Send Copy (Cc) to Me" - To verify ,l user  checked checkbox for "Send Copy (Cc) to Me" on Reply modal   it will show checked on after send reply|
  |send email-User Click on View  LWC action then View LWC modal is displayed|
  |send email-User Click on Reply LWC action then Reply LWC modal is displayed|
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "automationpm@ggp.test8.atm.fwautomat" CC "" Subject "Checkbox" in send email LWC
    When I enter value "Test" into field "Body Content" on send email modal
    And I click on checkbox for field "Send Copy (Cc) to Me"
    When I click on "Send" button in send email modal
     #332845 #332847
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    Then I see checkbox for field "Send Copy (Cc) to Me" on modal is selected
    #332849 #332850 #333064
    When I close modal by clicking the top right x button
    When I perform quick search for "Checkbox" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Checkbox" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I softly see "View" page block displayed
    Then I see checkbox for field "Send Copy (Cc) to Me" on modal is selected
    #332852 #332853 #333062
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "Checkbox" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I softly see "Reply" page block displayed
    Then I see checkbox for field "Send Copy (Cc) to Me" on modal is not selected
    #332855 #332856
    And I click on checkbox for field "Send Copy (Cc) to Me"
    When I click on "Send" button in send email modal
    Then I see checkbox for field "Send Copy (Cc) to Me" on modal is selected

  @382774 @SanityPATCH  @SanityPATCHSendEmail
  Scenario Outline:Sanity-TC-Admin-verify that the user is able to click on the checkbox under "Send Copy (Cc) to Me" if user wants to send the copy of the mail to themselves
    Given I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgramFortest}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgramFortest}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "automationpm@ggp.test8.atm.fwautomat" CC "" Subject "Checkbox" in send email LWC
    When I enter value "Test" into field "Body Content" on send email modal
    And I click on checkbox for field "Send Copy (Cc) to Me"
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    Then I see checkbox for field "Send Copy (Cc) to Me" on modal is selected
    Examples:
      | Users |
      | Admin |
      | PM    |

  @332880 @332881
  Scenario: Send Email Functionality
  |Send Email -Verified when every fields kept empty then error message is displying when clicked on send button|
  |Send Email -Verified when internal user every fields kept empty then error message is displying when clicked on send button|
  |Send Email -when  External user only filled subject field then 'Please add a recipient' message|
  |Send Email -when  user only filled subject field then 'Please add a recipient' message|
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "Send" button in send email modal
    #332880 #332881
    Then I see "Enter Subject for Email." message is displayed on Send Email Modal
    #332887 #332888
    When I fill the details in field To "automationpm@ggp.test8.atm.fwautomat" CC "" Subject "Checkbox" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Enter To Email Address." message is displayed on Send Email Modal

  @332883 @333058 @332889 @SanityPATCH  @SanityPATCHSendEmail
  Scenario: Send Email Functionality
  |Send Email -Verified when External user every fields kept empty then error message is displying when clicked on send button|
  |send email-User send email without filling subject field then error message should displayed on the modal|
  |Send Email -when Internal user only filled subject field then 'Please add a recipient' message|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Test Automation Email" into field "Subject" on send email modal
    When I enter value "Test" into field "Body Content" on send email modal
    And I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Enter To Email Address. |
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "Send" button in send email modal
    #332883 #333058
    Then I see "Enter Subject for Email." message is displayed on Send Email Modal
    #332889
    When I fill the details in field To "automationpm@ggp.test8.atm.fwautomat" CC "" Subject "Checkbox" in send email LWC
    When I click on "Send" button in send email modal
    Then I see "Enter To Email Address." message is displayed on Send Email Modal

  @333104 @333101 @333099 @333098 @333097 @333095 @333089 @333085 @333084 @333086 @333080 @333054 @333017
  Scenario: SE other
  |send email- Under Cc field dropdown should displayed for admin user|
  |Send email-User should be able to checked the internal picklist from TO field  for internal user|
  |Send email-User should be able to checked the internal picklist from TO field|
  |send email-User should be able to  checked the External picklist from TO field|
  |send email- Admin User should be able to  checked the Internal &External picklist from TO field|
  |send email-User should be able to check the checkbox for  the internal & external picklist at a time  picklist from TO field|
  |send email-Admin User should be able to checked the internal picklist from CC field|
  |send email-User should be able to check the checkbox for  the internal & external picklist at a time  picklist from CC field|
  |send email-Admin User should be able to checked the Internal & External picklist from CC field|
  |send email-Admin User should be able to checked the External picklist from CC  field|
  |send email-Admin User should be able to checked the Group  picklist from CC field|
  |send email- Admin User can see the Body content  field on the send email modal|
  |send email-User can see the Send Copy (Cc) to Me field on the send email modal|
  |send email- 'Send Copy (Cc) to Me' field display on the send email  modal|
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    #333104
    Then I softly see field "Cc" inside page block
    #333101 #333099 #333097
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    #333098
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    #333095 #333089 #333085
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    #333084
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    #333086
    And I click on dropdown inside "Cc" field and Select "Group" value
    #333080
    Then I softly see field "Body Content" inside page block
     #333054 #333017
    Then I softly see field "Send Copy (Cc) to Me" inside page block


  @333066
  Scenario: SE other Scenarios
  |send email-User send email with Internal email ID's in TO &CC field|
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "automationpm@ggp.test8.atm.fwautomat" CC "automationpm@ggp.test8.atm.fwautomat" Subject "Checkbox" in send email LWC
    When I enter value "Test" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    #333066
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal


  @333093 @333091 @333083 @333076 @333078 @#333076 @333074 @333060
  Scenario: SE other Scenarios1
  |send email-When User check the checkbox for  the internal from dropdown then Group field is getting hidden   from TO field|
  |send email-When User check the checkbox for  the internal from dropdown then Group field is getting hidden   from TO field|
  |send email-When User check the checkbox for  the internal from dropdown then Group field is getting hidden   from TO field|
  |send email-When User check the checkbox for  the External  from dropdown then Group field is getting hidden   from CC field|
  |send email-When User check the checkbox for  the internal from dropdown then Group field is getting hidden   from CC field|
  |send email-When User check the checkbox for  the group  from dropdown then internal &External  field is getting hidden   from CC field|
  |Send email- admin  User send email then 'Email Sent Successfully.' message is displayed|
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    #333093 #333091 #333083
    Then I see option "Groups" from field "To" is disabled
    #333076
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    Then I see option "Groups" from field "To" is disabled
    #333078 #333074
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    Then I see option "Groups" from field "To" is disabled
    When I fill the details in field To "automationpm@ggp.test8.atm.fwautomat" CC "" Subject "Checkbox" in send email LWC
    When I enter value "Test" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    #333060
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @333082 @333081
  Scenario: SE other Scenarios2
  |send email-Admin User can see the select file  field on the send email modal |
  |send email- Admin User click on select file field then modal should open     |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "Select Files" button in send email modal
    #333082
    Then I softly see "Select File(s)" page block displayed
    #333081
    Then I softly see "Select Files" page block displayed

  @332862 @332861 @332859 @332857
  Scenario: Send Email Functionality1
  |Send Email -"Send Copy (Cc) to Me" - To verify , External user checked checkbox for "Send Copy (Cc) to Me" on send modal|
  |Send Email -"Send Copy (Cc) to Me" - To verify ,External user  checked checkbox for "Send Copy (Cc) to Me" on View modal|
  |Send Email -"Send Copy (Cc) to Me" - To verify ,External user  checked checkbox for "Send Copy (Cc) to Me" on displayed on send modal but not displayed on Reply modal|
  |Send Email -"Send Copy (Cc) to Me" - To verify ,External user  checked checkbox for "Send Copy (Cc) to Me" on Reply modal   it will show checked on after send reply|
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "automationpm@ggp.test8.atm.fwautomat" CC "" Subject "Checkbox" in send email LWC
    When I enter value "Test" into field "Body Content" on send email modal
    And I click on checkbox for field "Send Copy (Cc) to Me"
    When I click on "Send" button in send email modal
    #332862
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    Then I see checkbox for field "Send Copy (Cc) to Me" on modal is selected
    #332861
    When I close modal by clicking the top right x button
    When I perform quick search for "Checkbox" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Checkbox" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I softly see "View" page block displayed
    Then I see checkbox for field "Send Copy (Cc) to Me" on modal is selected
    #332859
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "Checkbox" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I softly see "Reply" page block displayed
    Then I see checkbox for field "Send Copy (Cc) to Me" on modal is not selected
    #332857
    And I click on checkbox for field "Send Copy (Cc) to Me"
    When I click on "Send" button in send email modal
    Then I see checkbox for field "Send Copy (Cc) to Me" on modal is selected


  @382776 @SanityPATCH  @SanityPATCHSendEmail
  Scenario: Sanity-TC-SPI-verify that the user is able to click on the checkbox under "Send Copy (Cc) to Me" if user wants to send the copy of the mail to themselves
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automationpm@ggp.test8.atm.fwautomat" CC "" Subject "Checkbox" in send email LWC
    When I enter value "Test" into field "Body Content" on send email modal
    And I click on checkbox for field "Send Copy (Cc) to Me"
    When I click on "Send" button in send email modal
    #332862
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    Then I see checkbox for field "Send Copy (Cc) to Me" on modal is selected

  @332793
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO (External) field
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "" Subject "Test Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @332910 @332967
  Scenario: Send email -TO field should displayed as expected for admin user.
  | Send email -Body Content field should displayed as expected for admin user. |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I softly see field "To" inside page block
    Then I softly see field "Body Content" inside page block

  @333103
  Scenario: Send email- CC field should displayed as expected.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I softly see field "Cc" inside page block

  @332912 @332969
  Scenario:Send email- User can see the subject field on the send email modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I softly see field "Subject" inside page block

  @332914 @332972
  Scenario: Send email- User should be able to see "true" when select file is attached to "CC-External" reply  email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached to Cc External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached to Cc External" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for True when file attached to Cc External" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "umang.parekh@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "umang.parekh@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test for False when file not attached To External" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached to Cc External" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I softly see value "umang.parekh@reisystems.in" for title "To Address" inside table "---program:-:communicationHistoryTableId---"

  @332929 @332994
  Scenario: Send email- User should be able to see "true" when select file is attached to "CC-External" email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "umang.parekh@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "umang.parekh@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test for True when file attached to Cc External" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached to Cc External" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332389 @332390 @332391
  Scenario: Send Email -"Send Copy (Cc) to Me" - To verify , checked checkbox for "Send Copy (Cc) to Me" on send modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "automationpm@ggp.test8.atm.fwautomat" CC "" Subject "Checkbox" in send email LWC
    When I enter value "Test" into field "Body Content" on send email modal
    #332391
    And I click on checkbox for field "Send Copy (Cc) to Me"
    When I click on "Send" button in send email modal
    #332389
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    #332390
    Then I see checkbox is selected for field "Send Copy (Cc) to Me" on send email

  @332833
  Scenario: Send Email -Attachment - To verify ,  user are remove the attachement from  sends email modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    And I click on X Action Button of "SendEmailAttachment.pdf" file
    Then I do not see "SendEmailAttachment.pdf" file is displayed in modal

  @332815
  Scenario: Send Email -To verify , when user try to add file then "Single File Size Limit is Exceeded' message is displayed on the LWC- send email attachment section
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "File.pdf" in Send Email Modal
    Then I see "Single File Size Attachment Limit Exceeded." error massage in attachment section

  @332816 @333015
  Scenario: Send Email -To verify , when Internal user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- send email attachment section
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I pause execution for "10" seconds
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "EmailFile.pdf" in Send Email Modal
    Then I see "Single File Size Attachment upto 1.5MB Limit Exceeded." error massage in attachment section

  @332924 @332991
  Scenario: Send email- User should be able to see "true" when select file is attached to "TO-External"   email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "umang.parekh@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "umang.parekh@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test for True when file attached To External" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To External" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332821
  Scenario: Send Email -To verify , when Internal user try to add more then 1.5mb file then " Insert links to file(s) from the record"' message is displayed on the LWC- reply email attachment section
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "umang.parekh@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "umang.parekh@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test for To External Cc External" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "Test for To External Cc External" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "ImportantFile.pdf" in Send Email Modal
    Then I see "Single File Size Limit is Exceeded" error massage in attachment section

  @332822 @333011
  Scenario: Send Email -To verify , when user try to add more then 1.5mb file then "Single File Size Limit is Exceeded' message is displayed on the LWC- reply email attachment section
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "umang.parekh@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "umang.parekh@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test for To External Cc External" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for To External Cc External" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for To External Cc External" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "File.pdf" in Send Email Modal
    Then I see "Single File Size Limit is Exceeded" error massage in attachment section

  @332923 @332989
  Scenario: Send email- User should be able to see "true" when select file is attached to "TO- Internal "   email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "umang.parekh@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "umang.parekh@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test for True when file attached To Internal" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Internal" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332926 @332993
  Scenario: Send email- User should be able to see "true" when select file is attached to "CC- Internal " email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "umang.parekh@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "umang.parekh@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test for True when file attached To Cc Internal" into field "Subject" on send email modal
    When I enter value "Test automation" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Internal" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332931 @332995
  Scenario: Send email- User should be able to see "true" when select file is attached to "CC- Group " email
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Cc Groups" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332916 @332973
  Scenario: Send email- User should be able to see "true" when select file is attached to "CC- Group" reply  email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Cc Groups" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for True when file attached To Cc Groups" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332925 @332992
  Scenario: Send email- User should be able to see "true" when select file is attached to "TO- Group " email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Groups" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Groups" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I softly see value "automationadminpatch@yopmail.com" for title "From Address" inside table "---program:-:communicationHistoryTableId---"

  @332933 @332997
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "TO- Internal " email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Internal" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Internal" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I see "Reply LWC" icon for "Test for False when file not attached To Internal" is displayed inside flex table

  @332917 @332974
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "TO- Internal " reply  email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Internal" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Internal" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for False when file not attached To Internal" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Internal" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I softly see value "Test for False when file not attached To Internal" for title "Email Subject" inside table "---program:-:communicationHistoryTableId---"

  @332918 @332977
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "TO- External" reply  email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To External" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for False when file not attached To External" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To External" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I softly see value "Test for False when file not attached To External" for title "Subject" inside table "---program:-:communicationHistoryTableId---"

  @332919 @332979
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "TO- Group" reply  email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Groups" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Groups" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for False when file not attached To Groups" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Groups" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332920 @332980
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "CC- Internal " reply  email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Cc Internal" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc Internal" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for False when file not attached To Cc Internal" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc Internal" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I see "View LWC" icon for "Test for False when file not attached To Cc Internal" is displayed inside flex table

  @332921 @332982
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "CC- External" reply  email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Cc External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc External" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for False when file not attached To Cc External" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc External" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332922 @332984
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "CC- Group" reply  email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Cc Groups" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for False when file not attached To Cc Groups" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I see "View" icon for "Test for False when file not attached To Cc Groups" is displayed inside flex table

  @332342
  Scenario: Send Email - Required to save fields  (*)  is displayed for admin user
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    Then I see help text "*" is displayed related field "To" inside Send Email

  @333052 @332344
  Scenario: Send Email - Required to save fields  (*)  is displayed for External user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see help text "*" is displayed related field "To" inside Send Email

  @332956 @332341
  Scenario: Send Email - when External user Hover on the  Select file  field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Select Files" inside Send Email Modal
    Then I see help text "Open files table to add links" is displayed related field "Select Files" inside Send Email

  @332944 @333005
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "CC- Internal " email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Cc Internal" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc Internal" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I see "Reply" icon for "Test for False when file not attached To Cc Internal" is displayed inside flex table

  @332947 @333008
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "CC- External" email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Cc External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc External" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332949 @333009
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "CC- Group" email
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Cc Groups" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332908
  Scenario: Send Email -"Send Copy (Cc) to Me" - To verify , checked checkbox for "Send Copy (Cc) to Me" on send modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "automationpm@ggp.test8.atm.fwautomat" CC "" Subject "Checkbox" in send email LWC
    When I enter value "Test" into field "Body Content" on send email modal
    And I click on checkbox for field "Send Copy (Cc) to Me"
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal
    Then I see checkbox is selected for field "Send Copy (Cc) to Me" on send email

  @332343 @333049
  Scenario: Send Email - Required to save fields  (*)  is displayed for Internal user
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgramFortest}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgramFortest}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see help text "*" is displayed related field "To" inside Send Email

  @332337 @332951
  Scenario: Send Email - when user Hover on the Attachments field help icon and help text is displayed.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Attachments" inside Send Email Modal
    Then I see help text "File Attachment" is displayed related field "Attachments" inside Send Email

  @332334
  Scenario: Send Email - when External user Hover on the Body Content field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Body Content" inside Send Email Modal
    Then I see help text "Enter email content here" is displayed related field "Body Content" inside Send Email

  @332952 @332338
  Scenario: Send Email - when External user Hover on the Attachments field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Attachments" inside Send Email Modal
    Then I see help text "File Attachment" is displayed related field "Attachments" inside Send Email

  @332339 @333036
  Scenario: Send Email - when  user Hover on the Select file field help icon and help text is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"

    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Select Files" inside Send Email Modal
    Then I see help text "Open files table to add links" is displayed related field "Select Files" inside Send Email

  @332335p
  Scenario: Send Email - when Internal user Hover on the Attachments field help icon and help text is displayed
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgramFortest}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgramFortest}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Attachments" inside Send Email Modal
    Then I see help text "File Attachment" is displayed related field "Attachments" inside Send Email

  @332340 @332954
  Scenario: Send Email - when Internal  user Hover on the Select file field help icon and help text is displayed
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgramFortest}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgramFortest}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Select Files" inside Send Email Modal
    Then I see help text "Open files table to add links" is displayed related field "Select Files" inside Send Email

  @332936 @332999
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "TO- External" email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To External" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332938 @333001
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "TO- Group" email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Groups" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Groups" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332908
  Scenario: Send email- when we attach the single file at Select Files field   then files are visible to sender and receiver.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Cc Groups" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for True when file attached To Cc Groups" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @333046
  Scenario: Send email-To verify ,when select file  is added and   body content is not available then correct spacing display.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh @ reisystems.in" CC "" Subject "Testing" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see the following message in the page details :
      | You Have Entered Invalid To Email Id. |

  @333048 @332841
  Scenario: Send email-To verify ,when attachment is added and   body content is not available then correct spacing display.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "" CC "umang.parekh @ reisystems.in" Subject "Testing" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see the following message in the page details :
      | You Have Entered Invalid CC Email Id. |

  @333037 @332840
  Scenario: Send email- To verify , if body content is not available then correct spacing display.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh @ reisystems.in" CC "" Subject "Testing" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see the following message in the page details :
      | You Have Entered Invalid To Email Id. |

  @333038
  Scenario: Send email- To verify ,in TO field select as  'Group'& in CC field select as 'internal'  and body content is not available then correct spacing display.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "" CC "umang.parekh @ reisystems.in" Subject "Testing" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    Then I see the following message in the page details :
      | You Have Entered Invalid CC Email Id. |

  @333039 @332835
  Scenario: Send email- To verify ,in TO/CC field 'External' is selected   and body content is not available then correct spacing display.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "Send" button in send email modal
    Then I see the following message in the page details :
      | Enter To Email Address.  |
      | Enter Subject for Email. |

  @332347 @332351
  Scenario: Send Email -Select File - To verify , When  user sends an Email with an file  from TO (External) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Automation Testing" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Automation Testing" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "umang.parekh@reisystems.in" for title "To Address" inside table "---program:-:communicationHistoryTableId---"

  @332349
  Scenario: Send Email -Select File - To verify , When  user sends an Email with an file  from TO (Group) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Automation Testing" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Automation Testing" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "Automation Testing" for title "Subject" inside table "---program:-:communicationHistoryTableId---"

  @332352
  Scenario: Send Email Select File, When Internal user sends an Email with an file  from TO (External) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Testing" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Testing" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332353 @332357
  Scenario: Send Email -Select File - To verify , When Internal user sends an Email with an file  from TO (Group) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Testing" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Testing" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332354
  Scenario: Send Email -Select File - To verify , When External user sends an Email with an file  from TO field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Testing" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Testing" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332355 @332356
  Scenario: Send Email -Select File - To verify , When Internal user sends an Email with an Multiple file from TO (Internal) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Cc Groups" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Testing" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Testing" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Testing" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332346 @332350
  Scenario: Send Email -Select File, When  user sends an Email with an file  from TO (Internal) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Automation Testing" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Automation Testing" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "Automation Testing" for title "Email Subject" inside table "---program:-:communicationHistoryTableId---"

  @332348
  Scenario: Send Email - To verify , When  user sends an Email with an file  from TO (Internal/External) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Automation Testing" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Automation Testing" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "automationadminpatch@yopmail.com" for title "From Address" inside table "---program:-:communicationHistoryTableId---"

  @332365 @332366 @332358 @332360 @332361 @332362 @332363 @332364 @332367 @332368
  Scenario: Send email Body Content field should displayed as expected for admin user.
  | Send email TO field should displayed as expected for admin user. |
  | Send email Subject field should displayed as expected for admin user. |
  | Send email CC field should displayed as expected for admin user. |
  | Send Email Button should displayed as expected for admin user. |
  | Send Email LWC Button should displayed as expected for admin user. |
  | Send email Select Files Button should displayed as expected for admin user. |
  | Send email Send Button should displayed as expected for admin user. |
  | Send email- User should be able to see "true" when select file is attached to "CC- External " email. |
  | Send email- User should be able to see value for title Subject. |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    #332366
    Then I softly can see top right button "Send Email" in page detail
    #332365
    Then I softly can see top right button "Send Email LWC" in page detail
    #332358
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I softly see field "Body Content" inside page block
    #332360
    Then I softly can see bottom button "Select Files" in page detail
    #332361
    Then I softly see field "Subject" inside page block
    #332362
    Then I softly see field "Cc" inside page block
    #332363
    Then I softly see field "To" inside page block
    #332364
    Then I softly can see bottom button "Send" in page detail
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Testing" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Testing" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Testing" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Testing" in "---program:-:communicationHistoryTableId---" panel
    #332367
    Then I softly see value "Testing" for title "Subject" inside table "---program:-:communicationHistoryTableId---"
    #332368
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332369 @332370
  Scenario: Send Email When Internal user sends an Email with file from CC (Internal/External) field then attached file is displayed on the View modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached to Cc External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached to Cc External" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I softly see value "Test for True when file attached to Cc External" for title "Email Subject" inside table "---program:-:communicationHistoryTableId---"

  @332372
  Scenario: Send Email To verify When user sends an Email with an file  from TO & CC (Internal/External) field then attached file is displayed on Send modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Internal" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Internal" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332373
  Scenario: Send Email To verify When  user sends an Email with an  multiple file  from TO & CC (External) field then attached file is displayed on the View modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    And I click on X Action Button of "SendEmailAttachment.pdf" file
    Then I do not see "SendEmailAttachment.pdf" file is displayed in modal

  @332374 @332388
  Scenario: Send Email Select File, When internal  user sends an Email with an  multiple file  from TO & CC (External) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Internal" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Internal" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for False when file not attached To Internal" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Internal" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332375
  Scenario: Send Email -Select File - To verify , When internal  user sends an Email with an  file  from TO & CC (External) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I upload attachment "File.pdf" in Send Email Modal
    Then I see "Single File Size Attachment Limit Exceeded." error massage in attachment section

  @332376
  Scenario: Send Email To verify, When user sends an Email with an  file  from TO & CC (External) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Cc Internal" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Internal" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332377
  Scenario: Send Email To verify, When Internal user sends an Email with an Multiple  file  from TO & CC  (Group) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I pause execution for "10" seconds
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "EmailFile.pdf" in Send Email Modal
    Then I see "Single File Size Attachment Limit Exceeded." error massage in attachment section

  @332378
  Scenario: Send Email Select File, When user sends an Email with an Multiple  file  from TO & CC  (Group) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "diliphatagale@yopmail.com" Subject "Test for To External Cc External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "Test for To External Cc External" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "ImportantFile.pdf" in Send Email Modal
    Then I see "Single File Size Limit is Exceeded" error massage in attachment section

  @332379 @332387
  Scenario: Send Email Select File, When user sends an Email with an file  from TO & CC  (Group) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Internal" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Internal" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332380
  Scenario: Send Email When Internal user sends an Email with an file  from TO & CC  (Group) field then attached file is displayed on the View & Send  modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "diliphatagale@yopmail.com" Subject "Test for To External Cc External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see "SendEmailAttachment.pdf" file is displayed in modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for To External Cc External" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Test for To External Cc External" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" file is displayed in modal


  @332381 @332386
  Scenario: Send Email When  user sends an Email with an file  from TO (Internal) field then attached file is displayed on the View & Send modal.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To External" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I see "Reply" icon for "Test for True when file attached To External" is displayed inside flex table

  @332382 @332385
  Scenario: Send Email To verify, On reply modal user are attached the file.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Cc Groups" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I see "View" icon for "Test for True when file attached To Cc Groups" is displayed inside flex table

  @332383
  Scenario: Send Email -Select File - To verify, On reply modal user are attached the multiple  file.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Cc Groups" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for True when file attached To Cc Groups" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "umang.parekh@reisystems.in" for title "To" inside table "---program:-:communicationHistoryTableId---"

  @332384
  Scenario: Send Email On reply modal Internal user are attached to file.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Groups" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Groups" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "automationadminpatch@yopmail.com" for title "From Address" inside table "---program:-:communicationHistoryTableId---"

  @332346 @332347 @332348
  Scenario Outline: To verify, Admin User try to attach the file more than 10 then  errror message is getting dispalyed
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
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
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @332349 @332350
  Scenario:To verify,External User try to attach the file more than 10 then  errror message is getting dispalyed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
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

  @332351 @332352
  Scenario Outline: To verify, Admin User can not add the duplicate file if user can try then "File with this name already exist.' error message is displayed
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I upload attachment "DuplicateFile.txt" in Send Email Modal
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I upload attachment "DuplicateFile.txt" in Send Email Modal
    Then I see "File with this name already exist." error massage in attachment section
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @332353p @332354
  Scenario Outline: To verify, Internal user can Download file by clicking on download action button in the Attachments table in front of the attached file on send email Reply  modal
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Reply" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "25" seconds
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal is Enabled
    When I close modal by clicking the top right x button
    And I click on "View LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadminpatch@yopmail.com,automationfo@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "25" seconds
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal is Enabled
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @332355 @332356 @332357 @332358
  Scenario: To verify, Internal  User should not be able to see Attachment button when select file is not getting attached  to  send email reply modal
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Reply" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "10" seconds
    Then I can not see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    When I close modal by clicking the top right x button
    #332355 #332356
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    Then I can not see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    #332357
    Then I click on "× button on Reply modal" Action Button in front of "SendEmailAttachment.pdf" file
    #332358
    Then I can not see "SendEmailAttachment.pdf" file Send Email modal

  @332360
  Scenario: To verify, Internal  User should not be able to see Attachment button when select file is not getting attached  to  send email  modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    When I fill the details in field To "automationfo@yopmail.com,automationpm1@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    Then I can not see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    When I close modal by clicking the top right x button

  @332361 @332362
  Scenario: To verify, Internal User should be able to see Attachment button when select file is attached  to  reply email modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on "Reply" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    Then I see Attachment section is displayed under "Reply" modal
    When I click on "×" icon at "Reply" modal after Email Sent Successfully

  @332363 @332364 @332365 @332366 @332367 @332368 @332369 @332370 @332372 @332373 @332374 @332375 @332376 @332377 @332378 @332379 @332380 @332381 @332382 @332383 @332384 @332385 @332386 @332387 @332388 @332389
  Scenario: Verify Send Email LWC Modal for ADMIN user and verify Body Content buttons
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    #332363
    Then I see User should be able to checked the "Internal" & "External" picklist from "Cc"  field
    #332364 #332365
    Then I see checkbox is enabled for "Internal" and "External" picklist from "Cc" field
    #332366 #332367
    And I pause execution for "10" seconds
    Then I see User should be able to checked the "Internal" & "External" picklist from "To"  field
    #332368
    Then I see the "Subject" field on the send email modal
    #332369
    Then I see the "Body Content" field on the send email modal
    #332370 #332372 #332373
    Then I see "Strikethrough" is displayed under "Body Content" and enabled
    #332374
    Then I see "Italic" is displayed under "Body Content" and enabled
    #332375 #332376
    Then I see "Bold" is displayed under "Body Content" and enabled
    #332377
    Then I see "Underline" is displayed under "Body Content" and enabled
    #332378
    Then I see "Numbered list" is displayed under "Body Content" and enabled
    #332379
    Then I see "Bulleted list" is displayed under "Body Content" and enabled
    #332380 #332381 #332382
    Then I see "Indent" is displayed under "Body Content" and enabled
    #332383
    Then I see "Center align text" is displayed under "Body Content" and enabled
    #332384
    Then I see "Left align text" is displayed under "Body Content" and enabled
    #332385
    Then I see "Right align text" is displayed under "Body Content" and enabled
    #332386 #332387
    Then I see the "Select Files" field on the send email modal
    #332388 #332389
    And I click on "Select Files" button in Email LWC Modal
    Then I see modal contain "FilesLink" is displayed

  @332390 @332391 @333018
  Scenario: Verify Send Email LWC Modal for ADMIN checkbox selected
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    #332390
    Then I see the "Send Copy (Cc) to Me" field on the send email modal
    #332391
    Then I see the "Reset" field on the send email modal
    #333018
    And I click on "Select Files" button in Email LWC Modal
    Then I see modal contain "FilesLink" is displayed
    Then I see the "checkbox" and is enabled
    And I see the "checkbox" and is enabled and I click on "1" checkbox
    And I see the "checkbox" and is enabled and I click on "2" checkbox
    And I see the "checkbox" and is enabled and I click on "3" checkbox
    And I pause execution for "3" seconds
    Then I see the "checkbox" is selected as per row no "1" checkbox
    Then I see the "checkbox" is selected as per row no "1" checkbox
    Then I see the "checkbox" is selected as per row no "1" checkbox

  @333019 @333022 @333023 @333024
  Scenario Outline: check the checkbox for the internal from dropdown then Group field is getting hidden from TO field
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see and check "To" field dropdown is displayed with "Internal" value
    Then I pause execution for "2" seconds
    #333019 #333022
    Then I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    Then I see and check "To" field dropdown is displayed with "Groups" value
    #333023
    When I see and check "Cc" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    Then I see and check "Cc" field dropdown is displayed with "Groups" value
    #333024
    Then I see and check "Cc" field dropdown is displayed with "External" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    Then I see and check "Cc" field dropdown is displayed with "Groups" value
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @333025
  Scenario:When User check the checkbox for  the internal from dropdown then Group field is getting hidden from TO field
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    Then I see and check "To" field dropdown is displayed with "Internal" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    Then I see and check "To" field dropdown is displayed with "Groups" value

  @333026
  Scenario: When User check the checkbox for  the group  from dropdown then internal &External  field is getting hidden from CC field
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see and check "To" field dropdown is displayed with "Internal" value
    Then I pause execution for "2" seconds
    Then I see and check "Cc" field dropdown is displayed with "Internal" value
    Then I see and check "Cc" field dropdown is displayed with "External" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Subject" in send email LWC
    Then I see and check "Cc" field dropdown is displayed with "Groups" value

  @333027
  Scenario: Send email- User should be able to see "true" when select file is attached to "TO- Internal "   email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Internal" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Internal" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @333029
  Scenario: Send email- User should be able to see "true" when select file is attached to "CC- Internal " email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Cc Internal" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Internal" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @333030
  Scenario: Send email- User should be able to see "true" when select file is attached to "CC- Group " email
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Cc Groups" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @333031
  Scenario: Send email- User should be able to see "true" when select file is attached to "CC- Group" reply  email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Cc Groups" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for True when file attached To Cc Groups" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @333032
  Scenario: Send email- User should be able to see "true" when select file is attached to "TO- Group " email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Groups" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Groups" in "---program:-:communicationHistoryTableId---" panel
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I softly see value "automationadminpatch@yopmail.com" for title "From Address" inside table "---program:-:communicationHistoryTableId---"

  @333033
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "TO- Internal " email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Internal" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Internal" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I see "Reply LWC" icon for "Test for False when file not attached To Internal" is displayed inside flex table

  @333035
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "TO- Internal " reply  email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Internal" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Internal" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for False when file not attached To Internal" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Internal" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I softly see value "Test for False when file not attached To Internal" for title "Email Subject" inside table "---program:-:communicationHistoryTableId---"

  @333036
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "TO- External" reply  email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To External" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for False when file not attached To External" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To External" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I softly see value "Test for False when file not attached To External" for title "Subject" inside table "---program:-:communicationHistoryTableId---"

  @332852 @332793
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "TO- Group" reply  email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Groups" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Groups" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for False when file not attached To Groups" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Groups" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332797
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "CC- Internal " reply  email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Cc Internal" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc Internal" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for False when file not attached To Cc Internal" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc Internal" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I see "View LWC" icon for "Test for False when file not attached To Cc Internal" is displayed inside flex table

  @332802
  Scenario: Send Email - when External user Hover on the  Select file  field help icon and help text is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Select Files" inside Send Email Modal
    Then I see help text "Open files table to add links" is displayed related field "Select Files" inside Send Email

  @332813
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "CC- Internal " email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Cc Internal" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc Internal" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"
    Then I see "Reply" icon for "Test for False when file not attached To Cc Internal" is displayed inside flex table

  @332818
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "CC- External" email.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Cc External" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc External" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332820
  Scenario Outline: To verify, If Admin and PM try to download attach file then It will open in the new tab
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{Framework_recordUsed:SendEmailComponentActiveProgram}"
    When I click on "View" icon for "{Framework_recordUsed:SendEmailComponentActiveProgram}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadminpatch@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "20" seconds
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal
    Then I can see download button in front of "SendEmailAttachment.pdf" file on send email reply modal is Enabled
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @332835
  Scenario:  To verify, If External  User try to download attach file then It will open in the new tab
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadminpatch@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    And I pause execution for "20" seconds
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section

  @332836
  Scenario: Send email- User should be able to see "false" when  file is not  attached to "CC- Group" email
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To Cc Groups" in send email LWC
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for False when file not attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "False" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @332837
  Scenario: To verify , When Internal  user sends an Email with an file  from TO (Internal/External) field then attached file is displayed on the View & Send  modal
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "To" field dropdown and select "Internal" and "External" value from dropdown
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    When I close modal by clicking the top right x button
    And I click on "View LWC" icon for "Select file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section

  @332838
  Scenario: To verify , When Internal   user sends an Email with an file  from TO (External) field then attached file is displayed on the View & Send  modal
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    When I close modal by clicking the top right x button
    And I click on "View LWC" icon for "Select file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section

  @332840
  Scenario: To verify , When Internal user sends an Email with an file  from TO (Group) field then attached file is displayed on the View & Send  modal
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "Groups" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Select file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    When I close modal by clicking the top right x button
    And I click on "View LWC" icon for "Select file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section

  @332841
  Scenario: To verify , When   user sends an Email with an Multiple file  from TO (Internal/External) field then attached file is displayed on the View & Send  modal
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "To" field dropdown and select "Internal" and "External" value from dropdown
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    When I close modal by clicking the top right x button
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @333068
  Scenario: To verify , When Internal   user sends an Email with an  multiple file  from TO (External) field then attached file is displayed on the View & Send  modal
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    When I close modal by clicking the top right x button
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @333070
  Scenario: To verify , When  user sends an Email with an  multiple file  from TO (External) field then attached file is displayed on the View & Send  modal
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    When I fill the details in field To "automationfo@yopmail.com" CC "automationpm@yopmail.com" Subject "Email with an Multiple file" in send email LWC
    And I enter the value "Links to additional attachment (Please find below links to additional attachments other than those attached to this email. Click the file name to view the attachment) " inside body content
    And I click on "Select Files" button in Email LWC Modal
    And I select checkbox "SendEmailAttachment.pdf" inside Send Email LWC
    And I select checkbox "actionsAtEgrid.png" inside Send Email LWC
    And I select checkbox "DuplicateFile.txt" inside Send Email LWC
    And I click on "Add To Email" inside Send Email LWC
    Then I see "File Link Added Successfully." message is displayed on send email modal
    And I click on "Send" button in Email LWC Modal
    Then I see "Email Sent Successfully." message is displayed on send email modal
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    When I close modal by clicking the top right x button
    And I click on "View LWC" icon for "Email with an Multiple file" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I can see attach the "SendEmailAttachment.pdf" file format in the attachment section
    Then I can see attach the "actionsAtEgrid.png" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section

  @333102 @333072
  Scenario: Send Email -Select File - To verify, On reply modal user are attached the multiple  file.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Cc Groups" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test for True when file attached To Cc Groups" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "Cc" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for False when file not attached To External" in send email LWC
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Cc Groups" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "umang.parekh@reisystems.in" for title "To" inside table "---program:-:communicationHistoryTableId---"

  @333088
  Scenario: Send Email On reply modal Internal user are attached to file.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on dropdown inside "To" field and Select "Groups" value
    When I fill the details in field To "umang.parekh@reisystems.in" CC "umang.parekh@reisystems.in" Subject "Test for True when file attached To Groups" in send email LWC
    And I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    And I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test for True when file attached To Groups" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "automationadminpatch@yopmail.com" for title "From Address" inside table "---program:-:communicationHistoryTableId---"


  @419375 @utahpatch
  Scenario Outline:Sanity -TC-Admin/PM-Verify that after entering email Ids in either of the ‘To’, ‘cc’  sections, entering Subject line and mail body and clicking ‘Send’ button, mail gets delivered to intended receivers.
  UTAH - Send Email - Admin - To verify that in the email, before NOTE statement, "To view this record, please click here" line should be available
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ActiveProgramForSendEmailModule}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automationadminpm@yopmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "External User (Victoria Leeds): UTAH - Patch testing" into field "Subject" on send email modal
    When I enter value "External User (Victoria Leeds): UTAH - Patch testing" into field "Body Content" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automationadminpm@yopmail.com" into field "{testData:CcField}" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Email Sent Successfully. |
    And I checkout to yopmail with mailid "Automationadminpm@yopmail.com"
    And I pause execution for "180" seconds
    Then I refresh the page
    Then I see the mail subject is as follows :
      | Sandbox: External User (Victoria Leeds): UTAH - Patch testing                                           |
      | To view this record, please click here                                                                  |
      | Note: This e-mail was sent from Framework Version1 via Salesforce. Please do not delete the text below. |
    Examples:
      | Users |
      | Admin |
      | PM    |

  @419375 @utahpatch
  Scenario: UTAH - Send Email - PM - To verify that in the email, before NOTE statement, "To view this record, please click here" line should be available
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{PatchFramework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Automationadminpm@yopmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "External User (Victoria Leeds): UTAH - Patch testing" into field "Subject" on send email modal
    When I enter value "Test Automation Email" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I checkout to yopmail with mailid "Automationadminpm@yopmail.com"
    And I pause execution for "180" seconds
    Then I refresh the page
    Then I see the mail subject is as follows :
      | Sandbox: External User (Victoria Leeds): UTAH - Patch testing                                           |
      | To view this record, please click here                                                                  |
      | Note: This e-mail was sent from Framework Version1 via Salesforce. Please do not delete the text below. |