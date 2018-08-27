@flextable-component 
Feature: Test all flex table component based scenarios 
	As a configuration manager i make different configurational changes in flex table component and will validate them.

	@32329 @all @validateChangeOfFlexTableTitle-Programs
	Scenario: validate after changing name of flex table title inside planning-programs
	Given I have default configuration for "Flex Table List" field "Label" as "Draft Programs" with filter ""
	Given I setup filter clause for "Flex Table List" in "Programs" for field "Name" having value "FLV-1837"
	When I reconfigure "Flex Table List" field "Label" as "Automation"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	Then i see "Automation" shown as flex table title
	
	@32331 @all @validateDisablingExportFile-Programs
	Scenario: validate disabling of PDF/Excel download from menu option of flex table - Programs
	Given I have default configuration for "Flex Table" field "Enable Export" as "true" with filter ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Export" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on top right parallel lines bar
	Then i see "Download as PDF""Download as CSV" options disabled
	
	@32332 @all @validateDisblingQuickSearch-Programs
	Scenario: validate disabling of quick search programs-planning
	Given I have default configuration for "Flex Table" field "Enable Export" as "true" with filter ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Export" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on top right parallel lines bar
	Then i see "Quick Search" option disabled
	
	@32333 @all @validateDisablingAdvanceFilter-Programs
	Scenario: validate disabling of advance filter from planning-Program flex table
	Given I have default configuration for "Flex Table" field "Enable Filter" as "true" with filter ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Filter" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
    Then I see Advance filter is disabled from planning flex table
        
    @32334 @all @validateDisablingMenuIcon-Program
    Scenario: validate disabling of menu icon from planning-Program flex table
    Given I have default configuration for "Flex Table" field "Disable Menu" as "false" with filter ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Disable Menu" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	Then I see Menu icon is disabled from planning flex table
    
    
    