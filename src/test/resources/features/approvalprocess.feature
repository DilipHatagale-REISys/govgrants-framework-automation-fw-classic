@approvalprocess-componenet
Feature: Approval Process Component Scenarios
	Test all approval process component based scenarios 
	As a configuration manager i make different configurational changes in approval process component and will validate them.
	
	@32971 @all @hideApproveOption-Programs
	Scenario: Hiding approve option from configuration and validating its content in pending tasks approval decision
	Given I have default configuration for "Approval Decision Action" field "Hide Action" as "false" with filter ""
	Given I setup filter clause for "General" in "ADAC-0009" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Hide Action" as "true"
	When I login as "Automation-PM" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Test program for Automation-A to SA"
	Then I see "Approve" is disabled
	
	@32974 @all @changeApproveOptionSequence-Programs
	Scenario: Changing sequence of Approve option from configuration and validating its sequence in pending tasks approval decision
	Given I have default configuration for "Approval Decision Action" field "Sequence" as "1" with filter ""
	Given I setup filter clause for "General" in "ADAC-0009" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Sequence" as "5"
	When I login as "Automation-PM" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Test program for Automation-A to SA"
	Then i see "Approve" shown at number "3" in Approve Decision panel
	
	@32975 @all @mandatoryCommentsReq-Programs
	Scenario: Setup comments requried as mandatory for approval from configuration and in pending tasks approval decision
	Given I have default configuration for "Approval Decision Action" field "Comments Required" as "false" with filter ""
	Given I setup filter clause for "General" in "ADAC-0009" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Comments Required" as "true"
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Test program for Automation-A to SA"
	When I select "Approve" from approval decision panel
	And I click submit
	Then I see "Comments are Required." error is displayed
	
	@32973 @all @labelChangeOfApprovalDecision-Programs
	Scenario: Changing label of approve radio button text from configuration and validating its changed label in pending tasks approval decision 
	Given I have default configuration for "Approval Decision Action" field "Action Label Override" as "Approve" with filter ""
	Given I setup filter clause for "General" in "ADAC-0009" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Action Label Override" as "Approved"
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Test program for Automation-A to SA"
	Then I see "Approved" inside approval decision box
	
	@32976 @all @confirmationMessageBoxPopupForApprovalDecisionAction-Programs
	Scenario: Setup confirmation message inside confirmation message box from configuration and validating it in pending tasks approval decision
	Given I have default configuration for "Approval Decision Action" field "Confirmation Title" as "" with filter ""
	Given I setup filter clause for "General" in "ADAC-0009" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Confirmation Title" as "Automation Approval"
	When I reconfigure "Approval Decision Action" field "Confirmation Message" as "Confirmation box for automation"
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval with subject "Test program for Automation-A to SA"
	When I select "Approve" from approval decision panel
	When I enter Approval comment
	And I click submit
	Then I see confirmation box with body "Confirmation box for automation" is displayed
	
	@33088 @all @filterCriteriaForUserReassignForApprovalDecisionAction-Programs
	Scenario Outline: Entering filter criteria for user reassign using forward action from configuration and validating it in pending tasks approval decision
	Given I have default configuration for "Approval Decision Action" field "Filter Criteria for User Reassign" as "" with filter ""
	Given I setup filter clause for "General" in "ADAC-0011" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Filter Criteria for User Reassign" as "<newFilterCriteriaValue>"
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
	
	@33099 @all @approverTaskNotCreatedPrograms-Programs
	Scenario: Change approver setting for not receiveing approve task in configuration and validate that pending approver task is not displayed	
	Given I have default configuration for "Approval Process Steps Cache" field "Field API Name" as "ProgramApprover__c" with filter ""
	Given I setup "Program" field "Status" as "Created" with filter clause on field "Automation Program -SA to C"
	Given I setup filter clause for "General" in "Program_Manager_Approver" for field "" having value ""
	And I reconfigure "Approval Process Steps Cache" field "Field API Name" as ""
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Automation Program -SA to C"
	When I click on "Edit" icon of status "Created" for "Automation Program -SA to C" program in flex table
	And I complete submit for approval
	When I re-login as "Automation-PM" with "QA" url
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I navigate to "Tasks" to reach "Pending" side bar content
	Then I see approval with subject as "Automation Program -SA to C" is not displayed
	
	@33174 @all @successEmailSentToProgramOwner-Programs
	Scenario: Setup email setting in configuration and validate that program owner receiving email for program approval
	Given I setup "Program" field "Status" as "Created" with filter clause on field "Automation Program -SA to C"
	Given I have default configuration for "Approval Process Steps Cache" field "Email Field API Name" as "CreatedById" with filter ""
	Given I setup filter clause for "General" in "Program_Manager_Approver" for field "" having value ""
	And I reconfigure "Approval Process Steps Cache" field "Email Field API Name" as "OwnerId"
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
	When I re-login as "Automation" with "QA" url
	When I access the "GovGrants Launcher Tab" for "As an Administrator" app to reach "Operate" tab
	When I navigate to "Activities" to reach "Email Logs" side bar content
	When I select "Success Emails" from double headed dropdown inside admin portal
	When I click on "View" icon of status "Program_Approved_Email_Template" inside admin portal
	Then I see "Success" is displayed
	
	@33179 @all @confirmationMessageBoxPopupForApprovalDecisionUsingApprovalCache-Programs
	Scenario: Setup confirmation message inside confirmation message box from approval process step cache configuration and validating it in pending tasks approval decision
	Given I setup "Program" field "Status" as "Created" with filter clause on field "Automation Program -SA to C"
	Given I have default configuration for "Approval Process Steps Cache" field "Approve Confirmation Title" as "" with filter ""
	Given I setup filter clause for "General" in "Program_Manager_Approver" for field "" having value ""
	When I reconfigure "Approval Process Steps Cache" field "Approve Confirmation Title" as "Automation Approval"
	When I reconfigure "Approval Process Steps Cache" field "Approve Confirmation Message" as "Confirmation box for automation"
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