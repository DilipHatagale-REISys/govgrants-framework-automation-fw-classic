@flextable-component 
Feature: Flex Table Component Scenarios 
	Test all flex table component based scenarios 
	As a configuration manager i make different configurational changes in flex table component and will validate them.

	@34022 @all @changeOfFlexTableTitle-gPlanning
	Scenario: validate after changing name of flex table title inside planning-programs
	Given I have default configuration as below:
	|configurationCategory |fieldName     |fieldOrignalValue|filterId        |
	|Flex Table List       |Label         |Draft Programs   |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory     |fieldName     |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table List           |Label         |Automation      |Programs              |Name                     |FLV-1837                  |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see "Automation" shown as flex table title
	
	@34024 @all @disablingExportFile-gPlanning
	Scenario: validate disabling of PDF/Excel download from menu option in flex table of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName     |fieldOrignalValue|filterId        |
	|Flex Table            |Enable Export |true             |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory     |fieldName     |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table:General        |Enable Export |false           |Programs              |                         |                          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I click on top right parallel lines bar for "Draft Programs"
	Then I see "Download as PDF""Download as CSV" options inside "Draft Programs" disabled
	
	@34026 @all @disblingQuickSearch-gPlanning
	Scenario: validate disabling of quick search in flex table of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName           |fieldOrignalValue|filterId        |
	|Flex Table            |Enable Quick Search |true             |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory     |fieldName           |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table:General        |Enable Quick Search |false           |Programs              |                         |                          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see quick search option disabled
	
	@34027 @all @disablingAdvanceFilter-gPlanning
	Scenario: validate disabling of advance filter from planning-Program flex table
	Given I have default configuration as below:
	|configurationCategory |fieldName           |fieldOrignalValue|filterId        |
	|Flex Table            |Enable Filter       |true             |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory     |fieldName           |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table:General        |Enable Filter       |false           |Programs              |                         |                          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
    Then I see Advance filter is disabled from planning flex table
        
    @34028 @all @disablingMenuIcon-gPlanning
    Scenario: validate disabling of menu icon from Program flex table
    Given I have default configuration as below:
	|configurationCategory |fieldName           |fieldOrignalValue|filterId        |
	|Flex Table            |Disable Menu        |false            |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory     |fieldName           |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table:General        |Disable Menu        |true            |Programs              |                         |                          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see Menu icon is disabled from planning flex table
	
	@34029 @all @enableRecordSelectionForFlex-gPlanning
	Scenario: validate enabling of record selection check boxes in flex table of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName                      |fieldOrignalValue|filterId        |
	|Flex Table            |Enable Record Selection        |false            |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory     |fieldName                |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table:General        |Enable Record Selection  |true            |Programs              |                         |                          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see select check box enabled in flex table
	
	@34030 @all @disablingAmountTotalForFlex-gPlanning
	Scenario: validate disbaling of total amount in flex table of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName          |fieldOrignalValue|filterId        |
	|Flex Table            |Enable Total Row   |true             |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory     |fieldName                |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table:General        |Enable Total Row         |false           |Programs              |                         |                          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see no total amount in flex table
	
	@34031 @all @disablingTotalRowCount-gPlanning
	Scenario: validate disbaling of total row count in flex table of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName                    |fieldOrignalValue|filterId        |
	|Flex Table            |Enable Total Records Count   |true             |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory     |fieldName                 |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table:General        |Enable Total Records Count|false           |Programs              |                         |                          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see no total row count in flex table
	
	@34032 @all @additionOfLabelForRowNamedTotal-gPlanning
	Scenario: validate addition of label for row named as total of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName         |fieldOrignalValue |coreComponentField |filterId        |
	|Flex Table            |Total Row Label   |Total             |Programs           |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName       |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table:General   |Total Row Label |Automation Total|Programs              |                         |Total                     |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see changed label as "Automation Total" of last row name
	
	@34033 @all @enableAutoIndex-gPlanning
	Scenario: validate enable auto index for details inside flex table of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName         |fieldOrignalValue |filterId        |
	|Flex Table            |Enable Auto Index |false             |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName         |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table:General   |Enable Auto Index |true            |Programs              |                         |                          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see " #" in flex table header

	@34034 @all @addingfieldNamesOfDifferentDataTypes-gPlanning
	Scenario Outline: validate adding field names for different data types in flex table of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName           |fieldOrignalValue |filterId        |
	|Flex Table            |Display Field Names |<defaultFieldsApi>|ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName           |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table:General   |Display Field Names |<newFieldsApi>  |Programs              |                         |                          |
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
	Given I have default configuration as below:
	|configurationCategory |fieldName           |fieldOrignalValue |filterId        |
	|Flex Table List       |Filter Clause       |<oldSoqlFilter>   |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName     |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table List      |Filter Clause |<newSoqlFilter> |Programs              |Name                     |FLV-1837                  |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	Then I see no "Created" status in flex table
	
	Examples:
	|newSoqlFilter|oldSoqlFilter|
	|RecordType.Name = 'Internal Program' and Status__c IN ( 'Change Requested','Submitted for Approval','Approved')|RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved')|

	@34037 @all @editActionOpensInNewWindow-gPlanning
	Scenario: validate flex table action field- Edit opens in new window
	Given I have default configuration as below:
	|configurationCategory |fieldName       |fieldOrignalValue    |filterId        |
	|Flex Table Action     |Action Behavior |Open in same window  |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName      |fieldNewValue      |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table Action    |Action Behavior|Open in new window |Programs              |Name                     |Edit                      | 
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation - Created mode only"
	When I click on "Edit" icon of status "Created" for "Test program for automation - Created mode only" program in flex table
	Then I see new tab is opened
	
	@34038 @all @editActionOpensInSameWindow-gPlanning
	Scenario: validate flex table action field- Edit opens in same window
	Given I have default configuration as below:
	|configurationCategory |fieldName       |fieldOrignalValue    |filterId        |
	|Flex Table Action     |Action Behavior |Open in same window  |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName      |fieldNewValue       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table Action    |Action Behavior|Open in same window |Programs              |Name                     |Edit                      | 
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation - Created mode only"
	When I click on "Edit" icon of status "Created" for "Test program for automation - Created mode only" program in flex table
	Then I see no new tab is opened
	
	@34039 @all @editActionOpensInOverLayWindow-gPlanning
	Scenario: validate flex table action field- Edit opens in overlay window
	Given I have default configuration as below:
	|configurationCategory |fieldName       |fieldOrignalValue    |filterId        |
	|Flex Table Action     |Action Behavior |Open in same window  |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName      |fieldNewValue       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table Action    |Action Behavior|Open in overlay     |Programs              |Name                     |Edit                      | 
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation - Created mode only"
	When I click on "Edit" icon of status "Created" for "Test program for automation - Created mode only" program in flex table
	Then I see "Edit" opens in overLay window
	
	@34292 @all @refreshEntirePage-gPlanning
	Scenario: validate flex table action field- refresh entire page
	Given I have default configuration as below:
	|configurationCategory |fieldName       |fieldOrignalValue    |filterId        |
	|Flex Table Action     |Refresh Behavior|                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName       |fieldNewValue           |coreComponentField             |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table Action    |Refresh Behavior|Refresh the entire page |ProgramRolesAndResponsibilities|Name                     |Edit                      | 
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation - Created mode only"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation - Created mode only" program in flex table
	When I click on "Roles" sub tab inside page layout 
	When I click on "Edit" icon for "Owner" to save inside subtab
	Then I see entire page is refreshing
	
	@34297 @all @hideForProfileFieldAtFlexTableAction-gPlanning
	Scenario: Hide edit row level action for specific profile from configuration and validating it at under roles and responibilities flex table- gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName        |fieldOrignalValue    |coreComponentField             |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide For Profile |                     |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	Given I setup test configuration as below:
	|configurationCategory|fieldName       |fieldNewValue          |coreComponentField             |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action    |Hide For Profile|System Administrator   |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation - Created mode only"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation - Created mode only" program in flex table
	When I click on "Roles" sub tab inside page layout
	Then I see "Edit" icon for "Owner" is not displayed inside flex table
	
	@34298 @all @hideForUserFieldAtFlexTableAction-gPlanning
	Scenario: Hide edit row level action for specific profile from configuration and validating it at under roles and responibilities flex table- gPlanning
	Given I have default configuration as below:
	|configurationCategory|fieldName      |fieldOrignalValue    |coreComponentField             |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action    |Hide For User  |                     |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	Given I setup test configuration as below:
	|configurationCategory|fieldName       |fieldNewValue        |coreComponentField             |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action    |Hide For User   |Internal             |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation - Created mode only"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation - Created mode only" program in flex table
	When I click on "Roles" sub tab inside page layout
	Then I see "Edit" icon for "Owner" is not displayed inside flex table
	
	@34299 @all @hideForContextFieldAtFlexTableAction-gPlanning
	Scenario: Hide edit row level action for specific profile from configuration and validating it at under roles and responibilities flex table- gPlanning
	Given I have default configuration as below:
	|configurationCategory|fieldName         |fieldOrignalValue    |coreComponentField             |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action    |Hide For Context  |                     |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	Given I setup test configuration as below:
	|configurationCategory|fieldName         |fieldNewValue        |coreComponentField             |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action    |Hide For Context  |Edit                 |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation - Created mode only"
	When I click on "Edit" icon of status "Created" for "Test program for automation - Created mode only" program in flex table
	When I click on "Roles" sub tab inside page layout
	Then I see "Edit" icon for "Owner" is not displayed inside flex table
	
	@34300 @all @hideOperatorFieldUsingANDOperatorAtFlexTAbleAction-gPlanning
	Scenario: Hide edit row level action using AND operator from configuration and validating it at under roles and responibilities flex table- gPlanning
	Given I have default configuration as below:
	|configurationCategory|fieldName         |fieldOrignalValue    |coreComponentField             |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide For Profile |                     |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	|Flex Table Action     |Hide For Context |                     |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	|Flex Table Action    |Hide Operator     |                     |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	Given I setup test configuration as below:
	|configurationCategory|fieldName         |fieldNewValue        |coreComponentField             |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action    |Hide For Profile  |System Administrator |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	|Flex Table Action    |Hide For Context  |Edit                 |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	|Flex Table Action    |Hide Operator     |AND                  |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation - Created mode only"
	When I click on "Edit" icon of status "Created" for "Test program for automation - Created mode only" program in flex table
	When I click on "Roles" sub tab inside page layout
	Then I see "Edit" icon for "Owner" is not displayed inside flex table
	
	@34302 @all @hideOperatorFieldUsingOROperatorAtFlexTAbleAction-gPlanning
	Scenario: Hide edit row level action using OR operator from configuration and validating it at under roles and responibilities flex table- gPlanning
	Given I have default configuration as below:
	|configurationCategory|fieldName         |fieldOrignalValue    |coreComponentField             |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide For Profile |                     |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	|Flex Table Action     |Hide For Context |                     |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	|Flex Table Action     |Hide Operator    |                     |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	Given I setup test configuration as below:
	|configurationCategory|fieldName         |fieldNewValue        |coreComponentField             |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action    |Hide For Profile  |System Administrator |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	|Flex Table Action    |Hide For Context  |Edit                 |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	|Flex Table Action    |Hide Operator     |OR                   |ProgramRolesAndResponsibilities|Name                       |Edit                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation - Created mode only"
	When I click on "Edit" icon of status "Created" for "Test program for automation - Created mode only" program in flex table
	When I click on "Roles" sub tab inside page layout
	Then I see "Edit" icon for "Owner" is not displayed inside flex table	