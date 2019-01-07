@sidebar-component 
Feature: Side bar Component Scenarios 
	Test all sidebar component based scenarios 
	As a configuration manager i make different configurational changes in side bar component and will validate them.

	@33877 @all @validateChangeinTaskMenuSequence-gHome 
	Scenario: validate after changing sequence of task menu from second to third in side bar 
	Given I have default configuration as below:
	|configurationCategory |fieldName                 |fieldOrignalValue                                                  |filterId|
	|Side Bar Header       |Sidebar Component Sequence|Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName                 |fieldNewValue                                                     |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Side Bar Header:General|Sidebar Component Sequence|Search,ActivityMenu,TaskMenu,RecentlyViewed,TechnicalSupport,Links|GrantorHome           |                         |                          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then i see "Tasks" shown at number "4" in sideBar  
	
	@33876	 @all @validateSidebarTaskMenuRemoval-gHome
	Scenario: validate disabling of task menu from side bar
	Given I have default configuration as below:
	|configurationCategory |fieldName                 |fieldOrignalValue                                                  |filterId|
	|Side Bar Header       |Sidebar Component Sequence|Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName                 |fieldNewValue                                            |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Side Bar Header:General|Sidebar Component Sequence|Search,ActivityMenu,RecentlyViewed,TechnicalSupport,Links|GrantorHome           |                         |                          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see "Tasks" as disabled from sidebar 
	
	@33879 @all @validateSidebarActivityMenuRemoval-gHome 
	Scenario: validate disabling of activity menu from side bar
	Given I have default configuration as below:
	|configurationCategory |fieldName                 |fieldOrignalValue                                                  |filterId        |
	|Side Bar Header       |Sidebar Component Sequence|Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName                 |fieldNewValue                                        |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Side Bar Header:General|Sidebar Component Sequence|Search,TaskMenu,RecentlyViewed,TechnicalSupport,Links|GrantorHome           |                         |                          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see "Activities" as disabled from sidebar 
	
	@33881 @all @validateLabelChangeOfAccordionContent-gHome 
	Scenario: validate change of label in My tasks accordion content 
	Given I have default configuration as below:
	|configurationCategory |fieldName|fieldOrignalValue|coreComponentField |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Accordian Content     |Name     |Completed        |GrantorHome        |Name                     |Automation                |
	Given I setup test configuration as below:
	|configurationCategory  |fieldName |fieldNewValue |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Accordian Content      |Name      |Automation    |GrantorHome           |Name                         |Completed             |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see changed label as "Automation" inside "Tasks" in side bar sub menu
	
	@33880 @all @validateChangeAccordianHeaderSeq-gHome 
	Scenario: validate after changing accordian header sequence for activities
	Given I have default configuration as below:
	|configurationCategory|fieldName  |fieldOrignalValue |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Accordian Header     |Sequence   |9                 |GrantorHome           |Name                     |Manage Forms              |                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName   |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Accordian Header       |Sequence    |1            |GrantorHome           |Name                     |Manage Forms              |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then i see "Manage Forms" shown at number "1" inside "Activities" 
	
	@33883 @all @validateAccordionContentAllowedProfile-gHome @pankaj-blocked @wip
	Scenario Outline: validate accordion content Pending in My tasks is available for a specific added profile
	Given I have default configuration as below:
	|configurationCategory|fieldName              |fieldOrignalValue    |filterId        |
	|Accordian Content    |Available for Profiles |<Old-Profile>        |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName                 |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Accordian Content      |Available for Profiles    |<New-Profile>|GrantorHome           |Name                     |Reassign                  |
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see changed label as "Reassign" inside "Tasks" in side bar sub menu
	Examples:
	|New-Profile|Old-Profile|
	|Automation; DT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PD; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND; EPOC|DT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PD; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND; EPOC|
	
	@33884 @all @validateLabelChangeOfAccordionHeader-gHome 
	Scenario: Changing label of accordion Header
	Given I have default configuration as below:
	|configurationCategory |fieldName|fieldOrignalValue|coreComponentField |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Accordian Header      |Name     |My Tasks         |GrantorHome        |Name                     |Automation                |
	Given I setup test configuration as below:
	|configurationCategory  |fieldName |fieldNewValue |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Accordian Header       |Name      |Automation    |GrantorHome           |Name                     |My Tasks                  |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see changed label as "Automation" inside "Tasks" in side accordion header menu
	
	@33885 @all @validateChangeAccordianContentSeq-gHome
	Scenario: validate after changing accordion content sequence for completed inside my tasks
	Given I have default configuration as below:
	|configurationCategory|fieldName  |fieldOrignalValue |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Accordian Content    |Sequence   |1                 |GrantorHome           |Name                     |Completed                 |                    
	Given I setup test configuration as below:
	|configurationCategory|fieldName   |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Accordian Content    |Sequence    |3            |GrantorHome           |Name                     |Completed                 |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app
	Then I see "Completed" shown at number "2" inside "Tasks"
	
	@33886 @all @validateAccordionContentOpensInNewWindow-gHome
	Scenario Outline: validate accordion content opens in new window
	Given I have default configuration as below:
	|configurationCategory|fieldName            |fieldOrignalValue |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Accordian Content    |Open in new window   |false             |GrantorHome           |Name                     |Completed                 |                   
	Given I setup test configuration as below:
	|configurationCategory|fieldName             |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Accordian Content    |Open in new window    |true         |GrantorHome           |Name                     |Completed                 |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	When I navigate to "Completed" content inside "Tasks" subheader on left panel 
	Then I see "<Page title>" in new tab
	Examples:
	|Page title|
	|My Task Page|
	 
	@33887 @all @validateTargetUrlForAccordionContent-gHome
	Scenario Outline: validate accordion content opens with provided target url
	Given I have default configuration as below:
	|configurationCategory|fieldName   |fieldOrignalValue    |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Accordian Content    |Target Url  |<Old-TargetUrl>      |GrantorHome           |Name                     |Completed                 |                   
	Given I setup test configuration as below:
	|configurationCategory  |fieldName     |fieldNewValue  |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Accordian Content      |Target Url    |<New-TargetUrl>|GrantorHome           |Name                     |Completed                 |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	When I navigate to "Completed" content inside "My Tasks" subheader on left panel
	Then I see page title "Pending Registrations"
	Examples:
	|New-TargetUrl             |Old-TargetUrl|
	|/apex/PendingRegistrations|/apex/FlexTableNewView?ft1=CompletedTasks&ft2=CompletedTasksBy|		