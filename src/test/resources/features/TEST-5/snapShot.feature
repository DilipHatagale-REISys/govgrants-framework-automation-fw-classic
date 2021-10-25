@SnapShot-component @regression-test5
Business Need: Snapshot Config Component Scenarios
  Test all sanpshot config component based scenarios
  As a configuration manager i make different configurational changes in snapshot component and will validate them.

  Background: Create Program
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "BP-01" inside flex table with id "---program:-:budgetPeriodDetailsTableId---"
    And I switch to iframe with id "ProgramBudgetPeriodiframeContentId"
    And I enter value "Active" into field "fieldStatus__c"
    And I click modal button "Save"
    And I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    And I enter value "Automation PM" into field "fieldName__c"
    And I enter value "Program Approver" into field "fieldBusinessRole__c"
    And I click modal button "Save"
    And I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    And I enter value "Allen PM" into field "fieldName__c"
    And I enter value "Key POC" into field "fieldBusinessRole__c"
    And I click modal button "Save"
    And I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountInformationTableId---"
    When I click "Add" after selection of "FA-17-03" in the table "---program:-:fundingAccountSelectionTableId---"
    And I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:budgetCategoryTableId---"
    When I click "Add" after selection of "SBC-A-209" in the table "---program:-:budgetCategorySelectionTableId---"
    And I navigate to "Log" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:relatedFederalProgramTableId---"
    When I click "Add" after selection of "90.404" in the table "---program:-:relatedFederalProgramSelectionTableId---"
    And I navigate to "Log" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programServiceAreaTableId---"
    When I click "Save" after selection of "PSA-0005" in the table "---program:-:programServiceAreaSelectionTableId---"
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
      | Auto Snapshot:Sobject Auto Snapshot | Is Active                       | true          | Program__c            | Name                      | SAS-0000                   |
      | Page Tabs Config:Page Layout Action | Is Active                       | true          | Grantee State Program | Name                      | TAB-027                    |
      | Page Layout Action                  | History Snapshot-Action Enable? | false         | Grantee State Program | Name                      | Submit For Approval        |
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

  @70015    @verifyAutoSnapShotCapturedWithIsActiveField
  Scenario: Validate Auto Snapshot is getting captured after record submission as submit for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
      | Auto Snapshot         | Is Active                       | false             | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active                       | true              | ApiGeneratedId:2 |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                       | fieldNewValue                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Auto Snapshot:Sobject Auto Snapshot | Is Active                       | true                                    | Program__c            | Name                      | SAS-0000                   |
      | Auto Snapshot:Sobject Auto Snapshot | Expression JSON                 | govgrants_config:SnapShotExpressionJSON | Program__c            | Name                      | SAS-0000                   |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                                    | Grantee State Program | Name                      | TAB-027                    |
      | Page Layout Action                  | History Snapshot-Action Enable? | false                                   | Grantee State Program | Name                      | Submit For Approval        |
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "Date Taken"

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
      | Auto Snapshot:Sobject Auto Snapshot | Snapshot File Name              | testAutomationSnapshot           | Program__c            | Name                      | SAS-0000                   |
      | Auto Snapshot:Sobject Auto Snapshot | Is Active                       | true                             | Program__c            | Name                      | SAS-0000                   |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantee State Program | Name                      | TAB-027                    |
      | Page Layout Action                  | History Snapshot-Action Enable? | false                            | Grantee State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "testAutomationSnapshot.pdf"

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
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantee State Program | Name                      | TAB-027                    |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

  @70027    @verifyAutoSnapShotFileNameWithFieldApprovalSnapShotFileName
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
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantee State Program | Name                      | TAB-027                    |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
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
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantee State Program | Name                      | TAB-027                    |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    When I "Disapprove" in the approval decision
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

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
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantee State Program | Name                      | TAB-027                    |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    When I "Reassign" to user "Allen PM" in the approval decision
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

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
      | Page Tabs Config:Page Layout Action | Is Active                       | true                             | Grantee State Program | Name                      | TAB-027                    |
      | Auto Snapshot On Approval:General   | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c            |                           |                            |
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    When I "Send to Owner" in the approval decision
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

  @112878    @verifyAutoSnapShotCapturedWithIsActiveFieldByLoginAsAdminUser
  Scenario: Validate Auto Snapshot is getting captured after record submission as submit for approval for second time by admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
      | Auto Snapshot         | Is Active                       | false             | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active                       | true              | ApiGeneratedId:2 |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                       | fieldNewValue                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Auto Snapshot:Sobject Auto Snapshot | Is Active                       | true                                    | Program__c            | Name                      | SAS-0000                   |
      | Auto Snapshot:Sobject Auto Snapshot | Expression JSON                 | govgrants_config:SnapShotExpressionJSON | Program__c            | Name                      | SAS-0000                   |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                                    | Grantee State Program | Name                      | TAB-027                    |
      | Page Layout Action                  | History Snapshot-Action Enable? | false                                   | Grantee State Program | Name                      | Submit For Approval        |
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    When I "Send to Owner" in the approval decision
    When I re-login to "As a Grantor" app as "Automation" user on "default" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"