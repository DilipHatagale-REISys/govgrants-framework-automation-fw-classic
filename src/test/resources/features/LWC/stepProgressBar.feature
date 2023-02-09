@StepProgressBarScenarios @regression-QA
Business Need: StepProgressBar Scenarios
  Test all StepProgressBar based scenarios

  @284374
  Scenario: To verify when user creates an internal program then 'Created' state displayed on step progress bar (Admin/PM)
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I pause execution for "7" seconds
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    Then I softly see status in Progress-bar is "Created" and is "green"

  @284386 @284378 @284389
  Scenario: To verify when user sends program for peer review then 'Submitted for review' state displayed, To verify when reviewer reviews the program then 'Reviewed' state state displayed,when user clicks on submit for approval then 'Submitted for Approval' state displayed on step progress bar (Admin/PM)
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I pause execution for "3" seconds
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "7" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I refresh the page
    When I enter the following values into flex table with id "---program:-:PeerReviewerEnhancedGridTableId---" by clicking "New" :
      | Reviewer Name | Responsibility   | Description | Due Date   | Allow Record Editing | Status | multiselecttest | testcurrency | testnumber |
      | Automation PM | Program Reviewer | Desc test1  | 05/25/2023 | Yes                  |        | 1               | 2            | 1          |
    And I pause execution for "5" seconds
    When I click on "Send for Review" icon for "1" inside flex table with id "---program:-:PeerReviewerEnhancedGridTableId---"
    And I refresh the page
    #284378
    Then I softly see status in Progress-bar is "Submitted for Review" and is "green"
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I pause execution for "5" seconds
    When I navigate to "Responsibilities" sub tab
    When I click on "Enter Review" icon for "1" inside flex table with id "---program:-:PeerReviewerEnhancedGridTableId---"
    Then I see "Review" modal is open with data
    And I click on Rating dropdown select "Passed" from value and "Testing Comment" inside comment
    And I click on "Save" on LWC modal
    When I re-login to "As a Grantor" app as "Admin" user on "QA" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View" icon for "{SavedValue:PEGMSID}" inside table
    And I click on "Complete Review" in the page details
   #284386
    Then I softly see status in Progress-bar is "Reviewed" and is "Blue"
    And I click on "Submit For Approval" in the page details
    #284389
    Then I softly see status in Progress-bar is "Submit For Approval" and is "Blue"

  @284390 @284391
  Scenario: To verify when approver approves the program then 'Approved' state displayed on step progress bar (Admin/PM),
  To verify when user activates the program then 'Active' state displayed on step progress bar (Admin/PM)
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I pause execution for "3" seconds
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "7" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I refresh the page
    When I enter the following values into flex table with id "---program:-:PeerReviewerEnhancedGridTableId---" by clicking "New" :
      | Reviewer Name | Responsibility   | Description | Due Date   | Allow Record Editing | Status | multiselecttest | testcurrency | testnumber |
      | Automation PM | Program Reviewer | Desc test1  | 05/25/2023 | Yes                  |        | 1               | 2            | 1          |
    And I pause execution for "5" seconds
    When I click on "Send for Review" icon for "1" inside flex table with id "---program:-:PeerReviewerEnhancedGridTableId---"
    And I refresh the page
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I pause execution for "5" seconds
    When I navigate to "Responsibilities" sub tab
    When I click on "Enter Review" icon for "1" inside flex table with id "---program:-:PeerReviewerEnhancedGridTableId---"
    Then I see "Review" modal is open with data
    And I click on Rating dropdown select "Passed" from value and "Testing Comment" inside comment
    And I click on "Save" on LWC modal
    When I re-login to "As a Grantor" app as "Admin" user on "QA" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View" icon for "{SavedValue:PEGMSID}" inside table
    And I click on "Complete Review" in the page details
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    #284390
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I re-login to "As a Grantor" app as "Admin" user on "QA" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View" icon for "{SavedValue:PEGMSID}" inside table
    And I click on "Activate" in the page details
    #284391
    Then I softly see status in Progress-bar is "Active" and is "Green"

  @284393
  Scenario: To verify when program is ended then 'Closed' state displayed on step progress bar (Admin/PM)
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I pause execution for "3" seconds
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "7" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    And I pause execution for "5" seconds
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I enter value "-2" into field "fieldStartDate__c"
    And I enter value "-1" into field "fieldEndDate__c"
    And I enter value "Test Data" into field "fieldTest_Description__c"
    And I enter value "Test Data" into field "fieldObjectives__c"
    And I enter value "Test Data" into field "fieldDeadlines__c"
    And I pause execution for "7" seconds
     # And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I refresh the page
    When I enter the following values into flex table with id "---program:-:PeerReviewerEnhancedGridTableId---" by clicking "New" :
      | Reviewer Name | Responsibility   | Description | Due Date   | Allow Record Editing | Status | multiselecttest | testcurrency | testnumber |
      | Automation PM | Program Reviewer | Desc test1  | 05/25/2023 | Yes                  |        | 1               | 2            | 1          |
    And I pause execution for "5" seconds
    When I click on "Send for Review" icon for "1" inside flex table with id "---program:-:PeerReviewerEnhancedGridTableId---"
    And I refresh the page
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I pause execution for "5" seconds
    When I navigate to "Responsibilities" sub tab
    When I click on "Enter Review" icon for "1" inside flex table with id "---program:-:PeerReviewerEnhancedGridTableId---"
    Then I see "Review" modal is open with data
    And I click on Rating dropdown select "Passed" from value and "Testing Comment" inside comment
    And I click on "Save" on LWC modal
    When I re-login to "As a Grantor" app as "Admin" user on "QA" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View" icon for "{SavedValue:PEGMSID}" inside table
    And I click on "Complete Review" in the page details
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I re-login to "As a Grantor" app as "Admin" user on "QA" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View" icon for "{SavedValue:PEGMSID}" inside table
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"

  @284395 @284406
  Scenario: To verify when program is rejected then 'Rejected' state displayed on step progress bar (Admin/PM),
  To verify the step progress bar is showing red in color for the steps which is rejected (Admin/PM)
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "10" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reject" in the approval decision table and comment "Reject for test"
    #284395 #284406
    Then I softly see status in Progress-bar is "Rejected" and is "Red"

  @284400 @284402 @284404
  Scenario: To verify the step progress bar is showing green in color for the steps which are completed but those are past steps (Admin/PM),
  To verify the step progress bar is showing blue in color for the step which is completed but its current/present step (Admin/PM)
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "10" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision table and comment "Test Program Approved"
    #284400
    Then I softly see status in Progress-bar is "Created" and is "green"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
    #284402
    Then I softly see status in Progress-bar is "Approved" and is "blue"
    #284404
    Then I softly see status in Progress-bar is "Active" and is "grey"
    Then I softly see status in Progress-bar is "Closed" and is "grey"

