@stepprogressbar-component 
Feature: Step Progress Bar Component Scenarios 
	Test all step progress bar component based scenarios 
	As a configuration manager i make different configurational changes in step progress bar component and will validate them.

	@34347 @all @disablingRenderingOfProgressBarForCustomApp-gPlanning
	Scenario Outline: validate after disabling of progress bar for grantor planning and validating it on program detail page-programs
	Given I have default configuration as below:
	|configurationCategory                    |fieldName              |fieldOrignalValue |coreComponentField |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Step Progressbar Header Config:General   |Render for Application |<defaultcustomApp>|PB-0016            |                         |                          |
	Given I setup test configuration as below:
	|configurationCategory                    |fieldName              |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Step Progressbar Header Config:General   |Render for Application |             |PB-0016               |                         |                          |
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
	Given I have default configuration as below:
	|configurationCategory                    |fieldName         |fieldOrignalValue |coreComponentField |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Step Progressbar Header Config:General   |Render for User   |<defaultuser>     |PB-0016            |                         |                          |
	Given I setup test configuration as below:
	|configurationCategory                    |fieldName       |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Step Progressbar Header Config:General   |Render for User |             |PB-0016               |                         |                          |
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
	Given I have default configuration as below:
	|configurationCategory  |fieldName         |fieldOrignalValue|filterId        |
	|Step Progressbar Detail|Hide For Users    |                 |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory   |fieldName       |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Step Progressbar Detail|Hide For Users  |<changedUser>|Program Progress Bar  |Name                     |Submitted for Approval    |
	#Given I have default configuration for "Step Progressbar Detail Config" field "Hide For Users" as "" with filter "" for field ""
	#Given I setup filter clause for "Step Progressbar Detail" in "Program Progress Bar" for field "Name" having value "Submitted for Approval" 
	#When I reconfigure "Step Progressbar Detail Config" field "Hide For Users" as "<changedUser>"
	#When I login as "Automation" User 
	#When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	#When I search for "Test program for automation"
	#When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	#Then I see "Submit for Approval" is not displayed inside step progress bar
	
	Examples:
	|changedUser|
	|Internal|
	
	@34350 @all @sequenceChangeOfStatusStepInsideStepProgressBar-gPlanning @check
	Scenario: validate after changin sequence of submit for approval status to zero and validating it on program detail page-programs
	Given I have default configuration for "Step Progressbar Detail Config" field "Sequence" as "2" with filter "" for field ""
	Given I setup filter clause for "Step Progressbar Detail" in "Program Progress Bar" for field "Name" having value "Submitted for Approval" 
	When I reconfigure "Step Progressbar Detail Config" field "Sequence" as "0"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Submitted for Approval" status shown at number "0" in step progress bar	
	
	@34351 @all @colorFieldOfStepProgressBar-gPlanning
	Scenario: validate after changing color of created status to different and validating it on program detail page-programs
	Given I have default configuration as below:
	|configurationCategory                    |fieldName         |fieldOrignalValue |coreComponentField |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Step Progressbar Header Config:General   |Complete Color    |#3ba10b           |PB-0016            |                         |                          |
	Given I setup test configuration as below:
	|configurationCategory                    |fieldName       |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Step Progressbar Header Config:General   |Complete Color  |#0b0ba0      |PB-0016               |                         |                          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see step progress bar displayed in "Blue" color for status "Created"
	
	@34593 @all @negativeFieldOfStepProgressBar-gPlanning @check
	Scenario: validate after enabling negative field for submit for approval step progress bar and validating its appearence on program detail page-programs
	Given I have default configuration for "Step Progressbar Detail Config" field "Negative Path" as "false" with filter "" for field ""
	Given I setup filter clause for "Step Progressbar Detail" in "Program Progress Bar" for field "Name" having value "Submitted for Approval" 
	When I reconfigure "Step Progressbar Detail Config" field "Negative Path" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for Automation-A to SA"
	When I click on "View Program Details" icon of status "Submitted for Approval" for "Test program for Automation-A to SA" program in flex table
	Then I see step progress bar displayed in "Red" color for status "Submitted for Approval"	