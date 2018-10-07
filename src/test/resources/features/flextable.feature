@flextable-component 
Feature: Flex Table Component Scenarios 
	Test all flex table component based scenarios 
	As a configuration manager i make different configurational changes in flex table component and will validate them.

	@34022 @all @changeOfFlexTableTitle-gPlanning
	Scenario: validate after changing name of flex table title inside planning-programs
	Given I have default configuration for "Flex Table List" field "Label" as "Draft Programs" with filter "" for field ""
	Given I setup filter clause for "Flex Table List" in "Programs" for field "Name" having value "FLV-1837"
	When I reconfigure "Flex Table List" field "Label" as "Automation"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see "Automation" shown as flex table title
	
	@34024 @all @disablingExportFile-gPlanning
	Scenario: validate disabling of PDF/Excel download from menu option in flex table of programs-planning
	Given I have default configuration for "Flex Table" field "Enable Export" as "true" with filter "" for field ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Export" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I click on top right parallel lines bar for "Draft Programs"
	Then I see "Download as PDF""Download as CSV" options inside "Draft Programs" disabled
	
	@34026 @all @disblingQuickSearch-gPlanning
	Scenario: validate disabling of quick search in flex table of programs-planning
	Given I have default configuration for "Flex Table" field "Enable Quick Search" as "true" with filter "" for field ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Quick Search" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see quick search option disabled
	
	@34027 @all @disablingAdvanceFilter-gPlanning
	Scenario: validate disabling of advance filter from planning-Program flex table
	Given I have default configuration for "Flex Table" field "Enable Filter" as "true" with filter "" for field ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Filter" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
    Then I see Advance filter is disabled from planning flex table
        
    @34028 @all @disablingMenuIcon-gPlanning
    Scenario: validate disabling of menu icon from Program flex table
    Given I have default configuration for "Flex Table" field "Disable Menu" as "false" with filter "" for field ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Disable Menu" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see Menu icon is disabled from planning flex table
	
	@34029 @all @enableRecordSelectionForFlex-gPlanning
	Scenario: validate enabling of record selection check boxes in flex table of programs-planning
	Given I have default configuration for "Flex Table" field "Enable Record Selection" as "false" with filter "" for field ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Record Selection" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see select check box enabled in flex table
	
	@34030 @all @disablingAmountTotalForFlex-gPlanning
	Scenario: validate disbaling of total amount in flex table of programs-planning
	Given I have default configuration for "Flex Table" field "Enable Total Row" as "true" with filter "" for field ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Total Row" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see no total amount in flex table
	
	@34031 @all @disablingTotalRowCount-gPlanning
	Scenario: validate disbaling of total row count in flex table of programs-planning
	Given I have default configuration for "Flex Table" field "Enable Total Records Count" as "true" with filter "" for field ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Total Records Count" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see no total row count in flex table
	
	@34032 @all @additionOfLabelForRowNamedTotal-gPlanning
	Scenario: validate addition of label for row named as total of programs-planning
	Given I have default configuration for "Flex Table" field "Total Row Label" as "Total" with filter "" for field "Automation Total"
	Given I setup filter clause for "General" in "Programs" for field "Total Row Label" having value "Total"
	When I reconfigure "Flex Table" field "Total Row Label" as "Automation Total"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see changed label as "Automation Total" of last row name
	
	@34033 @all @enableAutoIndex-gPlanning
	Scenario: validate enable auto index for details inside flex table of programs-planning
	Given I have default configuration for "Flex Table" field "Enable Auto Index" as "false" with filter "" for field "" 
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Enable Auto Index" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see " #" in flex table header

	@34034 @all @addingfieldNamesOfDifferentDataTypes-gPlanning
	Scenario Outline: validate adding field names for different data types in flex table of programs-planning
	Given I have default configuration for "Flex Table" field "Display Field Names" as "<defaultFieldsApi>" with filter "" for field ""
	Given I setup filter clause for "General" in "Programs" for field "" having value ""
	When I reconfigure "Flex Table" field "Display Field Names" as "<newFieldsApi>"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see "<fieldDisplayNames>" in flex table header
	
	Examples:
	|fieldDisplayNames|newFieldsApi|defaultFieldsApi|
	|CFDA Number|FederalProgramCFDA__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|
	|Program Approver|ProgramApprover__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|
	|Expected Funding|ExpectedFunding__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|
	|End Date|EndDate__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|
	|Federal Program CFDA #|ProgramCFDA__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|
	|Program Type|ProgramType__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|
	|Website Address|WebsiteAddress__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|
	|Is Federal Program|IsFederalProgram__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|
	|Number|Number__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById|
	
	@34035 @all @disableSpecificStatusCategory-gPlanning
	Scenario Outline: validate removing Created status category from flex table of programs-planning
	Given I have default configuration for "Flex Table List" field "Filter Clause" as "<oldSoqlFilter>" with filter "" for field "" 
	Given I setup filter clause for "Flex table list" in "Programs" for field "Name" having value "FLV-1837"
	When I reconfigure "Flex Table List" field "Filter Clause" as "<newSoqlFilter>"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see no "Created" status in flex table
	
	Examples:
	|newSoqlFilter|oldSoqlFilter|
	|RecordType.Name = 'Internal Program' and Status__c IN ( 'Change Requested','Submitted for Approval','Approved')|RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved')|

	@34037 @all @editActionOpensInNewWindow-gPlanning
	Scenario: validate flex table action field- Edit opens in new window 
	Given I have default configuration for "Flex Table Action" field "Action Behavior" as "Open in same window" with filter "" for field ""
	Given I setup filter clause for "Flex Table Action" in "Programs" for field "Name" having value "Edit"
	When I reconfigure "Flex Table Action" field "Action Behavior" as "Open in new window"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "Edit" icon of status "Created" for "Test program for automation" program in flex table
	Then I see new tab is opened
	
	@34038 @all @editActionOpensInSameWindow-gPlanning
	Scenario: validate flex table action field- Edit opens in same window 
	Given I setup filter clause for "Flex Table Action" in "Programs" for field "Name" having value "Edit"
	When I reconfigure "Flex Table Action" field "Action Behavior" as "Open in same window"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "Edit" icon of status "Created" for "Test program for automation" program in flex table
	Then I see no new tab is opened
	
	@34039 @all @editActionOpensInOverLayWindow-gPlanning
	Scenario: validate flex table action field- Edit opens in overlay window
	Given I have default configuration for "Flex Table Action" field "Action Behavior" as "Open in same window" with filter "" for field ""
	Given I setup filter clause for "Flex Table Action" in "Programs" for field "Name" having value "Edit"
	When I reconfigure "Flex Table Action" field "Action Behavior" as "Open in overlay"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "Edit" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Edit" opens in overLay window
	
	@34292 @all @refreshEntirePage-gPlanning
	Scenario: validate flex table action field- refresh entire page
	Given I have default configuration for "Flex Table Action" field "Refresh Behavior" as "" with filter "" for field ""
	Given I setup filter clause for "Flex Table Action" in "ProgramRolesAndResponsibilities" for field "Name" having value "Edit"
	When I reconfigure "Flex Table Action" field "Refresh Behavior" as "Refresh the entire page"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Roles" sub tab inside page layout 
	When I click on "Edit" icon for "Owner" to save inside subtab
	Then I see entire page is refreshing		