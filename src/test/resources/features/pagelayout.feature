@pagelayout-component
Feature: Page Layout Component Scenarios 
	Test all page layout component based scenarios 
	As a configuration manager i make different configurational changes in page layout component and will validate them.
	
	@34042 @all @setUpHeaderWithContent-gPlanning
	Scenario: setting up header from configuration and validating its content in Edit view
	Given I have default configuration as below:
	|configurationCategory |fieldName          |fieldOrignalValue            |filterId        |
	|Page Layout           |Header             |Program - {!ProgramName__c}  |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName          |fieldNewValue                       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Layout:General   |Header             |Program - {!FederalProgramCFDA__c}  |Grantee State Program |                         |                             |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "Edit" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "1234" shown as over view title in header "Program"
	
	@34047 @all @setUpPageInstructionText-gPlanning
	Scenario: validate the page instructions text apears as configured in Edit view
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue                   |filterId        |
	|Page Layout           |Page Instruction Text|govgrants_config:PageInstructionText|ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Layout:General   |Page Instruction Text|Automation Instruction Text         |Grantee State Program |                         |                             |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "Edit" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Automation Instruction Text" shown as page instruction text
	
	@34049 @all @setUpHeaderOverRideField-gPlanning
	Scenario: setting up header over ride configuration and validating its content after clicking New button
	Given I have default configuration as below:
	|configurationCategory |fieldName             |fieldOrignalValue    |filterId        |
	|Page Layout           |Create Header Override|Creating New Program |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName             |fieldNewValue                       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Layout:General   |Create Header Override|Creating New Program for Automation |Grantee State Program |                         |                             |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I click on "New" button in right header
	Then I see "Creating New Program for Automation" shown as over view header
	
	@34052 @all @hideDecisionExpression-gPlanning
	Scenario Outline: Hide Submit for approval for Created from configuration and validating it for Created status view icon
	Given I have default configuration as below:
	|configurationCategory |fieldName               |fieldOrignalValue    |filterId        |
	|Page Layout Action    |Hide Decision Expression|<old_hide_config>    |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName               |fieldNewValue      |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Layout Action    |Hide Decision Expression|<new_hide_config>  |Grantee State Program |Name                     |Submit For Approval          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Submit For Approval" button is not displayed
	
	Examples:
	|new_hide_config|old_hide_config|
	|Status__c='Created'|Status__c='Active' OR Status__c='Submitted for Approval' OR Status__c='Approved' OR Status__c='Closed' OR Status__c='Disapproved' OR Status__c='Change Requested' OR Status__c='Disapproved' OR Status__c='Rejected'|
	
	@34053 @all @hideExpressionJSON-gPlanning @wip
	Scenario: Hide Submit for approval for Created from json configuration and validating it for Created status view icon
	Given I have default configuration as below:
	|configurationCategory |fieldName           |fieldOrignalValue    |filterId        |
	|Page Layout Action    |Hide Expression JSON|                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName           |fieldNewValue                        |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Layout Action    |Hide Expression JSON|govgrants_config:HideExpressionJson  |Grantee State Program |Name                     |Submit For Approval          |
	#Given I have default configuration for "Page Layout Action" field "Hide Expression JSON" as "" with filter "" for field ""
	#Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "Submit For Approval"
	#When I reconfigure "Page Layout Action" field "Hide Expression JSON" as "govgrants_config:HideExpressionJson"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Submit For Approval" button is not displayed
	
	@34069 @all @hideForProfile-gPlanning
	Scenario: Hide Submit for approval for specific profile from configuration and validating it for Created status view icon
	Given I have default configuration as below:
	|configurationCategory |fieldName           |fieldOrignalValue|filterId        |
	|Page Layout Action    |Hide for profile    |                 |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName           |fieldNewValue              |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Layout Action    |Hide for profile    |System Administrator       |Grantee State Program |Name                     |Submit For Approval          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Submit For Approval" button is not displayed
	
	@34043 @all @HidePdfDownloadFromMenuForMainPageLayout-gPlanning
	Scenario: Disabling of PDF download option from configuration and validating it from menu dropdown inside program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName           |fieldOrignalValue    |filterId        |
	|Page Layout           |Hide Pdf Download   |false                |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName           |fieldNewValue  |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Layout:General   |Hide Pdf Download   |true           |Grantee State Program |                         |                             |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Menu" button inside detail page
	Then I see Download as PDF options disabled
	
	@34046 @all @HideTakeSnapshotFromMenuForMainPageLayout-gPlanning
	Scenario: Disabling of Take snapshot option from configuration and validating it from menu dropdown inside program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName                 |fieldOrignalValue    |filterId        |
	|Page Layout           |Hide On Demand Snapshot   |false                |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName                 |fieldNewValue  |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Layout:General   |Hide On Demand Snapshot   |true           |Grantee State Program |                         |                             |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Menu" button inside detail page
	Then I see "Take Snapshot" options disabled
	
	@34055 @all @enablePromptInputDialog-gPlanning
	Scenario: Enable prompt input box for Submit for approval button configuration and validating it for Created status view icon
	Given I have default configuration as below:
	|configurationCategory |fieldName                 |fieldOrignalValue    |filterId        |
	|Page Layout Action    |Enable Prompt Input Dialog|false                |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName                 |fieldNewValue  |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Layout Action    |Enable Prompt Input Dialog|true           |Grantee State Program |Name                     |Submit For Approval          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Submit For Approval" button inside detail page
	Then I see prompt For automation is displayed
	
	@34056 @all @hideForContextFieldForMainPageLayoutAction-gPlanning
	Scenario: Hide submit for approval button for program view page and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName                 |fieldOrignalValue    |filterId        |
	|Page Layout Action    |Hide For Context          |                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName                 |fieldNewValue  |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Layout Action    |Hide For Context          |view           |Grantee State Program |Name                     |Submit For Approval          |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Submit For Approval" button is not displayed at view detail page
	
	@35814 @all @labelChangeOfCancelButtonAtMainPageLayout-gPlanning
	Scenario: Setup cancel button label name as Automation cancel from config and it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName                 |fieldOrignalValue    |filterId        |
	|Page Layout           |Cancel Button Label       |                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName                 |fieldNewValue  |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Layout:General   |Cancel Button Label       |Auto Cancel    |Grantee State Program |                         |                             |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Edit" button inside detail page
	Then I see "Auto Cancel" button is displayed at edit detail page
	
	@35813 @all @labelChangeOfSaveButtonAtMainPageLayout-gPlanning
	Scenario: Setup save button label name as Automation cancel from config and it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName                 |fieldOrignalValue    |filterId        |
	|Page Layout           |Save Button Label         |                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory |fieldName                 |fieldNewValue  |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Layout:General   |Save Button Label         |Auto Save      |Grantee State Program |                         |                             |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Edit" button inside detail page
	Then I see "Auto Save" button is displayed at edit detail page
	
	@35817 @all @hideForContextFieldAtPageLayout-gPlanning
	Scenario: Hide overview for program view page and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName                 |fieldOrignalValue    |filterId        |
	|Page Tabs Config      |Hide For Context          |                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName                 |fieldNewValue  |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Tabs Config:Page Layout Action   |Hide For Context          |view           |Grantee State Program |Name                     |TAB-029                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Overview" sub tab is not displayed at view detail page
	
	@34354 @all @sortOrderForFieldAtPageTab-gPlanning
	Scenario: Changing sort order for overview page tab from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName                 |fieldOrignalValue    |filterId        |
	|Page Tabs Config      |Sort Order                |0                    |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName                 |fieldNewValue  |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Tabs Config:Page Layout Action   |Sort Order                |10             |Grantee State Program |Name                     |TAB-029                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Overview" shown at number "8" inside subtabs
	
	@34355 @all @headerInstructionTextFieldAtPageTab-gPlanning
	Scenario: Setup header instruction text for overview page tab from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName                 |fieldOrignalValue    |filterId        |
	|Page Tabs Config      |Header Instruction Text   |                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName                 |fieldNewValue         |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Tabs Config:Page Layout Action   |Header Instruction Text   |Automation Header Text|Grantee State Program |Name                     |TAB-029                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Automation Header Text" shown as header instruction text
	
	@34357 @all @tabTitleFieldAtPagePageTab-gPlanning
	Scenario: Changing sub tab title for overview page tab from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName   |fieldOrignalValue    |filterId        |
	|Page Tabs Config      |Tab Title   |Overview             |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName   |fieldNewValue         |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Tabs Config:Page Layout Action   |Tab Title   |Automation Overview   |Grantee State Program |Name                     |TAB-029                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Automation Overview" sub tab is displayed at view detail page
	
	@34359 @all @tabIconFieldAtPageTab-gPlanning
	Scenario: Setup tab icon for overview page tab from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName   |fieldOrignalValue                 |filterId        |
	|Page Tabs Config      |Tab Icon    |govgrants_config:TabIconDefaultCss|ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName   |fieldNewValue                 |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Tabs Config:Page Layout Action   |Tab Icon    |govgrants_config:TabIconNewCss|Grantee State Program |Name                     |TAB-029                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see pencil icon as "Overview" sub tab
		
	@35949 @all @isActiveFieldAtPageTab-gPlanning
	Scenario: Disabling of Overview page tab from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName   |fieldOrignalValue|filterId        |
	|Page Tabs Config      |Is Active   |true             |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName   |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Tabs Config:Page Layout Action   |Is Active   |false        |Grantee State Program |Name                     |TAB-029                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Overview" sub tab is not displayed at view detail page
	
	@35955 @all @hideForUserAtPageTab-gPlanning
	Scenario: Hiding of overview page tab for internal user from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName    |fieldOrignalValue|filterId        |
	|Page Tabs Config      |Hide for User|                 |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName    |fieldNewValue|coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Tabs Config:Page Layout Action   |Hide for User|Internal     |Grantee State Program |Name                     |TAB-029                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Overview" sub tab is not displayed at view detail page
	
	@35956 @all @hideForProfileAtPageTab-gPlanning
	Scenario: Hiding of overview page tab for specific profile from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName       |fieldOrignalValue|filterId        |
	|Page Tabs Config      |Hide for Profile|                 |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName       |fieldNewValue       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Tabs Config:Page Layout Action   |Hide for Profile|System Administrator|Grantee State Program |Name                     |TAB-029                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Overview" sub tab is not displayed at view detail page
	
	@35959 @all @hideDecisionFieldAtPageTab-gPlanning
	Scenario: Hiding of overview page tab for created state from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName          |fieldOrignalValue|filterId        |
	|Page Tabs Config      |Hide Decision Field|                 |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName          |fieldNewValue       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Tabs Config:Page Layout Action   |Hide Decision Field|ShowActiveProgram__c|Grantee State Program |Name                     |TAB-029                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Overview" sub tab is not displayed at view detail page
	
	@35962 @all @highlightsPanelFeildAtPageTab-gPlanning
	Scenario: Setup of header overview page tab from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName          |fieldOrignalValue|filterId        |
	|Page Tabs Config      |Highlights Panel?  |false            |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName          |fieldNewValue       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Tabs Config:Page Layout Action   |Highlights Panel?  |true                |Grantee State Program |Name                     |TAB-409                      |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see complete header overview tab is displayed at view detail page
	
	@35976 @all @hideExpressionJsonFieldAtPageTab-gPlanning @wip
	Scenario: Hiding overview tab from json config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName             |fieldOrignalValue|filterId        |
	|Page Tabs Config      |Hide Expression JSON  |                 |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName             |fieldNewValue                                |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue   |
	|Page Tabs Config:Page Layout Action   |Hide Expression JSON  |govgrants_config:HideExpressionJsonForPageTab|Grantee State Program |Name                     |TAB-209                      |
	#Given I have default configuration for "Page Tabs Config" field "Hide Expression JSON" as "" with filter "" for field ""
	#Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "TAB-029"
	#When I reconfigure "Page Tabs Config" field "Hide Expression JSON" as "govgrants_config:HideExpressionJsonForPageTab"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Overview" sub tab is not displayed at view detail page
	
	@35979 @all @pageBlockTitleFieldAtPageBlock-gPlanning
	Scenario: Changing page block title from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory        |fieldName         |fieldOrignalValue  |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue    |
	|Page Block:Page Block Detail |Page Block Title  |Program Information|Grantee State Program |GNT__PageBlockTitle__c   |Program Information Automation|
	Given I setup test configuration as below:
	|configurationCategory        |fieldName       |fieldNewValue                 |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail |Page Block Title|Program Information Automation|Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Program Information Automation" page block title
	
	@35980 @all @isActiveFieldAtPageBlock-gPlanning
	Scenario: Disabling of program information page block from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory|fieldName         |fieldOrignalValue  |filterId        |
	|Page Block           |Is Active         |true               |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory        |fieldName       |fieldNewValue |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail |Is Active       |false         |Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Program Information" page block is not displayed
	
	@35981 @all @sortOrderFieldAtPageBlock-gPlanning
	Scenario: Changing sort order for Program information page block from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory|fieldName         |fieldOrignalValue  |filterId        |
	|Page Block           |Sort Order        |0                  |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory        |fieldName |fieldNewValue |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail |Sort Order|10            |Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Program Information" shown at number "5" inside page block
		
	@35984 @all @headerInstructionTextFieldAtPageBlock-gPlanning
	Scenario: Setup header instruction text for program information page block from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory        |fieldName                     |fieldOrignalValue    |coreComponentField    |filterId        |
	|Page Block:Page Block Detail |Header Instruction Text       |                     |Grantee State Program |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory        |fieldName                     |fieldNewValue        |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail |Header Instruction Text       |Header for Automation|Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Header for Automation" shown as header instruction text for page block
	
	@35986 @all @skipForExportFieldAtPageBlock-gPlanning
	Scenario: Setup skip form export for 'Program Information' in configuration and validating inside program detail page
	Given I have default configuration as below:
	|configurationCategory        |fieldName                     |fieldOrignalValue    |coreComponentField    |filterId        |
	|Page Block:Page Block Detail |Skip for Export               |false                |Grantee State Program |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory        |fieldName                     |fieldNewValue        |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail |Skip for Export               |true                 |Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Menu" button inside detail page
	And I select "Download As PDF" from dropdown
	And I download the file
	Then I do not see "Program Information" on page "1" of "govgrants" pdf file
	
	@36037 @all @hideForContextFieldAtPageBlock-gPlanning
	Scenario: Hide program information page block from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory        |fieldName        |fieldOrignalValue    |coreComponentField    |filterId        |
	|Page Block:Page Block Detail |Hide for Context |                     |Grantee State Program |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory        |fieldName        |fieldNewValue        |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail |Hide for Context |View                 |Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Program Information" page block is not displayed
	
	@36038 @all @hideForUserFieldAtPageBlock-gPlanning
	Scenario: Hiding of program information page block for internal user from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory        |fieldName        |fieldOrignalValue    |coreComponentField    |filterId        |
	|Page Block:Page Block Detail |Hide for User    |                     |Grantee State Program |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory        |fieldName        |fieldNewValue        |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail |Hide for User    |Internal             |Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Program Information" page block is not displayed
	
	@35957 @all @hideOperatorFieldUsingANDOperatorAtPageTab-gPlanning
	Scenario: Hide overview for program view page from config using AND operator and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName       |fieldOrignalValue    |filterId        |
	|Page Tabs Config      |Operator        |                     |ApiGeneratedId:0|
    |Page Tabs Config      |Hide for Profile|                     |ApiGeneratedId:0|
    |Page Tabs Config      |Hide for User   |                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName       |fieldNewValue       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Tabs Config:Page Layout Action   |Operator        |AND                 |Grantee State Program |Name                     |TAB-029                   |
    |Page Tabs Config:Page Layout Action   |Hide for Profile|System Administrator|Grantee State Program |Name                     |TAB-029                   |
    |Page Tabs Config:Page Layout Action   |Hide for User   |Internal            |Grantee State Program |Name                     |TAB-029                   |
    When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Overview" sub tab is not displayed at view detail page
	
	@35958 @all @hideOperatorFieldUsingOROperatorAtPageTab-gPlanning
	Scenario: Hide overview for program view page from config using OR operator and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory |fieldName       |fieldOrignalValue    |filterId        |
	|Page Tabs Config      |Operator        |                     |ApiGeneratedId:0|
    |Page Tabs Config      |Hide for Profile|                     |ApiGeneratedId:0|
    |Page Tabs Config      |Hide for User   |                     |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory                 |fieldName       |fieldNewValue       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Tabs Config:Page Layout Action   |Operator        |OR                  |Grantee State Program |Name                     |TAB-029                   |
    |Page Tabs Config:Page Layout Action   |Hide for Profile|System Administrator|Grantee State Program |Name                     |TAB-029                   |
    |Page Tabs Config:Page Layout Action   |Hide for User   |Internal            |Grantee State Program |Name                     |TAB-029                   |
    When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Overview" sub tab is not displayed at view detail page
	
	@36039 @all @hideForProfileAtPageBlock-gPlanning
	Scenario: Hide program information page block for particular user from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory        |fieldName        |fieldOrignalValue    |coreComponentField    |filterId        |
	|Page Block:Page Block Detail |Hide for Profile |                     |Grantee State Program |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory        |fieldName        |fieldNewValue        |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail |Hide for Profile |System Administrator |Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Program Information" page block is not displayed
		
	@36040 @all @hideOperatorFieldUsingANDOperatorAtPageBlock-gPlanning
	Scenario: Hide program information for program view page from config using AND operator and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory             |fieldName       |fieldOrignalValue    |coreComponentField    |filterId        |
	|Page Block:Page Block Detail      |Operator        |                     |Grantee State Program |ApiGeneratedId:0|
    |Page Block:Page Block Detail      |Hide for Profile|                     |Grantee State Program |ApiGeneratedId:0|
    |Page Block:Page Block Detail      |Hide for User   |                     |Grantee State Program |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory             |fieldName       |fieldNewValue       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail      |Operator        |AND                 |Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
    |Page Block:Page Block Detail      |Hide for Profile|System Administrator|Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
    |Page Block:Page Block Detail      |Hide for User   |Internal            |Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
    When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Program Information" page block is not displayed
	
	@36036 @all @totalFieldsPerRowFieldAtPageBlock-gPlanning
	Scenario: Setup value for total fields per row page block from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory        |fieldName             |fieldOrignalValue    |coreComponentField    |filterId        |
	|Page Block:Page Block Detail |Total Fields per Row  |2                    |Grantee State Program |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory        |fieldName             |fieldNewValue        |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail |Total Fields per Row  |3                    |Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
    When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
  	Then I see "Program Information" page block contains "3" elements
  	
  	@36041 @all @hideOperatorFieldUsingOROperatorAtPageBlock-gPlanning
	Scenario: Hide program information for program view page from config using AND operator and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory             |fieldName       |fieldOrignalValue    |coreComponentField    |filterId        |
	|Page Block:Page Block Detail      |Operator        |                     |Grantee State Program |ApiGeneratedId:0|
    |Page Block:Page Block Detail      |Hide for Profile|                     |Grantee State Program |ApiGeneratedId:0|
    |Page Block:Page Block Detail      |Hide for User   |                     |Grantee State Program |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory             |fieldName       |fieldNewValue       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail      |Operator        |OR                  |Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
    |Page Block:Page Block Detail      |Hide for Profile|System Administrator|Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
    |Page Block:Page Block Detail      |Hide for User   |Internal            |Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
    When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Program Information" page block is not displayed
	
	@36042 @all @hideDecisionFieldAtPageBlock-gPlanning
	Scenario: Hiding of program information page block from config and validating it at program detail page
	Given I have default configuration as below:
	|configurationCategory        |fieldName          |fieldOrignalValue|coreComponentField    |filterId        |
	|Page Block:Page Block Detail |Hide Decision Field|                 |Grantee State Program |ApiGeneratedId:0|
	Given I setup test configuration as below:
	|configurationCategory        |fieldName          |fieldNewValue       |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	|Page Block:Page Block Detail |Hide Decision Field|ShowActiveProgram__c|Grantee State Program |GNT__PageBlockTitle__c   |Program Information       |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Program Information" page block is not displayed
	
	@36045 @all @flexTableNameFieldAtPageBlock-gPlanning
	Scenario: Changing flex table rendering by changing name inside flex table name field at page block from config and validating it on program detail page
	Given I have default configuration as below:
	#|configurationCategory        |fieldName      |fieldOrignalValue|coreComponentField    |filterId        |
	#|Page Block:Page Block Detail |Flex Table Name|ProgramContacts  |Grantee State Program |ApiGeneratedId:0|
	#Given I setup test configuration as below:
	#|configurationCategory        |fieldName      |fieldNewValue                  |coreComponentField    |coreCOmponentSubFieldName|coreComponentSubFieldValue|
	#|Page Block:Page Bock Detail |Flex Table Name|ProgramRolesAndResponsibilities|Grantee State Program |GNT__PageBlockTitle__c   |Contacts                  |
	|configurationCategory       |fieldName              |fieldNewValue   |coreComponentField|coreCOmponentSubFieldName |coreComponentSubFieldValue   |
	|Page Block:Page Bock Detail |GNT__FlexTableName__c |Contacts        |ProgramContacts   |                          |                             |
	|Phase Config:General |Tab Display Label|Planning         |GrantorPlanning   |                          |                             |
	|Charts Config        |Phase Config     |ApiGeneratedId:0 |GrantorPlanning   |Name                      |AnnouncementByAdminBureauUnit|
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see Roles And Responsibilities flex table inside page block	
	