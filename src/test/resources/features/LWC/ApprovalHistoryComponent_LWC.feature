@ApprovalHistory-Component @regression-LWC @ApprovalHistoryLWC
Business Need: ApprovalHistoryLWC Component Scenarios
  Test all ApprovalHistoryLWC component based scenarios
  As a configuration manager i make different configurational changes in SendEmailLWC component and will validate them.


  ##### LWC-Approval History component #####
  @219663 @219664 @219665 @219671 @219668 @219670
    @219767 @219769 @219771 @219779 @219791 @219796 @219668 @LWC-ApprovalHistorySuit @dilip
  Scenario Outline:To verify that on clicking on Expand arrow button, Approval history table get expanded and all available records get displayed,
  To verify that on clicking on Shrink arrow button, Approval history table get shrinks,
  To verify that all column names displayed correctly as expected,
  To verify that on page load/reload, by default approval history table should be expanded & not shrinked,
  To verify that name of each column displayed correctly when user hover mouse over column names,
  To verify that on clicking on Shrink arrow button, Approval history table get shrinks.
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    #219671 #219796
    Then I see "up" arrow is displayed on "Approval History" table expanded & not shrinked
    And I click on "up" arrow in "Approval History" table
    #219664 #219769
    Then I do not see "Approval History" table
    And I pause execution for "5" seconds
    And I click on "down" arrow in "Approval History" table
    #219663 #219767
    Then Approval history table get expanded and all available "stepName" or records get displayed.
    #219665 #219771
    Then I see columnName "Assigned To" is Displayed on "Approval History" table
    Then I see columnName "Date" is Displayed on "Approval History" table
    Then I see columnName "Actual Approver" is Displayed on "Approval History" table
    Then I see columnName "Comments" is Displayed on "Approval History" table
    Then I see columnName "Status" is Displayed on "Approval History" table
    Then I see columnName "Overall Status" is Displayed on "Approval History" table
      #219668 #219779 #219668
    When I hover mouse over "Date" column names.
    Then I see columnName "Date" is Displayed on "Approval History" table
    And I pause execution for "5" seconds
    When I hover mouse over "Actual Approver" column names.
    Then I see columnName "Actual Approver" is Displayed on "Approval History" table
    When I hover mouse over "Comments" column names.
    Then I see columnName "Comments" is Displayed on "Approval History" table
    When I hover mouse over "Status" column names.
    Then I see columnName "Status" is Displayed on "Approval History" table
    When I hover mouse over "Overall Status" column names.
    Then I see columnName "Overall Status" is Displayed on "Approval History" table
        #219670 #219791
    Then style and font size of each value in each record is similar and as expected.
    Then I see the font size of "stepName" is "13px" Approval History table
    Then I see the font size of "Overall Status" is "13px" Approval History table
    Then I see the font size of "Date" is "13px" Approval History table
    Then I see the font size of "Assigned To" is "13px" Approval History table
    Then I see the font size of "Approver" is "13px" Approval History table
    Then I see the font size of "Comments" is "13px" Approval History table
    Then I see the font size of "Status" is "13px" Approval History table
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @219816 @219817 @LWC-ApprovalHistorySuit @dilip
  Scenario Outline: To verify that when there is no any record to be displayed in Approval history table, then empty table with column header and "No records found" message displayed there
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "7" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    Then I see "No Records Found" massage under Approval History
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @219819 @220068 @219666 @219669 @219822 @220098 @LWC-ApprovalHistorySuit @dilip
  Scenario:Validate Approval Request Submitted,Submitted for approval.,Started values in column,To verify that Date and time format displayed correctly for each entry,To verify that respective assigned approver name displayed in "Assigned To" and "Actual Approver" columns when status changed to "Submitted for Approval".
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "10" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I enter text inside Description box "Description for second description box"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name             | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation Admin | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "3" seconds
    And I click on "Submit For Approval" in the page details
    When I "Approve" in the approval decision table and comment "Approve"
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    #219819
    Then I see "Approval Request Submitted" and comments is changed "Submitted for approval." in Approval history table
    #220068
    Then I see step "Approval Request Submitted" and Comments column "Submitted for approval." and status "Started" displayed for Owner
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I pause execution for "10" seconds
    When I "Send back" in the approval decision table and comment "Send back for test"
    When I navigate to "History" sub tab
    When I re-login to "As a Grantor" app as "Admin" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I "Reject" in the approval decision table and comment "Reject for test"
    When I navigate to "History" sub tab
    #219666
    Then I see Overall Status is "Approved" and color background color is "Mint Green"
    Then I see Overall Status is "Rejected" and color background color is "light red"
    Then I see Overall Status is "Sent Back" and color background color is "light yellow"
    #219669
    Then I see "Date" and time format "MM/dd/yyyy HH:mm" displayed
    #219822
    Then status changed "Submitted for approval." and "Assigned To" approver name is displayed "Automation Admin"
    Then status changed "Submitted for approval." and "Actual Approver" approver name is displayed "Automation Admin"
    #220098
    Then I see Date column "Approval Request Submitted" text displayed

  @219820 @220069 @219773 @219787 @219823 @220099 @LWC-ApprovalHistorySuit @dilip
  Scenario:Validate Approval Request Submitted,Submitted for approval.,Started values in column,To verify that Date and time format displayed correctly for each entry,To verify that respective assigned approver name displayed in "Assigned To" and "Actual Approver" columns when status changed to "Submitted for Approval".
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "10" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I enter text inside Description box "Description for second description box"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name             | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation Admin | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "3" seconds
    And I click on "Submit For Approval" in the page details
    When I "Approve" in the approval decision table and comment "Approve"
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    #219820
    Then I see "Approval Request Submitted" and comments is changed "Submitted for approval." in Approval history table
    #220069
    Then I see step "Approval Request Submitted" and Comments column "Submitted for approval." and status "Started" displayed for Owner
    When I re-login to "As a Grantor" app as "Admin" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I pause execution for "10" seconds
    When I "Send back" in the approval decision table and comment "Send back for test"
    When I navigate to "History" sub tab
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I "Reject" in the approval decision table and comment "Reject for test"
    When I navigate to "History" sub tab
    #219773
    Then I see Overall Status is "Approved" and color background color is "Mint Green"
    Then I see Overall Status is "Rejected" and color background color is "light red"
    Then I see Overall Status is "Sent Back" and color background color is "light yellow"
    #219787
    Then I see "Date" and time format "MM/dd/yyyy HH:mm" displayed
    #219823
    Then status changed "Submitted for approval." and "Assigned To" approver name is displayed "Automation PM"
    Then status changed "Submitted for approval." and "Actual Approver" approver name is displayed "Automation PM"
    #220099
    Then I see Date column "Approval Request Submitted" text displayed

  @219818 @LWC-ApprovalHistorySuit @dilip
  Scenario: To verify that when there is no any record to be displayed in Approval history table, then empty table with column header and "No records found" message displayed there
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    Then I see "No Records Found" massage under Approval History

  @220074 @220075 @LWC-ApprovalHistorySuit @dilip
  Scenario Outline: To verify that when record is submitted for approval but not approved, then Overall status value showed "Pending" in respective column. Also in Date column "Step 1 (Pending for first Approval) " text displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    #add pending status program below
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
#    Then I see Date column "Step 1 (Pending for approval) " text displayed and overall status is "Pending"
    Then I see Date column "Step 1" text displayed and overall status is "Approved"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @220080 @220081 @220083 @220084 @LWC-ApprovalHistorySuit @dilip
  Scenario Outline: To verify that once the record is approved, then "Approved" status displayed in Status and Comments columns for the respective approver row.
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    Then I see comment column "Automation Testing" and status is "Approved"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @220114 @220115 @LWC-ApprovalHistorySuit @dilip
  Scenario Outline: To verify that when approver forwarded record to another user for approval, then status changed to "Re-assigned"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "10" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I enter text inside Description box "Description for second description box"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "5" seconds
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Forward" in the approval decision table and Select name from dropdown "Automation PM" and comment "Automation Testing"
    And I pause execution for "10" seconds
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I navigate to "History" sub tab
    Then I see comment column "Automation Testing" and status is "Reassigned"
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @219672 @219794 @LWC-ApprovalHistorySuit @dilip
  Scenario Outline:To verify that alignment of each column data is to the left side
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    #Add steps
    Then I see alignment of each column data is to the "left" side
    Examples:
      | User  |
      | ADMIN |
      | PM    |


  @220071 @220072 @220101 @220102 @220123 @220124 @LWC-ApprovalHistorySuit @dilip
  Scenario Outline: validate status of program is changed to approved after getting approved by both the approvers and To verify that when record is submitted for approval and approver send it back to owner, then in Date column "Approval Request Recalled" text displayed
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    #220072 #220071
    Then I see Date column "Step 1 (Pending for approval) " text displayed and overall status is "Pending"
    #220102 #220101
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
   #220123 #220124
    When I "Send back" in the approval decision table and comment "Send back"
    When I navigate to "History" sub tab
    Then I see Date column "Approval Request Recalled" text displayed
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @220127 @220128 @LWC-ApprovalHistorySuit @dilip
  Scenario Outline:To verify that when approver forward record to another user, then in "Assigned To" column, respective Approver name and in "Actual Approver" column respective user name to whom record is forwarded is displayed
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "10" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I enter text inside Description box "Description for second description box"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Forward" in the approval decision table and Select name from dropdown "Automation PM" and comment "forward"
    When I navigate to "History" sub tab
    Then status changed "Pending" and "Assigned To" approver name is displayed "Automation FO"
    Then status changed "Pending" and "Actual Approver" approver name is displayed "Automation PM"
    Examples:
      | User  |
