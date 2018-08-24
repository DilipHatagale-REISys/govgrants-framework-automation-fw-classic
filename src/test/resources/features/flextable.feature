@flextable-component 
Feature: Test all flex table component based scenarios 
	As a configuration manager i make different configurational changes in flex table component and will validate them.

	@32329 @all @validateChangeOfFlexTableTitle
	Scenario: validate after changing name of flex table title inside planning/programs
	Given I have default configuration for "Flex Table List" field "Label" as "Draft Programs" with filter ""
	Given I setup filter clause for "Flex Table List" in "Programs" for field "Name" having value "FLV-1837"
	When I reconfigure "Flex Table List" field "Label" as "Automation"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	Then i see "Automation" shown as flex table title
	
	@32331 @all @validateDisablingExportFile
	Scenario: validate disabling of PDF/Excel download from menu option of flex table
	Given I have default configuration for "Flex Table" field "Enable Export" as "true" with filter ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Export" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	Then i see "Automation" shown as flex table title