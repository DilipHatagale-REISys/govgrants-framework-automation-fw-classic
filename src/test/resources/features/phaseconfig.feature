@phaseconfig-component 
Feature: Phase Config Component Scenarios 
	Test all phase config component based scenarios 
	As a configuration manager i make different configurational changes in phase component and will validate them.

    @34419 @all @validatePlanningPhaseAllowedProfile-gplanning
	Scenario Outline: Remove admin profile from config. and validate that Plannign phase doesn't show up in admin user	
	Given I have default configuration for "Phase Config" field "Available for Profiles" as "<Old-Profile>" with filter "" for field ""
	Given I setup filter clause for "General" in "GrantorPlanning" for field "" having value ""
	When I reconfigure "Phase Config" field "Available for Profiles" as "<New-Profile>"	 	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I do not see "Planning" phase
	Examples:
	|New-Profile|Old-Profile|
	|ADT; CON; CTR; DA; DEV; EBZ; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND|ADT; CON; CTR; DA; DEV; EBZ; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND|
	
	@34420 @all @validateTabDisplayName-gplanning
	Scenario: Setup tab name as Automation from config. and validate that tab name for planning is changed to Automation
	Given I have default configuration for "Phase Config" field "Tab Display Label" as "Planning" with filter "" for field ""
	Given I setup filter clause for "General" in "GrantorPlanning" for field "" having value ""
	When I reconfigure "Phase Config" field "Tab Display Label" as "Automation"	 	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see "Automation" phase
	
	@34484 @all @validatePhaseSequence-gplanning
	Scenario: Setup tab sequence as "0" from config. and validate that tab name for planning is changed to first position
	Given I have default configuration for "Phase Config" field "Sequence" as "2" with filter "" for field ""
	Given I setup filter clause for "General" in "GrantorPlanning" for field "" having value ""
	When I reconfigure "Phase Config" field "Sequence" as "0"	 	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see "Planning" phase at position "0"
	
	@34485 @all @validateNumberOfCharts-gplanning
	Scenario: Setup number of charts as "2" from config. and validate only two charts are displayed inside planning
	Given I have default configuration for "Phase Config" field "Total Charts Allowed" as "3" with filter "" for field ""
	Given I setup filter clause for "General" in "GrantorPlanning" for field "" having value ""
	When I reconfigure "Phase Config" field "Total Charts Allowed" as "2"	 	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see "2" charts are displayed
	
	@34487 @all @validateChartsDisplayedAtBottom-gplanning
	Scenario: Setup body bottom page url for charts in config. and validate charts are displayed at bottom are displayed inside planning
	Given I have default configuration for "Phase Config" field "Body Bottom Page URL" as "" with filter "" for field ""
	Given I setup filter clause for "General" in "GrantorPlanning" for field "" having value ""
	When I reconfigure "Phase Config" field "Body Bottom Page URL" as "/apex/GNT__ChartsView?t=Planning"	 	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I charts are displayed at "Bottom"
	
	@34587 @all @validateIsPlanningDisplayedInTaskSummary-gplanning
	Scenario: Uncheck is Phase for planning in config. and validate Planning is not displayed in Task Summary on home page
	Given I have default configuration for "Phase Config" field "Is Phase" as "true" with filter "" for field ""
	Given I setup filter clause for "General" in "GrantorPlanning" for field "" having value ""
	When I reconfigure "Phase Config" field "Is Phase" as "false"	 	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I do not see "Planning" in task summary by phase
	
	@34589 @all @validateSettingAsDefaultLandingTab-gplanning
	Scenario: Select planning as "Default landing tab" in config. and validate Planning is default landing page
	Given I have default configuration for "Phase Config" field "Default Landing Tab?" as "true" with filter "GrantorHome" for field ""
	Given I setup filter clause for "General" in "GrantorHome" for field "" having value ""
	And I reconfigure "Phase Config" field "Default Landing Tab?" as "false"
	Given I setup filter clause for "General" in "GrantorPlanning" for field "" having value ""
	When I reconfigure "Phase Config" field "Default Landing Tab?" as "true"	 	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see "GrantorPlanning" in current url
	
    @34590 @all @validateIconForTab-gplanning
	Scenario: Set up tab icon css for planning tab in config. and validate book is displayed instead of planning tab
	Given I have default configuration for "Phase Config" field "Tab Icon Css" as "" with filter "" for field ""
	Given I setup filter clause for "General" in "GrantorPlanning" for field "" having value ""
	When I reconfigure "Phase Config" field "Tab Icon Css" as "govgrants_config:TabIconCss"	 	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see book icon as "Planning" tab
	
	@34599 @all @validateTotalChartsInRow-gplanning
	Scenario: Setup number of charts as "1" from config. and validate only two charts are displayed inside planning
	Given I have default configuration for "Phase Config" field "Total Charts Allowed" as "3" with filter "" for field ""
	Given I setup filter clause for "General" in "GrantorPlanning" for field "" having value ""
	When I reconfigure "Phase Config" field "Total Charts Allowed" as "1"	 	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see "1" charts are displayed