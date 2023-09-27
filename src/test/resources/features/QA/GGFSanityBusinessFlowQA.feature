@GGFSanityBusinessFlowQA @regression-QA
Business Need: Sanity check for all Component Scenarios
  Test all component scenarios for sanity

  @109932    @verifyProgramInActiveModeByLoginAsPMUser @ActivateProgramPath
  Scenario: validate status of program is changed to active after getting approved by both the approvers
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:toggleFlexTableHomePendingTasksTableID---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:toggleFlexTableHomePendingTasksTableID---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"

  @109392  @verifyAnnouncementInCreatedMode @AnnouncementCreatedPath
  Scenario: validate announcement in created state
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for Testing" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Announcement" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v_for_Ann" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "12" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I pause execution for "5" seconds
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:toggleFlexTableHomePendingTasksTableID---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:toggleFlexTableHomePendingTasksTableID---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    #Announcement Creation
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "QA_OrgAnnCreation" values from "Program_Field_Values_QA_org.xlsx"
    And I enter value "{SavedValue:PEGMSID}" into field "fieldProgram__c"
    And I click modal button "Continue"
    When I enter "NewOrg2ndModal_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"

  @110214   @verifyAnnouncementInPublishedMode @AnnouncementPublishPath
  Scenario: validate announcement in published state
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for Testing" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Announcement" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v_for_Ann" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
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
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    #Announcement Creation
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "QA_OrgAnnCreation" values from "Program_Field_Values_QA_org.xlsx"
    And I enter value "{SavedValue:PEGMSID}" into field "fieldProgram__c"
    And I click modal button "Continue"
    When I enter "NewOrg2ndModal_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "NewOrgAnnEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "6" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Associate" after selection of "FA-ST-04" in the table "---program:-:fundingAccTableId---"
    When I close "Associate Funding Accounts" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I pause execution for "5" seconds
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    #1st Approval process for announcement
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
        #2nd Approval process for announcement
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    #Announcement Publish
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:allAnnouncementTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:allAnnouncementTableId---"
    And I click on "Publish" in the page details
    Then I softly see status in Progress-bar is "Published" and is "green"

  @83371   @verifyOrderOfActionAtHistoryTableFromProgramCreationToActivationUsingSendBack @SendBackActivity
  Scenario: validate order of action inside history table from program creation to activation by sending back the record to owser for approval
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
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
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
  # @83371 - first approval
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Pending"
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
  # @83371 - send back to owner by second approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Send to Owner" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Sent Back"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
  # @83371 - approved by first approval
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Pending"
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
  # @83371 - approved by second approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "5" at position "2" and column at position "5" contains text "Approved"
  # @83371 - activated by owner
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I click on "Activate" in the page details
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Approved"
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"
    Then I softly see column "Status" inside row "3" at position "2" and column at position "5" contains text "Started"
    Then I softly see column "Status" inside row "4" at position "2" and column at position "5" contains text "Sent Back"
    Then I softly see column "Status" inside row "5" at position "2" and column at position "5" contains text "Approved"
    Then I softly see column "Status" inside row "6" at position "2" and column at position "5" contains text "Started"

  @110257  @ProgramActivationToGrantActivation
  Scenario: validate grant created ad activated by PM user
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for Testing" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Announcement" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v_for_Ann" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    #1st approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    #2nd Approval
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    #Announcement Creation
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "QA_OrgAnnCreation" values from "Program_Field_Values_QA_org.xlsx"
    And I enter value "{SavedValue:PEGMSID}" into field "fieldProgram__c"
    And I click modal button "Continue"
    When I enter "NewOrg2ndModal_v" values from "Program_Field_Values_QA_org.xlsx"
    And I pause execution for "7" seconds
    And I click modal button "Save and Continue"
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
#    When I click on "Edit" in the page details
    And I enter "NewOrgAnnEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Associate" after selection of "FA-ST-04" in the table "---program:-:fundingAccTableId---"
    When I close "Associate Funding Accounts" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    #1st Approval process for announcement
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
        #2nd Approval process for announcement
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    #Announcement Publish
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:allAnnouncementTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:allAnnouncementTableId---"
    And I click on "Publish" in the page details
    Then I softly see status in Progress-bar is "Published" and is "green"

    #Create Application
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:toggleFlexTablenyqaeTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:toggleFlexTablenyqaeTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    When I enter value "Automation Application" into field "fieldTitle__c"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I pause execution for "3" seconds
    When I click on "Edit" in the page details
    And I enter "NewOrgAppEddition_v" values from "Program_Field_Values_QA_org.xlsx"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    And I navigate to "Budget" sub tab
    And I pause execution for "5" seconds
    And I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---program:-:appBudgetPeriodTableId---" by clicking "Edit" :
      | Category Name | Budget |
      | Construction  | 1000   |
    And I pause execution for "5" seconds
    And I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "StandardAssurancesForm_v" values from "Program_Field_Values_QA_org.xlsx"
    And I pause execution for "3" seconds
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "ProgramApplicationForm_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    When I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "flexGridAppContact" by clicking "Edit" :
      | Name | Project Role             | Is Key Contact |
      |      | Project Director/Manager | Checked        |
    When I click on "Submit Application" in the page details
    Then I softly see status in Progress-bar is "Submitted" and is "Green"
    # initiate review process
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "Initiate Review Process" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---" with wait for record
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "Pre-Screen Review" inside table "---program:-:reviewStepsTableId---"
  # initiated pre-screen review
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name  | Due in Days |
      | Pre-Screen | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
  # pre-screen review completed
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I pause execution for "2" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
# initiated sme review
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    #Then I softly see value "In Progress" for title "SME Review" inside table "---program:-:reviewStepsTableId---"
  # submit for sme review
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---" with wait for record
    And I pause execution for "5" seconds
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer       |
      | Automation EXE |
      | Automation FO  |
      | Automation PM  |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Program Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I pause execution for "5" seconds
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Fiscal Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I pause execution for "5" seconds
    And I click on "Assign" icon for "Automation EXE" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Compliance Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I check "All" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    And I click on "Next Review Step" in the page details
    Then I softly see field "Status" as "In Progress"
  #sme review completed
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
  # management review initiated
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "SME Review" inside table "---program:-:reviewStepsTableId---"
  # submitted for management review
    When I click on "View" icon for "SME Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to Next Step" in flex table with id "---program:-:appTableId---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Management Review | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
  # management review completed
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"

     # create FDM
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    When I click on "View" icon for "Management Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to FDM" in flex table with id "---program:-:appTableId---"
    When I click on "Funding Decision Memo" in the page details
    Then I softly see field "Status" as "Created"
    And I click on "Edit" in the page details
    When I enter values into fields
      | Value                       | Field                 |
      | REI                         | fieldGrantCode__c     |
      | Automation Test Description | fieldJustification__c |
    And I click on "Save" in the page details
    Then I softly see field "Status" as "Created"
    And I edit the following rows inline in flex table with id "flexGridFundingDecisionMemoApplications" by clicking "Edit" :
      | EGMS ID                | Recommended Budget | Recommend for Funding | Comments    |
      | {SavedValue:APPEGMSID} | 500                | Yes                   | Recommended |
    Then I softly see that "Recommended" has been added in flextable with Id "flexGridFundingDecisionMemoApplications"
    When I navigate to "Responsibilities" sub tab
    # submit FDM for approval
    And I click on "Submit for Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    And I save the field labeled "Announcement EGMS ID" as "ANN_EGMSID"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "green"

    # create Sub-Award
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    And I click toggle button to select "Approved Funding Decision Memos (FDM)"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:fdmTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:fdmTableId---" without waiting for record
    When I navigate to "Funding Decision Memo" sub tab
    And I click on "Create Subaward" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:recommendedAppTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Created" and is "green"
  # Sub-Award submitted for approval
    And I enter value "Automation Test Description" into field "fieldGrantAwardDescription__c"
    And I enter value "Test Description" into field "fieldAddressline2__c"
    And I enter value "CA" into field "fieldCongressionalDistrictName__c"
    And I enter value "1234" into field "fieldZipCode4Extension__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "SUBAWARD_EGMSID"
    And I navigate to "Budget" sub tab
    When I edit the following rows inline in flex table with id "---program:-:awardFundingAccountsTableId---" by clicking "Edit" :
      | Funding Account | Encumbrance |
      | FA-ST-04        | 1000        |
    And I edit the following rows inline in flex table with id "---program:-:subAwardBudgetTableId---" by clicking "Edit" :
      | Budget Category | Awarded Budget |
      | Construction    | 1000           |
    And I navigate to "Terms" sub tab
    And I click on "Edit" icon for "Payment Request" inside flex table with id "---program:-:paymentRequestSchedulesTableId---" without waiting for record
    And I enter in modal "PaymentRequestSchedule_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save"
    And I save the field labeled "Grant ID" as "GRANT_ID"
    And I click on "Submit for Approval" in the page details
    Then I softly see field "Status" as "Submitted for Approval"
 # Sub-Award approval by 1st approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
  # Sub-Award approval 2nd approval
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Approved"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

    # Sub-Award sent to sub-recepient
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    When I click on "Send to Subrecipient" in the page details
    Then I softly see field "Status" as "Sent to Subrecipient after Approval"

  # Sub-Award accpted by sub-recepient
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Grants" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside table
    And I click on "Accept after Approval" in the page details
    Then I softly see field "Status" as "Accepted after Approval"

  # Sub-Award activation by owner
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Activated" and is "green"
  # Grant activation by owner
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Active" and is "green"

  @110500  @DirectGrantCreationToSubAwardActivation
  Scenario: Verify grant creation and grant, sub-award activation
    Given I delete the record "Automation Direct Grant" from the object "Grant__c" with field "ProjectTitle__c"
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Grants" tab
    And I click on top right button "New" in flex table with id "---program:-:activeGrantsTableId---"
    And I enter "GrantCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Continue"
    And I enter "Grant_Edition_v" values from "Program_Field_Values_QA_org.xlsx"
    When I click modal button "Save and Continue"
    When I enter value "Project Grant" into field "fieldGrantType__c"
    When I enter value "Test Description" into field "fieldGrantDescription__c"
    And I click on "Save" in the page details
    Then I softly see status in Progress-bar is "Created" and is "green"

  #@110500 sub-award created
    And I navigate to "Subawards" sub tab
    And I click on "View" icon for "Created" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    And I save the field labeled "EGMS ID" as "SUBAWARD_EGMSID"
    And I click on "Edit" in the page details
    When I enter "StandAloneEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    Then I softly see status in Progress-bar is "Created" and is "green"
  # Sub-Award submitted for approval
    And I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "SubawardContactFlexToggle" by clicking "Edit" :
      | Name | Project Role             | Is Key Personnel |
      |      | Project Director/Manager | Checked          |
    And I pause execution for "10" seconds
    And I navigate to "Budget" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:awardFundingAccountsTableId---"
    When I click "Associate" after selection of "FA-ST-04" in the table "---program:-:selectAwardFundingAccountsTableId---"
    When I close "Associate Funding Accounts" modal by clicking the top right x button
    And I pause execution for "15" seconds
    When I edit the following rows inline in flex table with id "---program:-:awardFundingAccountsTableId---" by clicking "Edit" :
      | Funding Account | Encumbrance |
      | FA-ST-04        | 1000        |
    And I pause execution for "15" seconds
    And I edit the following rows inline in flex table with id "---program:-:flexGridSubAwardBudgetCategoryID---" by clicking "Edit" :
      | Budget Category | Awarded Budget |
      | Construction    | 1000           |
    And I navigate to "Terms" sub tab
    And I click on "Edit" icon for "Payment Request" inside flex table with id "---program:-:paymentRequestSchedulesTableId---" without waiting for record
    And I enter in modal "PaymentRequestSchedule_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save"
    And I save the field labeled "Grant ID" as "GRANT_ID"
    And I click on "Submit for Approval" in the page details
    Then I softly see field "Status" as "Submitted for Approval"
 # Sub-Award approval by 1st approval
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
  # Sub-Award approval 2nd approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Approved"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
    # Sub-Award sent to sub-recepient
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    When I click on "Send to Subrecipient" in the page details
    Then I softly see field "Status" as "Sent to Subrecipient after Approval"
  # Sub-Award accpted by sub-recepient
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Grants" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside table
    And I click on "Accept after Approval" in the page details
    Then I softly see field "Status" as "Accepted after Approval"

  # Sub-Award activation by owner
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Activated" and is "green"
  # Grant activation by owner
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Active" and is "green"

  @111198   @ProgramActivationToSiteVisitClosure
  Scenario: validate AmendmentRequest, Payment request and site visit closure by PM user
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Internal Program for flow" from the object "Program__c" with field "ProgramName__c"
   #program Activation
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    #1st approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    #2nd Approval
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    #Announcement Creation
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "QA_OrgAnnCreation" values from "Program_Field_Values_QA_org.xlsx"
    And I enter value "{SavedValue:PEGMSID}" into field "fieldProgram__c"
    And I click modal button "Continue"
    When I enter "NewOrg2ndModal_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "NewOrgAnnEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Associate" after selection of "FA-ST-04" in the table "---program:-:fundingAccTableId---"
    When I close "Associate Funding Accounts" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    #1st Approval process for announcement
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
        #2nd Approval process for announcement
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    #Announcement Publish
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:allAnnouncementTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:allAnnouncementTableId---"
    And I click on "Publish" in the page details
    Then I softly see status in Progress-bar is "Published" and is "green"
    #Create Application
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:toggleFlexTablenyqaeTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:toggleFlexTablenyqaeTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    When I enter value "Automation Application" into field "fieldTitle__c"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I pause execution for "3" seconds
    When I click on "Edit" in the page details
    And I enter "NewOrgAppEddition_v" values from "Program_Field_Values_QA_org.xlsx"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    And I navigate to "Budget" sub tab
    And I pause execution for "5" seconds
    And I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---program:-:appBudgetPeriodTableId---" by clicking "Edit" :
      | Category Name | Budget |
      | Construction  | 1000   |
    And I pause execution for "5" seconds
    And I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "StandardAssurancesForm_v" values from "Program_Field_Values_QA_org.xlsx"
    And I pause execution for "3" seconds
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "ProgramApplicationForm_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    When I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "flexGridAppContact" by clicking "Edit" :
      | Name | Project Role             | Is Key Contact |
      |      | Project Director/Manager | Checked        |
    When I click on "Submit Application" in the page details
    Then I softly see status in Progress-bar is "Submitted" and is "Green"
    # initiate review process
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "Initiate Review Process" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---" with wait for record
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "Pre-Screen Review" inside table "---program:-:reviewStepsTableId---"
  # initiated pre-screen review
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name  | Due in Days |
      | Pre-Screen | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
  #@110257 pre-screen review completed
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I pause execution for "2" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
# initiated sme review
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "SME Review" inside table "---program:-:reviewStepsTableId---"
  # submit for sme review
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---" with wait for record
    And I pause execution for "5" seconds
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer       |
      | Automation EXE |
      | Automation FO  |
      | Automation PM  |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Program Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I pause execution for "5" seconds
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Fiscal Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I pause execution for "5" seconds
    And I click on "Assign" icon for "Automation EXE" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Compliance Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I check "All" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    And I click on "Next Review Step" in the page details
    Then I softly see field "Status" as "In Progress"
  #sme review completed
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
  # management review initiated
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "SME Review" inside table "---program:-:reviewStepsTableId---"
  # submitted for management review
    When I click on "View" icon for "SME Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to Next Step" in flex table with id "---program:-:appTableId---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Management Review | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
  # management review completed
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"

     # create FDM
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    When I click on "View" icon for "Management Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to FDM" in flex table with id "---program:-:appTableId---"
    When I click on "Funding Decision Memo" in the page details
    Then I softly see field "Status" as "Created"
    And I click on "Edit" in the page details
    When I enter values into fields
      | Value                       | Field                 |
      | REI                         | fieldGrantCode__c     |
      | Automation Test Description | fieldJustification__c |
    And I click on "Save" in the page details
    Then I softly see field "Status" as "Created"
    And I edit the following rows inline in flex table with id "flexGridFundingDecisionMemoApplications" by clicking "Edit" :
      | EGMS ID                | Recommended Budget | Recommend for Funding | Comments    |
      | {SavedValue:APPEGMSID} | 500                | Yes                   | Recommended |
    Then I softly see that "Recommended" has been added in flextable with Id "flexGridFundingDecisionMemoApplications"
    When I navigate to "Responsibilities" sub tab
    # submit FDM for approval
    And I click on "Submit for Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    And I save the field labeled "Announcement EGMS ID" as "ANN_EGMSID"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "green"

    # create Sub-Award
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    And I click toggle button to select "Approved Funding Decision Memos (FDM)"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:fdmTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:fdmTableId---" without waiting for record
    When I navigate to "Funding Decision Memo" sub tab
    And I click on "Create Subaward" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:recommendedAppTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Created" and is "green"
  # Sub-Award submitted for approval
    And I enter value "Automation Test Description" into field "fieldGrantAwardDescription__c"
    And I enter value "Test Description" into field "fieldAddressline2__c"
    And I enter value "CA" into field "fieldCongressionalDistrictName__c"
    And I enter value "1234" into field "fieldZipCode4Extension__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "SUBAWARD_EGMSID"
    And I navigate to "Budget" sub tab
    When I edit the following rows inline in flex table with id "---program:-:awardFundingAccountsTableId---" by clicking "Edit" :
      | Funding Account | Encumbrance |
      | FA-ST-04        | 1000        |
    And I edit the following rows inline in flex table with id "---program:-:subAwardBudgetTableId---" by clicking "Edit" :
      | Budget Category | Awarded Budget |
      | Construction    | 1000           |
    And I navigate to "Terms" sub tab
    And I click on "Edit" icon for "Payment Request" inside flex table with id "---program:-:paymentRequestSchedulesTableId---" without waiting for record
    And I enter in modal "PaymentRequestSchedule_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save"
    And I save the field labeled "Grant ID" as "GRANT_ID"
    And I click on "Submit for Approval" in the page details
    Then I softly see field "Status" as "Submitted for Approval"
 # Sub-Award approval by 1st approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
  # Sub-Award approval 2nd approval
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Approved"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

    # Sub-Award sent to sub-recepient
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    When I click on "Send to Subrecipient" in the page details
    Then I softly see field "Status" as "Sent to Subrecipient after Approval"

  # Sub-Award accpted by sub-recepient
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Grants" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside table
    And I click on "Accept after Approval" in the page details
    Then I softly see field "Status" as "Accepted after Approval"

  # Sub-Award activation by owner
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Activated" and is "green"

  # Grant activation by owner
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Active" and is "green"

    #createsitevisit
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "GT-REI-00001" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "GT-REI-00001" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "AD-REI-01" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    When I navigate to "Management" sub tab
    When I click on top right button "Initiate Site Visit" in flex table with id "GrantorSiteVisitsAward"
    And I enter "SiteVisitCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    When I click modal button "Save and Continue"
    And I enter "SiteVisitEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    When I click on "Save" in the page details
    Then I softly see status in Progress-bar is "Created" and is "green"
    And I save the field labeled "EGMS ID" as "SV_EGMSID"

  #@111198 site visit in progress
    Given I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:participantsTableId---"
    When I click "Associate" after selection of "Automation FO" in the table "---program:-:siteVisitContactsTableId---"
    And I refresh the page
    #And I click on "Save" in the page details
    And I click on "Notify" in the page details
    Then I softly see field "Status" as "Notified"
    Then I softly see status in Progress-bar is "Notified" and is "green"
    When I click on "Conduct" in the page details
    Then I softly see status in Progress-bar is "In Progress" and is "green"
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:SV_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SV_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"

  #@111198 submit site visit for approval
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "SV-0739" in "---program:-:manageSiteVisitTableId---" panel
    And I click on "View" icon for "SV-0739" inside flex table with id "---program:-:manageSiteVisitTableId---"
    And I navigate to "Reports and Outcomes" sub tab
    When I click on "Edit" icon for "General Review Form" inside flex table with id "---program:-:reportsTableId---"
    And I enter "GeneralReviewForm_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I click on "Back" in the page details
    When I enter the following values into flex table with id "---program:-:correctiveTableId---" by clicking "New" :
      | Title                  | Description            | Type        |
      | Automation Finding     | Automation Description | Finding     |
      | Automation Concern     | Automation Description | Concern     |
      | Automation Observation | Automation Description | Observation |
    When I click on "Submit for Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

  #@111198 site visit approved by 1st approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "SV-0739" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "SV-0739" inside flex table with id "---program:-:pendingTaskTableId---"
    And I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

  #@111198 site visit approved by 2nd approval
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "SV-0739" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "SV-0739" inside flex table with id "---program:-:pendingTaskTableId---"
    And I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "green"

  #@111198 site visit sent to sub-recipient
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "SV-0739" in "---program:-:manageSiteVisitTableId---" panel
    And I click on "View" icon for "SV-0739" inside flex table with id "---program:-:manageSiteVisitTableId---"
    Given I click on "Send to Subrecipient" in the page details
    Then I softly see status in Progress-bar is "Sent to Subrecipient" and is "green"

  #@111198 site visit submitted to grantor
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "SV-0739" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "SV-0739" inside flex table with id "---program:-:pendingTaskTableId---"
    When I navigate to "Reports and Outcomes" sub tab
    And I expand nested table containing column value "Automation Observation"
    When I enter the following values into flex table with id "---program:-:correctiveTableId---" by clicking "New" :
      | Title                               | Description            | Status      | Due Date | Assigned To    |
      | Automation Observation Subrecipient | Automation Description | In-Progress | 30       | Automation SPI |
    When I collapse nested table containing column value "Automation Observation"
    And I expand nested table containing column value "Automation Concern"
    When I enter the following values into flex table with id "---program:-:correctiveTableId---" by clicking "New" :
      | Title                           | Description            | Status      | Due Date | Assigned To    |
      | Automation Concern Subrecipient | Automation Description | In-Progress | 30       | Automation SPI |
    When I collapse nested table containing column value "Automation Concern"
    And I expand nested table containing column value "Automation Finding"
    When I enter the following values into flex table with id "---program:-:correctiveTableId---" by clicking "New" :
      | Title                           | Description            | Status      | Due Date | Assigned To    |
      | Automation Finding Subrecipient | Automation Description | In-Progress | 30       | Automation SPI |
    And I collapse nested table containing column value "Automation Finding"
    When I click on "Submit to Grantor" in the page details
    Then I softly see status in Progress-bar is "Submitted to Grantor" and is "green"

  # site visit closure
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "SV-0739" in "---program:-:manageSiteVisitTableId---" panel
    And I click on "View" icon for "SV-0739" inside flex table with id "---program:-:manageSiteVisitTableId---"
    And I click on "Accept And Close" in the page details
    Then I softly see status in Progress-bar is "Closed" and is "green"