@approvalprocess-componenet
Feature: Test all approval process component based scenarios 
	As a configuration manager i make different configurational changes in approval process component and will validate them.
	
	@32971 @all @hideApproveButton-Programs
	Scenario: Hiding header from configuration and validating its content in pending tasks
	Given I have default configuration for "Approval Decision Action" field "Hide Action" as "false" with filter ""
	Given I setup filter clause for "General" in "ADAC-0009" for field "" having value ""
	When I reconfigure "Approval Decision Action" field "Hide Action" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab