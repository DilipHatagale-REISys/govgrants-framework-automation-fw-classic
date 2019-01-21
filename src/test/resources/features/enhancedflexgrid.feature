@enhancedflexgrid-component 
Feature: Enhanced Flex Grid Component Scenarios 
	Test all enhanced flex grid component based scenarios 
	As a configuration manager i make different configurational changes in enhanced flex grid component and will validate them.

    @35432 @all @disablingAdvanceFilterForEnhancedGrid-gPlanning
	Scenario: validate disabling of advance filter from planning-Program enhance flex grid
	Given I have default configuration as below:
	|configurationCategory |fieldName         |fieldOrignalValue    |filterId        |
	|Flex Grid             |Enable Filter     |true                 |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName      |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General    |Enable Filter  |false        |TmpActiveGrantsGrid   |                         |                          | 
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
	When I perform quick search for "Test program for automation - Created mode only"
	When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
    Then I see Advance Filter is disabled from table "flexGridEnhanced1"
    
    @35433 @all @disablingMenuIconForEnhancedGrid-gPlanning
    Scenario: validate disabling of menu icon from Planning- Program enhanced flex grid
    Given I have default configuration as below:
	|configurationCategory |fieldName         |fieldOrignalValue    |filterId        |
	|Flex Grid             |Disable Menu      |false                |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName      |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General    |Disable Menu   |true         |TmpActiveGrantsGrid   |                         |                          | 
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab 
    Then I see Menu icon is disabled from planning flex table "Monitoring Schedule For All Active Grants"
    
    @35436 @all @changeOfFlexTableTitleForEnhancedGrid-gPlanning
    Scenario: validate after changing name of enhanced flex grid title inside planning-program enhanced flex grid
    Given I have default configuration as below:
	|configurationCategory    |fieldName         |fieldOrignalValue                        |filterId        |
	|Flex Grid:Flex Table List|Label             |Monitoring Schedule For All Active Grants|ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory            |fieldName      |fieldNewValue            |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:Flex Table List        |Label          |Automation Enhanced Grid |TmpActiveGrantsGrid   |Name                     |FLV-2539                  | 
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Automation Enhanced Grid" shown as enhanced flex grid title
	
	@35438 @all @disablingExportFileForEnhancedGrid-gPlanning
	Scenario: validate disabling of PDF/Excel download from menu option in enhanced flex grid planning- Program enhanced flex grid
	 Given I have default configuration as below:
	|configurationCategory |fieldName         |fieldOrignalValue|filterId        |
	|Flex Grid             |Enable Export     |true             |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName      |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General     |Enable Export  |false        |TmpActiveGrantsGrid   |                         |                          | 
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	When I click on top right parallel lines bar for "Monitoring Schedule For All Active Grants"
	Then I see "Download as PDF""Download as CSV" options inside "Monitoring Schedule For All Active Grants" disabled
	
	@35439 @all @disblingQuickSearchForEnhancedGrid-gPlanning
	Scenario: validate disabling of quick search in enhanced flex grid planning-Program enhanced flex grid
	 Given I have default configuration as below:
	|configurationCategory |fieldName           |fieldOrignalValue|filterId        |
	|Flex Grid             |Enable Quick Search |true             |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName           |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table:General    |Enable Quick Search |false        |TmpActiveGrantsGrid   |                         |                          | 
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see quick search option disabled from enhanced grid
	
	@35437 @all @disablingAmountTotalForFlexForEnhancedGrid-gPlanning
	Scenario: validate disbaling of total row count in enhanced flex grid planning-Program enhanced flex grid
	Given I have default configuration as below:
	|configurationCategory |fieldName                  |fieldOrignalValue|filterId        |
	|Flex Grid             |Enable Total Records Count |true             |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName                  |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General     |Enable Total Records Count |false        |TmpActiveGrantsGrid   |                         |                          | 
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see no total row count in enhanced flex grid
	
	@35434 @all @enableAutoIndexForEnhancedGrid-gPlanning
	Scenario: validate enable auto index for details inside enhanced flex grid planning-Program enhanced flex grid
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue|filterId        |
	|Flex Grid             |Enable Auto Index    |false            |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName           |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General     |Enable Auto Index   |true         |TmpActiveGrantsGrid   |                         |                          |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "#" in enhanced flex grid header
	
	@35442 @all @enableRecordSelectionForFlexForEnhancedGrid-gPlanning
	Scenario: validate enabling of record selection check boxes in enhanced flex grid planning-Program enhanced flex grid
	Given I have default configuration as below:
	|configurationCategory |fieldName              |fieldOrignalValue|filterId        |
	|Flex Grid             |Enable Record Selection|false            |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName              |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General     |Enable Record Selection|true         |TmpActiveGrantsGrid   |                         |                          |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see select check box enabled in enhanced flex grid
	
	@35441 @all @editActionOpensInSameWindowForEnhancedGrid-gPlanning
	Scenario Outline: validate enhanced flex grid action field Edit opens in same window planning-Program enhanced flex grid
	Given I have default configuration as below:
	|configurationCategory |fieldName               |fieldOrignalValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table Action     |Single Row Edit Behavior|Inline              |TmpActiveGrantsGrid   |Name                     |Edit                      |
	|Flex Table Action     |Editable Rows           |SingleRows          |TmpActiveGrantsGrid   |Name                     |Edit                      |
	|Flex Table Action     |Action Behavior         |EditRecord          |TmpActiveGrantsGrid   |Name                     |Edit                      |
	|Flex Table Action     |Action URL Long         |<actionUrlLongValue>|TmpActiveGrantsGrid   |Name                     |Edit                      |
	|Flex Table Action     |Where To Open ?         |                    |TmpActiveGrantsGrid   |Name                     |Edit                      |
	Given I setup test configuration as below:
	|configurationCategory |fieldName               |fieldNewValue       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table Action     |Action Behavior         |OpenURL             |TmpActiveGrantsGrid   |Name                     |Edit                      |
	|Flex Table Action     |Action URL Long         |<actionUrlLongValue>|TmpActiveGrantsGrid   |Name                     |Edit                      |
	|Flex Table Action     |Where To Open ?         |SameWindow          |TmpActiveGrantsGrid   |Name                     |Edit                      |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	When I click on "Edit" icon for "Demo_Title" inside table
	Then I see no new tab is opened for action item in enhanced flex grid
	
	Examples:
	|actionUrlLongValue|
	|/apex/GrantEdit?id={!rowId}|
	
	@35440 @all @editActionOpensInOverLayWindowForEnhancedGrid-gPlanning
	Scenario Outline: validate flex table action field- Edit opens in overlay window
	Given I have default configuration as below:
	|configurationCategory |fieldName               |fieldOrignalValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table Action     |Single Row Edit Behavior|Inline              |TmpActiveGrantsGrid   |Name                     |Edit                      |
	|Flex Table Action     |Editable Rows           |SingleRows          |TmpActiveGrantsGrid   |Name                     |Edit                      |
	|Flex Table Action     |Action Behavior         |EditRecord          |TmpActiveGrantsGrid   |Name                     |Edit                      |
	|Flex Table Action     |Action URL Long         |<actionUrlLongValue>|TmpActiveGrantsGrid   |Name                     |Edit                      |
	|Flex Table Action     |Where To Open ?         |                    |TmpActiveGrantsGrid   |Name                     |Edit                      |
	Given I setup test configuration as below:
	|configurationCategory |fieldName               |fieldNewValue       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table Action     |Action Behavior         |OpenURL             |TmpActiveGrantsGrid   |Name                     |Edit                      |
	|Flex Table Action     |Action URL Long         |<actionUrlLongValue>|TmpActiveGrantsGrid   |Name                     |Edit                      |
	|Flex Table Action     |Where To Open ?         |Modal               |TmpActiveGrantsGrid   |Name                     |Edit                      |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	When I click on "Edit" icon for "Demo_Title" inside table
	Then I see "TmpActiveGrantsGrid" opens in overLay window
	
	Examples:
	|actionUrlLongValue|
	|/apex/GrantEdit?id={!rowId}|
	
	@35435 @all @addingfieldNamesOfDifferentDataTypesForEnhancedGrid-gPlanning
	Scenario Outline: validate adding field names for different data types in enhanced flex grid planning-Program enhanced flex grid
	Given I have default configuration as below:
	|configurationCategory |fieldName          |fieldOrignalValue |filterId        |
	|Flex Grid             |Display Field Names|<defaultFieldsApi>|ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName          |fieldNewValue |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General     |Display Field Names|<newFieldsApi>|TmpActiveGrantsGrid   |                         |                          |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "<fieldDisplayNames>" in enhanced flex grid header
	
	Examples:
	|fieldDisplayNames|newFieldsApi|defaultFieldsApi|
	|Project Title|ProjectTitle__c,Name,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Current Budget Period End Date|BudgetPeriodEndDate__c,Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|External Organization|ExternalOrganization__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Internal Organization|InternalOrganization__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Project Period|CurrentProjectPeriod__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Number of Awards|NumberofAwards__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Total Award Obligated Amount|TotalAwardObligatedAmount__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Status|Status__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|CFDA Number|CFDANumber__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,isClosedOut__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|isClosedOut|isClosedOut__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,AddressProgramContact__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	|Program Contact Address|AddressProgramContact__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c|Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c|
	
	@41297 @all @headerHelpTextFieldForParentFlexTableAtEnhancedGrid-gPlanning
	Scenario Outline: Changing content of help text field at parent flex table of enhanced grid from config and validating it at enhanced grid planning-Program enhanced flex grid
	Given I have default configuration as below:
	|configurationCategory |fieldName              |fieldOrignalValue|filterId        |
	|Flex Grid             |Header Help Text       |<old_helpText>   |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName              |fieldNewValue    |coreComponentField  |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General     |Header Help Text       |<new_helpText>   |TmpActiveGrantsGrid |                         |                          |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	When I hovering mouse on help text icon inside "Monitoring Schedule For All Active Grants" for enhanced grid
	Then I see "<new_helpText>" shown as help text
	Examples:
	|new_helpText            |old_helpText                                                                                                                                                            |
	|Help Text for Automation|The following table is a comprehensive list of all active grants.Â to view or edit a specific grant select the grant id hyperlink for the grant you would like to access|
	
	@41299 @all @enablePageSizeFieldAtParentFlexTableForEnhancedGrid-gPlanning
	Scenario: validate enabling of page size dropdown at bottom inside enhanced flex grid planning-Program enhanced flex grid
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue|filterId        |
	|Flex Grid             |Enable Page Size     |true            |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName           |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General     |Enable Page Size    |true         |TmpActiveGrantsGrid   |                         |                          |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Show" with page size dropdown at bottom in enhanced grid
	
	@41304 @all @defaultPageSizeFieldAtParentFlexTableForEnhancedGrid-gPlanning
	Scenario: validate change of default page size inside dropdown at bottom enhanced flex grid planning-Program enhanced flex grid
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue|filterId        |
	|Flex Grid             |Default Page Size    |5                |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General     |Default Page Size    |10           |TmpActiveGrantsGrid   |                         |                          |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "10" records inside enhanced grid
	
	@41308 @all @enableHelpFieldAtParentFlexTableForEnhancedGrid-gPlanning
	Scenario: validate enabling of help inside menu option in enhanced flex grid planning-Program enhanced flex grid
	Given I have default configuration as below:
	|configurationCategory |fieldName       |fieldOrignalValue|filterId        |
	|Flex Grid             |Enable Help     |false            |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName       |fieldNewValue    |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General     |Enable Help     |true             |TmpActiveGrantsGrid   |                         |                          |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	When I click on top right parallel lines bar for "Monitoring Schedule For All Active Grants"
	Then I see "Help" options inside "Monitoring Schedule For All Active Grants" enabled
	
	@41311 @all @helpTextFieldAtEnhancedGridColumnHeader-gPlanning
	Scenario Outline: Changing content of help text field at enhanced grid column header from config and validating it inside enhanced grid of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName       |fieldOrignalValue    |filterId        |
	|Flex Table List       |Help Text       |                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName        |fieldNewValue       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table List      |Help Text        |<new_helpText>      |TmpActiveGrantsGrid   |Name                     |FTC-1486                  |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	When I hovering mouse on help text icon inside "Internal Organization" for enhanced grid table column
	Then I see "<new_helpText>" shown as help text
	Examples:
	|new_helpText            |
	|Help Text for Automation|
	
	@41316 @all @fieldLabelOverrideFieldAtEnhancedGridColumnHeader-gPlanning
	Scenario: Changing specific column name of enhanced grid column header from config and validating it inside enhanced grid of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue    |filterId        |
	|Flex Table List       |Field Label Override |                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue        |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table List       |Field Label Override |Test Automation      |TmpActiveGrantsGrid   |Name                     |FTC-1486                  |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Test Automation" shown inside flex table with id "TmpActiveGrantsGridFlexToggle"
	
	@41319 @all @hideCellJsonfieldAtEnhancedGrid-gPlanning
	Scenario: Hiding specific cell value of enhanced grid from config and validating it inside enhanced grid of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName       |fieldOrignalValue    |filterId        |
	|Flex Table List       |Hide Cell JSON  |                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName       |fieldNewValue                               |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table List       |Hide Cell JSON  |govgrants_config:HideCellJsonForEnhancedGrid|TmpActiveGrantsGrid   |Name                     |FTC-1488                  |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "*****" shown inside enhanced grid table for specified record "Demo_Title"
	
	@41370 @all @readOnlyCellJSONFieldAtEnhancedGrid-gPlanning
	Scenario: Changing specific cell value to read only of enhanced grid from config and validating it inside enhanced grid of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue    |filterId        |
	|Flex Table List       |Read Only Cell JSON  |                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table List       |Read Only Cell JSON  |govgrants_config:ReadOnlyCellJsonForEnhancedGrid|TmpActiveGrantsGrid   |Name                     |FTC-1489                  |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	When I click on "Edit" icon for "Demo_Title" inside table
	Then I see input box is not displayed for budget period end date
	
	@41375 @all @hideColumnJSONfieldAtEnhancedGrid-gPlanning
	Scenario: Hiding specific column value of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
	|configurationCategory |fieldName       |fieldOrignalValue    |filterId        |
	|Flex Table List       |Hide Column JSON|                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName       |fieldNewValue                                 |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table List       |Hide Column JSON|govgrants_config:HideColumnJsonForEnhancedGrid|TmpActiveGrantsGrid   |Name                     |FTC-1488                  |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Project Period" not displayed in enhanced grid table column title
	
	@41376 @all @readOnlyColumnJSONFieldAtEnhancedGrid-gPlanning
	Scenario: Changing specific cell value to read only of enhanced grid from config and validating it inside enhanced grid of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue    |filterId        |
	|Flex Table List       |Read Only Column JSON|                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                     |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table List       |Read Only Column JSON|govgrants_config:ReadOnlyColumnJsonForEnhancedGrid|TmpActiveGrantsGrid   |Name                     |FTC-1489                  |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	When I click on "Edit" icon for "Demo_Title" inside table
	Then I see input box is not displayed for budget period end date
	
	@41465 @all @iconCssFieldAtEnhancedGridActionItem-gPlanning
	Scenario: Setup icon for enhanced grid table edit action from config and validating it inside enhanced grid of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName    |fieldOrignalValue                                  |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table Action     |Icon CSS     |govgrants_config:FlexTableEditActionDefaultIconCss |TmpActiveGrantsGrid   |Name                     |Edit                      |
	Given I setup test configuration as below:
	|configurationCategory |fieldName    |fieldNewValue                                      |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table Action     |Icon CSS     |govgrants_config:FlexTableEditActionNewIconCss     |TmpActiveGrantsGrid   |Name                     |Edit                      |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see external link icon as "Demo_Title" for "Edit" inside enhanced grid table action
	
	@41466 @all @ConfirmationMessageFieldAtEnhancedGridActionItem-gPlanning
	Scenario: Setup confirmation message for enhanced grid table edit action from configuration and validating it inside enhanced grid of program-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName                 |fieldOrignalValue    |coreComponentField |coreCOmponentSubFieldName|coreComponentSubFieldValue |
	|Flex Table Action     |Show Confirmation Box     |false                |TmpActiveGrantsGrid|Name                     |Edit                       |
	|Flex Table Action     |Confirmation Message      |                     |TmpActiveGrantsGrid|Name                     |Edit                       |
	Given I setup test configuration as below:
	|configurationCategory|fieldName                  |fieldNewValue        |coreComponentField |coreCOmponentSubFieldName|coreComponentSubFieldValue |
	|Flex Table Action     |Confirmation Message      |Automation           |TmpActiveGrantsGrid|Name                     |Edit                       |
	|Flex Table Action     |Show Confirmation Box     |true                 |TmpActiveGrantsGrid|Name                     |Edit                       |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	When I click on "Edit" icon for "Demo_Title" inside table with table id "TmpActiveGrantsGridFlexToggle" without processing
	Then I see confirmation box with body "Automation" is displayed
	
	@41468 @all @locationFieldAtEnhancedGridActionItem-gPlanning
	Scenario: Changing location of Monitoring Schedule For All Active Grants enhanced grid table view action from row to top from config anf validating it inside enhanced of program-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName                 |fieldOrignalValue    |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table Action     |Location                  |Row                  |TmpActiveGrantsGrid   |Name                     |View                      |
	|Flex Table Action     |Header Action Display Type|                     |TmpActiveGrantsGrid   |Name                     |View                      |
	Given I setup test configuration as below:
	|configurationCategory|fieldName                  |fieldNewValue        |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table Action    |Location                   |Top                  |TmpActiveGrantsGrid   |Name                     |View                      |
	|Flex Table Action    |Header Action Display Type |Button               |TmpActiveGrantsGrid   |Name                     |View                      |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "View" button inside "Monitoring Schedule For All Active Grants" enhanced grid
	
	@41385 @all @formulaFieldAtEnhancedGrid-gPlanning
	Scenario: Validating subtotal of cell value of total obligated amount by entering formula at config validating it inside enhanced of program-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName   |fieldOrignalValue    |filterId        |
	|Flex Table List       |Formula     |                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName   |fieldNewValue                              |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table List       |Formula     |govgrants_config:FormulaFieldAtEnhancedGrid|TmpActiveGrantsGrid   |Name                     |FTC-1491                  |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see cell subtotal as "745000.00"
	
	@42027 @all @headerHelpTextFieldForChildFlexTableAtEnhancedGrid-gPlanning
	Scenario Outline: Changing content of help text field at child flex table of enhanced grid from config and validating it at enhanced grid planning-Program enhanced flex grid
	Given I have default configuration as below:
	|configurationCategory |fieldName              |fieldOrignalValue|filterId        |
	|Flex Grid             |Header Help Text       |<old_helpText>   |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName              |fieldNewValue    |coreComponentField         |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General     |Header Help Text       |<new_helpText>   |TmpGrantorActiveAwardsGrid |                         |                          |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	When I expand nested table containing column value "Demo_Title"
	When I hovering mouse on help text icon inside "Active Awards" for enhanced grid
	Then I see "<new_helpText>" shown as help text
	Examples:
	|new_helpText            |old_helpText |
	|Help Text for Automation|Active Awards|
	
	@42030 @all @enableHelpFieldAtChildFlexTableForEnhancedGrid-gPlanning
	Scenario: validate enabling of help inside menu option inside child table of enhanced flex grid planning-Program enhanced flex grid
	Given I have default configuration as below:
	|configurationCategory |fieldName       |fieldOrignalValue|filterId        |
	|Flex Grid             |Enable Help     |false            |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName       |fieldNewValue    |coreComponentField           |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Grid:General     |Enable Help     |true             |TmpGrantorActiveAwardsGrid   |                         |                          |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	When I expand nested table containing column value "Demo_Title"
	When I click on top right parallel lines bar for "Active Awards"
	Then I see "Help" options inside "Active Awards" enabled
	
	@42024 @all @helpTextFieldAtChildTableEnhancedGridColumnHeader-gPlanning @check
	Scenario Outline: Changing content of help text field at enhanced grid column header from config and validating it inside enhanced grid of programs-planning
	Given I have default configuration as below:
	|configurationCategory |fieldName       |fieldOrignalValue    |filterId        |
	|Flex Table List       |Help Text       |                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory|fieldName        |fieldNewValue       |coreComponentField        |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Flex Table List      |Help Text        |<new_helpText>      |TmpGrantorActiveAwardsGrid|Name                     |FTC-1492                  |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	When I expand nested table containing column value "Demo_Title"
	When I hovering mouse on help text icon inside "ID" for enhanced grid table column
	Then I see "<new_helpText>" shown as help text
	Examples:
	|new_helpText            |
	|Help Text for Automation|
	
