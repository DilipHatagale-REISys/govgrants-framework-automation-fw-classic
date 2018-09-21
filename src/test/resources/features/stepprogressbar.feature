@stepprogressbar-component 
Feature: Step Progress Bar Component Scenarios 
	Test all step progress bar component based scenarios 
	As a configuration manager i make different configurational changes in step progress bar component and will validate them.

	@34347 @all @disablingRenderingOfProgressBarForCustomApp-gPlanning
	Scenario Outline: validate after disabling of progress bar for grantor planning and validating it on program detail page-programs
	Given I have default configuration for "Step Progressbar Header Config" field "Render for Application" as "<defaultcustomApp>" with filter "" for field ""
	Given I setup filter clause for "General" in "PB-0016" for field "" having value ""
	When I reconfigure "Step Progressbar Header Config" field "Render for Application" as ""
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see step progress bar is not displayed
	
	Examples:
	|defaultcustomApp|
	|Grantor|
	
	@34348 @all @disablingRenderingOfProgressBarForUser-gPlanning
	Scenario Outline: validate after disabling of progress bar for internal user and validating it on program detail page-programs
	Given I have default configuration for "Step Progressbar Header Config" field "Render for User" as "<defaultuser>" with filter "" for field ""
	Given I setup filter clause for "General" in "PB-0016" for field "" having value ""
	When I reconfigure "Step Progressbar Header Config" field "Render for User" as ""
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see step progress bar is not displayed
	
	Examples:
	|defaultuser|
	|Internal|
	
	@34349 @all @disablingRenderingOfParticularStatusProgressBarForUser-gPlanning
	Scenario Outline: validate after disabling of submit for approval status from progress bar for internal user and validating it on program detail page-programs
	Given I have default configuration for "Step Progressbar Detail Config" field "Hide For Users" as "" with filter "" for field ""
	Given I setup filter clause for "Step Progressbar Detail" in "Program Progress Bar" for field "" having value "Submitted for Approval"
	When I reconfigure "Step Progressbar Detail Config" field "Hide For Users" as "<changedUser>"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Submit for Approval" is not displayed inside step progress bar
	
	Examples:
	|changedUser|
	|Internal|
	
	@34350 @all @sequenceChangeOfStatusStepInsideStepProgressBar-gPlanning
	Scenario: validate after changin sequence of submit for approval status to zero and validating it on program detail page-programs
	Given I have default configuration for "Step Progressbar Detail Config" field "Sequence" as "2" with filter "" for field ""
	Given I setup filter clause for "Step Progressbar Detail" in "Program Progress Bar" for field "" having value "Submitted for Approval"
	When I reconfigure "Step Progressbar Detail Config" field "Sequence" as "0"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Submitted for Approval" status shown at number "0" in step progress bar	
	