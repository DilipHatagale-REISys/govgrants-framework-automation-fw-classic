@GGFSanityBusinessFlowQA @regression-QA
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
    Then I see Total Records count "Total Records : 1" in table name "Snapshot History"
    Then I see "Snapshot History" page block displayed
    Then I see generated snapshot "{SavedValue:DateTaken}" is displayed with "Date Taken"
    Then I see generated snapshot "{SavedValue:OWNER}" is displayed with "Taken By"
    Then I see generated snapshot "SnapShot" is displayed with "File Name"

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @382796
  Scenario: Snapshot History Table - SPI- UI - Verify Take Snapshot button should present in Menu option
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created By" as "OWNER"
    When I click on "Menu" in the page details
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    And I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "10" seconds
    Then I see "Snapshot History" page block displayed

  @382807 @382809 @382837 @382842 @Sanity
  Scenario Outline: Validate Auto Snapshot is getting captured on record approval after making change for field Capture Snapshot on Approval at config
    Given I have "default" configuration as below:
      | configurationCategory             | fieldName                       | fieldOrignalValue | filterId         |
      | Page Layout Action                | History Snapshot-Action Enable? | true              | ApiGeneratedId:0 |
      | Auto Snapshot On Approval         | Capture Snapshot On Approval?   | false             | ApiGeneratedId:1 |
      | Page Tabs Config                  | Is Active                       | false             | ApiGeneratedId:2 |
      | Auto Snapshot On Approval:General | Approval Snapshot File Name     |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                       | fieldNewValue                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action                  | History Snapshot-Action Enable? | false                            | Grantor State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General   | Capture Snapshot On Approval?   | true                             | Program__c            |                           |                            |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantor State Program | Name                      | TAB-1724                   |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
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
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "10" seconds
    Then I see Total Records count "Total Records : 1" in table name "Snapshot History"
    Then I see "Snapshot History" page block displayed
    Then I see generated snapshot "{SavedValue:DateTaken}" is displayed with "Date Taken"
    Then I see generated snapshot "{SavedValue:OWNER}" is displayed with "Taken By"
    Then I see generated snapshot "SnapShot" is displayed with "File Name"

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @382796
  Scenario: Snapshot History Table - SPI- UI - Verify Take Snapshot button should present in Menu option
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created By" as "OWNER"
    When I click on "Menu" in the page details
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    And I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "10" seconds
    Then I see "Snapshot History" page block displayed
