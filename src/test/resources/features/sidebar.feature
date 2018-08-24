@sidebar-component 
Feature: Test all sidebar component based scenarios 
	As a configuration manager i make different configurational changes in side bar component and will validate them.

	@31625 @all @validateChangeinTaskMenuSequence 
	Scenario: validate after changing sequence of task menu from second to third in side bar 
	Given I have default configuration for "Phases" field "Sidebar Component Sequence" as "Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links" with filter ""
	Given I setup filter clause for "Phases" in "GrantorHome" for field "NA" having value "NA"
	When I reconfigure "Phases" field "Sidebar Component Sequence" as "Search,ActivityMenu,TaskMenu,RecentlyViewed,TechnicalSupport,Links"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" 
	Then i see "Tasks" shown at number "2" in sideBar 
	
	@31624 @all @validateSidebarTaskMenuRemoval 
	Scenario: validate disabling of task menu from side bar
	Given I have default configuration for "Phases" field "Sidebar Component Sequence" as "Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links" with filter ""
	Given I setup filter clause for "Phases" in "GrantorHome" for field "NA" having value "NA"
	When I reconfigure "Phases" field "Sidebar Component Sequence" as "Search,ActivityMenu,RecentlyViewed,TechnicalSupport,Links"	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" 
	Then I see "Tasks" as disabled from sidebar 
	
	@32005 @all @validateSidebarActivityMenuRemoval 
	Scenario: validate disabling of activity menu from side bar 
	Given I have default configuration for "Phases" field "Sidebar Component Sequence" as "Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links" with filter ""
	Given I setup filter clause for "Phases" in "GrantorHome" for field "NA" having value "NA"
	When I reconfigure "Phases" field "Sidebar Component Sequence" as "Search,TaskMenu,RecentlyViewed,TechnicalSupport,Links"	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" 
	Then I see "Activities" as disabled from sidebar 
	
	@32092 @all @validateLabelChangeOfAccordionContent 
	Scenario: validate change of label in My tasks accordion content 
	Given I have default configuration for "Accordian Content" field "Name" as "Completed" with filter "Automation"
	Given I setup filter clause for "Accordian Content" in "GrantorHome" for field "Name" having value "Completed"
	When I reconfigure "Accordian Content" field "Name" as "Automation"	 
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" 
	Then I see changed label as "Automation" inside "Tasks" in side bar sub menu
	
	@31626 @all @validateChangeAccordianHeaderSeq 
	Scenario: validate after changing accordian header sequence for activities
	Given I have default configuration for "Accordian Header" field "Sequence" as "9" with filter ""
	Given I setup filter clause for "Accordian Header" in "GrantorHome" for field "Name" having value "Manage Forms"
	When I reconfigure "Accordian Header" field "Sequence" as "1"	 
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" 
	Then i see "Manage Forms" shown at number "0" inside "Activities" 
	
	@31628 @validateAccordionContentAllowedProfile
	Scenario Outline: validate accordion content Pending in My tasks is available for a specific added profile	
	Given I have default configuration for "Accordian Content" field "Available for Profiles" as "<Old-Profile>" with filter ""
	Given I setup filter clause for "Accordian Content" in "GrantorHome" for field "Name" having value "Reassign"
	When I reconfigure "Accordian Content" field "Available for Profiles" as "<New-Profile>"	 	
	When I login as "Automation-EXE" User 
	When I access the "GovGrants Launcher Tab" 
	Then I see changed label as "Reassign" inside "Tasks" in side bar sub menu
	Examples:
	|New-Profile|Old-Profile|
	|Automation; DT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PD; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND; EPOC|DT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PD; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND; EPOC|
	
	@32095 @all @validateLabelChangeOfAccordionHeader 
	Scenario: Changing label of accordion Header 
	Given I have default configuration for "Accordian Header" field "Name" as "My Tasks" with filter "Automation"
	Given I setup filter clause for "Accordian Header" in "GrantorHome" for field "Name" having value "My Tasks"
	When I reconfigure "Accordian Header" field "Name" as "Automation"	 	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" 
	Then I see changed label as "Automation" inside "Tasks" in side accordion header menu