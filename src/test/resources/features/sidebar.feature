@sidebar-component 
Feature: Side bar Component Scenarios 
	Test all sidebar component based scenarios 
	As a configuration manager i make different configurational changes in side bar component and will validate them.

	@33877 @all @validateChangeinTaskMenuSequence-gHome 
	Scenario: validate after changing sequence of task menu from second to third in side bar 
	Given I have default configuration for "Side Bar Header" field "Sidebar Component Sequence" as "Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links" with filter "" for field ""
	Given I setup filter clause for "General" in "GrantorHome" for field "" having value ""
	When I reconfigure "Side Bar Header" field "Sidebar Component Sequence" as "Search,ActivityMenu,TaskMenu,RecentlyViewed,TechnicalSupport,Links"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then i see "Tasks" shown at number "2" in sideBar 
	
	@33876	 @all @validateSidebarTaskMenuRemoval-gHome
	Scenario: validate disabling of task menu from side bar
	Given I have default configuration for "Side Bar Header" field "Sidebar Component Sequence" as "Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links" with filter "" for field ""
	Given I setup filter clause for "General" in "GrantorHome" for field "" having value ""
	When I reconfigure "Side Bar Header" field "Sidebar Component Sequence" as "Search,ActivityMenu,RecentlyViewed,TechnicalSupport,Links"	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see "Tasks" as disabled from sidebar 
	
	@33879 @all @validateSidebarActivityMenuRemoval-gHome 
	Scenario: validate disabling of activity menu from side bar 
	Given I have default configuration for "Side Bar Header" field "Sidebar Component Sequence" as "Search,TaskMenu,ActivityMenu,RecentlyViewed,TechnicalSupport,Links" with filter "" for field ""
	Given I setup filter clause for "General" in "GrantorHome" for field "" having value ""
	When I reconfigure "Side Bar Header" field "Sidebar Component Sequence" as "Search,TaskMenu,RecentlyViewed,TechnicalSupport,Links"	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see "Activities" as disabled from sidebar 
	
	@33881 @all @validateLabelChangeOfAccordionContent-gHome 
	Scenario: validate change of label in My tasks accordion content 
	Given I have default configuration for "Accordian Content" field "Name" as "Completed" with filter "" for field "Automation"
	Given I setup filter clause for "Accordian Content" in "GrantorHome" for field "Name" having value "Completed"
	When I reconfigure "Accordian Content" field "Name" as "Automation"	 
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see changed label as "Automation" inside "Tasks" in side bar sub menu
	
	@33880 @all @validateChangeAccordianHeaderSeq-gHome 
	Scenario: validate after changing accordian header sequence for activities
	Given I have default configuration for "Accordian Header" field "Sequence" as "9" with filter "" for field ""
	Given I setup filter clause for "Accordian Header" in "GrantorHome" for field "Name" having value "Manage Forms"
	When I reconfigure "Accordian Header" field "Sequence" as "1"	 
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then i see "Manage Forms" shown at number "0" inside "Activities" 
	
	@33883 @all @validateAccordionContentAllowedProfile-gHome @pankaj-blocked @wip
	Scenario Outline: validate accordion content Pending in My tasks is available for a specific added profile	
	Given I have default configuration for "Accordian Content" field "Available for Profiles" as "<Old-Profile>" with filter "" for field ""
	Given I setup filter clause for "Accordian Content" in "GrantorHome" for field "Name" having value "Reassign"
	When I reconfigure "Accordian Content" field "Available for Profiles" as "<New-Profile>"	 	
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see changed label as "Reassign" inside "Tasks" in side bar sub menu
	Examples:
	|New-Profile|Old-Profile|
	|Automation; DT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PD; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND; EPOC|DT; CON; CTR; DA; DEV; EXE; FD; FO; GA; GMO; PD; PM; PO; SME; SPA; SPI; TR1; TR2; TR3; VND; EPOC|
	
	@33884 @all @validateLabelChangeOfAccordionHeader-gHome 
	Scenario: Changing label of accordion Header 
	Given I have default configuration for "Accordian Header" field "Name" as "My Tasks" with filter "" for field "Automation"
	Given I setup filter clause for "Accordian Header" in "GrantorHome" for field "Name" having value "My Tasks"
	When I reconfigure "Accordian Header" field "Name" as "Automation"	 	
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	Then I see changed label as "Automation" inside "Tasks" in side accordion header menu
	
	@33885 @all @validateChangeAccordianContentSeq-gHome
	Scenario: validate after changing accordion content sequence for completed inside my tasks
	Given I have default configuration for "Accordian Content" field "Sequence" as "1" with filter "" for field ""
	Given I setup filter clause for "Accordian Content" in "GrantorHome" for field "Name" having value "Completed"
	When I reconfigure "Accordian Content" field "Sequence" as "3"	 
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app
	Then I see "Completed" shown at number "1" inside "Tasks"
	
	@33886 @all @validateAccordionContentOpensInNewWindow-gHome
	Scenario Outline: validate accordion content opens in new window 
	Given I have default configuration for "Accordian Content" field "Open in new window" as "false" with filter "" for field ""
	Given I setup filter clause for "Accordian Content" in "GrantorHome" for field "Name" having value "Completed"
	When I reconfigure "Accordian Content" field "Open in new window" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	When I navigate to "Tasks" to reach "Completed" side bar content 
	Then I see "<Page title>" in new tab
	Examples:
	|Page title|
	|My Task Page|
	 
	@33887 @all @validateTargetUrlForAccordionContent-gHome
	Scenario Outline: validate accordion content opens with provided target url
	Given I have default configuration for "Accordian Content" field "Target Url" as "<Old-TargetUrl>" with filter "" for field ""
	Given I setup filter clause for "Accordian Content" in "GrantorHome" for field "Name" having value "Completed"
	When I reconfigure "Accordian Content" field "Target Url" as "<New-TargetUrl>"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app 
	When I navigate to "Tasks" to reach "Completed" side bar content
	Then I see page title "Pending Registrations"
	Examples:
	|New-TargetUrl|Old-TargetUrl|
	|/apex/PendingRegistrations|/apex/FlexTableNewView?ft1=CompletedTasks&ft2=CompletedTasksBy|		