@enhancedflexgrid-component 
Feature: Enhanced Flex Grid Component Scenarios 
	Test all enhanced flex grid component based scenarios 
	As a configuration manager i make different configurational changes in enhanced flex grid component and will validate them.

    @35432 @all @disablingAdvanceFilterForEnhancedGrid-gPlanning
	Scenario: validate disabling of advance filter from planning-Program enhance flex grid
	Given I have default configuration for "Flex Grid" field "Enable Filter" as "true" with filter "" for field ""
	Given I setup filter clause for "General" in "TmpActiveGrantsGrid" for field "" having value ""
	When I reconfigure "Flex Grid" field "Enable Filter" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Financials" sub tab inside page layout 
    Then I see Advance Filter is disabled from planning enhanced flex grid
    
    @35433 @all @disablingMenuIconForEnhancedGrid-gPlanning
    Scenario: validate disabling of menu icon from Planning- Program enhanced flex grid
    Given I have default configuration for "Flex Grid" field "Disable Menu" as "false" with filter "" for field ""
	Given I setup filter clause for "General" in "TmpActiveGrantsGrid" for field "" having value ""
	When I reconfigure "Flex Grid" field "Disable Menu" as "true"
    When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
    When I search for "Test program for Automation"
    When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Financials" sub tab inside page layout 
    Then I see Menu Icon is disabled from planning enhanced flex grid
    
    @35436 @all @changeOfFlexTableTitleForEnhancedGrid-gPlanning
    Scenario: validate after changing name of enhanced flex grid title inside planning-program enhanced flex grid
    Given I have default configuration for "Flex Grid" field "Label" as "Monitoring Schedule For All Active Grants" with filter "" for field ""
	Given I setup filter clause for "Flex Table List" in "TmpActiveGrantsGrid" for field "Name" having value "FLV-2539"
	When I reconfigure "Flex Grid" field "Label" as "Automation Enhanced Grid"
    When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
    When I search for "Test program for Automation"
    When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Financials" sub tab inside page layout
	Then I see "Automation Enhanced Grid" shown as enhanced flex grid title
	
	@35438 @all @disablingExportFileForEnhancedGrid-gPlanning
	Scenario: validate disabling of PDF/Excel download from menu option in enhanced flex grid planning- Program enhanced flex grid
	Given I have default configuration for "Flex Grid" field "Enable Export" as "true" with filter "" for field ""
	Given I setup filter clause for "General" in "TmpActiveGrantsGrid" for field "" having value ""
	When I reconfigure "Flex Grid" field "Enable Export" as "false"
    When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
    When I search for "Test program for Automation"
    When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Financials" sub tab inside page layout
	When I click on top right parallel lines bar for "Monitoring Schedule For All Active Grants"
	Then I see "Download as PDF""Download as CSV" options inside "Monitoring Schedule For All Active Grants" disabled