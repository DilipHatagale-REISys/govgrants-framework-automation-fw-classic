@approvalprocess_componenet
Feature: Test all approval process component based scenarios 
	As a configuration manager i make different configurational changes in approval process component and will validate them.
	
	@32971 @all @hideApproveOption-Programs
	Scenario: Hiding approve option from configuration and validating its content in pending tasks approval decision
	Given I have default configuration for "Approval Decision Action" field "Hide Action" as "false" with filter ""
	Given I setup filter clause for "General" in "ADAC-0009" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Hide Action" as "true"
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval of type "Approve Program" with subject as "Test program for automation"
	Then I see "Approve" is disabled
	
	@32974 @all @changeApproveOptionSequence-Programs
	Scenario: Changing sequence of Approve option from configuration and validating its sequence in pending tasks approval decision
	Given I have default configuration for "Approval Decision Action" field "Sequence" as "1" with filter ""
	Given I setup filter clause for "General" in "ADAC-0009" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Sequence" as "5"
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval of type "Approve Program" with subject as "Test program for automation"
	Then i see "Approve" shown at number "3" in Approve Decision panel
	
	@32975 @all @mandatoryCommentsReq-Programs
	Scenario: Setup comments requried as mandatory for approval from configuration and in pending tasks approval decision
	Given I have default configuration for "Approval Decision Action" field "Comments Required" as "false" with filter ""
	Given I setup filter clause for "General" in "ADAC-0009" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Comments Required" as "true"
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval of type "Approve Program" with subject as "Test program for automation"
	When I select "Approve" from approval decision panel
	And I click submit
	Then I see "Comments are Required." error is displayed
	
	@32973 @all @labelChangeOfApprovalDecision-Programs
	Scenario: Changing label of approve radio button text from configuration and validating its changed label in pending tasks approval decision 
	Given I have default configuration for "Approval Decision Action" field "Action Label Override" as "Approve" with filter ""
	Given I setup filter clause for "General" in "ADAC-0009" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Action Label Override" as "Approved"
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	When I start the approval of type "Approve Program" with subject as "Test program for automation"
	Then I see "Approved" inside approval decision box		