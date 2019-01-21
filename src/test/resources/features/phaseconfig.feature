@phaseconfig-component 
Feature: Phase Config Component Scenarios 
	Test all phase config component based scenarios 
	As a configuration manager i make different configurational changes in phase component and will validate them.

    @34419 @all @validatePlanningPhaseAllowedProfile-gplanning
	Scenario Outline: Remove admin profile from config. and validate that Plannign phase doesn't show up in admin user
	Given I have default configuration as below:
	|configurationCategory|fieldName              |fieldOrignalValue    |filterId        |
	|Phase Config         |Available for Profiles |<Old-Profile>        |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName                 |fieldNewValue|coreComponentField    |
	|Phase Config:General   |Available for Profiles    |<New-Profile>|GrantorPlanning       |	
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	Then I do not see "Planning" phase
	Examples:
	|New-Profile|Old-Profile|
	|ADT; CON; CTR; DA; DEV; EBZ; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND|ADT; CON; CTR; DA; DEV; EBZ; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND|
	
	@34420 @all @validateTabDisplayName-gplanning
	Scenario: Setup tab name as Automation from config. and validate that tab name for planning is changed to Automation
	Given I have default configuration as below:
	|configurationCategory|fieldName              |fieldOrignalValue    |filterId        |
	|Phase Config         |Tab Display Label      |Planning             |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName                 |fieldNewValue|coreComponentField    |
	|Phase Config:General   |Tab Display Label         |Automation   |GrantorPlanning       |
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor" 
	Then I see "Automation" phase
	
	@34484 @all @validatePhaseSequence-gplanning
	Scenario: Setup tab sequence as "0" from config. and validate that tab name for planning is changed to first position
	Given I have default configuration as below:
	|configurationCategory|fieldName              |fieldOrignalValue    |filterId        |
	|Phase Config         |Sequence               |2                    |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName  |fieldNewValue|coreComponentField    |
	|Phase Config:General   |Sequence   |0            |GrantorPlanning       |
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	Then I see "Planning" phase at position "0"
	
	@34485 @all @validateNumberOfCharts-gplanning
	Scenario: Setup number of charts as "2" from config. and validate only two charts are displayed inside planning
	Given I have default configuration as below:
	|configurationCategory|fieldName              |fieldOrignalValue    |filterId        |
	|Phase Config         |Total Charts Allowed   |3                    |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName              |fieldNewValue|coreComponentField    |
	|Phase Config:General   |Total Charts Allowed   |2            |GrantorPlanning       |
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
	Then I see "2" charts are displayed
	
	@34487 @all @validateChartsDisplayedAtBottom-gplanning
	Scenario: Setup body bottom page url for charts in config. and validate charts are displayed at bottom are displayed inside planning
	Given I have default configuration as below:
	|configurationCategory|fieldName              |fieldOrignalValue    |filterId        |
	|Phase Config         |Body Bottom Page URL   |                     |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName              |fieldNewValue                       |coreComponentField    |
	|Phase Config:General   |Body Bottom Page URL   |/apex/GNT__ChartsView?t=Planning    |GrantorPlanning       |
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
	Then I charts are displayed at "Bottom"
	
	@34587 @all @validateIsPlanningDisplayedInTaskSummary-gplanning
	Scenario: Uncheck is Phase for planning in config. and validate Planning is not displayed in Task Summary on home page
	Given I have default configuration as below:
	|configurationCategory|fieldName   |fieldOrignalValue    |filterId        |
	|Phase Config         |Is Phase    |true                 |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName   |fieldNewValue|coreComponentField    |
	|Phase Config:General   |Is Phase    |false        |GrantorPlanning       |
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "HOME" tab
	Then I do not see "Planning" in task summary by phase
	
	@34589 @all @validateSettingAsDefaultLandingTab-gplanning
	Scenario: Select planning as "Default landing tab" in config. and validate Planning is default landing page
	Given I have default configuration as below:
	|configurationCategory |fieldName           |fieldOrignalValue|filterId         |
	|Phase Config          |Default Landing Tab?|true             |ApiGeneratedId:0 |
	Given I setup test configuration as below:
	|configurationCategory  |fieldName           |fieldNewValue |coreComponentField|
	|Phase Config:General   |Default Landing Tab?|false         |GrantorHome       |
	|Phase Config:General   |Default Landing Tab?|true          |GrantorPlanning   |	 	
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	Then I see "GrantorPlanning" in current url
	
    @34590 @all @validateIconForTab-gplanning
	Scenario: Set up tab icon css for planning tab in config. and validate book is displayed instead of planning tab
	Given I have default configuration as below:
	|configurationCategory|fieldName     |fieldOrignalValue    |filterId        |
	|Phase Config         |Tab Icon Css  |                     |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName   |fieldNewValue               |coreComponentField    |
	|Phase Config:General   |Tab Icon Css|govgrants_config:TabIconCss |GrantorPlanning       |
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	Then I see book icon as "Planning" tab
	
	@34599 @all @validateTotalChartsInRow-gplanning
	Scenario: Setup number of charts as "1" from config. and validate only two charts are displayed inside planning
	Given I have default configuration as below:
	|configurationCategory|fieldName             |fieldOrignalValue    |filterId        |
	|Phase Config         |Total Charts Allowed  |3                    |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName           |fieldNewValue |coreComponentField    |
	|Phase Config:General   |Total Charts Allowed|1             |GrantorPlanning       |
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
	Then I see "1" charts are displayed