@history-component @regression
Feature: history Component Scenarios
  Test all history Component based scenarios
  As a configuration manager i make different changes related to flow and will validate them in history component.

  @69537   @VerifyDisplayOfRecordsInHistoryTableAsPerSelectedObjectFromDropDown
  Scenario: Validate all program records are shown in Field History table if Program object is selected in dropdown
    When I login as "Automation" user
    When I navigate to "Planning" tab
    When I perform quick search for "Test Program specific for History"
    When I click on "View Program Details" icon for "Test Program specific for History" inside table
    When I navigate to "History" sub tab
    When I select "Program" from dropdown at History Table
    Then I softly see "PG-755-0205" value in flex table id "toggleFlexTableHistory"

  @69577    @VerifyActualApproverNameIsDisplayedInApprovalHistoryAfterRecordSubmission
  Scenario: Validate actual approver name inside Approval history table after submission of record to Submit for Approval
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                                                               |
      | Program               | Status    | Created       | Test program for automation - SA mode only - Not approved - History Tab Scenario |
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
    Then I softly see column "Assigned To" inside row "1" at position "2" and column at position "2" contains text "Automation PM"
    Then I collect all the soft asserts

  @69578    @VerifyActualApproverAndAssignedToNameIsDisplayedInApprovalHistoryAfterRecordReassignToUser
  Scenario: Validate Actual Approver name and Assigned To Name inside Approval history table after Reassigning of record to user
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                                                               |
      | Program               | Status    | Created       | Test program for automation - SA mode only - Not approved - History Tab Scenario |
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
    Then I softly see column "Assigned To" inside row "1" at position "2" and column at position "2" contains text "Automation PM"
    Then I softly see column "Actual Approver" inside row "1" at position "2" and column at position "3" contains text "Allen PM"
    Then I collect all the soft asserts

  @69836    @VerifyExpectedStatusIsDisplayedInApprovalHistoryAfterRecordApproval
  Scenario: Validating status as APPROVED inside Approval history table after approval of record
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program               | Status    | Created       | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
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
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Approved"
    Then I collect all the soft asserts

  @69943    @VerifyExpectedStatusIsDisplayedInApprovalHistoryAfterRecordRejection
  Scenario: Validating status as REJECTED inside Approval history table after approval of record
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program               | Status    | Created       | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
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
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Rejected"
    Then I collect all the soft asserts

  @69944    @VerifyExpectedStatusIsDisplayedInApprovalHistoryAfterRecordReassign
  Scenario: Validating status as REASSIGNED inside Approval history table after approval of record
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program               | Status    | Created       | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
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
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Pending"
    And I softly see column "Status" inside row "1" at position "3" and column at position "5" contains text "Reassigned"
    And I collect all the soft asserts

  @69945    @VerifyExpectedStatusIsDisplayedInApprovalHistoryAfterRecordSentBack
  Scenario: Validating status as SENT BACK inside Approval history table after approval of record
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program               | Status    | Created       | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
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
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Sent Back"
    Then I collect all the soft asserts

  @69958   @VerifyExpectedOverAllStatusIsDisplayedInApprovalHistoryAfterRecordSubmission
  Scenario: Validating Over all status as Pending inside Approval history table after record submission as submit for apprval
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program               | Status    | Created       | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Edit" icon for "Test program for automation - SA mode only - Not approved - History Tab Scenario" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I softly see column "Overall Status" inside row "1" at position "1" and column at position "2" contains text "Pending"
    Then I collect all the soft asserts

  @69959   @VerifyActualApproverIsDisplayedInApprovalHistoryAfterRecordReassignToUser
  Scenario: Validating Over all status as Pending inside Approval history table after record submission as submit for apprval
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program               | Status    | Created       | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
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
    Then I softly see column "Actual Approver" inside row "1" at position "2" and column at position "3" contains text "Allen PM"
    Then I collect all the soft asserts

  @69960   @VerifyAssignedApproverUserInsideChevron
  Scenario: Validating chevron contain Approver user and Initial submitter after submission of record to submit for approval
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program               | Status    | Created       | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
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
    Then I see for "Program Manager Approver" value is "Automation PM" in chevron diagram