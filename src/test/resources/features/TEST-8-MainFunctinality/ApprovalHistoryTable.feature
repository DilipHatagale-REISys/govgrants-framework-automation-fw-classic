@ApprovalHistoryTable-component @regression-QA @approvalhistorytable
Business Need: ApprovalHistoryTable Component Scenarios
  Test all approvalhistorytable Component based scenarios
  As a configuration manager I make different changes related to flow and will validate them in approvalhistorytable component.

  @204868 @204869 @204880 @204881 @204967 @204972 @204985 @204987 @204976 @204979
  Scenario Outline: Validate all program records are shown in Field History table if Program object is selected in dropdown
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "Automation Internal Announcement for Testing" from the object "Announcement__c" with field "AnnouncementName__c"
    When I login to "As a Grantor" app as "<User>" user
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
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    When I navigate to "History" sub tab
    Then I see "Approval History" page block displayed
    #204967 @204972
    Then I see "Approval Request Submitted" and comment is changed in "Submitted for approval." in Approval history table
    Then I see "Step : Step 1 (Pending for first approval) " and status is changed in "Pending" in Approval history table
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I navigate to "History" sub tab
    #204976 #204979
    Then I see "Step : Step 1 (Pending for first approval) " and Assigned to is changed in "Automation EXE" in Approval history table
    #204985 #204987
    Then I see only the following ordered radio buttons in the approval decision :
      | Approved | Reject | Forward | Send back |
    When I "Approve" in the approval decision
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "Approval Request Submitted" and comment is changed in "Submitted for approval." in Approval history table
    Then I see "Step : Step 1" and status is changed in "Approved" in Approval history table
    Then I see "Step : Step 1" and comment is changed in "Automation Testing" in Approval history table
    Then I see "Step : Step 2 (Pending for first approval) " and Assigned to is changed in "Automation FO" in Approval history table
    Then I see "Step : Step 2 (Pending for first approval) " and status is changed in "Pending" in Approval history table
    And I pause execution for "5" seconds
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    Then I see only the following ordered radio buttons in the approval decision :
      | Approved | Reject | Forward | Send back |
    When I "Approve" in the approval decision
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "Approval Request Submitted" and comment is changed in "Submitted for approval." in Approval history table
    Then I see "Step : Step 1" and status is changed in "Approved" in Approval history table
    Then I see "Step : Step 1" and comment is changed in "Automation Testing" in Approval history table
    Then I see "Step : Step 2" and status is changed in "Approved" in Approval history table
    Then I see "Step : Step 2" and comment is changed in "Automation Testing" in Approval history table
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"

    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @205000 @205002 @205003 @205004 @205016 @205017 @205019 @205020 @205021 @205022
  Scenario Outline: Approval History - PM User - User should be able to see the 'Assigned To' users for selected record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "History" sub tab
    Then I softly see "Date" in flex table header "---program:-:ApprovalTableId---"
    #205000 #205002
    Then I softly see "Assigned To" in flex table header "---program:-:ApprovalTableId---"
    #205003 #205004
    Then I softly see "Actual Approver" in flex table header "---program:-:ApprovalTableId---"
    #205016 #205017
    Then I softly see "Comments" in flex table header "---program:-:ApprovalTableId---"
    #205019 #205020
    Then I softly see "Status" in flex table header "---program:-:ApprovalTableId---"
    #205021 #205022
    Then I softly see "Overall Status" in flex table header "---program:-:ApprovalTableId---"

    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @204894 @204871
  Scenario Outline: Approval history-PM user-To verify, user should able to see completed state of step should be highlighted in blue color.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "Automation Internal Announcement for Testing" from the object "Announcement__c" with field "AnnouncementName__c"
    When I login to "As a Grantor" app as "<User>" user
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
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    When I navigate to "History" sub tab
    Then I see "Approval History" page block displayed
    Then I see Overall Status is "Pending" and color background color is "Gray"
    Then I see Overall Status is "Approval Request Submitted" and color background color is "Blue"

    Examples:
      | User  |
      | ADMIN |
      #| PM    |