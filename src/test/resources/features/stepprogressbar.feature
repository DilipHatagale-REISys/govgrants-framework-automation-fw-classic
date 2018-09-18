@stepprogressbar-component 
Feature: Step Progress Bar Component Scenarios 
	Test all step progress bar component based scenarios 
	As a configuration manager i make different configurational changes in step progress bar component and will validate them.

	@34347 @all @disablingRenderingOfProgressBarForGrantor-gPlanning
	Scenario Outline: validate after disabling of progress bar for grantor planning and validating it on program detail page-programs
	Given I have default configuration for "Step Progressbar Header Config" field "Render for Application" as "<defaultUser>" with filter ""
	Given I setup filter clause for "General" in "PB-0016" for field "" having value ""
	When I reconfigure "Step Progressbar Header Config" field "Render for Application" as ""
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see step progress bar is not displayed
	
	Examples:
	|defaultUser|
	|Grantor|