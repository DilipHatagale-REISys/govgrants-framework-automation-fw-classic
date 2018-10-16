@pagelayout-component
Feature: Page Layout Component Scenarios 
	Test all page layout component based scenarios 
	As a configuration manager i make different configurational changes in page layout component and will validate them.
	
	@34042 @all @setUpHeaderWithContent-gPlanning
	Scenario: setting up header from configuration and validating its content in Edit view
	Given I have default configuration for "Page Layout" field "Header" as "Program - {!ProgramName__c}" with filter "" for field ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Header" as "Program - {!FederalProgramCFDA__c}"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "Edit" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "1234" shown as over view title in header "Program"
	
	@34047 @all @setUpPageInstructionText-gPlanning
	Scenario: validate the page instructions text apears as configured in Edit view
	Given I have default configuration for "Page Layout" field "Page Instruction Text" as "govgrants_config:PageInstructionText" with filter "" for field ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Page Instruction Text" as "Automation Instruction Text"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "Edit" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Automation Instruction Text" shown as page instruction text
	
	@34049 @all  @setUpHeaderOverRideField-gPlanning
	Scenario: setting up header over ride configuration and validating its content after clicking New button
	Given I have default configuration for "Page Layout" field "Create Header Override" as "Creating New Program" with filter "" for field ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Create Header Override" as "Creating New Program for Automation"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I click on "New" button in right header
	Then I see "Creating New Program for Automation" shown as over view header
	
	@34052 @all @hideDecisionExpression-gPlanning
	Scenario Outline: Hide Submit for approval for Created from configuration and validating it for Created status view icon
	Given I have default configuration for "Page Layout Action" field "Hide Decision Expression" as "<old_hide_config>" with filter "" for field ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "Submit For Approval"
	When I reconfigure "Page Layout Action" field "Hide Decision Expression" as "<new_hide_config>"
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
	Given I have default configuration for "Page Layout Action" field "Hide Expression JSON" as "" with filter "" for field ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "Submit For Approval"
	When I reconfigure "Page Layout Action" field "Hide Expression JSON" as "govgrants_config:HideExpressionJson"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Submit For Approval" button is not displayed
	
	@34069 @all @hideForProfile-gPlanning
	Scenario: Hide Submit for approval for specific profile from configuration and validating it for Created status view icon
	Given I have default configuration for "Page Layout Action" field "Hide for profile" as "" with filter "" for field ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "Submit For Approval"
	When I reconfigure "Page Layout Action" field "Hide for profile" as "System Administrator"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Submit For Approval" button is not displayed
	
	@34043 @all @HidePdfDownloadFromMenuForMainPageLayout-gPlanning
	Scenario: Disabling of PDF download option from configuration and validating it from menu dropdown inside program detail page
	Given I have default configuration for "Page Layout" field "Hide Pdf Download" as "false" with filter "" for field ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
    When I reconfigure "Page Layout" field "Hide Pdf Download" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Menu" button inside detail page
	Then I see Download as PDF options disabled
	
	@34046 @all @HideTakeSnapshotFromMenuForMainPageLayout-gPlanning
	Scenario: Disabling of Take snapshot option from configuration and validating it from menu dropdown inside program detail page
	Given I have default configuration for "Page Layout" field "Hide On Demand Snapshot" as "false" with filter "" for field ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Hide On Demand Snapshot" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Menu" button inside detail page
	Then I see "Take Snapshot" options disabled
	
	@34055 @all @enablePromptInputDialog-gPlanning
	Scenario: Enable prompt input box for Submit for approval button configuration and validating it for Created status view icon
	Given I have default configuration for "Page Layout Action" field "Enable Prompt Input Dialog" as "false" with filter "" for field ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "Submit For Approval"
	When I reconfigure "Page Layout Action" field "Enable Prompt Input Dialog" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Submit For Approval" button inside detail page
	Then I see prompt For automation is displayed
	
	@34056 @all @hideForContextFieldForMainPageLayoutAction-gPlanning
	Scenario: Hide submit for approval button for program view page and validating it at program detail page
	Given I have default configuration for "Page Layout Action" field "Hide For Context" as "" with filter "" for field ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "Submit For Approval"
	When I reconfigure "Page Layout Action" field "Hide For Context" as "view"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Submit For Approval" button is not displayed at view detail page
	
	@35814 @all @labelChangeOfCancelButtonAtMainPageLayout-gPlanning
	Scenario: Setup cancel button label name as Automation cancel from config and it at program detail page
	Given I have default configuration for "Page Layout" field "Cancel Button Label" as "" with filter "" for field ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Cancel Button Label" as "Auto Cancel"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Edit" button inside detail page
	Then I see "Auto Cancel" button is displayed at edit detail page
	
	@35813 @all @labelChangeOfSaveButtonAtMainPageLayout-gPlanning
	Scenario: Setup save button label name as Automation cancel from config and it at program detail page
	Given I have default configuration for "Page Layout" field "Save Button Label" as "" with filter "" for field ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Save Button Label" as "Auto Save"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	When I click on "Edit" button inside detail page
	Then I see "Auto Save" button is displayed at edit detail page
	
	@35817 @all @hideForContextFieldAtPageLayout-gPlanning
	Scenario: Hide overview for program view page and validating it at program detail page
	Given I have default configuration for "Page Tabs Config" field "Hide For Context" as "" with filter "" for field ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "TAB-029"
	When I reconfigure "Page Tabs Config" field "Hide For Context" as "view"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Overview" sub tab is not displayed at view detail page
	
	@34354 @all @sortOrderForFieldAtPageTab-gPlanning
	Scenario: Changing sort order for overview page tab from config and validating it at program detail page
	Given I have default configuration for "Page Tabs Config" field "Sort Order" as "0" with filter "" for field ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "TAB-029"
	When I reconfigure "Page Tabs Config" field "Sort Order" as "10"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Overview" shown at number "8" inside subtabs
	
	@34355 @all @headerInstructionTextFieldAtPageTab-gPlanning
	Scenario: Setup header instruction text for overview page tab from config and validating it at program detail page
	Given I have default configuration for "Page Tabs Config" field "Header Instruction Text" as "" with filter "" for field ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "TAB-029"
	When I reconfigure "Page Tabs Config" field "Header Instruction Text" as "Automation Header Text"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Automation Header Text" shown as header instruction text
	
	@34357 @all @tabTitleFieldAtPagePageTab-gPlanning
	Scenario: Changing sub tab title for overview page tab from config and validating it at program detail page
	Given I have default configuration for "Page Tabs Config" field "Tab Title" as "Overview" with filter "" for field ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "TAB-029"
	When I reconfigure "Page Tabs Config" field "Tab Title" as "Automation Overview"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Automation Overview" sub tab is displayed at view detail page
	
	@34359 @all @tabIconFieldAtPageTab-gPlanning
	Scenario: Setup tab icon for overview page tab from config and validating it at program detail page
	Given I have default configuration for "Page Tabs Config" field "Tab Icon" as "govgrants_config:TabIconDefaultCss" with filter "" for field ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "TAB-029"
	When I reconfigure "Page Tabs Config" field "Tab Icon" as "govgrants_config:TabIconNewCss"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see pencil icon as "Overview" sub tab
		
	@35949 @all @isActiveFieldAtPageTab-gPlanning
	Scenario: Disabling of Overview page tab from config and validating it at program detail page
	Given I have default configuration for "Page Tabs Config" field "Is Active" as "true" with filter "" for field ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "TAB-029"
	When I reconfigure "Page Tabs Config" field "Is Active" as "false"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
	When I search for "Test program for automation"
	When I click on "View Program Details" icon of status "Created" for "Test program for automation" program in flex table
	Then I see "Overview" sub tab is not displayed at view detail page
	