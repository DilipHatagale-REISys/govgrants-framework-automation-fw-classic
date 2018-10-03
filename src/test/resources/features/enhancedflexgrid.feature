@enhancedflexgrid-component 
Feature: Enhanced Flex Grid Component Scenarios 
	Test all enhanced flex grid component based scenarios 
	As a configuration manager i make different configurational changes in enhanced flex grid component and will validate them.

    @35432 @all @disablingAdvanceFilterForEnhancedGrid-gPlanning
	Scenario: validate disabling of advance filter from planning-Program enhance flex grid
	Given I have default configuration for "Flex Grid" field "Enable Filter" as "true" with filter "" for field ""
	Given I setup filter clause for "General" in "TmpActiveGrantsGrid" for field "" having value ""
	When I reconfigure "Flex Grid" field "Enable Filter" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Financials" sub tab inside page layout 
    Then I see Advance filter is disabled from planning enhanced flex grid