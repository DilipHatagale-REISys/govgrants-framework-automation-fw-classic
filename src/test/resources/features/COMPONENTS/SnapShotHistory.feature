@SnapshotHistory
Business Need: Snapshot Config Component Scenarios
  Test all sanpshot config component based scenarios
  As a configuration manager i make different configurational changes in snapshot component and will validate them.

  @201391 @201405 @217474 @217475 @201407 @201393 @70015
  Scenario Outline: Snapshot History-Admin-Config-To verify snapshot history when program is submitted for approval state
  |Snapshot History-PM-UI-To verify snapshot history not generated when program is submitted for approval state|
  |Validate Auto Snapshot is getting captured after record submission as submit for approval|
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter in modal "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    And I get the "EGMS ID"
    And I save the field labeled "EGMS ID" as "ProgramEGMSID"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    Then I see status in Progress-bar is "Created" and is "green"
    When I navigate to "Overview" sub tab
    When I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                     | Program |
      | {SavedValue:FO Username} | Step 1  |
    When I navigate to "Setup" sub tab
    When I click on top right button "Associate" in flex table with id "---program:-:focusAreaTableId---"
    When I click "Associate" after selection of "Automation Permanent Focus Area" by showing entries "All" in flex table with id "---program:-:associateFocusAreaTableId---"
    When I click on top right button "Associate" in flex table with id "---program:-:objectivesTableId---"
    When I click "Associate" after selection of "Automation Permanent Objective" by showing entries "All" in flex table with id "---program:-:associateObjectivesTableId---"
    When I click on top right button "Associate" in flex table with id "---program:-:kpiTableId---"
    When I click "Associate" after selection of "Automation Permanent KPI" by showing entries "All" in flex table with id "---program:-:associateKPITableId---"
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see snapshot with name containing "Internal Program - submit for approval.pdf" as name

    Examples:
      | User |
   #   | ADMIN |
      | PM   |

  @201408 @201392 @201395 @201406 @70016  @201421 @201419
  Scenario Outline: Snapshot History-PM-UI-To verify snapshot history not generated when program is activated state
  |Snapshot History-Admin-Snapshot History-Admin-Config-To verify snapshot history when program is activated state|
  |Snapshot History-PM-UI-To verify snapshot history when program is activated state|
  |Snapshot History-Admin-To verify snapshot history not generated when program is activated state|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:0 |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | History Snapshot-Action Enable? | true          | Grantor State Program | Name                      | Submit For Approval        |
      | Page Layout Action    | History Snapshot-Action Enable? | false         | Grantor State Program | Name                      | Activate                   |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter in modal "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    And I get the "EGMS ID"
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    Then I see status in Progress-bar is "Created" and is "green"
    When I navigate to "Overview" sub tab
    When I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                      | Program |
      | {SavedValue:EXE Username} | Step 1  |
    When I navigate to "Setup" sub tab
    When I click on top right button "Associate" in flex table with id "---program:-:focusAreaTableId---"
    When I click "Associate" after selection of "Automation Permanent Focus Area" by showing entries "All" in flex table with id "---program:-:associateFocusAreaTableId---"
    When I click on top right button "Associate" in flex table with id "---program:-:objectivesTableId---"
    When I click "Associate" after selection of "Automation Permanent Objective" by showing entries "All" in flex table with id "---program:-:associateObjectivesTableId---"
    When I click on top right button "Associate" in flex table with id "---program:-:kpiTableId---"
    When I click "Associate" after selection of "Automation Permanent KPI" by showing entries "All" in flex table with id "---program:-:associateKPITableId---"
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    And I refresh the page
    When I navigate to "History" sub tab
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I click on "Activate" in the page details
    And I pause execution for "3" seconds
    And I softly see status in Progress-bar is "Active" and is "Green"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I softly do not see snapshot with name containing "Snapshot Post Activation.pdf" as name
    Then I see snapshot with name containing "Internal Program - submit for approval.pdf" as name

    Examples:
      | User |
      | PM   |
