@flexgrid-component
Feature: Flex Grid Component Scenarios
	Abbreviations: ProgramPerformanceMgmtGridView (PPMGV) 
	Test all flex grid component based scenarios 
	As a configuration manager i make different configurational changes in flex grid component and will validate them.

	@34320 @all @changeOfN2GgridHeaderGoalOjective-ProgramStrategicGoals
	Scenario: changing information section header name of flex grid in configuratin and validating inside planning-programs view icon - plan subtab
	Given I have default configuration as below:
	|configurationCategory |fieldName  |fieldOrignalValue    |filterId        |
	|Flex Grid             |Header     |Goals Objectives     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName      |fieldNewValue                   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General    |Header         |Automation Goals Objectives     |ProgramStrategicGoals |                         |                          | 
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Plan" sub tab inside page layout 
	Then I see "Automation Goals Objectives" as header
	
	@34321 @all @disableMenuOptionGoalObjective-ProgramStrategicGoals
	Scenario: Disable menu bars for Goal Objective flex grid in configuratin and validating inside planning-programs view icon - plan subtab
	Given I have default configuration as below:
	|configurationCategory |fieldName        |fieldOrignalValue    |filterId        |
	|Flex Grid             |Disable Menu     |false                |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName      |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General    |Disable Menu   |true            |ProgramStrategicGoals |                         |                          | 
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Plan" sub tab inside page layout 
	Then I see PPMGV menu bars not displayed
	
	@34323 @all @disableQuicksearchfromN2GFlexGrid-ProgramStrategicGoals
	Scenario: Disable quick search bar for Goal Objective flex grid in configuratin and validating inside planning-programs view icon - plan subtab
	Given I have default configuration as below:
	|configurationCategory |fieldName           |fieldOrignalValue    |filterId        |
	|Flex Grid             |Enable Quick Search |true                 |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName             |fieldNewValue    |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General    |Enable Quick Search   |false            |ProgramStrategicGoals |                         |                          |
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Plan" sub tab inside page layout 
	Then I see quick search option disabled for "Program Performance Mgmt Grid View"
	
	@34325 @all @disableExport-ProgramStrategicGoals
	Scenario: Disable download PDF/Excel from for Goal Objective menu flex grid in configuratin and validating inside planning-programs view icon - plan subtab
	Given I have default configuration as below:
	|configurationCategory |fieldName           |fieldOrignalValue    |filterId        |
	|Flex Grid             |Enable Export       |true                 |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName             |fieldNewValue    |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General    |Enable Export         |false            |ProgramStrategicGoals |                         |                          |
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Plan" sub tab inside page layout 
	And I click on PPMGV parallel lines bar
	Then I see "Download as PDF""Download as CSV" options disabled in PPMGV menu
	
	@34327 @all @disableFlexTableFieldName-ProgramStrategicGoals
	Scenario: Remove flex table header date column inside Goal Objective configuratin and validating inside planning-programs view icon - plan subtab
	Given I have default configuration as below:
	|configurationCategory |fieldName           |fieldOrignalValue                                    |filterId        |
	|Flex Grid             |Display Field Names |Type__c,Title__c,Description__c,Status__c,DueDate__c |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName             |fieldNewValue                             |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General    |Display Field Names   |Type__c,Title__c,Description__c,Status__c |ProgramStrategicGoals |                         |                          |
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Plan" sub tab inside page layout
	Then I see "Due Date" column for PPMGV flex table is not displayed
	
	@34332 @all @hideViewIconForPPMGVflexTable-Programs
	Scenario: Hide view context from PPMGV view cofniguration and validate inside planning-programs view icon - plan subtab - Goal Objectives flex table
	Given I have default configuration as below:
	|configurationCategory                 |fieldName           |fieldOrignalValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid Action:Flex Table Action    |Hide for context    |                 |ProgramStrategicGoals |Name                     |View                      |
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName           |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid Action:Flex Table Action    |Hide For Context    |View         |ProgramStrategicGoals |Name                     |View                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Plan" sub tab inside page layout
	Then I see "View" icon is not displayed inside PPMGV flex table
