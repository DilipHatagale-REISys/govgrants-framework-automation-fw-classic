@flextable-component 
Feature: Test all flex table component based scenarios 
	As a configuration manager i make different configurational changes in flex table component and will validate them.

	@32329 @all @changeOfFlexTableTitle-Programs
	Scenario: validate after changing name of flex table title inside planning-programs
	Given I have default configuration for "Flex Table List" field "Label" as "Draft Programs" with filter ""
	Given I setup filter clause for "Flex Table List" in "Programs" for field "Name" having value "FLV-1837"
	When I reconfigure "Flex Table List" field "Label" as "Automation"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	Then i see "Automation" shown as flex table title
	
	@32331 @all @disablingExportFile-Programs
	Scenario: validate disabling of PDF/Excel download from menu option in flex table of programs-planning
	Given I have default configuration for "Flex Table" field "Enable Export" as "true" with filter ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Export" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on top right parallel lines bar
	Then i see "Download as PDF""Download as CSV" options disabled
	
	@32332 @all @disblingQuickSearch-Programs
	Scenario: validate disabling of quick search in flex table of programs-planning
	Given I have default configuration for "Flex Table" field "Enable Quick Search" as "true" with filter ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Quick Search" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	Then i see quick search option disabled
	
	@32333 @all @disablingAdvanceFilter-Programs
	Scenario: validate disabling of advance filter from planning-Program flex table
	Given I have default configuration for "Flex Table" field "Enable Filter" as "true" with filter ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Filter" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
    Then I see Advance filter is disabled from planning flex table
        
    @32334 @all @disablingMenuIcon-Program
    Scenario: validate disabling of menu icon from planning-Program flex table
    Given I have default configuration for "Flex Table" field "Disable Menu" as "false" with filter ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Disable Menu" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	Then I see Menu icon is disabled from planning flex table
	
	@32335 @all @enableRecordSelectionForFlex-Programs
	Scenario: validate enabling of record selection check boxes in flex table of programs-planning
	Given I have default configuration for "Flex Table" field "Enable Record Selection" as "false" with filter ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Record Selection" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	Then i see select check box enabled in flex table
	
	@32336 @all @disablingAmountTotalForFlex-Programs
	Scenario: validate disbaling of total amount in flex table of programs-planning
	Given I have default configuration for "Flex Table" field "Enable Total Row" as "true" with filter ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Total Row" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	Then i see no total amount in flex table
	
	@32337 @all @disablingTotalRowCount-Programs
	Scenario: validate disbaling of total row count in flex table of programs-planning
	Given I have default configuration for "Flex Table" field "Enable Total Records Count" as "true" with filter ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Total Records Count" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	Then i see no total row count in flex table
	
	@32338 @all @additionOfLabelForRowNamedTotal-Programs
	Scenario: validate addition of label for row named as total of programs-planning
	Given I have default configuration for "Flex Table" field "Total Row Label" as "Total" with filter "Automation Total"
	Given I setup filter clause for "General" in "Programs" for field "Total Row Label" having value "Total"
	When I reconfigure "Flex Table" field "Total Row Label" as "Automation Total"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	Then I see changed label as "Automation Total" of last row name
	
	@32339 @all @enableAutoIndex-Programs
	Scenario: validate enable auto index for details inside flex table of programs-planning
	Given I have default configuration for "Flex Table" field "Enable Auto Index" as "false" with filter "" 
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Auto Index" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	Then I see no column for auto index in flex table header 