#      | PM    |
      | ADMIN |

  @220497 @220498 @220500 @220501 @LWC-ApprovalHistorySuit @dilip
  Scenario Outline:To verify that on selecting "Reject" status by approver, overall status changed to "Rejected", Assigned To, Actual Approver status will validate
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reject" in the approval decision table and comment "Reject"
    When I navigate to "History" sub tab
    #220500 #220501 #220497 #220498
    Then status changed "Reject" and "Assigned To" approver name is displayed "Automation FO"
    Then status changed "Reject" and "Actual Approver" approver name is displayed "Automation FO"
    Then I see comment column "Reject" and status is "Rejected"
    Then I see Date column "Step 1" text displayed and overall status is "Rejected"
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @220545 @LWC-ApprovalHistorySuit @dilip
  Scenario: Admin - To verify that for the 4 step approval process, all details per rows get displayed correctly("Approved" status) in Approval history table for all 4 steps(different approvers)
   # Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name             | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation Admin | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 3  | Step 3       | Step 3 | Step 3 | Step 3                  | Step 3   |
    And I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 4  | Step 4       | Step 4 | Step 4 | Step 4                  | Step 4   |
    And I pause execution for "3" seconds
    And I click on "Submit For Approval" in the page details
    When I "Approve" in the approval decision table and comment "Approve"
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision table and comment "Approve"
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision table and comment "Approve"
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision table and comment "Approve"
    When I navigate to "History" sub tab
    Then I see Date column "Step 1" text displayed and overall status is "Approved"
    Then I see Date column "Step 2" text displayed and overall status is "Approved"
    Then I see Date column "Step 3" text displayed and overall status is "Approved"
    Then I see Date column "Step 4" text displayed and overall status is "Approved"

  @220546 @LWC-ApprovalHistorySuit @dilip
  Scenario:PM - To verify that for the 4 step approval process, all details per rows get displayed correctly("Approved" status) in Approval history table for all 4 steps(different approvers)
   # Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
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
    And I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name             | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation Admin | Step 3  | Step 3       | Step 3 | Step 3 | Step 3                  | Step 3   |
    And I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 4  | Step 4       | Step 4 | Step 4 | Step 4                  | Step 4   |
    And I pause execution for "3" seconds
    And I click on "Submit For Approval" in the page details
    When I "Approve" in the approval decision table and comment "Approve"
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision table and comment "Approve"
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    When I re-login to "As a Grantor" app as "Admin" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision table and comment "Approve"
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision table and comment "Approve"
    When I navigate to "History" sub tab
    Then I see Date column "Step 1" text displayed and overall status is "Approved"
    Then I see Date column "Step 2" text displayed and overall status is "Approved"
    Then I see Date column "Step 3" text displayed and overall status is "Approved"
    Then I see Date column "Step 4" text displayed and overall status is "Approved"

  @221086 @221087 @220120 @220121 @220117 @220118 @LWC-ApprovalHistorySuit @dilip
  Scenario Outline: To verify that records details of all 4 approval actions displayed correctly for financial officer(FO) user and executive user (EXE),To verify that on reassigning record, overall status changed to "Pending"(PM) and (Admin)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "3" seconds
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I pause execution for "10" seconds
    Then I see Approval Decision table contain "Approve" approval action
    Then I see Approval Decision table contain "Reject" approval action
    Then I see Approval Decision table contain "Forward" approval action
    Then I see Approval Decision table contain "Send back" approval action
    When I "Approve" in the approval decision table and comment "Approve"
    And I pause execution for "5" seconds
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I pause execution for "10" seconds
    Then I see Approval Decision table contain "Approve" approval action
    Then I see Approval Decision table contain "Reject" approval action
    Then I see Approval Decision table contain "Forward" approval action
    Then I see Approval Decision table contain "Send back" approval action
    #When I "Approve" in the approval decision table and comment "Approve"
    When I "Forward" in the approval decision table and Select name from dropdown "Automation PM" and comment "forward"
    #220120 #220121
    When I navigate to "History" sub tab
    Then I see Date column contains "Step : Step 2 (Pending for approval)" text displayed in status column is "Reassigned"
    Then I see Date column "Step : Step 2 (Pending for approval)" text displayed and overall status is "Pending"
    #220117
    Then I see Date column contains "Step : Step 2 (Pending for approval)" text displayed in status column is "Pending"
    Then I see Date column contains "Step : Step 2 (Pending for approval)" text displayed in status column is "Reassigned"
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @220091 @220092 @221088 @221089 @220111 @220112 @221083 @221084 @LWC-ApprovalHistorySuit @dilip
  Scenario Outline: Admin - To verify that when approver send back the record to owner, then Status changed to "Sent Back" for respective approver row, also in comments column, "Send back" text displayed,
  PM - To verify that when approver send back the record to owner, then Status changed to "Sent Back" for respective approver row, also in comments column, "Send back" text displayed,
  Admin - To verify that while selecting approval decision actions, whatever comments added by approver displayed correctly under "Comments" column in Approval history table,
  PM - To verify that while selecting approval decision actions, whatever comments added by approver displayed correctly under "Comments" column in Approval history table
  #  Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    Then I see Date column "Step 1 (Pending for approval) " text displayed and overall status is "Pending"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Send back" in the approval decision table and comment "Send back"
    When I navigate to "History" sub tab
    #220111 #220112 #221083 #221084
    Then I see today's "Date" is displayed in date column and row number "1"
    Then I see today's "Date" is displayed in date column and row number "2"
    Then I see Date column "Approval Request Recalled" text displayed
    #220091 #220092 #221088 #221089
    And I pause execution for "15" seconds
    Then I see Date column "Approval Request Recalled" text displayed and "Comments" displayed "Send back" and status is "Sent Back"
    Examples:
      | User  |
      | PM    |
      | ADMIN |