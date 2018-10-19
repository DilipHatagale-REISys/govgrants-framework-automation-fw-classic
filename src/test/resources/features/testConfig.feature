@test_Config
Feature: Test Scenarios 
	
	@35979 @all @pageBlockTitleFieldAtPageBlock-test
	Scenario: Changing page block title from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory|fieldName        |fieldOrignalValue  |coreComponentField   |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block Detail    |Page Block Title|Program Information |Grantee State Program|GNT__PageBlockTitle__c   |Program Information Automation|
	Given I setup test configuration as below:
	|configurationCategory|fieldName        |fieldNewValue                |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue |
	|Page Block Detail    |Page Block Title|Program Information Automation|Grantee State Program|GNT__PageBlockTitle__c    |Program Information|
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Program Information Automation" page block title
	
	@34667 @all @validateChartDisplayedInCorrectPhase-test
	Scenario: Changing chart phase config to Annoucnement for 'AnnouncementByAdminBureauUnit' chart in configuratin and validating inside annoucenment
	Given I have default configuration as below:
	|configurationCategory|fieldName        |fieldOrignalValue|filterId|
	|Charts Config        |Phase Config    |ApiGeneratedId:1 |ApiGeneratedId:2|
	Given I setup test configuration as below:
	|configurationCategory|fieldName         |fieldNewValue   |coreComponentField|coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Phase Config         |Tab Display Label|Announcements    |FundingOpportunity|                          |                             |
	|Phase Config         |Tab Display Label|Planning         |GrantorPlanning   |                          |                             |
	|Charts Config        |Phase Config     |ApiGeneratedId:0|GrantorPlanning    |Name                      |AnnouncementByAdminBureauUnit|
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
	Then I see "AnnouncementByAdminBureauUnit" displayed as chart title