#      | ADMIN|

  @207357 @207359 @207364 @207365
  Scenario Outline: Snapshot History--Admin--UI--To verify snapshot should open on clicking snapshot link
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    And I click toggle button to select "Draft Competitive Announcements"
    And I click on top right button "New" in flex table with id "---announcement:-:competitiveAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Announcement_Field_Values.xlsx"
    And I click modal button "Continue"
    When I enter "Creation Second Modal" values from "Announcement_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I get the "EGMS ID"
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    #207364 #207365
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    #207357 #207359
    Then I see new tab is opened

    Examples:
      | User |
    #  | ADMIN |
      | PM   |

  @70049  @382807 @382809 @382837 @382842
  Scenario: Validate Auto Snapshot is getting captured on record approval after making change for field Capture Snapshot on Approval at config
    Given I have "default" configuration as below:
      | configurationCategory             | fieldName                       | fieldOrignalValue | filterId         |
      | Page Layout Action                | History Snapshot-Action Enable? | true              | ApiGeneratedId:0 |
      | Auto Snapshot On Approval         | Capture Snapshot On Approval?   | false             | ApiGeneratedId:1 |
      | Auto Snapshot On Approval:General | Approval Snapshot File Name     |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory             | fieldName                       | fieldNewValue                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action                | History Snapshot-Action Enable? | false                            | Grantor State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General | Capture Snapshot On Approval?   | true                             | Program__c            |                           |                            |
      | Auto Snapshot On Approval:General | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    Given I delete the record "Automation Runtime Internal Program" from the object "Program__c" with field "ProgramName__c"
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
      | Name           | Program |
      | Automation EXE | Step 1  |
    And I pause execution for "6" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see snapshot with name containing "TestAutomationSnapshotOnApproval.pdf" as name

  @70028
  Scenario: Validate Auto Snapshot is getting captured on record rejection after making change for field Capture Snapshot on Approval at config
    Given I have "default" configuration as below:
      | configurationCategory             | fieldName                       | fieldOrignalValue | filterId         |
      | Page Layout Action                | History Snapshot-Action Enable? | true              | ApiGeneratedId:0 |
      | Auto Snapshot On Approval         | Capture Snapshot On Approval?   | false             | ApiGeneratedId:1 |
      | Auto Snapshot On Approval:General | Approval Snapshot File Name     |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory             | fieldName                       | fieldNewValue                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action                | History Snapshot-Action Enable? | false                            | Grantor State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General | Capture Snapshot On Approval?   | true                             | Program__c            |                           |                            |
      | Auto Snapshot On Approval:General | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    Given I delete the record "Automation Runtime Internal Program" from the object "Program__c" with field "ProgramName__c"
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
      | Name           | Program |
      | Automation EXE | Step 1  |
    And I pause execution for "5" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reject" in the approval decision
    When I navigate to "History" sub tab
    And I refresh the page
    Then I see snapshot with name containing "TestAutomationSnapshotOnApproval.pdf" as name

  @70029
  Scenario: Validate Auto Snapshot is getting captured on record forward after making change for field Capture Snapshot on Approval at config
    Given I have "default" configuration as below:
      | configurationCategory             | fieldName                       | fieldOrignalValue | filterId         |
      | Page Layout Action                | History Snapshot-Action Enable? | true              | ApiGeneratedId:0 |
      | Auto Snapshot On Approval         | Capture Snapshot On Approval?   | false             | ApiGeneratedId:1 |
      | Auto Snapshot On Approval:General | Approval Snapshot File Name     |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory             | fieldName                       | fieldNewValue                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action                | History Snapshot-Action Enable? | false                            | Grantor State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General | Capture Snapshot On Approval?   | true                             | Program__c            |                           |                            |
      | Auto Snapshot On Approval:General | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    Given I delete the record "Automation Runtime Internal Program" from the object "Program__c" with field "ProgramName__c"
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
    And I pause execution for "5" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program |
      | Automation EXE | Step 1  |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reassign" to user "PM" in the approval decision
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see snapshot with name containing "TestAutomationSnapshotOnApproval.pdf" as name

  @217477 @217478
  Scenario Outline: Snapshot History Table - Admin- Config - Verify Snapshot History Table should not present in History Tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | false         | Grantor State Program | Name                      | PB-8358                    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I do not see "Snapshot History" page block displayed

    Examples:
      | User |
    #  | ADMIN |
      | PM   |

  @217197 @217198 @217455 @217456 @217464 @217465 @217467 @217471 @217472 @217468 @382790
  Scenario Outline:Snapshot History Table -Admin- Config-To verify Date Taken should captured when user taken snapshot
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Created By" as "OWNER"
   # And I save the field labeled "Created Date" as "DateTaken"
    When I click on "Menu" in the page details
    #217467 #217468
    Then I softly see "Take Snashot" options displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "4" seconds
    #217461 #217462 #382790
    Then I softly see Total Records count "Total Records : 1" in table name "Snapshot History"
    #217464 #217465
    Then I see "Snapshot History" page block displayed
    #217197 #217198
    When I click on "Menu" in the page details
    Then I softly see "Take Snashot" options displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    #217455 #217456
    Then I see generated snapshot "{SavedValue:OWNER}" is displayed with "Taken By"
    #217471 #217472
    Then I see generated snapshot "SnapShot on" is displayed with "File Name"

    Examples:
      | User |
    #  | ADMIN |
      | PM   |

  @70014
  Scenario: Validate Auto Snapshot is not getting captured after record submission as submit for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | History Snapshot-Action Enable? | false         | Grantor State Program | Name                      | Submit For Approval        |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    When I click on top right button "New" in flex table with id "---program:-:programsTableId---"
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
      | Name           | Program |
      | Automation EXE | Step 1  |
    And I pause execution for "5" seconds
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    Then I softly see Total Records count "No Records Found" in table name "Snapshot History"

  @217480 @217481
  Scenario Outline: Snapshot History Table - Admin- Config - Verify Take Snapshot button should not present in Menu option
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Grantor State Program | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I pause execution for "5" seconds
    #217480 #217481
    Then I softly do not see "Take Snashot" options displayed

    Examples:
      | User |
    #  | ADMIN |
      | PM   |

  @70032
  Scenario Outline: Validate Auto Snapshot is getting captured on record sent back to owner after making change for field Capture Snapshot on Approval at config
    Given I have "default" configuration as below:
      | configurationCategory             | fieldName                       | fieldOrignalValue | filterId         |
      | Page Layout Action                | History Snapshot-Action Enable? | true              | ApiGeneratedId:0 |
      | Auto Snapshot On Approval         | Capture Snapshot On Approval?   | false             | ApiGeneratedId:1 |
      | Auto Snapshot On Approval:General | Approval Snapshot File Name     |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory             | fieldName                       | fieldNewValue                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action                | History Snapshot-Action Enable? | false                            | Grantor State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General | Capture Snapshot On Approval?   | true                             | Program__c            |                           |                            |
      | Auto Snapshot On Approval:General | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    Given I delete the record "Automation Runtime Internal Program" from the object "Program__c" with field "ProgramName__c"
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
      | Name           | Program |
      | Automation EXE | Step 1  |
    And I pause execution for "5" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Send to Owner" in the approval decision
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see snapshot with name containing "TestAutomationSnapshotOnApproval.pdf" as name

    Examples:
      | User |
    #  | ADMIN |
      | PM   |

  @217482
  Scenario: Snapshot History Table - SPI- UI - Verify Take Snapshot button should not present in Menu option
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Recipient ApplicationView | Name                      |                            |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created By" as "OWNER"
    When I click on "Menu" in the page details
    And I pause execution for "5" seconds
    Then I softly do not see "Take Snashot" options displayed

  @217469 @217463 @217199 @217457 @217473 @207366 @207362 @382796
  Scenario: Snapshot History Table - SPI- UI - Verify Take Snapshot button should present in Menu option
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created By" as "OWNER"
    When I click on "Menu" in the page details
    #217469
    Then I softly see "Take Snashot" options displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "10" seconds
    Then I softly see "Snapshot History" page block displayed
    #217463
    Then I softly see Total Records count "Total Records :" in table name "Snapshot History"
    #217457
    Then I see generated snapshot "{SavedValue:OWNER}" is displayed with "Taken By"
    #217473
    Then I see generated snapshot "SnapShot" is displayed with "File Name"
    #207366
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot on"
    #207362
    Then I see new tab is opened
    And I switch to parent tab
    #217199
    Then I see take snap shot getting saved with "{Date:dd/MM/yyyy hh:mm:ss}"

  @201409 @217476 @382811 @382843 @201434
  Scenario: Snapshot History-SPI-UI-To verify snapshot history when Application is submitted for approval state
  |Snapshot History Table - SPI- UI- Verify file name when snapshot captured automatically|
  |Auto Snapshot-SPI-UI-To verify Auto Snapshot functionality when is Active is checked|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                       | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | History Snapshot-Action Enable? | true          | Recipient ApplicationView | Name                      | Submit Application         |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Budget" sub tab
    Given I expand nested table containing column value "BP01"
    And I select value inside table "---applicationIntake:-:budgetPeriodTableId---" is "All"
    And I edit the following rows inline in flex table with id "---applicationIntake:-:budgetPeriodTableId---" by clicking "Edit" :
      | Category Name | Budget | Cash Match | Non-Cash Match | Other Leverage |
      | Construction  | 1000   | 100        | 100            | 100            |
    When I navigate to "Overview" sub tab
    When I click on "Edit" icon for "{SavedValue:SPI3 Username}" inside flex table with id "---applicationReview:-:flexGridAppContactTableId---"
    And I enter value "Checked" into field "IsKeyContact__c"
    And I click on top right button "Save" in flex table with id "---applicationReview:-:flexGridAppContactTableId---"
    When I navigate to "Proposal" sub tab
    When I edit the following rows inline in flex table with id "---applicationIntake:-:kpiTableId---" by clicking "Edit" :
      | EGMS ID                  | Target |
      | Automation Permanent KPI | 10     |
    And I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 1" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 2" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "---applicationReview:-:flexGridAppContactTableId---" by clicking "Edit" :
      | Name                       | Project Role             | Is Key Contact |
      | {SavedValue:SPI3 Username} | Project Director/Manager | Checked        |
    When I click on "Submit Application" in the page details
    Then I softly see status in Progress-bar is "Submitted" and is "Green"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see generated snapshot "Snapshot_Application_Submission.pdf" is displayed with "File Name"

  @201435
  Scenario: Auto Snapshot-SPI-UI-To verify Auto Snapshot functionality when is Active is unchecked
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                       | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | History Snapshot-Action Enable? | false         | Recipient ApplicationView | Name                      | Submit Application         |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Budget" sub tab
    Given I expand nested table containing column value "BP01"
    And I select value inside table "---applicationIntake:-:budgetPeriodTableId---" is "All"
    And I edit the following rows inline in flex table with id "---applicationIntake:-:budgetPeriodTableId---" by clicking "Edit" :
      | Category Name | Budget | Cash Match | Non-Cash Match | Other Leverage |
      | Construction  | 1000   | 100        | 100            | 100            |
    When I navigate to "Overview" sub tab
    When I click on "Edit" icon for "{SavedValue:SPI3 Username}" inside flex table with id "---applicationReview:-:flexGridAppContactTableId---"
    And I enter value "Checked" into field "IsKeyContact__c"
    And I click on top right button "Save" in flex table with id "---applicationReview:-:flexGridAppContactTableId---"
    When I navigate to "Proposal" sub tab
    When I edit the following rows inline in flex table with id "---applicationIntake:-:kpiTableId---" by clicking "Edit" :
      | EGMS ID                  | Target |
      | Automation Permanent KPI | 10     |
    And I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 1" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 2" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "---applicationReview:-:flexGridAppContactTableId---" by clicking "Edit" :
      | Name                       | Project Role             | Is Key Contact |
      | {SavedValue:SPI3 Username} | Project Director/Manager | Checked        |
    When I click on "Submit Application" in the page details
    Then I softly see status in Progress-bar is "Submitted" and is "Green"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I softly see Total Records count "No Records Found" in table name "Snapshot History"