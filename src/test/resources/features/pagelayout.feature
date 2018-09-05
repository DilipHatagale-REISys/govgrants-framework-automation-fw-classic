@pagelayout-component
Feature: Test all page layout component based scenarios 
	As a configuration manager i make different configurational changes in page layout component and will validate them.
	
	@32762 @all @setUpHeaderWithContent-Programs
	Scenario: setting up header from configuration and validating its content in Edit view
	Given I have default configuration for "Page Layout" field "Header" as "Program - {!ProgramName__c}" with filter ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Header" as "Program - {!FederalProgramCFDA__c}"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on "Edit" icon of status "Created" in flex table
	Then I see "12345" shown as over view title in header "Program"
	
	@32764 @all @setUpPageInstructionText-Programs
	Scenario: validate the page instructions text apears as configured in Edit view
	Given I have default configuration for "Page Layout" field "Page Instruction Text" as "govgrants_config:PageInstructionText" with filter ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Page Instruction Text" as "Automation Instruction Text"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on "Edit" icon of status "Created" in flex table
	Then I see "Automation Instruction Text" shown as page instruction text
	
	@32765 @all  @setUpHeaderOverRideField-Programs
	Scenario: setting up header over ride configuration and validating its content after clicking New button
	Given I have default configuration for "Page Layout" field "Create Header Override" as "Creating New Program" with filter ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Create Header Override" as "Creating New Program for Automation"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on "New" button in right header
	Then I see "Creating New Program for Automation" shown as over view header
	
	@32766 @all @hideDecisionExpression-Programs
	Scenario Outline: Hide Submit for approval for Created from configuration and validating it for Created status view icon
	Given I have default configuration for "Page Layout Action" field "Hide Decision Expression" as "<old_hide_config>" with filter ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "Submit For Approval"
	When I reconfigure "Page Layout Action" field "Hide Decision Expression" as "<new_hide_config>"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on "View Program Details" icon of status "Created" in flex table
	Then I see "Submit For Approval" button is not displayed
	
	Examples:
	|new_hide_config|old_hide_config|
	|Status__c='Created'|Status__c='Active' OR Status__c='Submitted for Approval' OR Status__c='Approved' OR Status__c='Closed' OR Status__c='Disapproved' OR Status__c='Change Requested' OR Status__c='Disapproved' OR Status__c='Rejected'|
	
	@32825 @all @hideExpressionJSON-Programs @wip
	Scenario: Hide Submit for approval for Created from json configuration and validating it for Created status view icon
	Given I have default configuration for "Page Layout Action" field "Hide Expression JSON" as "" with filter ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "Submit For Approval"
	When I reconfigure "Page Layout Action" field "Hide Expression JSON" as "govgrants_config:HideExpressionJson"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on "View Program Details" icon of status "Created" in flex table
	Then I see "Submit For Approval" button is not displayed
	
	@32837 @all @hideForProfile-Programs
	Scenario: Hide Submit for approval for specific profile from configuration and validating it for Created status view icon
	Given I have default configuration for "Page Layout Action" field "Hide for profile" as "" with filter ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "Submit For Approval"
	When I reconfigure "Page Layout Action" field "Hide for profile" as "System Administrator"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on "View Program Details" icon of status "Created" in flex table
	Then I see "Submit For Approval" button is not displayed
	
	@32763 @all @HidePdfDownloadFromMenuForMainPageLayout-Programs
	Scenario: Disabling of PDF download option from configuration and validating it from menu dropdown inside program detail page
	Given I have default configuration for "Page Layout" field "Hide Pdf Download" as "false" with filter ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
    When I reconfigure "Page Layout" field "Hide Pdf Download" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on "View Program Details" icon of status "Created" in flex table
	When I click on "Menu" button inside detail page
	Then I see Download as PDF options disabled
	
	@32765 @all @HideTakeSnapshotFromMenuForMainPageLayout-Programs
	Scenario: Disabling of Take snapshot option from configuration and validating it from menu dropdown inside program detail page
	Given I have default configuration for "Page Layout" field "Hide On Demand Snapshot" as "false" with filter ""
	Given I setup filter clause for "General" in "Grantee State Program" for field "" having value ""
	When I reconfigure "Page Layout" field "Hide On Demand Snapshot" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on "View Program Details" icon of status "Created" in flex table
	When I click on "Menu" button inside detail page
	Then I see "Take Snapshot" options disabled
	
	@32827 @all @enablePromptInputDialog-Programs
	Scenario: Enable prompt input box for Submit for approval button configuration and validating it for Created status view icon
	Given I have default configuration for "Page Layout Action" field "Enable Prompt Input Dialog" as "false" with filter ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "Submit For Approval"
	When I reconfigure "Page Layout Action" field "Enable Prompt Input Dialog" as "true"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on "View Program Details" icon of status "Created" in flex table
	When I click on "Submit For Approval" button inside detail page
	Then I see prompt For automation is displayed
	
	@32831 @all @hideForContextFieldForMAinPageLayout-Programs
	Scenario: Hide submit for approval button for program view page and validating it for created status view icon in program detail page
	Given I have default configuration for "Page Layout Action" field "Hide For Context" as "" with filter ""
	Given I setup filter clause for "Page Layout Action" in "Grantee State Program" for field "Name" having value "Submit For Approval"
	When I reconfigure "Page Layout Action" field "Hide For Context" as "view"
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" to reach "Planning" tab
	When I click on "View Program Details" icon of status "Created" in flex table
	Then I see "Submit For Approval" button is not displayed at view detail page