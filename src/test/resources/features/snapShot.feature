@SnapShot-component @regression
Feature: Snapshot Config Component Scenarios
  Test all sanpshot config component based scenarios
  As a configuration manager i make different configurational changes in snapshot component and will validate them.

  @70014    @verifyAutoSnapShotNotCapturedWithIsActiveField
  Scenario: Validate Auto Snapshot is not getting captured after record submission as submit for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Auto Snapshot         | Is Active | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                             | Status    | Created       | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
      | Auto Snapshot:Sobject Auto Snapshot | Is Active | true          | Program__c                                                                       | Name                      | SAS-0000                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Edit" icon for "Test program for automation - SA mode only - Not approved - History Tab Scenario" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

  @70015    @verifyAutoSnapShotCapturedWithIsActiveField
  Scenario: Validate Auto Snapshot is getting captured after record submission as submit for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Auto Snapshot         | Is Active | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue                           | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                             | Status          | Created                                 | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
      | Auto Snapshot:Sobject Auto Snapshot | Is Active       | false                                   | Program__c                                                                       | Name                      | SAS-0000                   |
      | Auto Snapshot:Sobject Auto Snapshot | Expression JSON | govgrants_config:SnapShotExpressionJSON | Program__c                                                                       | Name                      | SAS-0000                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Edit" icon for "Test program for automation - SA mode only - Not approved - History Tab Scenario" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

  @70016    @verifyAutoSnapShotFileNameWithSnapShotFileName
  Scenario: Validate Auto Snapshot record name is getting chages after making changes inside field SnapShot File Name at config page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Auto Snapshot         | Snapshot File Name |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName          | fieldNewValue          | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                             | Status             | Created                | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
      | Auto Snapshot:Sobject Auto Snapshot | Snapshot File Name | testAutomationSnapshot | Program__c                                                                       | Name                      | SAS-0000                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Edit" icon for "Test program for automation - SA mode only - Not approved - History Tab Scenario" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "testAutomationSnapshot.pdf"

  @70049    @verifyAutoSnapShotIsGettingCapturedWithFieldCaptureSnapshotonApproval-Approval
  Scenario: Validate Auto Snapshot is getting captured on record approval after making change for field Capture Snapshot on Approval at config
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action        | History Snapshot-Action Enable? | true          | Grantee State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval | Capture Snapshot On Approval?   | false         | Program__c            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory             | fieldName                       | fieldNewValue | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                           | Status                          | Created       | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
      | Page Layout Action                | History Snapshot-Action Enable? | false         | Grantee State Program                                                            | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General | Capture Snapshot On Approval?   | true          | Program__c                                                                       |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Edit" icon for "Test program for automation - SA mode only - Not approved - History Tab Scenario" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programForHistoryTabScenarios}" inside table
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

  @70027    @verifyAutoSnapShotFileNameWithFieldApprovalSnapShotFileName
  Scenario: Validate Auto Snapshot record name is getting chaged after making changes inside field Approval Snapshot File Name at config page
    Given I have "default" configuration as below:
      | configurationCategory             | fieldName                       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action                | History Snapshot-Action Enable? | true          | Grantee State Program | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General | Capture Snapshot On Approval?   | false         | Program__c            |                           |                            |
      | Auto Snapshot On Approval:General | Approval Snapshot File Name     |               | Program__c            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory             | fieldName                       | fieldNewValue                    | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                           | Status                          | Created                          | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
      | Page Layout Action                | History Snapshot-Action Enable? | false                            | Grantee State Program                                                            | Name                      | Submit For Approval        |
      | Auto Snapshot On Approval:General | Capture Snapshot On Approval?   | true                             | Program__c                                                                       |                           |                            |
      | Auto Snapshot On Approval:General | Approval Snapshot File Name     | TestAutomationSnapshotOnApproval | Program__c                                                                       |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Edit" icon for "Test program for automation - SA mode only - Not approved - History Tab Scenario" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programForHistoryTabScenarios}" inside table
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "TestAutomationSnapshotOnApproval.pdf"

  @70028    @verifyAutoSnapShotIsGettingCapturedWithFieldCaptureSnapshotonApproval-Rejection
  Scenario: Validate Auto Snapshot is getting captured on record rejection after making change for field Capture Snapshot on Approval at config
    Given I have "default" configuration as below:
      | configurationCategory             | fieldName                       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Auto Snapshot On Approval:General | Capture Snapshot On Approval?   | false         | Program__c            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory             | fieldName                       | fieldNewValue                    | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                           | Status                          | Created                          | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
      | Auto Snapshot On Approval:General | Capture Snapshot On Approval?   | true                             | Program__c                                                                       |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Edit" icon for "Test program for automation - SA mode only - Not approved - History Tab Scenario" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programForHistoryTabScenarios}" inside table
    When I "Disapprove" in the approval decision
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

  @70029    @verifyAutoSnapShotIsGettingCapturedWithFieldCaptureSnapshotonApproval-Reassign
  Scenario: Validate Auto Snapshot is getting captured on record forward after making change for field Capture Snapshot on Approval at config
    Given I have "default" configuration as below:
      | configurationCategory             | fieldName                       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Auto Snapshot On Approval:General | Capture Snapshot On Approval?   | false         | Program__c            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory             | fieldName                       | fieldNewValue                    | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                           | Status                          | Created                          | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
      | Auto Snapshot On Approval:General | Capture Snapshot On Approval?   | true                             | Program__c                                                                       |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Edit" icon for "Test program for automation - SA mode only - Not approved - History Tab Scenario" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programForHistoryTabScenarios}" inside table
    When I "Reassign" to user "Allen PM" in the approval decision
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

  @70032    @verifyAutoSnapShotIsGettingCapturedWithFieldCaptureSnapshotonApproval-SendBack
  Scenario: Validate Auto Snapshot is getting captured on record sent back to owner after making change for field Capture Snapshot on Approval at config
    Given I have "default" configuration as below:
      | configurationCategory             | fieldName                       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Auto Snapshot On Approval:General | Capture Snapshot On Approval?   | false         | Program__c            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory             | fieldName                       | fieldNewValue                    | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                           | Status                          | Created                          | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
      | Auto Snapshot On Approval:General | Capture Snapshot On Approval?   | true                             | Program__c                                                                       |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Edit" icon for "Test program for automation - SA mode only - Not approved - History Tab Scenario" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programForHistoryTabScenarios}" inside table
    When I "Send to Owner" in the approval decision
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"