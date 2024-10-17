@GGFSanityBusinessFlowQA @regression-QA @SanityPatch
Business Need: Sanity check for all Component Scenarios
  Test all component scenarios for sanity

  @37328 @382833 @382832 @isCreatedFieldAtStepProgressBar-gPlanning
  Scenario Outline: validate hover text of submit for approval status from progress bar for internal user and validating it on program detail page-programs
  Sanity-TC-Admin-To verify whether we can see the owner name and date if we hoover on the display value
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | IsCreated | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      #| Program                 | Status    | Created       | Test program for automation -  SA mode only - Not approved |                           |                            |
      | Step Progressbar Detail | IsCreated | false         | Program Progress Bar | Name                      | Submitted for Approval     |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "15" seconds
    And I click on "Submit For Approval" in the page details
    When I hovering mouse on Status inside step progress bar "Submitted for Approval"
    And I pause execution for "5" seconds
    Then I see "By : <User>" shown as help text
    #Then I see "Date : 11/27/2018 1:15 AM" shown as help text

    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @382790  @382791 @Sanity
  Scenario Outline:Snapshot History Table -Admin- Config-To verify Date Taken should captured when user taken snapshot
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreationFlow_v" values from "Field_Values_For_Flow.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramFlowEdition_v" values from "Field_Values_For_Flow.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Created By" as "OWNER"
    And I save the field labeled "Project Period Start Date" as "DateTaken"
    When I click on "Menu" in the page details
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "10" seconds
    Then I see Total Records count "Total Records : " in table name "Snapshot History"
    Then I see "Snapshot History" page block displayed
    Then I see generated snapshot "{SavedValue:DateTaken}" is displayed with "Date Taken"
    Then I see generated snapshot "{SavedValue:OWNER}" is displayed with "Taken By"
    Then I see generated snapshot "SnapShot" is displayed with "File Name"

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @161870 @382353 @382354 @382356 @382357 @382359 @382360
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

  @382367
  Scenario: Sanity TC-SPI-Verify that the user can attach file in the  Attachement section.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in Send Email Modal
    Then I see "SendEmailAttachment.pdf" file is displayed in modal

  @382373
  Scenario: Sanity -TC-SPI-Verify that you can Insert links to file(s) from the record by clicking on "Select files" button
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Select Files" button send email modal
    Then I softly see "FilesLink" page block displayed