@SnapshotHistory-component @regression-QA
Business Need: Snapshot Config Component Scenarios
  Test all sanpshot config component based scenarios
  As a configuration manager i make different configurational changes in snapshot component and will validate them.

#  Background: Create Program
#    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
#    When I login to "As a Grantor" app as "PM" user
#    When I setup my app as "As a Grantor"
#    And I navigate to "Planning" tab
#    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
#    And I click toggle button to select "Internal Programs - Draft"
#    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
#    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
#    And I click on "Save and Continue" in the page details
#    And I pause execution for "15" seconds
#    And I save the field labeled "EGMS ID" as "PEGMSID"
#    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
#    And I click on "Save" in the page details
#    When I navigate to "Overview" sub tab
#    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
#    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
#    When I navigate to "Responsibilities" sub tab
#    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
#      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
#      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
#    And I pause execution for "5" seconds
#    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
#      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
#      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
#    And I pause execution for "10" seconds
#    And I refresh the page

  @70014    @verifyAutoSnapShotNotCapturedWithIsActiveField
  Scenario: Validate Auto Snapshot is not getting captured after record submission as submit for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
      | Auto Snapshot         | Is Active                       | false             | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active                       | true              | ApiGeneratedId:1 |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Auto Snapshot:Sobject Auto Snapshot | Is Active                       | false         | Program__c            | Name                      | SAS-0008                   |
      | Page Tabs Config:Page Layout Action | Is Active                       | true          | Grantor State Program | Name                      | TAB-1724                   |
      | Page Layout Action                  | History Snapshot-Action Enable? | false         | Grantor State Program | Name                      | Submit For Approval        |
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Snapshot History"

  @70015    @verifyAutoSnapShotCapturedWithIsActiveField
  Scenario: Validate Auto Snapshot is getting captured after record submission as submit for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
      | Auto Snapshot         | Is Active                       | false             | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active                       | true              | ApiGeneratedId:2 |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                       | fieldNewValue                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Auto Snapshot:Sobject Auto Snapshot | Is Active                       | true                                    | Program__c            | Name                      | SAS-0008                   |
      | Auto Snapshot:Sobject Auto Snapshot | Expression JSON                 | govgrants_config:SnapShotExpressionJSON | Program__c            | Name                      | SAS-0008                   |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                                    | Grantor State Program | Name                      | TAB-1724                   |
      | Page Layout Action                  | History Snapshot-Action Enable? | false                                   | Grantor State Program | Name                      | Submit For Approval        |
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Snapshot History"

  @70016    @verifyAutoSnapShotFileNameWithSnapShotFileName
  Scenario: Validate Auto Snapshot record name is getting chages after making changes inside field SnapShot File Name at config page
    Given I have "default" configuration as below:
      | configurationCategory             | fieldName                       | fieldOrignalValue | filterId         |
      | Auto Snapshot                     | Snapshot File Name              |                   | ApiGeneratedId:0 |
      | Auto Snapshot                     | Is Active                       | false             | ApiGeneratedId:1 |
      | Page Tabs Config                  | Is Active                       | false             | ApiGeneratedId:2 |
      | Page Layout Action                | History Snapshot-Action Enable? | true              | ApiGeneratedId:3 |
      | Auto Snapshot On Approval:General | Approval Snapshot File Name     |                   | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                       | fieldNewValue                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Auto Snapshot:Sobject Auto Snapshot | Snapshot File Name              | testAutomationSnapshot           | Program__c            | Name                      | SAS-0008                   |
      | Auto Snapshot:Sobject Auto Snapshot | Is Active                       | true                             | Program__c            | Name                      | SAS-0008                   |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantor State Program | Name                      | TAB-1724                   |
      | Page Layout Action                  | History Snapshot-Action Enable? | false                            | Grantor State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Snapshot History"

  @70049    @verifyAutoSnapShotIsGettingCapturedWithFieldCaptureSnapshotonApproval-Approval
  Scenario: Validate Auto Snapshot is getting captured on record approval after making change for field Capture Snapshot on Approval at config
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
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    And I refresh the page
    Then I see take snap shot getting saved with "Snapshot History"

  @70027    @verifyAutoSnapShotFileNameWithFieldApprovalSnapSho1tFileName
  Scenario: Validate Auto Snapshot record name is getting chaged after making changes inside field Approval Snapshot File Name at config page
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
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Send to Owner" in the approval decision
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "60" seconds
    Then I see table with header "Snapshot History" contains records "TestAutomationSnapshotOnApproval.pdf"

  @70028    @verifyAutoSnapShotIsGettingCapturedWithFieldCaptureSnapshotonApproval-Rejection
  Scenario: Validate Auto Snapshot is getting captured on record rejection after making change for field Capture Snapshot on Approval at config
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
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Disapprove" in the approval decision
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Snapshot History"

  @70029    @verifyAutoSnapShotIsGettingCapturedWithFieldCaptureSnapshotonApproval-Reassign
  Scenario: Validate Auto Snapshot is getting captured on record forward after making change for field Capture Snapshot on Approval at config
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
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reassign" to user "PM" in the approval decision
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Snapshot History"

  @70032    @verifyAutoSnapShotIsGettingCapturedWithFieldCaptureSnapshotonApproval-SendBack
  Scenario: Validate Auto Snapshot is getting captured on record sent back to owner after making change for field Capture Snapshot on Approval at config
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
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Send to Owner" in the approval decision
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Snapshot History"

  @112878    @verifyAutoSnapShotCapturedWithIsActiveFieldByLoginAsAdminUser
  Scenario: Validate Auto Snapshot is getting captured after record submission as submit for approval for second time by admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
      | Auto Snapshot         | Is Active                       | false             | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active                       | true              | ApiGeneratedId:2 |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                       | fieldNewValue                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Auto Snapshot:Sobject Auto Snapshot | Is Active                       | true                                    | Program__c            | Name                      | SAS-0008                   |
      | Auto Snapshot:Sobject Auto Snapshot | Expression JSON                 | govgrants_config:SnapShotExpressionJSON | Program__c            | Name                      | SAS-0008                   |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                                    | Grantor State Program | Name                      | TAB-1724                   |
      | Page Layout Action                  | History Snapshot-Action Enable? | false                                   | Grantor State Program | Name                      | Submit For Approval        |
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Send to Owner" in the approval decision
    When I re-login to "As a Grantor" app as "PM" user on "default" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Edit" icon for "{SavedValue:PEGMSID}" inside table
    When I click on "Save" in the page details without processing
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Snapshot History"

  @201391 @201405 @217474 @217475 @201407 @201408
  Scenario Outline: Snapshot History-Admin-Config-To verify snapshot history when program is submitted for approval state
                    Snapshot History-PM-UI-To verify snapshot history not generated when program is submitted for approval state
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
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Submitted for Approval.pdf"

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @201395 @201406
  Scenario: Snapshot History-Admin-Config-Snapshot History-Admin-Config-To verify snapshot history when program is activated state
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
#      | Auto Snapshot         | Is Active                       | false             | ApiGeneratedId:0 |
#      | Page Tabs Config      | Is Active                       | true              | ApiGeneratedId:2 |
#      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:3 |
#    Given I setup test configuration as below:
#      | configurationCategory               | fieldName                       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Auto Snapshot:Sobject Auto Snapshot | Is Active                       | true          | Program__c            | Name                      | SAS-0008                   |
#        #| Auto Snapshot:Sobject Auto Snapshot | Expression JSON                 | govgrants_config:SnapShotExpressionJSON | Program__c            | Name                      | SAS-0008                   |
#      | Page Tabs Config:Page Layout Action | Is Active                       | true          | Grantor State Program | Name                      | TAB-1724                   |
#      | Page Layout Action                  | History Snapshot-Action Enable? | false         | Grantor State Program | Name                      | Submit For Approval        |
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
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
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
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Snapshot History"

  @201407 @201408
  Scenario: Snapshot History-PM-UI-To verify snapshot history not generated when program is submitted for approval state
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
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    #201407
    Then I see "No Records Found" inside flex table with id "---program:-:SnapShotHistoryTableId---"
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I click on "Activate" in the page details
    And I pause execution for "3" seconds
    And I softly see status in Progress-bar is "Active" and is "Green"
    #201408
    Then I see "No Records Found" inside flex table with id "---program:-:SnapShotHistoryTableId---"

  @201421 @201419
  Scenario Outline: Auto Snapshot-PM-UI-To verify Auto Snapshot functionality when is Active is checked
    Given I have "default" configuration as below:
      | configurationCategory             | fieldName                       | fieldOrignalValue | filterId         |
      | Auto Snapshot                     | Snapshot File Name              |                   | ApiGeneratedId:0 |
      | Auto Snapshot                     | Is Active                       | false             | ApiGeneratedId:1 |
      | Page Tabs Config                  | Is Active                       | false             | ApiGeneratedId:2 |
      | Page Layout Action                | History Snapshot-Action Enable? | true              | ApiGeneratedId:3 |
      | Auto Snapshot On Approval:General | Approval Snapshot File Name     |                   | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                       | fieldNewValue                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Auto Snapshot:Sobject Auto Snapshot | Snapshot File Name              | testAutomationSnapshot           | Program__c            | Name                      | SAS-0008                   |
      | Auto Snapshot:Sobject Auto Snapshot | Is Active                       | true                             | Program__c            | Name                      | SAS-0008                   |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantor State Program | Name                      | TAB-1724                   |
      | Page Layout Action                  | History Snapshot-Action Enable? | false                            | Grantor State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
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
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "testAutomationSnapshot"

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @201420 @201422
  Scenario Outline: Auto Snapshot-Admin-Config-To verify Auto Snapshot functionality when is Active is unchecked
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
      | Auto Snapshot         | Snapshot File Name              |                   | ApiGeneratedId:0 |
      | Auto Snapshot         | Is Active                       | false             | ApiGeneratedId:1 |
      | Page Tabs Config      | Is Active                       | false             | ApiGeneratedId:2 |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                       | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Auto Snapshot:Sobject Auto Snapshot | Snapshot File Name              | testAutomationSnapshot | Program__c            | Name                      | SAS-0008                   |
      | Auto Snapshot:Sobject Auto Snapshot | Is Active                       | false                  | Program__c            | Name                      | SAS-0008                   |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                   | Grantor State Program | Name                      | TAB-1724                   |
      | Page Layout Action                  | History Snapshot-Action Enable? | false                  | Grantor State Program | Name                      | Submit For Approval        |
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
    When I navigate to "History" sub tab
    Then I see "No Records Found" inside flex table with id "---program:-:SnapShotHistoryTableId---"

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @207357 @207359 @207364 @207365
  Scenario Outline: Snapshot History--Admin--UI--To verify snapshot should open on clicking snapshot link
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    And I click on "View" icon in flex table for first draft record
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
      | User  |
      | ADMIN |
     # | PM    |

  @217197 @217198 @217455 @217456 @217464 @217465 @217467 @217471 @217472 @217468
  Scenario Outline:Snapshot History Table -Admin- Config-To verify Date Taken should captured when user taken snapshot
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
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Created By" as "OWNER"
    And I save the field labeled "Project Period Start Date" as "DateTaken"
    When I click on "Menu" in the page details
    #217467 #217468
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "10" seconds
    #217461 #217462
    Then I see Total Records count "Total Records : 1" in table name "Snapshot History"
    #217464 #217465
    Then I see "Snapshot History" page block displayed
    #217197 #217198
    Then I see generated snapshot "{SavedValue:DateTaken}" is displayed with "Date Taken"
    #217455 #217456
    Then I see generated snapshot "{SavedValue:OWNER}" is displayed with "Taken By"
    #217471 #217472
    Then I see generated snapshot "SnapShot" is displayed with "File Name"

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @217477 @217478
  Scenario Outline: Snapshot History Table - Admin- Config - Verify Snapshot History Table should not present in History Tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | false         | Grantor State Program | Name                      | PB-8141                    |
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
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I do not see "Snapshot History" page block displayed

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @217480 @217481
  Scenario Outline: Snapshot History Table - Admin- Config - Verify Take Snapshot button should not present in Menu option
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snapshot | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snapshot | false         | Grantor State Program | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I pause execution for "5" seconds
    #217480 #217481
    Then I do not see "Take Snapshot" options is displayed

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @217469 @217463 @217199 @217457 @217473 @207366 @207362
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
    #217469
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "10" seconds
    Then I see "Snapshot History" page block displayed
    #217463
    Then I see Total Records count "Total Records :" in table name "Snapshot History"
    #217457
    Then I see generated snapshot "{SavedValue:OWNER}" is displayed with "Taken By"
    #217473
    Then I see generated snapshot "SnapShot" is displayed with "File Name"
    #207366
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    #207362
    Then I see new tab is opened
    And I switch to parent tab
    #217199
    Then I see take snap shot getting saved with "Todays Date"

  @217482
  Scenario: Snapshot History Table - SPI- UI - Verify Take Snapshot button should not present in Menu option
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snapshot | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snapshot | false         | ApplicationView    | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created By" as "OWNER"
    When I click on "Menu" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Take Snapshot" options is displayed

