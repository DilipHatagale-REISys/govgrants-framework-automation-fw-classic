@phaseconfig-component 
Feature: Phase Config Component Scenarios 
	Test all phase config component based scenarios 
	As a configuration manager i make different configurational changes in phase component and will validate them.


    @34419 @all @validatePlanningPhaseAllowedProfile
	Scenario Outline: Remove admin profile from config. and validate that Plannign phase doesn't show up in admin user	
	Given I have default configuration for "Phase Config" field "Available for Profiles" as "<Old-Profile>" with filter ""
	Given I setup filter clause for "General" in "GrantorPlanning" for field "" having value ""
	When I reconfigure "Phase Config" field "Available for Profiles" as "<New-Profile>"	 	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Examples:
	|New-Profile|Old-Profile|
	|ADT; CON; CTR; DA; DEV; EBZ; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND|ADT; CON; CTR; DA; DEV; EBZ; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND|
	