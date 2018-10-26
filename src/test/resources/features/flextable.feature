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
	