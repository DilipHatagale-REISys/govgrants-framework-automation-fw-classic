@charts-component
Feature: Charts Component Scenarios
	Test all charts component based scenarios 
	As a configuration manager i make different configurational changes in flex grid component and will validate them.

	@34666 @all @validateTitleField-gplanning
	Scenario: changing chart title in configuratin and validating inside planning-programs
	Given I have default configuration for "Charts Config" field "Title" as "AnnouncementByAdminBureauUnit" with filter "" for field ""
	Given I setup filter clause for "Charts Config" in "GrantorPlanning" for field "Name" having value "AnnouncementByAdminBureauUnit"
	When I reconfigure "Charts Config" field "Title" as "Funding Opportunities for Automation"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see "Funding Opportunities for Automation" displayed as chart title
	
	@34667 @all @validateChartDisplayedInCorrectPhase-gAnnouncement
	Scenario: changing chart phase config to Annoucnement in configuratin and validating inside annoucenment
	Given I have default configuration for "Charts Config" field "Phase Config" as "ApiGeneratedId:1" with filter "FundingOpportunity" for field ""
	Given I setup filter clause for "General" in "FundingOpportunity" for field "" having value ""
	And   I reconfigure "Phase Config" field "Tab Display Label" as "Announcements"
	Given I setup filter clause for "General" in "GrantorPlanning" for field "" having value ""
	And   I reconfigure "Phase Config" field "Tab Display Label" as "Planning"
	When I setup filter clause for "Charts Config" in "GrantorPlanning" for field "Name" having value "AnnouncementByAdminBureauUnit"
	When I reconfigure "Charts Config" field "Phase Config" as "ApiGeneratedId:0"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
	Then I see "AnnouncementByAdminBureauUnit" displayed as chart title
	
	@34668 @all @validateAllDataHeaders-gPlannging
	Scenario: changing chart menu button config to "Funding Opportunity Automation" in configuratin and validating inside planning
	Given I have default configuration for "CHARTS DETAILS CONFIG" field "All data table header" as "Funding Opportunity1" with filter "" for field ""
	Given I setup filter clause for "CHARTS DETAILS CONFIG" in "GrantorPlanning" for field "Name" having value "CD-0147"
	When I reconfigure "CHARTS DETAILS CONFIG" field "All data table header" as "Funding Opportunity Automation"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I click on menu icon of chart "AnnouncementByAdminBureauUnit"
	When I select "Show All Data" from chart menu of chart "AnnouncementByAdminBureauUnit"
	Then I see "Funding Opportunity Automation" displayed in modal