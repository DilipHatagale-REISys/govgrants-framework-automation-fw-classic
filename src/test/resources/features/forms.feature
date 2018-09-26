@forms-component
Feature: Forms Component Scenarios
	Test all forms component based scenarios 
	As a configuration manager i make different configurational changes in forms component and will validate them.

	@35095 @all @validateSkipFormForDownload-gapplications
	Scenario: Setup skip form download for 'General Application Budget Form' in configuration and validating inside Applications view
	Given I have default configuration for "Forms" field "Skip Form Download" as "false" with filter "" for field ""
	Given I setup filter clause for "General" in "General Application Budget Form" for field "" having value ""
	When I reconfigure "Forms" field "Skip Form Download" as "true"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Applications" tab
	When I search for "AP-755-198"
	When I click on "View" icon of status "Review Initiated" for "Test announcement for program 2" program in flex table
	When I click on "Menu" button inside detail page