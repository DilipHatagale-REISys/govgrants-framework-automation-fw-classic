@approvalprocess-componenet
Feature: Test all approval process component based scenarios 
	As a configuration manager i make different configurational changes in approval process component and will validate them.
	
	@32971 @all @hideApproveOption-Programs
	Scenario: Hiding approve option from configuration and validating its content in pending tasks approval decision
	Given I have default configuration for "Approval Decision Action" field "Hide Action" as "false" with filter ""
	Given I setup filter clause for "General" in "ADAC-0009" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Hide Action" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	#When I start the "Approval" as "Approver" 
	#Then I see "Approve" is displayed
	
	@32974 @all @changeApproveOptionSequence-Programs
	Scenario: Changing sequence of Approve option from configuration and validating its sequence in pending tasks approval decision
	Given I have default configuration for "Approval Decision Action" field "Sequence" as "1" with filter ""
	Given I setup filter clause for "General" in "ADAC-0009" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Sequence" as "5"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	#When I start the "Approval" as "Approver" 
	#Then I see "Approve" is displayed
	
	@32975 @all @mandatoryCommentsReq-Programs
	Scenario: Setup comments requried as mandatory for approval from configuration and in pending tasks approval decision
	Given I have default configuration for "Approval Decision Action" field "Comments Required" as "false" with filter ""
	Given I setup filter clause for "General" in "ADAC-0009" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Comments Required" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	And I navigate to "Tasks" to reach "Pending" side bar content
	#When I start the "Approval" as "Approver" 
	#Then I see "Approve" is displayed