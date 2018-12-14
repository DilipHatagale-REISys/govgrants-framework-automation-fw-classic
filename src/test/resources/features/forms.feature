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
	|configurationCategory  |fieldName           |fieldNewValue|coreComponentField             |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Forms:General          |Skip Form Download  |true         |General Application Budget Form|                         |                          |
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Applications" tab
	When I search for "AP-755-198"
	When I click on "View" icon of status "Review Initiated" for "Test announcement for program 2" program in flex table
	When I click on "Menu" button inside detail page
	And I select "Download As PDF" from dropdown
	And I download the file
	Then I do not see "Form - Application Budget" on page "29" of "govgrants" pdf file
	
	@35185 @all @validateBusinessFormsRemoval-gApplication
	Scenario: Validate disabling of business form from config and validating inside Application view
	Given I have default configuration as below:
	|configurationCategory |fieldName     |fieldOrignalValue|filterId        |
	|Page Block            |Is Active     |true             |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                  |fieldName     |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail           |Is Active     |false           |ApplicationView       |GNT__PageBlockTitle__c   |Business Forms            |
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Applications" tab
	When I search for "AP-755-198"
	When I click on "View" icon of status "Review Initiated" for "Test announcement for program 2" program in flex table
	When I click on "Attachments" sub tab inside page layout
	Then I see Business Form section is not displayed
	
	@35189 @all @hidingPreviewActionItemForUsersInsideBusinessForms-gApplication
	Scenario: Validate disabling preview of business form action item from config and validating inside Application view
	Given I have default configuration as below:
	|configurationCategory |fieldName     |fieldOrignalValue|coreComponentField     |filterId        |
	|Page Block Rule       |Hide For User |                 |ApplicationView        |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                  |fieldName     |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block Rule:Page Block Rule Detail |Hide For User |Internal        |ApplicationView       |Name                     |preview rule              |
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Applications" tab
	When I search for "AP-755-198"
	When I click on "View" icon of status "Review Initiated" for "Test announcement for program 2" program in flex table
	When I click on "Attachments" sub tab inside page layout
	Then I see "Preview" action item is not displayed inside business form
	
	@35193 @all @hidingViewActionItemForUsersInsideBusinessForms-gApplication
	Scenario: Validate disabling View of business form action item from config and validating inside Application view
	Given I have default configuration as below:
	|configurationCategory |fieldName     |fieldOrignalValue|coreComponentField     |filterId        |
	|Page Block Rule       |Hide For User |                 |ApplicationView        |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                  |fieldName     |fieldNewValue   |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block Rule:Page Block Rule Detail |Hide For User |Internal        |ApplicationView       |Name                     |View                      |
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
	
	@37857 @all @versionFieldAtFormConfig-gApplication
	Scenario: Changing text for version field at form config for general application form from config and validating it at particular form detail page
	Given I have default configuration as below:
	|configurationCategory|fieldName    |fieldOrignalValue    |filterId        |
	|Forms                |Version      |1.0                  |ApiGeneratedId:0|                    
	Given I setup test configuration as below:
	|configurationCategory  |fieldName  |fieldNewValue|coreComponentField      |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Forms:General          |Version    |2.0          |General Application Form|                         |                          |	
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Applications" tab
	When I search for "AP-755-198"
	When I click on "View" icon of status "Review Initiated" for "Test announcement for program 2" program in flex table
	When I click on "Attachments" sub tab inside page layout
	When I click on "View" icon of form "General Application Form" program in flex table
	Then I see "Form Version 2.0" inside Form Version
	
	@37856 @all @headerFieldAtFormLayout-gApplication
	Scenario: Changing header name for particular form inside application phase from config and validating it at application form detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName          |fieldOrignalValue     |filterId        |
	|Page Layout           |Header             |Application Simple    |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName          |fieldNewValue         |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Layout:General   |Header             |Test Automation       |Application - Simple  |                         |                             |
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Applications" tab
	When I search for "AP-755-198"
	When I click on "View" icon of status "Review Initiated" for "Test announcement for program 2" program in flex table
	When I click on "Attachments" sub tab inside page layout
	When I click on "View" icon of form "General Application Form" program in flex table
	Then I see "Test Automation" shown as over view header
	