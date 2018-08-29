@pagelayout-component
Feature: Test all page layout component based scenarios 
	As a configuration manager i make different configurational changes in page layout component and will validate them.
	
	@32762 @all @setUpHeaderWithContent-Programs
	Scenario: setting up header from configuration and validating its content
	Given I have default configuration for "Page Layout" field "Header" as "Program - {!Program__c}" with filter ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Header" as "Program - {!FederalProgramCFDA__c}"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on Program edit icon
	Then I see "12345" shown as over view title in header "Program"
	
