@pagelayout-component
Feature: Test all page layout component based scenarios 
	As a configuration manager i make different configurational changes in page layout component and will validate them.
	
	@32762 @all @setUpHeaderWithContent-Programs
	Scenario: setting up header from configuration and validating its content in Edit view
	Given I have default configuration for "Page Layout" field "Header" as "Program - {!ProgramName__c}" with filter ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Header" as "Program - {!FederalProgramCFDA__c}"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on "Edit" icon of status "Created" in flex table
	Then I see "12345" shown as over view title in header "Program"
	
	@32764 @all @setUpPageInstructionText-Programs
	Scenario: validate the page instructions text apears as configured in Edit view
	Given I have default configuration for "Page Layout" field "Page Instruction Text" as "govgrants_config:PageInstructionText" with filter ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Page Instruction Text" as "Automation Instruction Text"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on "Edit" icon of status "Created" in flex table
	Then I see "Automation Instruction Text" shown as page instruction text
	
	@32765 @all  @setUpHeaderOverRideField-Programs
	Scenario: setting up header over ride configuration and validating its content after clicking New button
	Given I have default configuration for "Page Layout" field "Create Header Override" as "Creating New Program" with filter ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Create Header Override" as "Creating New Program for Automation"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on "New" button in right header
	Then I see "Creating New Program for Automation" shown as over view header
	
	@32766 @all @setUpHeaderOverRideField-Programs
	Scenario: setting up header from configuration and validating its content
	Given I have default configuration for "Page Layout" field "Header" as "Program - {!ProgramName__c}" with filter ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Header" as "Program - {!FederalProgramCFDA__c}"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on Program edit icon
	Then I see "12345" shown as over view title in header "Program"