@approvalprocess-component
Feature: Approval Process Component Scenarios
  Test all approval process component based scenarios
  As a configuration manager i make different configurational changes in approval process component and will validate them.

  @34305 @all @hideApproveOption-Programs
  Scenario: Hiding approve option from configuration and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName   | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Action | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName   | fieldNewValue | coreComponentField                                         |
      | Program                          | Status      | Created       | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Action | true          | ADAC-0009                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Approve" is disabled

  @34307 @all @changeApproveOptionSequence-Programs
  Scenario: Changing sequence of Approve option from configuration and validating its sequence in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName | fieldOrignalValue | filterId         |
      | Approval Decision Action | Sequence  | 1                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName | fieldNewValue | coreComponentField                                         |
      | Program                          | Status    | Created       | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Sequence  | 5             | ADAC-0009                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then i see "Approve" shown at number "3" in Approve Decision panel

  @34308 @all @mandatoryCommentsReqForApproveAction-Programs
  Scenario: Setup comments requried as mandatory for approval from configuration and in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName         | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Required | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName         | fieldNewValue | coreComponentField                                         |
      | Program                          | Status            | Created       | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Comments Required | true          | ADAC-0009                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Approve" from approval decision panel
    And I click submit
    Then I see "Comments are Required." error is displayed

  @34306 @all @labelChangeOfApprovalDecision-Programs
  Scenario: Changing label of approve radio button text from configuration and validating its changed label in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName             | fieldOrignalValue | filterId         |
      | Approval Decision Action | Action Label Override | Approve           | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName             | fieldNewValue | coreComponentField                                         |
      | Program                          | Status                | Created       | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Action Label Override | Approved      | ADAC-0009                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Approved" inside approval decision box

  @34309 @all @confirmationMessageBoxPopupForApproveApprovalDecisionAction-Programs
  Scenario: Setup confirmation message inside confirmation message box from configuration and validating it in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName          | fieldOrignalValue | filterId         |
      | Approval Decision Action | Confirmation Title |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                   | coreComponentField                                         |
      | Program                          | Status               | Created                         | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Confirmation Title   | Automation Approval             | ADAC-0009                                                  |
      | Approval Decision Action:General | Confirmation Message | Confirmation box for automation | ADAC-0009                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Approve" from approval decision panel
    When I enter Approval comment
    And I click submit
    Then I see confirmation box with body "Confirmation box for automation" is displayed

  @34310 @all @filterCriteriaForUserReassignForApprovalDecisionAction-Programs
  Scenario Outline: Entering filter criteria for user reassign using forward action from configuration and validating it in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName                         | fieldOrignalValue | filterId         |
      | Approval Decision Action | Filter Criteria for User Reassign |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName                         | fieldNewValue            | coreComponentField                                         |
      | Program                          | Status                            | Created                  | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Filter Criteria for User Reassign | <newFilterCriteriaValue> | ADAC-0011                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Reassign" from approval decision panel
    When I click select dropdown
    Then I see "Allen PM" inside selectbox
    Examples:
      | newFilterCriteriaValue |
      | Name='Allen PM'        |

  @34311 @wip @automationNotRequired @approverTaskNotCreatedPrograms-Programs
  Scenario: Change approver setting for not receiveing approve task in configuration and validate that pending approver task is not displayed
    Given I have default configuration as below:
      | configurationCategory        | fieldName      | fieldOrignalValue  | filterId         |
      | Approval Process Steps Cache | Field API Name | ProgramApprover__c | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName      | fieldNewValue | coreComponentField                                         |
      | Program                              | Status         | Created       | Test program for automation -  SA mode only - Not approved |
      | Approval Process Steps Cache:General | Field API Name |               | Program_Manager_Approver                                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    Then I see approval with subject as "Test program for automation -  SA mode only - Not approved" is not displayed

  @34313 @all @successEmailSentToProgramOwner-Programs
  Scenario: Setup email setting in configuration and validate that program owner receiving email for program approval
    Given I have default configuration as below:
      | configurationCategory        | fieldName            | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Email Field API Name | CreatedById       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName            | fieldNewValue | coreComponentField                                            |
      | Program                              | Status               | Created       | Test program for automation -  SA mode only - Can be Approved |
      | Approval Process Steps Cache:General | Email Field API Name | OwnerId       | Program_Manager_Approver                                      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
    When I select "Approve" from approval decision panel
    When I enter Approval comment
    And I click submit
    When I re-login as "Automation" user on "QA" portal
    When I setup my app as "As an Administrator"
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    When I select "Queued Emails" from double headed dropdown inside admin portal
    Then I see email is generated with template "Program_Approved_Email_Template"

  @34314 @all @confirmationMessageBoxPopupForApprovalDecisionUsingApprovalCache-Programs
  Scenario: Setup confirmation message inside confirmation message box from approval process step cache configuration and validating it in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory        | fieldName                    | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Approve Confirmation Title   |                   | ApiGeneratedId:1 |
      | Approval Process Steps Cache | Approve Confirmation Message |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                    | fieldNewValue                   | coreComponentField                                         |
      | Program                              | Status                       | Created                         | Test program for automation -  SA mode only - Not approved |
      | Approval Process Steps Cache:General | Approve Confirmation Title   | Automation Approval             | Program_Manager_Approver                                   |
      | Approval Process Steps Cache:General | Approve Confirmation Message | Confirmation box for automation | Program_Manager_Approver                                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Approve" from approval decision panel
    When I enter Approval comment
    And I click submit
    Then I see confirmation box with body "Confirmation box for automation" is displayed

  @34317 @all @taskAssignmentNotificationForProgramSubmissionThroughMail-Programs
  Scenario: Setup email setting in configuration and validate that program owner receiving email for program submitted for approval
    Given I have default configuration as below:
      | configurationCategory | fieldName                          | fieldOrignalValue | filterId         |
      | Task Config           | Send Task Assignment Notification? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                          | fieldNewValue | coreComponentField                                         |
      | Program                 | Status                             | Created       | Test program for automation -  SA mode only - Not approved |
      | Task Config:Task Action | Send Task Assignment Notification? | true          | Approve Program                                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation" user on "QA" portal
    When I setup my app as "As an Administrator"
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    When I select "Queued Emails" from double headed dropdown inside admin portal
    Then I see email is generated with template "TaskReminderTemplateMultiple"

  @34316 @all @completeOnViewForSendToOwnerTaskConfig-Programs
  Scenario: Setup complete on view checkbox to true from send to owner task configuration and validating it by owner user
    Given I have default configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Task Config           | Complete On View? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName         | fieldNewValue | coreComponentField                                         |
      | Program                 | Status            | Created       | Test program for automation -  SA mode only - Not approved |
      | Task Config:Task Action | Complete On View? | true          | Approve Program                                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Send to Owner" from approval decision panel
    When I enter Approval comment
    And I click submit
    When I re-login as "Automation" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I click on "Start" icon for "Program Sent To Owner" inside table
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    Then I see approval with subject as "Program Sent To Owner" is not displayed

  @37348 @all @rejectConfirmationMessageFieldAtApprovalProcess-Programs
  Scenario: Setup confirmation message inside confirmation message box for reject from configuration and validating it in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory        | fieldName                   | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Reject Confirmation Title   |                   | ApiGeneratedId:1 |
      | Approval Process Steps Cache | Reject Confirmation Message |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                   | fieldNewValue                          | coreComponentField                                         |
      | Program                              | Status                      | Created                                | Test program for automation -  SA mode only - Not approved |
      | Approval Process Steps Cache:General | Reject Confirmation Title   | Automation Reject                      | Program_Manager_Approver                                   |
      | Approval Process Steps Cache:General | Reject Confirmation Message | Reject Confirmation box for automation | Program_Manager_Approver                                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Disapprove" from approval decision panel
    When I enter Approval comment
    And I click submit
    Then I see confirmation box with body "Reject Confirmation box for automation" is displayed

  @37431 @all @reassignConfirmationMessageFieldAtApprovalProcess-Programs
  Scenario: Setup confirmation message inside confirmation message box for reassign from configuration and validating it in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory        | fieldName                     | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Reassign Confirmation Title   |                   | ApiGeneratedId:2 |
      | Approval Process Steps Cache | Reassign Confirmation Message |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                     | fieldNewValue                            | coreComponentField                                         |
      | Program                              | Status                        | Created                                  | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General     | Comments Required             | false                                    | ADAC-0011                                                  |
      | Approval Process Steps Cache:General | Reassign Confirmation Title   | Automation Reassign                      | Program_Manager_Approver                                   |
      | Approval Process Steps Cache:General | Reassign Confirmation Message | Reassign Confirmation box for automation | Program_Manager_Approver                                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Reassign" from approval decision panel
    When I click select dropdown
    When I select specific user "Allen PM"
    And I click submit
    Then I see confirmation box with body "Reassign Confirmation box for automation" is displayed

  @37433 @all @sendToOwnerConfirmationMessageFieldAtApprovalProcess-Programs
  Scenario: Setup confirmation message inside confirmation message box for reassign from configuration and validating it in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory        | fieldName                          | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Send To Owner Confirmation Title   |                   | ApiGeneratedId:1 |
      | Approval Process Steps Cache | Send To Owner Confirmation Message |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                          | fieldNewValue                                 | coreComponentField                                         |
      | Program                              | Status                             | Created                                       | Test program for automation -  SA mode only - Not approved |
      | Approval Process Steps Cache:General | Send To Owner Confirmation Title   | Automation Send to Owner                      | Program_Manager_Approver                                   |
      | Approval Process Steps Cache:General | Send To Owner Confirmation Message | Send to Owner Confirmation box for automation | Program_Manager_Approver                                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Send to Owner" from approval decision panel
    When I enter Approval comment
    And I click submit
    Then I see confirmation box with body "Send to Owner Confirmation box for automation" is displayed

  @37506 @all @confirmationMessageBoxPopupForRejectApprovalDecisionAction-Programs
  Scenario: Setup confirmation message inside confirmation message box for reject approval decision action using Approval Decision Action from configuration and validating it in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Confirmation Title   |                   | ApiGeneratedId:1 |
      | Approval Decision Action | Confirmation Message |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                 | coreComponentField                                         |
      | Program                          | Status               | Created                       | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Confirmation Title   | Automation for Rejection      | ADAC-0010                                                  |
      | Approval Decision Action:General | Confirmation Message | Test Automation for Rejection | ADAC-0010                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Disapprove" from approval decision panel
    When I enter Approval comment
    And I click submit
    Then I see confirmation box with body "Test Automation for Rejection" is displayed

  @37523 @all @confirmationMessageBoxPopupForReassignApprovalDecisionAction-Programs
  Scenario: Setup confirmation message inside confirmation message box for reassign approval decision action using Approval Decision Action from configuration and validating it in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Confirmation Title   |                   | ApiGeneratedId:2 |
      | Approval Decision Action | Confirmation Message |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue               | coreComponentField                                         |
      | Program                          | Status               | Created                     | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Comments Required    | false                       | ADAC-0011                                                  |
      | Approval Decision Action:General | Confirmation Title   | Automation for Forward      | ADAC-0011                                                  |
      | Approval Decision Action:General | Confirmation Message | Test Automation for Forward | ADAC-0011                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Reassign" from approval decision panel
    When I click select dropdown
    When I select specific user "Allen PM"
    And I click submit
    Then I see confirmation box with body "Test Automation for Forward" is displayed

  @37539 @all @commentsFieldAPINameFieldForApproveAction-Programs
  Scenario: Setup comments as FederalProgramCFDA__c inside comments field API field using Approval decision action config from config and validating it at program detail page
    Given I have default configuration as below:
      | configurationCategory    | fieldName               | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Field API Name |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName               | fieldNewValue         | coreComponentField                                            |
      | Program                          | Status                  | Created               | Test program for automation -  SA mode only - Can be Approved |
      | Approval Decision Action:General | Comments Field API Name | FederalProgramCFDA__c | ADAC-0009                                                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
    When I select "Approve" from approval decision panel
    When I enter Approval comment
    And I click submit
    When I re-login as "Automation" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "View Program Details" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
    Then I see "Automation testing" inside page block details

  @38847 @all @confirmationMessageBoxPopupForSendToOwnerApprovalDecisionAction-Programs
  Scenario: Setup confirmation message inside confirmation message box for send back approval decision action using Approval Decision Action from configuration and validating it in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Confirmation Title   |                   | ApiGeneratedId:1 |
      | Approval Decision Action | Confirmation Message |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                | coreComponentField                                         |
      | Program                          | Status               | Created                      | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Confirmation Title   | Automation for Sendback      | ADAC-0012                                                  |
      | Approval Decision Action:General | Confirmation Message | Test Automation for Sendback | ADAC-0012                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Send to Owner" from approval decision panel
    When I enter Approval comment
    And I click submit
    Then I see confirmation box with body "Test Automation for Sendback" is displayed

  @37540 @all @viewPageProfileFieldForApprovalProcess-Programs @AutomationNotRequired @wip
  Scenario Outline: Changing user inside profile field inside task config from config validating it at program approval page
    Given I have default configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Task Config           | View Page Profiles | <oldProfiles>     | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName          | fieldNewValue | coreComponentField                                         |
      | Program                 | Status             | Created       | Test program for automation -  SA mode only - Not approved |
      | Task Config:Task Action | View Page Profiles | <newProfiles> | Approve Program                                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    Then I see approval with subject as "Test program for automation -  SA mode only - Not approved" is not displayed

    Examples:
      | oldProfiles                                                                                                         | newProfiles                                                                                                     |
      | ADT; CON; CTR; DA; DEV; EPOC; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND | ADT; CON; CTR; DA; DEV; EPOC; EXE; FD; FO; GA; GMO; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND |

  @37645 @all @successEmailSentWithRejectTemplateToProgramOwner-Programs
  Scenario: Setup email setting in configuration and validate that program owner receiving email with reject email template for program approval
    Given I have default configuration as below:
      | configurationCategory        | fieldName              | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Approve Email Template | ApiGeneratedId:1  | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName              | fieldNewValue                   | coreComponentField                                            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                              | Status                 | Created                         | Test program for automation -  SA mode only - Can be Approved |                           |                            |
      | Approval Process Steps Cache:General | Email Template Name    | Program Approved Email Template | Program Approved Email Template                               |                           |                            |
      | Approval Process Steps Cache:General | Email Template Name    | Program Rejected Email Template | Program Rejected Email Template                               |                           |                            |
      | Approval Process Steps Cache:General | Approve Email Template | ApiGeneratedId:2                | Program_Manager_Approver                                      |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
    When I select "Approve" from approval decision panel
    When I enter Approval comment
    And I click submit
    When I re-login as "Automation" user on "QA" portal
    When I setup my app as "As an Administrator"
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    When I select "Queued Emails" from double headed dropdown inside admin portal
    Then I see email is generated with template "Program_Rejected_Email_Template"

  @37646 @all @rejectEmailSentWithApproveTemplateToProgramOwner-Programs
  Scenario: Setup email setting in configuration and validate that program owner receiving email for rejection with approve email template for program approval
    Given I have default configuration as below:
      | configurationCategory        | fieldName             | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Reject Email Template | ApiGeneratedId:1  | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName             | fieldNewValue                   | coreComponentField                                         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                              | Status                | Created                         | Test program for automation -  SA mode only - Not approved |                           |                            |
      | Approval Process Steps Cache:General | Email Template Name   | Program Rejected Email Template | Program Rejected Email Template                            |                           |                            |
      | Approval Process Steps Cache:General | Email Template Name   | Program Approved Email Template | Program Approved Email Template                            |                           |                            |
      | Approval Process Steps Cache:General | Reject Email Template | ApiGeneratedId:2                | Program_Manager_Approver                                   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Disapprove" from approval decision panel
    When I enter Approval comment
    And I click submit
    When I re-login as "Automation" user on "QA" portal
    When I setup my app as "As an Administrator"
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    When I select "Queued Emails" from double headed dropdown inside admin portal
    Then I see email is generated with template "Program_Approved_Email_Template"

  @37656 @all @reassignedEmailSentWithApproveTemplateToProgramOwner-Programs
  Scenario: Setup email setting in configuration and validate that program owner receiving email for reassign with approve email template for program approval
    Given I have default configuration as below:
      | configurationCategory        | fieldName                 | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Reassigned Email Template |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                 | fieldNewValue                   | coreComponentField                                         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                              | Status                    | Created                         | Test program for automation -  SA mode only - Not approved |                           |                            |
      | Approval Process Steps Cache:General | Email Template Name       | Program Approved Email Template | Program Approved Email Template                            |                           |                            |
      | Approval Process Steps Cache:General | Reassigned Email Template | ApiGeneratedId:1                | Program_Manager_Approver                                   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Reassign" from approval decision panel
    When I click select dropdown
    When I select specific user "Allen PM"
    And I click submit
    When I re-login as "Automation" user on "QA" portal
    When I setup my app as "As an Administrator"
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    When I select "Queued Emails" from double headed dropdown inside admin portal
    Then I see email is generated with template "Program_Approved_Email_Template"

  @37666 @all @sendToOwnerEmailSentWithApproveTemplateToProgramOwner-Programs
  Scenario: Setup email setting in configuration and validate that program owner receiving email for reassign with approve email template for program approval
    Given I have default configuration as below:
      | configurationCategory        | fieldName                    | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Send To Owner Email Template |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                    | fieldNewValue                   | coreComponentField                                         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                              | Status                       | Created                         | Test program for automation -  SA mode only - Not approved |                           |                            |
      | Approval Process Steps Cache:General | Email Template Name          | Program Approved Email Template | Program Approved Email Template                            |                           |                            |
      | Approval Process Steps Cache:General | Send To Owner Email Template | ApiGeneratedId:1                | Program_Manager_Approver                                   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Send to Owner" from approval decision panel
    When I enter Approval comment
    And I click submit
    When I re-login as "Automation" user on "QA" portal
    When I setup my app as "As an Administrator"
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    When I select "Queued Emails" from double headed dropdown inside admin portal
    Then I see email is generated with template "Program_Approved_Email_Template"

  @37667 @all @notifyAdditionalPeopleThroughEmailWithApproveTemplateToProgramOwner-Programs
  Scenario: Setup email setting in configuration and validate that program owner receiving email for program approval
    Given I have default configuration as below:
      | configurationCategory        | fieldName                | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Notify Additional People | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                | fieldNewValue | coreComponentField                                            |
      | Program                              | Status                   | Created       | Test program for automation -  SA mode only - Can be Approved |
      | Approval Process Steps Cache:General | Notify Additional People | true          | Program_Manager_Approver                                      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I select "Draft Programs" from double headed dropdown inside admin portal
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
	When I select "Approve" from approval decision panel
	When I enter Approval comment
    And I click submit
    When I re-login as "Automation" user on "QA" portal
    When I setup my app as "As an Administrator"
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    When I select "Queued Emails" from double headed dropdown inside admin portal
    Then I see email is generated with template "Program_Approved_Email_Template"

  @41058 @all @mandatoryCommentsReqForReassignAction-Programs
  Scenario: Setup comments requried as mandatory for reassign from configuration and in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName         | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Required | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName         | fieldNewValue | coreComponentField                                         |
      | Program                          | Status            | Created       | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Comments Required | true          | ADAC-0011                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Reassign" from approval decision panel
    And I click submit
    Then I see "Comments are Required." error is displayed

  @41059 @all @commentsFieldAPINameFieldForReassignAction-Programs
  Scenario: Setup comments as FederalProgramCFDA__c inside comments field API field using Approval decision action config from config and validating it at program detail page
    Given I have default configuration as below:
      | configurationCategory    | fieldName               | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Field API Name |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName               | fieldNewValue         | coreComponentField                                            |
      | Program                          | Status                  | Created               | Test program for automation -  SA mode only - Can be Approved |
      | Approval Decision Action:General | Comments Field API Name | FederalProgramCFDA__c | ADAC-0011                                                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
    When I select "Reassign" from approval decision panel
    When I click select dropdown
    When I select specific user "Allen PM"
    When I enter Approval comment
    And I click submit
    When I re-login as "Automation" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Can be Approved"
    When I click on "View Program Details" icon for "Test program for automation -  SA mode only - Can be Approved" inside table
    Then I see "Automation testing" inside page block details

  @41063 @all @hideApproveOptionFromHideExpressionJSONField-Programs
  Scenario: Hiding approve option from configuration and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                       | coreComponentField                                         |
      | Program                          | Status               | Created                                             | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:HideExpressonJsonForApprovalAction | ADAC-0009                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Approve" is disabled

  @41064 @all @hideDisapproveOptionFromHideExpressionJSONField-Programs
  Scenario: Hiding reject option from configuration and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                       | coreComponentField                                         |
      | Program                          | Status               | Created                                             | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:HideExpressonJsonForApprovalAction | ADAC-0010                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Disapprove" is disabled

  @41065 @all @hideReassignOptionFromHideExpressionJSONField-Programs
  Scenario: Hiding forward option from configuration and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                       | coreComponentField                                         |
      | Program                          | Status               | Created                                             | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:HideExpressonJsonForApprovalAction | ADAC-0011                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Reassign" is disabled

  @41067 @all @hideSendToOwnerOptionFromHideExpressionJSONField-Programs
  Scenario: Hiding send back option from configuration and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                       | coreComponentField                                         |
      | Program                          | Status               | Created                                             | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:HideExpressonJsonForApprovalAction | ADAC-0012                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Send to Owner" is disabled

  @41060 @all @validateCommentedTextInsideHistoryTabForReassignAction-Programs
  Scenario: Validating commented text inside history tab for reassign approval action at program detail page
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                                         |
      | Program               | Status    | Created       | Test program for automation -  SA mode only - Not approved |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I select "Reassign" from approval decision panel
    When I click select dropdown
    When I select specific user "Allen PM"
    When I enter Approval comment
    And I click submit
    When I re-login as "Automation" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "View Program Details" icon for "Test program for automation -  SA mode only - Not approved" inside table
    When I navigate to "History" sub tab
    Then I see "Automation testing" comment for user "Allen PM"