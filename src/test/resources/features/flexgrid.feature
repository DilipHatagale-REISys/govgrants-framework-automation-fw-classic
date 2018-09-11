@flexgrid-component
Feature: Test all flex grid component based scenarios 
	As a configuration manager i make different configurational changes in flex grid component and will validate them.

	@32341 @all @changeOfN2GgridHeaderGoalOjective-ProgramStrategicGoals
	Scenario: changing information section header name of flex grid in configuratin and validating inside planning-programs view icon - plan subtab
	Given I have default configuration for "Flex Grid" field "Header" as "Goals Objectives" with filter ""
	Given I setup filter clause for "General" in "ProgramStrategicGoals" for field "" having value ""
	When I reconfigure "Flex Grid" field "Header" as "Automation Goals Objectives"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Plan" sub tab inside page layout 
	Then I see "Automation Goals Objectives" as header
	
	@32342 @all @disableMenuOptionGoalObjective-ProgramStrategicGoals
	Scenario: Disable menu bars for Goal Objective flex grid in configuratin and validating inside planning-programs view icon - plan subtab
	Given I have default configuration for "Flex Grid" field "Disable Menu" as "false" with filter ""
	Given I setup filter clause for "General" in "ProgramStrategicGoals" for field "" having value ""
	When I reconfigure "Flex Grid" field "Disable Menu" as "true"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Plan" sub tab inside page layout 
	Then I see ProgramPerformanceMgmtGridView menu bars not displayed
	
	@32342 @all @disableQuicksearchfromN2GFlexGrid-ProgramStrategicGoals
	Scenario: Disable quick search bar for Goal Objective flex grid in configuratin and validating inside planning-programs view icon - plan subtab
	Given I have default configuration for "Flex Grid" field "Enable Quick Search" as "true" with filter ""
	Given I setup filter clause for "General" in "ProgramStrategicGoals" for field "" having value ""
	When I reconfigure "Flex Grid" field "Enable Quick Search" as "false"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Plan" sub tab inside page layout 
	Then I see quick search option disabled for "Program Performance Mgmt Grid View"