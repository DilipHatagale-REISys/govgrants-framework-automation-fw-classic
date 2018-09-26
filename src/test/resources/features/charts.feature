@charts-component
Feature: Charts Component Scenarios
	Test all charts component based scenarios 
	As a configuration manager i make different configurational changes in charts component and will validate them.

	@34666 @all @validateTitleField-gplanning
	Scenario: Changing chart title for 'AnnouncementByAdminBureauUnit' chart in configuration and validating inside planning-programs
	Given I have default configuration for "Charts Config" field "Title" as "AnnouncementByAdminBureauUnit" with filter "" for field ""
	Given I setup filter clause for "Charts Config" in "GrantorPlanning" for field "Name" having value "AnnouncementByAdminBureauUnit"
	When I reconfigure "Charts Config" field "Title" as "Funding Opportunities for Automation"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see "Funding Opportunities for Automation" displayed as chart title
	
	@34667 @all @validateChartDisplayedInCorrectPhase-gAnnouncement
	Scenario: Changing chart phase config to Annoucnement for 'AnnouncementByAdminBureauUnit' chart in configuratin and validating inside annoucenment
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
	Scenario: Changing chart menu button config to "Funding Opportunity Automation" for 'AnnouncementByAdminBureauUnit' chart  in configuratin and validating inside planning
	Given I have default configuration for "Charts Details Config" field "All data table header" as "Funding Opportunity1" with filter "" for field ""
	Given I setup filter clause for "Charts Details Config" in "GrantorPlanning" for field "Name" having value "CD-0147"
	When I reconfigure "Charts Details Config" field "All data table header" as "Funding Opportunity Automation"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	And I click on menu icon of chart "AnnouncementByAdminBureauUnit"
	When I select "Show All Data" from chart menu of chart "AnnouncementByAdminBureauUnit"
	Then I see "Funding Opportunity Automation" displayed in modal
	
	@34977 @all @validateDisablingChartLegends-gPlannging
	Scenario: Disable chart legends for 'AnnouncementByAdminBureauUnit' chart in configuratin and validating inside planning
	Given I have default configuration for "Charts Details Config" field "Disable Legend" as "false" with filter "" for field ""
	Given I setup filter clause for "Charts Details Config" in "GrantorPlanning" for field "Name" having value "CD-0147"
	When I reconfigure "Charts Details Config" field "Disable Legend" as "true"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see chart legends are not displayed for chart "AnnouncementByAdminBureauUnit"
	
	@34981 @all @validateX-axisLabel-gPlannging
	Scenario: Change chart x-axis label for 'Funding Sources by Total Amount' chart in configuratin and validating inside planning
	Given I have default configuration for "Charts Details Config" field "X-Axis Label" as "Total Allocated Amount" with filter "" for field ""
	Given I setup filter clause for "Charts Details Config" in "GrantorPlanning" for field "Name" having value "CD-0159"
	When I reconfigure "Charts Details Config" field "X-Axis Label" as "Total Allocated Amount Automation"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see "Total Allocated Amount Automation" for chart "FundingSourcesbyTotalAmount"
	
	@34985 @all @validateX-axisPrefix-gPlannging
	Scenario: Change chart x-axis prefix as $ for 'Funding Sources by Total Amount' chart in configuratin and validating inside planning
	Given I have default configuration for "Charts Details Config" field "X-Axis Prefix" as "" with filter "" for field ""
	Given I setup filter clause for "Charts Details Config" in "GrantorPlanning" for field "Name" having value "CD-0159"
	When I reconfigure "Charts Details Config" field "X-Axis Prefix" as "$"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see "$" for chart "FundingSourcesbyTotalAmount"
	
	@34984 @all @validateXFormattedNubers-gPlannging
	Scenario: Enable x-formatted numbers for 'Funding Sources by Total Amount' chart in configuratin and validating inside planning
	Given I have default configuration for "Charts Details Config" field "X Formatted Number" as "false" with filter "" for field ""
	Given I setup filter clause for "Charts Details Config" in "GrantorPlanning" for field "Name" having value "CD-0159"
	When I reconfigure "Charts Details Config" field "X Formatted Number" as "true"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see ",000" for chart "FundingSourcesbyTotalAmount"
	
	@34984 @all @validateX-axisSuffix-gPlannging
	Scenario: Change chart x-axis suffix as $ for 'Funding Sources by Total Amount' chart in configuratin and validating inside planning
	Given I have default configuration for "Charts Details Config" field "X Axis Suffix" as "" with filter "" for field ""
	Given I setup filter clause for "Charts Details Config" in "GrantorPlanning" for field "Name" having value "CD-0159"
	When I reconfigure "Charts Details Config" field "X Axis Suffix" as "$"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see "$" for chart "FundingSourcesbyTotalAmount"
	