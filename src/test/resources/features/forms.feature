@forms-component
Feature: Forms Component Scenarios
	Test all forms component based scenarios 
	As a configuration manager i make different configurational changes in forms component and will validate them.

	@35095 @all @validateSkipFormForDownload-gapplications
	Scenario: Setup skip form download for 'General Application Budget Form' in configuration and validating inside Applications view
	Given I have default configuration as below:
	|configurationCategory|fieldName             |fieldOrignalValue    |filterId        |
	|Forms                |Skip Form Download    |false                |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName                      |fieldNewValue|coreComponentField             |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Forms:General          |Skip Form Download             |true         |General Application Budget Form|                         |                          |
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Applications" tab
	When I search for "AP-755-198"
	When I click on "View" icon of status "Review Initiated" for "Test announcement for program 2" program in flex table
	When I click on "Menu" button inside detail page
	And I select "Download As PDF" from dropdown
	And I download the file
	Then I do not see "Form - Application Budget" on page "29" of "govgrants" pdf file
	
	@35185 @all @validateBusinessFormsRemoval-gApplication @check
	Scenario: Validate disabling of business form from config and validating inside Application view
	Given I have default configuration as below:
	|configurationCategory |fieldName     |fieldOrignalValue|coreComponentField |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block            |Is Active     |true             |ApplicationView    |GNT__PageBlockTitle__c   |Business Forms            |
	Given I setup test configuration as below:
	|configurationCategory                  |fieldName     |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail           |Is Active     |false           |ApplicationView       |GNT__PageBlockTitle__c   |Business Forms            |
	#Given I have default configuration for "Page Block" field "Is Active" as "true" with filter "" for field ""
	#Given I setup filter clause for "Page Block Detail" in "ApplicationView" for field "GNT__PageBlockTitle__c" having value "Business Forms"
	#When I reconfigure "Page Block" field "Is Active" as "false"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Applications" tab
	When I search for "AP-755-198"
	When I click on "View" icon of status "Review Initiated" for "Test announcement for program 2" program in flex table
	When I click on "Attachments" sub tab inside page layout
	Then I see Business Form section is not displayed
	
	@35189 @all @hidingPreviewActionItemForUsersInsideBusinessForms-gApplication @check
	Scenario: Validate disabling preview of business form action item from config and validating inside Application view
	Given I have default configuration as below:
	|configurationCategory |fieldName     |fieldOrignalValue|coreComponentField     |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block Rule       |Hide For User |                 |ApplicationView        |Name                     |preview rule              |
	Given I setup test configuration as below:
	|configurationCategory                  |fieldName     |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block Rule:Page Block Rule Detail |Hide For User |Internal        |ApplicationView       |Name                     |preview rule              |
	#Given I have default configuration for "Page Block Rule" field "Hide For User" as "" with filter "" for field ""
	#Given I setup filter clause for "Page Block Rule Detail" in "ApplicationView" for field "Name" having value "preview rule"
	#When I reconfigure "Page Block Rule" field "Hide For User" as "Internal"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Applications" tab
	When I search for "AP-755-198"
	When I click on "View" icon of status "Review Initiated" for "Test announcement for program 2" program in flex table
	When I click on "Attachments" sub tab inside page layout
	Then I see "Preview" action item is not displayed inside business form
	
	@35193 @all @hidingViewActionItemForUsersInsideBusinessForms-gApplication @check
	Scenario: Validate disabling View of business form action item from config and validating inside Application view
	Given I have default configuration as below:
	|configurationCategory |fieldName     |fieldOrignalValue|coreComponentField     |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block Rule       |Hide For User |                 |ApplicationView        |Name                     |View                      |
	Given I setup test configuration as below:
	|configurationCategory                  |fieldName     |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block Rule:Page Block Rule Detail |Hide For User |Internal        |ApplicationView       |Name                     |View                      |
	#Given I have default configuration for "Page Block Rule" field "Hide For User" as "" with filter "" for field ""
	#Given I setup filter clause for "Page Block Rule Detail" in "ApplicationView" for field "Name" having value "View"
	#When I reconfigure "Page Block Rule" field "Hide For User" as "Internal"
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Applications" tab
	When I search for "AP-755-198"
	When I click on "View" icon of status "Review Initiated" for "Test announcement for program 2" program in flex table
	When I click on "Attachments" sub tab inside page layout
	Then I see "View" action item is not displayed inside business form
	
	@35271 @all @changeLabelOfEditFormPageLayoutActionItem-gApplication
	Scenario: Validate label change of edit action button at form page layout action from config and validating inside Application form view
	Given I have default configuration as below:
	|configurationCategory |fieldName     |fieldOrignalValue|coreComponentField     |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Layout Action    |Action Name   |Edit             |Application Cover Page |Name                     |Edit Automation           |
	Given I setup test configuration as below:
	|configurationCategory  |fieldName     |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Layout Action     |Action Name   |Edit Automation |Application Cover Page|Name                         |Edit                  |
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Applications" tab
	When I search for "AP-755-198"
	When I click on "View" icon of status "Review Initiated" for "Test announcement for program 2" program in flex table
	When I click on "Attachments" sub tab inside page layout
	When I click on "View" icon of form "General Application Cover Page" program in flex table
	Then I see changed label as "Edit Automation" of action item inside form page layout
	
	@35290 @all @hidingOfEditFormPageLayoutActionItemForUser-gApplication
	Scenario: Validate disabling of edit action button at form page layout action from config and validating inside Application form view
	Given I have default configuration as below:
	|configurationCategory |fieldName     |fieldOrignalValue|coreComponentField     |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Layout Action    |Hide For User |                 |Application Cover Page |Name                     |Edit                      |
	Given I setup test configuration as below:
	|configurationCategory  |fieldName     |fieldNewValue |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Layout Action     |Hide For User |Internal      |Application Cover Page|Name                         |Edit                  |
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Applications" tab
	When I search for "AP-755-198"
	When I click on "View" icon of status "Review Initiated" for "Test announcement for program 2" program in flex table
	When I click on "Attachments" sub tab inside page layout
	When I click on "View" icon of form "General Application Cover Page" program in flex table
	Then I see "Edit" of action item inside form page layout is not displayed	
	