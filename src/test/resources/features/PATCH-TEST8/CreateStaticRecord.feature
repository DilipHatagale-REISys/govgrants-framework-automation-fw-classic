@createstaticrecordforregression
Business Need: security review Scenarios
  Test all security review related scenarios

@createProgram
Scenario:
Given I delete the record "Program for hide expression builder test" from the object "Program__c" with field "ProgramName__c"
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
And I refresh the page
    #109928
Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
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
    #109931
Then I softly see status in Progress-bar is "Approved" and is "Green"
When I navigate to "History" sub tab
When I re-login to "As a Grantor" app as "PM" user on "QA" portal
And I navigate to "Home" tab
And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
And I click on "Activate" in the page details
And I pause execution for "3" seconds
Then I softly see status in Progress-bar is "Active" and is "Green"