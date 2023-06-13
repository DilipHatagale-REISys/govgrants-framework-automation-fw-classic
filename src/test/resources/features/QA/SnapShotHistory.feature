@SnapShot-component @regression-QA
Business Need: Snapshot Config Component Scenarios
  Test all sanpshot config component based scenarios
  As a configuration manager i make different configurational changes in snapshot component and will validate them.

  Background: Create Program
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "15" seconds
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
    And I refresh the page

  @70014    @verifyAutoSnapShotNotCapturedWithIsActiveField
  Scenario: Validate Auto Snapshot is not getting captured after record submission as submit for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
      | Auto Snapshot         | Is Active                       | false             | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active                       | true              | ApiGeneratedId:1 |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Auto Snapshot:Sobject Auto Snapshot | Is Active                       | false          | Program__c            | Name                      | SAS-0008                   |
      | Page Tabs Config:Page Layout Action | Is Active                       | true          | Grantee State Program | Name                      | TAB-1724                    |
      | Page Layout Action                  | History Snapshot-Action Enable? | false         | Grantee State Program | Name                      | Submit For Approval        |
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
      | Page Tabs Config:Page Layout Action | Is Active                       | true                                    | Grantee State Program | Name                      | TAB-1724                    |
      | Page Layout Action                  | History Snapshot-Action Enable? | false                                   | Grantee State Program | Name                      | Submit For Approval        |
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
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantee State Program | Name                      | TAB-1724                    |
      | Page Layout Action                  | History Snapshot-Action Enable? | false                            | Grantee State Program | Name                      | Submit For Approval        |
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
      | Page Layout Action                  | History Snapshot-Action Enable? | false                            | Grantee State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General   | Capture Snapshot On Approval?   | true                             | Program__c            |                           |                            |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantee State Program | Name                      | TAB-1724                    |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
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
      | Page Layout Action                  | History Snapshot-Action Enable? | false                            | Grantee State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General   | Capture Snapshot On Approval?   | true                             | Program__c            |                           |                            |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantee State Program | Name                      | TAB-1724                    |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Send to Owner" in the approval decision
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
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
      | Page Layout Action                  | History Snapshot-Action Enable? | false                            | Grantee State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General   | Capture Snapshot On Approval?   | true                             | Program__c            |                           |                            |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantee State Program | Name                      | TAB-1724                    |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
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
      | Page Layout Action                  | History Snapshot-Action Enable? | false                            | Grantee State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General   | Capture Snapshot On Approval?   | true                             | Program__c            |                           |                            |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantee State Program | Name                      | TAB-1724                    |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
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
      | Page Layout Action                  | History Snapshot-Action Enable? | false                            | Grantee State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General   | Capture Snapshot On Approval?   | true                             | Program__c            |                           |                            |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantee State Program | Name                      | TAB-1724                    |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
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
      | Page Tabs Config:Page Layout Action | Is Active                       | true                                    | Grantee State Program | Name                      | TAB-1724                    |
      | Page Layout Action                  | History Snapshot-Action Enable? | false                                   | Grantee State Program | Name                      | Submit For Approval        |
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
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