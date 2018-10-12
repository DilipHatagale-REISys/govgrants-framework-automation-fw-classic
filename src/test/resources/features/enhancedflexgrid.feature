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
	
	@35439 @all @disblingQuickSearchForEnhancedGrid-gPlanning
	Scenario: validate disabling of quick search in enhanced flex grid planning-Program enhanced flex grid
	Given I have default configuration for "Flex Grid" field "Enable Quick Search" as "true" with filter "" for field ""
	Given I setup filter clause for "General" in "TmpActiveGrantsGrid" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Quick Search" as "false"
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
    When I search for "Test program for Automation"
    When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Financials" sub tab inside page layout
	Then I see quick search option disabled from enhanced grid
	
	@35437 @all @disablingAmountTotalForFlexForEnhancedGrid-gPlanning
	Scenario: validate disbaling of total row count in enhanced flex grid planning-Program enhanced flex grid
	Given I have default configuration for "Flex Grid" field "Enable Total Records Count" as "true" with filter "" for field ""
	Given I setup filter clause for "General" in "TmpActiveGrantsGrid" for field "" having value ""
	When I reconfigure "Flex Grid" field "Enable Total Records Count" as "false"
    When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
    When I search for "Test program for Automation"
    When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Financials" sub tab inside page layout
	Then I see no total row count in enhanced flex grid
	
	@35434 @all @enableAutoIndexForEnhancedGrid-gPlanning
	Scenario: validate enable auto index for details inside enhanced flex grid planning-Program enhanced flex grid
	Given I have default configuration for "Flex Grid" field "Enable Auto Index" as "false" with filter "" for field "" 
	Given I setup filter clause for "General" in "TmpActiveGrantsGrid" for field "" having value ""
	When I reconfigure "Flex Grid" field "Enable Auto Index" as "true"
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
    When I search for "Test program for Automation"
    When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Financials" sub tab inside page layout
	Then I see "#" in enhanced flex grid header	
	
	@35442 @all @enableRecordSelectionForFlexForEnhancedGrid-gPlanning
	Scenario: validate enabling of record selection check boxes in enhanced flex grid planning-Program enhanced flex grid
    Given I have default configuration for "Flex Grid" field "Enable Record Selection" as "false" with filter "" for field ""
	Given I setup filter clause for "General" in "TmpActiveGrantsGrid" for field "" having value ""
	When I reconfigure "Flex Grid" field "Enable Record Selection" as "true"
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
    When I search for "Test program for Automation"
    When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Financials" sub tab inside page layout
	Then I see select check box enabled in enhanced flex grid
	
	@35441 @all @editActionOpensInSameWindowForEnhancedGrid-gPlanning
	Scenario: validate enhanced flex grid action field Edit opens in same window planning-Program enhanced flex grid
	Given I setup filter clause for "Flex Table Action" in "TmpActiveGrantsGrid" for field "Name" having value "Edit"
	When I reconfigure "Flex Table Action" field "Where To Open ?" as "same window"
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
    When I search for "Test program for Automation"
    When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Financials" sub tab inside page layout
	When I click on "Edit" icon of status "Active" for "ratnagiri Announcement" program in enhanced flex grid
	Then I see no new tab is opened for action item in enhanced flex grid
	
	@35440 @all @editActionOpensInOverLayWindowForEnhancedGrid-gPlanning
	Scenario: validate flex table action field- Edit opens in overlay window
	Given I have default configuration for "Flex Table Action" field "Where To Open ?" as "same window" with filter "" for field ""
	Given I setup filter clause for "Flex Table Action" in "TmpActiveGrantsGrid" for field "Name" having value "Edit"
	When I reconfigure "Flex Table Action" field "Where To Open ?" as "Modal"
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
    When I search for "Test program for Automation"
    When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Financials" sub tab inside page layout
	When I click on "Edit" icon of status "Active" for "ratnagiri Announcement" program in enhanced flex grid
	Then I see "TmpActiveGrantsGrid" opens in overLay window
	
	@35435 @all @addingfieldNamesOfDifferentDataTypesForEnhancedGrid-gPlanning
	Scenario Outline: validate adding field names for different data types in enhanced flex grid planning-Program enhanced flex grid
	Given I have default configuration for "Flex Grid" field "Display Field Names" as "<defaultFieldsApi>" with filter "" for field ""
	Given I setup filter clause for "General" in "TmpActiveGrantsGrid" for field "" having value ""
	When I reconfigure "Flex Grid" field "Display Field Names" as "<newFieldsApi>"
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
    When I search for "Test program for Automation"
    When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Financials" sub tab inside page layout
	Then I see "<fieldDisplayNames>" in enhanced flex grid header
	
	Examples:
	|fieldDisplayNames|newFieldsApi|defaultFieldsApi|
	|Project Title|ProjectTitle__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Current Budget Period End Date|BudgetPeriodEndDate__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|External Organization|ExternalOrganization__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Internal Organization|InternalOrganization__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Project Period|CurrentProjectPeriod__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Number of Awards|NumberofAwards__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Total Award Obligated Amount|TotalAwardObligatedAmount__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Status|Status__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|CFDA Number|CFDANumber__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|isClosedOut|isClosedOut__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Program Contact Address|AddressProgramContact__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	