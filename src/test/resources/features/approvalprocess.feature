@approvalprocess-component
Feature: Approval Process Component Scenarios
	Test all approval process component based scenarios 
	As a configuration manager i make different configurational changes in approval process component and will validate them.
	
	@34305 @all @hideApproveOption-Programs
	Scenario: Hiding approve option from configuration and validating its content in pending tasks approval decision
	Given I have default configuration as below:
	|configurationCategory    |fieldName  |fieldOrignalValue|filterId        |
	|Approval Decision Action |Hide Action|false            |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory            |fieldName  |fieldNewValue|coreComponentField|
	|Approval Decision Action:General |Hide Action|true         |ADAC-0009         |
	When I login as "Automation-PM" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Test program for Automation-A to SA"
	Then I see "Approve" is disabled
	
	@34307 @all @changeApproveOptionSequence-Programs
	Scenario: Changing sequence of Approve option from configuration and validating its sequence in pending tasks approval decision
	Given I have default configuration as below:
	|configurationCategory    |fieldName  |fieldOrignalValue|filterId        |
	|Approval Decision Action |Sequence   |1                |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory            |fieldName |fieldNewValue|coreComponentField    |
	|Approval Decision Action:General |Sequence  |5           |ADAC-0009             |
	When I login as "Automation-PM" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Test program for Automation-A to SA"
	Then i see "Approve" shown at number "3" in Approve Decision panel
	
	@34308 @all @mandatoryCommentsReq-Programs
	Scenario: Setup comments requried as mandatory for approval from configuration and in pending tasks approval decision
	Given I have default configuration as below:
	|configurationCategory    |fieldName         |fieldOrignalValue|filterId        |
	|Approval Decision Action |Comments Required |false            |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory            |fieldName          |fieldNewValue|coreComponentField|
	|Approval Decision Action:General |Comments Required  |true         |ADAC-0009         |
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Test program for Automation-A to SA"
	When I select "Approve" from approval decision panel
	And I click submit
	Then I see "Comments are Required." error is displayed
	
	@34306 @all @labelChangeOfApprovalDecision-Programs
	Scenario: Changing label of approve radio button text from configuration and validating its changed label in pending tasks approval decision
	Given I have default configuration as below:
	|configurationCategory    |fieldName             |fieldOrignalValue|filterId        |
	|Approval Decision Action |Action Label Override |Approve          |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory            |fieldName              |fieldNewValue|coreComponentField|
	|Approval Decision Action:General |Action Label Override  |Approved     |ADAC-0009         | 
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Test program for Automation-A to SA"
	Then I see "Approved" inside approval decision box
	
	@34309 @all @confirmationMessageBoxPopupForApprovalDecisionAction-Programs
	Scenario: Setup confirmation message inside confirmation message box from configuration and validating it in pending tasks approval decision
	Given I have default configuration as below:
	|configurationCategory    |fieldName         |fieldOrignalValue|filterId        |
	|Approval Decision Action |Confirmation Title|                 |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory            |fieldName              |fieldNewValue                  |coreComponentField|
	|Approval Decision Action:General |Confirmation Title     |Automation Approval            |ADAC-0009         |
	|Approval Decision Action:General |Confirmation Message   |Confirmation box for automation|ADAC-0009         |
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
    When I start the approval with subject "Test program for Automation-A to SA"
	When I select "Approve" from approval decision panel
	When I enter Approval comment
	And I click submit
	Then I see confirmation box with body "Confirmation box for automation" is displayed
	
	@34310 @all @filterCriteriaForUserReassignForApprovalDecisionAction-Programs
	Scenario Outline: Entering filter criteria for user reassign using forward action from configuration and validating it in pending tasks approval decision
	Given I have default configuration as below:
	|configurationCategory    |fieldName                         |fieldOrignalValue|filterId        |
	|Approval Decision Action |Filter Criteria for User Reassign |                 |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory            |fieldName                          |fieldNewValue           |coreComponentField|
	|Approval Decision Action:General |Filter Criteria for User Reassign  |<newFilterCriteriaValue>|ADAC-0011         | 
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Test program for Automation-A to SA"
	When I select "Reassign" from approval decision panel
	When I click select dropdown
	Then I see "Allen PM" inside selectbox
	Examples:
	|newFilterCriteriaValue|
	|Name='Allen PM'|
	
	@34311 @wip @automationNotRequired @approverTaskNotCreatedPrograms-Programs
	Scenario: Change approver setting for not receiveing approve task in configuration and validate that pending approver task is not displayed
	Given I have default configuration as below:
	|configurationCategory               |fieldName      |fieldOrignalValue |filterId|
	|Approval Process Steps Cache        |Field API Name|ProgramApprover__c |ApiGeneratedId:1|
	Given I setup test configuration as below:
	|configurationCategory                |fieldName         |fieldNewValue   |coreComponentField         |
	|Program	                          |Status           |Created          |Automation Program -SA to C|
	|Approval Process Steps Cache:General|Field API Name    |                 |Program_Manager_Approver   |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Automation Program -SA to C"
	When I click on "Edit" icon of status "Created" for "Automation Program -SA to C" program in flex table
	And I complete submit for approval
	When I re-login as "Automation-PM" with "QA" url
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I navigate to "Tasks" to reach "Pending" side bar content
	Then I see approval with subject as "Automation Program -SA to C" is not displayed
	
	@34313 @all @successEmailSentToProgramOwner-Programs 
	Scenario: Setup email setting in configuration and validate that program owner receiving email for program approval
	Given I have default configuration as below:
	|configurationCategory               |fieldName           |fieldOrignalValue  |filterId        |
	|Approval Process Steps Cache        |Email Field API Name|CreatedById        |ApiGeneratedId:1|
	Given I setup test configuration as below:
	|configurationCategory                |fieldName               |fieldNewValue |coreComponentField         |
	|Program	                          |Status                  |Created       |Automation Program -SA to C|
	|Approval Process Steps Cache:General |Email Field API Name    |OwnerId       |Program_Manager_Approver   |
    When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Automation Program -SA to C"
	When I click on "Edit" icon of status "Created" for "Automation Program -SA to C" program in flex table
	And I complete submit for approval
	When I re-login as "Automation-PM" with "QA" url 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Automation Program -SA to C"
	When I select "Approve" from approval decision panel
	When I enter Approval comment
    And I click submit
	And I re-login as "Automation" with "QA" url
	When I access the "GovGrants Launcher Tab" for "As an Administrator" app to reach "Operate" tab
	When I navigate to "Activities" to reach "Email Logs" side bar content
	When I select "Queued Emails" from double headed dropdown inside admin portal
	Then I see email is generated with template "Program_Approved_Email_Template"
	
	@34314 @all @confirmationMessageBoxPopupForApprovalDecisionUsingApprovalCache-Programs
	Scenario: Setup confirmation message inside confirmation message box from approval process step cache configuration and validating it in pending tasks approval decision
	Given I have default configuration as below:
	|configurationCategory               |fieldName                 |fieldOrignalValue  |filterId        |
	|Approval Process Steps Cache        |Approve Confirmation Title|                   |ApiGeneratedId:1|
	Given I setup test configuration as below:
	|configurationCategory                |fieldName                   |fieldNewValue                   |coreComponentField         |
	|Program	                          |Status                      |Created                         |Automation Program -SA to C|
	|Approval Process Steps Cache:General |Approve Confirmation Title  |Automation Approval             |Program_Manager_Approver   |
	|Approval Process Steps Cache:General |Approve Confirmation Message|Confirmation box for automation |Program_Manager_Approver   |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Automation Program -SA to C"
	When I click on "Edit" icon of status "Created" for "Automation Program -SA to C" program in flex table
	And I complete submit for approval
	When I re-login as "Automation-PM" with "QA" url
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Automation Program -SA to C"
	When I select "Approve" from approval decision panel
	When I enter Approval comment
	And I click submit
	Then I see confirmation box with body "Confirmation box for automation" is displayed
	
	@34317 @all @taskAssignmentNotificationForProgramSubmissionThroughMail
	Scenario: Setup email setting in configuration and validate that program owner receiving email for program submitted for approval
	Given I have default configuration as below:
	|configurationCategory|fieldName                         |fieldOrignalValue|filterId        |
	|Task Config          |Send Task Assignment Notification?|false            |ApiGeneratedId:1|
	Given I setup test configuration as below:
	|configurationCategory   |fieldName                        |fieldNewValue |coreComponentField         |
	|Program	             |Status                           |Created       |Automation Program -SA to C|
	|Task Config:Task Action|Send Task Assignment Notification?|true          |Approve Program            |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Automation Program -SA to C"
	When I click on "Edit" icon of status "Created" for "Automation Program -SA to C" program in flex table
	And I complete submit for approval
	When I re-login as "Automation" with "QA" url
	When I access the "GovGrants Launcher Tab" for "As an Administrator" app to reach "Operate" tab
	When I navigate to "Activities" to reach "Email Logs" side bar content
	When I select "Queued Emails" from double headed dropdown inside admin portal
	Then I see email is generated with template "TaskReminderTemplateMultiple"

    @34316 @all @completeOnViewForSendToOwnerTaskConfig-Programs
    Scenario: Setup complete on view checkbox to true from send to owner task configuration and validating it by owner user
    Given I have default configuration as below:
	|configurationCategory|fieldName        |fieldOrignalValue|filterId        |
	|Task Config          |Complete On View?|false            |ApiGeneratedId:1|
	Given I setup test configuration as below:
	|configurationCategory  |fieldName        |fieldNewValue |coreComponentField         |
	|Program	            |Status           |Created       |Automation Program -SA to C|
	|Task Config:Task Action|Complete On View?|true          |Approve Program            |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Automation Program -SA to C"
	When I click on "Edit" icon of status "Created" for "Automation Program -SA to C" program in flex table
	And I complete submit for approval
	When I re-login as "Automation-PM" with "QA" url
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Automation Program -SA to C"
	When I select "Send to Owner" from approval decision panel
	When I enter Approval comment
	And I click submit
	When I re-login as "Automation" with "QA" url
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Program Sent To Owner"
	And I navigate to "Tasks" to reach "Pending" side bar content  
	Then I see approval with subject as "Program Sent To Owner" is not displayed	
