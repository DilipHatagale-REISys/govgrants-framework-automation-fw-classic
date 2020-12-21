@pagelayout-component @regression-test5 @pageLayout
Business Need: Page Layout Component Scenarios
  Test all page layout component based scenarios
  As a configuration manager i make different configurational changes in page layout component and will validate them.

  @34042    @setUpHeaderWithContent-gPlanning
  Scenario: setting up header from configuration and validating its content in Edit view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue           | filterId         |
      | Page Layout           | Header    | Program - {!ProgramName__c} | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Header    | Program - {!FederalProgramCFDA__c} | Grantee State Program |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "TPA01" shown as over view title in header "Program"

  @34047    @setUpPageInstructionText-gPlanning
  Scenario: validate the page instructions text apears as configured in Edit view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                    | filterId         |
      | Page Layout           | Page Instruction Text | govgrants_config:PageInstructionText | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | Automation Instruction Text | Grantee State Program |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Automation Instruction Text" shown as page instruction text

  @34049    @setUpHeaderOverRideField-gPlanning
  Scenario: setting up header over ride configuration and validating its content after clicking New button
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue    | filterId         |
      | Page Layout           | Create Header Override | Creating New Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Create Header Override | Creating New Program for Automation | Grantee State Program |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on top right button "New" in flex table with id "Programs"
    Then I see "Creating New Program for Automation" shown as over view header

  @34052    @hideDecisionExpression-gPlanning @smoke
  Scenario Outline: Hide Submit for approval for Created from configuration and validating it for Created status view icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | filterId         |
      | Page Layout Action    | Hide Decision Expression | <old_hide_config> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Decision Expression | <new_hide_config> | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Submit For Approval" button is not displayed

    Examples:
      | new_hide_config     | old_hide_config                                                                                                                                                                                                      |
      | Status__c='Created' | Status__c='Active' OR Status__c='Submitted for Approval' OR Status__c='Approved' OR Status__c='Closed' OR Status__c='Disapproved' OR Status__c='Change Requested' OR Status__c='Disapproved' OR Status__c='Rejected' |

  @34053    @hideExpressionJSON-gPlanning @smoke
  Scenario: Hide Submit for approval for Created from json configuration and validating it for Created status view icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Layout Action    | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:HideExpressionJson | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Submit For Approval" button is not displayed

  @34069    @hideForProfile-gPlanning @smoke
  Scenario: Hide Submit for approval for specific profile from configuration and validating it for Created status view icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Layout Action    | Hide for profile |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide for profile | System Administrator | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Submit For Approval" button is not displayed

  @34043    @HidePdfDownloadFromMenuForMainPageLayout-gPlanning
  Scenario: Disabling of PDF download option from configuration and validating it from menu dropdown inside program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | true          | Grantee State Program |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed

  @34046    @HideTakeSnapshotFromMenuForMainPageLayout-gPlanning
  Scenario: Disabling of Take snapshot option from configuration and validating it from menu dropdown inside program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snapshot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snapshot | true          | Grantee State Program |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Menu" in the page details
    Then I do not see "Take Snapshot" options is displayed

  @34055    @enablePromptInputDialog-gPlanning
  Scenario: Enable prompt input box for Submit for approval button configuration and validating it for Created status view icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Enable Prompt Input Dialog | false             | Grantee State Program | Name                      | Submit For Approval        |
      | Page Layout Action    | Prompt Dailogue Header     |                   | Grantee State Program | Name                      | Submit For Approval        |
      | Page Layout Action    | Prompt Dialogue Text       |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Prompt Dailogue Header     | Automation Header | Grantee State Program | Name                      | Submit For Approval        |
      | Page Layout Action    | Prompt Dialogue Text       | Automation Text   | Grantee State Program | Name                      | Submit For Approval        |
      | Page Layout Action    | Enable Prompt Input Dialog | true              | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Submit For Approval" button in right header
    Then I see prompt For automation is displayed

  @34056    @hideForContextFieldForMainPageLayoutAction-gPlanning @smoke
  Scenario: Hide submit for approval button for program view page and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Layout Action    | Hide For Context |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide For Context | view          | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Submit For Approval" button is not displayed at view detail page

  @35814    @labelChangeOfCancelButtonAtMainPageLayout-gPlanning
  Scenario: Setup cancel button label name as Automation cancel from config and it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Layout           | Cancel Button Label |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Cancel Button Label | Auto Cancel   | Grantee State Program |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Edit" in the page details
    Then I see "Auto Cancel" button is displayed at edit detail page

  @35813    @labelChangeOfSaveButtonAtMainPageLayout-gPlanning
  Scenario: Setup save button label name as Automation cancel from config and it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Save Button Label |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Save Button Label | Auto Save     | Grantee State Program |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Edit" in the page details
    Then I see "Auto Save" button is displayed at edit detail page

  @35817    @hideForContextFieldAtPageLayout-gPlanning @smoke
  Scenario: Hide overview for program view page and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide For Context |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide For Context | view          | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @34354    @sortOrderForFieldAtPageTab-gPlanning
  Scenario: Changing sort order for overview page tab from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Sort Order | 0                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Sort Order | 6             | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Overview" shown at number "5" inside subtabs

  @34355    @headerInstructionTextFieldAtPageTab-gPlanning
  Scenario: Setup header instruction text for overview page tab from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Header Instruction Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName               | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Header Instruction Text | Automation Header Text | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Automation Header Text" shown as header instruction text

  @34357    @tabTitleFieldAtPagePageTab-gPlanning
  Scenario: Changing sub tab title for overview page tab from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Tab Title | Overview          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Tab Title | Automation Overview | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Automation Overview" sub tab is displayed at view detail page

  @34359    @tabIconFieldAtPageTab-gPlanning
  Scenario: Setup tab icon for overview page tab from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                  | filterId         |
      | Page Tabs Config      | Tab Icon  | govgrants_config:TabIconDefaultCss | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Tab Icon  | govgrants_config:TabIconNewCss | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see pencil icon as "Overview" sub tab

  @35949    @isActiveFieldAtPageTab-gPlanning @smoke
  Scenario: Disabling of Overview page tab from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @35955    @hideForUserAtPageTab-gPlanning @smoke
  Scenario: Hiding of overview page tab for internal user from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide for User |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide for User | Internal      | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @35956    @hideForProfileAtPageTab-gPlanning @smoke
  Scenario: Hiding of overview page tab for specific profile from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide for Profile |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide for Profile | System Administrator | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @35959    @hideDecisionFieldAtPageTab-gPlanning @smoke
  Scenario: Hiding of overview page tab for created state from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide Decision Field |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Decision Field | ShowActiveProgram__c | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @35962    @highlightsPanelFeildAtPageTab-gPlanning
  Scenario: Setup of header overview page tab from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see complete header overview tab is displayed at view detail page

  @35976    @hideExpressionJsonFieldAtPageTab-gPlanning @smoke
  Scenario: Hiding overview tab from json config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:HideExpressionJsonForPageTab | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @35979    @pageBlockTitleFieldAtPageBlock-gPlanning
  Scenario: Changing page block title from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue     |
      | Page Block:Page Block Detail | Page Block Title | Program Information | Grantee State Program | GNT__PageBlockTitle__c    | Program Information Automation |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Page Block Title | Program Information Automation | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Program Information Automation" page block displayed

  @35980    @isActiveFieldAtPageBlock-gPlanning @smoke
  Scenario: Disabling of program information page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | false         | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I do not see "Program Information" page block displayed

  @35981    @sortOrderFieldAtPageBlock-gPlanning
  Scenario: Changing sort order for Program information page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Page Block            | Sort Order | 0                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Sort Order | 10            | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Program Information" shown at number "5" inside detail page

  @35984    @headerInstructionTextFieldAtPageBlock-gPlanning
  Scenario: Setup header instruction text for program information page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName               | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Header Instruction Text |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName               | fieldNewValue         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Header Instruction Text | Header for Automation | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Header for Automation" shown as header instruction text for page block

  @36037    @hideForContextFieldAtPageBlock-gPlanning @smoke
  Scenario: Hide program information page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Hide for Context |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide for Context | View          | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I do not see "Program Information" page block displayed

  @36038    @hideForUserFieldAtPageBlock-gPlanning @smoke
  Scenario: Hiding of program information page block for internal user from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName     | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Hide for User |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide for User | Internal      | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I do not see "Program Information" page block displayed

  @35957    @hideOperatorFieldUsingANDOperatorAtPageTab-gPlanning
  Scenario: Hide overview for program view page from config using AND operator and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Operator         |                   | ApiGeneratedId:0 |
      | Page Tabs Config      | Hide for Profile |                   | ApiGeneratedId:0 |
      | Page Tabs Config      | Hide for User    |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Operator         | AND                  | Grantee State Program | Name                      | TAB-029                    |
      | Page Tabs Config:Page Layout Action | Hide for Profile | System Administrator | Grantee State Program | Name                      | TAB-029                    |
      | Page Tabs Config:Page Layout Action | Hide for User    | Internal             | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @35958    @hideOperatorFieldUsingOROperatorAtPageTab-gPlanning
  Scenario: Hide overview for program view page from config using OR operator and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Operator         |                   | ApiGeneratedId:0 |
      | Page Tabs Config      | Hide for Profile |                   | ApiGeneratedId:0 |
      | Page Tabs Config      | Hide for User    |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Operator         | OR                   | Grantee State Program | Name                      | TAB-029                    |
      | Page Tabs Config:Page Layout Action | Hide for Profile | System Administrator | Grantee State Program | Name                      | TAB-029                    |
      | Page Tabs Config:Page Layout Action | Hide for User    | Internal             | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @36039    @hideForProfileAtPageBlock-gPlanning @smoke
  Scenario: Hide program information page block for particular user from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Hide for Profile |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide for Profile | System Administrator | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I do not see "Program Information" page block displayed

  @36040    @hideOperatorFieldUsingANDOperatorAtPageBlock-gPlanning
  Scenario: Hide program information for program view page from config using AND operator and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Operator         |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Hide for Profile |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Hide for User    |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Operator         | AND                  | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
      | Page Block:Page Block Detail | Hide for Profile | System Administrator | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
      | Page Block:Page Block Detail | Hide for User    | Internal             | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I do not see "Program Information" page block displayed

  @36036    @totalFieldsPerRowFieldAtPageBlock-gPlanning
  Scenario: Setup value for total fields per row page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Total Fields per Row | 2                 | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Total Fields per Row | 3             | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Program Information" page block contains "3" elements

  @36041    @hideOperatorFieldUsingOROperatorAtPageBlock-gPlanning
  Scenario: Hide program information for program view page from config using AND operator and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Operator         |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Hide for Profile |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Hide for User    |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Operator         | OR                   | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
      | Page Block:Page Block Detail | Hide for Profile | System Administrator | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
      | Page Block:Page Block Detail | Hide for User    | Internal             | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I do not see "Program Information" page block displayed

  @36042    @hideDecisionFieldAtPageBlock-gPlanning @smoke
  Scenario: Hiding of program information page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName           | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Hide Decision Field |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Decision Field | ShowActiveProgram__c | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I do not see "Program Information" page block displayed

  @36045    @flexTableNameFieldAtPageBlock-gPlanning @smoke
  Scenario: Changing flex table rendering by changing name inside flex table name field at page block from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Page Block            | Flex Table Name | ApiGeneratedId:0  | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName       | fieldNewValue              | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General            | Header          | Program Contacts           | ProgramContacts                 |                           |                            |
      | Flex Grid:General            | Header          | Roles And Responsibilities | ProgramRolesAndResponsibilities |                           |                            |
      | Page Block:Page Block Detail | Flex Table Name | ApiGeneratedId:1           | Grantee State Program           | GNT__PageBlockTitle__c    | Contacts                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    Then I see Roles And Responsibilities flex table inside page block

  @36046    @flexGridNameFieldAtPageBlock-gPlanning @smoke
  Scenario: Changing flex grid rendering by changing name inside flex grid name field at page block from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Page Block            | Flex Grid Name | ApiGeneratedId:0  | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName             | fieldNewValue      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General            | Flex Grid Config Name | ProgramOutcomes    | ProgramOutcomes       |                           |                            |
      | Flex Grid:General            | Flex Grid Config Name | MonitoringGridView | MonitoringGridView    |                           |                            |
      | Page Block:Page Block Detail | Flex Grid Name        | ApiGeneratedId:1   | Grantee State Program | GNT__PageBlockTitle__c    | Out Comes                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see Monitoring Schedule For All Active Grants flex grid inside page block

  @36051    @hideDisableAttachmentRowActionsFieldWithDisableOptionAtPageBlock-gPlanning @smoke
  Scenario: Hiding edit action item at row level inside attachments page block from config using disable option and validating it at program-submitted for approval detail page
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName                           | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail           | Hide/Disable attachment Row actions |                   | Grantee State Program | GNT__PageBlockTitle__c    | Attachments                |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile                    |                   | Grantee State Program | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName                           | fieldNewValue        | coreComponentField                                         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                                | Status                              | Created              | Test program for automation -  SA mode only - Not approved |                           |                            |
      | Page Block:Page Block Detail           | Hide/Disable attachment Row actions | Disable              | Grantee State Program                                      | GNT__PageBlockTitle__c    | Attachments                |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile                    | System Administrator | Grantee State Program                                      | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInSAModeOnlyNotApproved}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInSAModeOnlyNotApproved}" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon is disabled inside "Attachments" page block

  @36053    @hideDisableAttachmentRowActionsFieldWithHideOptionAtPageBlock-gPlanning
  Scenario: Hiding edit action item at row level inside attachments page block from config using hide option and validating it at program-submitted for approval detail page
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName                           | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail           | Hide/Disable attachment Row actions | Disable           | Grantee State Program | GNT__PageBlockTitle__c    | Attachments                |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile                    |                   | Grantee State Program | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName                           | fieldNewValue        | coreComponentField                                         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                                | Status                              | Created              | Test program for automation -  SA mode only - Not approved |                           |                            |
      | Page Block:Page Block Detail           | Hide/Disable attachment Row actions | Hide                 | Grantee State Program                                      | GNT__PageBlockTitle__c    | Attachments                |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile                    | System Administrator | Grantee State Program                                      | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInSAModeOnlyNotApproved}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInSAModeOnlyNotApproved}" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon for "Award Letter" is not displayed inside flex table

  @36094    @feildAPINAmeFieldAtPageBlockDetail-gPlanning @smoke
  Scenario: Changing field api name for page block detail from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field API Name | ProgramName__c    | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field API Name | BudgetingPreference__c | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see field "Budgeting Preference" inside page block

  @36099    @isActiveFieldAtPageBlockDetail-gPlanning @smoke
  Scenario: Disabling of program name page block detail from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Title" is not displayed inside page block detail

  @36100    @sortOrderFieldAtPageBlockDetail-gPlanning
  Scenario: Changing sort order of program name page block detail from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Sort Order | 0                 | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Sort Order | 10            | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Title" shown at number "8" inside "Program Information" page block detail

  @36101    @fieldLabelOverrideFieldAtPageBlockDetail-gPlanning
  Scenario: Changing label of program name page block detail fom config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Title             | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Automation Title | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see field "Automation Title" inside page block

  @36106    @readOnlyFieldAtPageBlockDetail-gPlanning
  Scenario: changing rendering behaviour of program name read only from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only | false             | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only | true          | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I softly see that "fieldProgramName__c" rendered in view mode only

  @36109    @hideForContextFieldAtPageBlockDetail-gPlanning @smoke
  Scenario: Hide program name field at page block detail from config validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide for Context |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide for Context | View          | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Title" is not displayed inside page block detail

  @36110    @hideForUserFieldAtPageBlockDetail-gPlanning @smoke
  Scenario: Hiding of program name page block detail for internal user from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName     | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide for User |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide for User | Internal      | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Title" is not displayed inside page block detail

  @36111    @hideForProfileFieldAtPageBlockDetail-gPlanning @smoke
  Scenario: Hide program name page block detail for specific profile from configuration and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide For Profile |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide For Profile | System Administrator | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Title" is not displayed inside page block detail

  @36113    @hideOperatorFieldUsingANDOperatorAtPageBlockDetail-gPlanning
  Scenario: Hide program name page block detail from config using AND operator and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Operator         |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide For Profile |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide For User    |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Operator         | AND                  | Grantee State Program | Name                      | PBD-9162                   |
      | Page Block Config:Page Block Rule Detail | Hide For Profile | System Administrator | Grantee State Program | Name                      | PBD-9162                   |
      | Page Block Config:Page Block Rule Detail | Hide For User    | Internal             | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Title" is not displayed inside page block detail

  @36114    @hideOperatorFieldUsingOROperatorAtPageBlockDetail-gPlanning
  Scenario: Hide program name page block detail from config using OR operator and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Operator         | AND               | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide For Profile |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide For User    |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Operator         | OR                   | Grantee State Program | Name                      | PBD-9162                   |
      | Page Block Config:Page Block Rule Detail | Hide For Profile | System Administrator | Grantee State Program | Name                      | PBD-9162                   |
      | Page Block Config:Page Block Rule Detail | Hide For User    | Internal             | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Title" is not displayed inside page block detail

  @36126    @readOnlyForContextFieldAtPageBlockDetail-gPlanning
  Scenario: changing rendering behaviour of program name read only for context from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only For Context |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only For Context | Edit          | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I softly see that "fieldProgramName__c" rendered in view mode only

  @36127    @readOnlyForProfileFieldAtPageBlockDetail-gPlanning @smoke
  Scenario: changing rendering behaviour of program name to read only for specific profile from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only For Profile |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only For Profile | System Administrator | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I softly see that "fieldProgramName__c" rendered in view mode only

  @36107    @requiredForSaveBehaviourAtPageBlockDetail-gPlanning @smoke
  Scenario: Changing value for required for save behaviour field from config and checking error message at program save
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantee State Program | Name                      | PBD-2600                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Program Sub Type is required to save under Overview. |

  @36050    @attachementClassificationFieldAtPageBlock-gPlanning @smoke
  Scenario: Changing the values for Attachement classifications field from config and validating it at Program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                                     | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Attachment Classifications | Program Artifacts;Financial Artifacts;Other Artifacts | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Attachment Classifications | AnnouncementArtifacts1;AnnouncementArtifacts2; | Grantee State Program | GNT__PageBlockTitle__c    | Attachments                |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "AddAttachments" button inside attachments page block
    Then I see "AnnouncementArtifacts1:AnnouncementArtifacts2" inside Type selectbox

  @36104    @isHiddenFieldAtPageBlockDetail-gPlanning
  Scenario: Hiding program name while making is hidden field as false from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName       | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Hidden Field | false             | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Hidden Field | true          | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Title" is not displayed inside page block detail

  @36115    @hideDecisionFieldAtPageBlockDetail-gPlanning @smoke
  Scenario: Hiding of program name at pege block detail by making change  inside hide decision field from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Decision Field |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Operator            | AND               | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Decision Field | ShowActiveProgram__c | Grantee State Program | Name                      | PBD-9162                   |
      | Page Block Config:Page Block Rule Detail | Operator            |                      | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Title" is not displayed inside page block detail

  @36129    @readOnlyForUserFieldAtPageDetail-gPlanning @smoke
  Scenario: changing rendering behaviour of program name while making change for is hidden field as false from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName          | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only For User |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName          | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only For User | Internal      | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I softly see that "fieldProgramName__c" rendered in view mode only

  @36131    @readDecisionFieldAtPageBlockDetail-gPlanning @smoke
  Scenario: changing rendering behaviour of program name while making change for read decision field from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Decision Field |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Decision Field | ShowActiveProgram__c | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I softly see that "fieldProgramName__c" rendered in view mode only

  @36136    @hideLabelFieldAtPageBlockDetail-gPlanning
  Scenario: Hiding program name label at page block detail from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Label | false             | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Label | true          | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Title" is not displayed inside page block detail

  @36169    @lookUpHeaderTextFieldAtPageBlockDetail-gPlanning
  Scenario: Hiding program name label at page block detail from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName          | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Header Text | Organization      | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName          | fieldNewValue           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Header Text | Organization Automation | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click search icon for lookup "Organization Lookup (New Window)"
    Then I see modal box with body "Organization Automation" is displayed

  @36170    @lookupDisplayFieldNamesFieldAtPageBlockDetail-gPlanning @smoke
  Scenario: Changing column header and its data of lookup modal from config and valiodating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Code__c       | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click search icon for look up field "Organization Lookup (New Window)" with clearing
    Then I see "Code" in table header on lookup Modal

  @36172    @lookupFilterCriteriaFieldAtPAgeBlockDetail-gPlanning @smoke
  Scenario Outline: Validate removing Created status category from table on lookup modal from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <oldLookupFilter> | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <newLookupDisplayName> | Grantee State Program | Name                      | PBD-3178                   |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <newLookupFilter>      | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click search icon for look up field "Organization Lookup (New Window)" with clearing
    When I perform quick search for "Automation test organization" in "---program:-:AccountTableId---" panel
    Then I see "Created" status in lookup modal table

    Examples:
      | oldLookupFilter                                                                    | newLookupFilter       | newLookupDisplayName |
      | RecordType.Name='Internal' AND GroupCode__c='{!GroupCode}' AND Status__c ='Active' | Status__c = 'Created' | Name,Status__c       |

  @36178    @attachmentClassificationFieldAtPageBlockDetail-gPlanning @smoke
  Scenario: Changing value of attachment classification field from config and validating it at announcement detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue   | coreComponentField      | filterId         |
      | Page Block Config:Page Block Rule Detail | Attachment Classifications | FOA;CFA;CFDA;Other; | Annoucement Profile-FOA | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Attachment Classifications | Test1;Test2;  | Annoucement Profile-FOA | Name                      | PBD-5205                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
    When I navigate to "Overview" sub tab
    When I click on Manage Attachments inside page block details
    Then I see "Test1:Test2" inside Type selectbox

  @36196    @submitWarningMessageFieldAtPageLayoutAction-gPlanning
  Scenario: Setup submit warning message at program submit for approval from configuration and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue                                                                                   | filterId         |
      | Page Layout Action    | Submit Warning Message | You Will not be able to edit the Program once it is submitted , Are you sure you want to continue ? | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Submit Warning Message | Test message for Automation | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Test message for Automation" message inside confirmation box is displayed on click "Submit For Approval"

  @36198    @isActiveFieldAtPageLayoutAction-gPlanning @smoke
  Scenario: Disabling of edit button action at page layout action from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Layout Action    | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Is Active | false         | Grantee State Program | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Edit" button is not displayed

  @36200    @editButtonActionOpensInOverLayWindowAtPageLayoutAction-gPlanning
  Scenario: validate page layout action button field- Edit opens in overlay window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Page Layout Action    | Action Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Behavior | Open in overlay | Grantee State Program | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Edit" in the page details
    Then I see Edit opens in overlay window with "Cancel" button

  @36202    @editButtonActionOpensInNewWindowAtPageLayoutAction-gPlanning @smoke
  Scenario: validate page layout action button field- Edit opens in New window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Page Layout Action    | Action Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Behavior | Open in new window | Grantee State Program | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Edit" in the page details
    Then I see new tab is opened

  @36204    @displayAreaFieldForCreateCampaignAtPageLayoutAction-gPlanning @smoke
  Scenario: Set up create campaign at page layout action from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Page Layout Action    | Display Area | Menu              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Display Area | Page Header   | Grantee State Program | Name                      | Create Campaign            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Create Campaign" button is displayed

  @36205    @displayAreaFieldForEditAtPageLayoutAction-gPlanning
  Scenario: Set up create campaign at page layout action from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Page Layout Action    | Display Area | Page Header       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Display Area | Menu          | Grantee State Program | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Menu" in the page details
    Then I see Edit options inside Menu Dropdown

  @36208    @headerSequenceFieldAtPageLayoutAction-gPlanning
  Scenario: Setup edit page layout action sequence as "1" from config. and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Page Layout Action    | Header Sequence | 2                 | ApiGeneratedId:0 |
      | Page Layout Action    | Header Sequence | 1                 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Header Sequence | 1             | Grantee State Program | Name                      | Edit                       |
      | Page Layout Action    | Header Sequence | 2             | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Edit" Button at position "0"

  @35982    @helpTextFieldAtPageBlock-gPlanning
  Scenario Outline: Changing content of help text field at page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Help Text | <old_helpText>    | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Help Text | <new_helpText> | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I hovering mouse on help text icon inside "Program Information"
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText                                                                           |
      | Help Text for Automation | The section gives program overview along with funder and funding organization details. |

  @36102    @helpTextLongFieldAtPageBlockDetail-gPlanning
  Scenario Outline: Changing content of help text long field at page block detail from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I hovering mouse on help text icon inside page block detail "Title"
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText                                       |
      | Help Text for Automation | Name represents for what the program is meant for. |

  @36043    @hideExpressionJsonFieldAtPageBlock-gPlanning @smoke
  Scenario: Hiding program information page block from json config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HideExpressionJsonForPageBlock | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I do not see "Program Information" page block displayed

  @36116    @hideExpressionJsonFieldAtPageBlockDetail-gPlanning @smoke
  Scenario: Disabling of program name page block detail from json config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HideExpressionJsonForPageBlockDetail | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Title" is not displayed inside page block detail

  @36134    @readOnlyExpressionJSONFieldAtPageBlockDetail-gPlanning @smoke
  Scenario: changing rendering behaviour of program name read only with read only expression json field from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                 | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                 | fieldNewValue                                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only Expression JSON | govgrants_config:ReadOnlyExpressionJsonForPageBlockDetail | Grantee State Program | Name                      | PBD-9162                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I softly see that "fieldProgramName__c" rendered in view mode only

  @53094    @hideForContextFieldAtNotesAndAttachmentPageBlockForEditAction-gPlanning
  Scenario: Hide edit action from attachment page block from config validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Rule:Page Block Rule Detail | Hide for Context |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide for Context | View          | Grantee State Program | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon is disabled inside "Attachments" page block

  @53095    @hideForProfileFieldAtNotesAndAttachmentPageBlockForEditAction-gPlanning
  Scenario: Hide edit action from attachment page block from config validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Rule:Page Block Rule Detail | Hide for Profile |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide for Profile | System Administrator | Grantee State Program | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon is disabled inside "Attachments" page block

  @53096    @hideForUserFieldAtNotesAndAttachmentPageBlockForEditAction-gPlanning
  Scenario: Hide edit action from attachment page block from config validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName     | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Rule:Page Block Rule Detail | Hide for User |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide for User | Internal      | Grantee State Program | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon is disabled inside "Attachments" page block


  @53098    @hideOperatorFieldUsingOROperatorAtNotesAndAttachmentPageBlockForEditAction-gPlanning
  Scenario: Hide edit row level action using OR operator from configuration and validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName        | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile |                   | Grantee State Program | Name                      | Edit                       |
      | Page Block Rule:Page Block Rule Detail | Hide For User    |                   | Grantee State Program | Name                      | Edit                       |
      | Page Block Rule:Page Block Rule Detail | Hide Operator    |                   | Grantee State Program | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile | System Administrator | Grantee State Program | Name                      | Edit                       |
      | Page Block Rule:Page Block Rule Detail | Hide For User    | Internal             | Grantee State Program | Name                      | Edit                       |
      | Page Block Rule:Page Block Rule Detail | Hide Operator    | OR                   | Grantee State Program | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon is disabled inside "Attachments" page block

  @53097    @hideOperatorFieldUsingANDOperatorAtNotesAndAttachmentPageBlockForEditAction-gPlanning
  Scenario: Hide edit row level action using AND operator from configuration and validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName        | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile |                   | Grantee State Program | Name                      | Edit                       |
      | Page Block Rule:Page Block Rule Detail | Hide For User    |                   | Grantee State Program | Name                      | Edit                       |
      | Page Block Rule:Page Block Rule Detail | Hide Operator    |                   | Grantee State Program | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile | System Administrator | Grantee State Program | Name                      | Edit                       |
      | Page Block Rule:Page Block Rule Detail | Hide For User    | Internal             | Grantee State Program | Name                      | Edit                       |
      | Page Block Rule:Page Block Rule Detail | Hide Operator    | AND                  | Grantee State Program | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon is disabled inside "Attachments" page block

  @53099    @hideForContextFieldAtNotesAndAttachmentPageBlockForEditActionWithRecordTypeNotesConfig-gPlanning
  Scenario Outline: Hide edit row level action using AND operator from configuration and validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide For Context |                   |                    | Internal Unique Id        | <value>                    |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide For Context | View          |                    | Internal Unique Id        | <value>                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon for "Check Edit Behaviour" is not displayed inside flex table

    Examples:
      | value                          |
      | DXkA4qiwvbHfLbAaiAs6wiiVyPIp3D |

  @53100    @hideForProfileFieldAtNotesAndAttachmentPageBlockForEditActionWithRecordTypeNotesConfig-gPlanning
  Scenario Outline: Hide edit action from attachment page block from config validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide for Profile |                   |                    | Internal Unique Id        | <value>                    |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide for Profile | System Administrator |                    | Internal Unique Id        | <value>                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon for "Check Edit Behaviour" is not displayed inside flex table

    Examples:
      | value                          |
      | DXkA4qiwvbHfLbAaiAs6wiiVyPIp3D |

  @53101    @hideForUserFieldAtNotesAndAttachmentPageBlockForEditActionWithRecordTypeNotesConfig-gPlanning
  Scenario Outline: Hide edit action from attachment page block using Hide For User field from config validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide for User |                   |                    | Internal Unique Id        | <value>                    |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide for User | Internal      |                    | Internal Unique Id        | <value>                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon for "Check Edit Behaviour" is not displayed inside flex table

    Examples:
      | value                          |
      | DXkA4qiwvbHfLbAaiAs6wiiVyPIp3D |

  @53102    @hideOperatorFieldUsingANDOperatorAtNotesAndAttachmentPageBlockForEditActionWithRecordTypeNotesConfig-gPlanning
  Scenario Outline: Hide edit row level action using AND operator from configuration and validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide For Profile |                   |                    | Internal Unique Id        | <value>                    |
      | Uid Config:Uid        | Hide For User    |                   |                    | Internal Unique Id        | <value>                    |
      | Uid Config:Uid        | Hide Operator    |                   |                    | Internal Unique Id        | <value>                    |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide For Profile | System Administrator |                    | Internal Unique Id        | <value>                    |
      | Uid Config:Uid        | Hide For User    | Internal             |                    | Internal Unique Id        | <value>                    |
      | Uid Config:Uid        | Hide Operator    | AND                  |                    | Internal Unique Id        | <value>                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon for "Check Edit Behaviour" is not displayed inside flex table

    Examples:
      | value                          |
      | DXkA4qiwvbHfLbAaiAs6wiiVyPIp3D |

  @53103    @hideOperatorFieldUsingOROperatorAtNotesAndAttachmentPageBlockForEditActionWithRecordTypeNotesConfig-gPlanning
  Scenario Outline: Hide edit row level action using AND operator from configuration and validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide For Profile |                   |                    | Internal Unique Id        | <value>                    |
      | Uid Config:Uid        | Hide For User    |                   |                    | Internal Unique Id        | <value>                    |
      | Uid Config:Uid        | Hide Operator    |                   |                    | Internal Unique Id        | <value>                    |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide For Profile | System Administrator |                    | Internal Unique Id        | <value>                    |
      | Uid Config:Uid        | Hide For User    | Internal             |                    | Internal Unique Id        | <value>                    |
      | Uid Config:Uid        | Hide Operator    | OR                   |                    | Internal Unique Id        | <value>                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon for "Check Edit Behaviour" is not displayed inside flex table

    Examples:
      | value                          |
      | DXkA4qiwvbHfLbAaiAs6wiiVyPIp3D |

  @53260    @hideDecisionFieldAtNotesAndAttachmentPageBlockForEditAction-gPlanning
  Scenario: Hide edit action from attachment page block from config validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName           | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Rule:Page Block Rule Detail | Hide Decision Field |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName           | fieldNewValue    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide Decision Field | HideDeleteBtn__c | Grantee State Program | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Active Programs"
    When I perform quick search for "Test Demo"
    When I click on "View Program Details" icon for "Test Demo" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon is disabled inside "Attachments" page block

  @53261    @hideDecisionFieldAtNotesAndAttachmentPageBlockForEditActionWithRecordTypeNotesConfig-gPlanning
  Scenario Outline: Hide edit action from attachment page block from config validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide Decision Field |                   |                    | Internal Unique Id        | <value>                    |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide Decision Field | HideDeleteBtn__c |                    | Internal Unique Id        | <value>                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Active Programs"
    When I perform quick search for "Test Demo"
    When I click on "View Program Details" icon for "Test Demo" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Edit" icon for "Check Edit Behaviour" is not displayed inside flex table

    Examples:
      | value                          |
      | DXkA4qiwvbHfLbAaiAs6wiiVyPIp3D |

  @53092    @saveAttachementBehaviourFieldAtNotesAndAttachmentPageBlockAsSaveAndCloseModal-gPlanning
  Scenario: Changing save attachment behaviour at attachment modal from config and validating it at attachment modal
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                 | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Save Attachment Behaviour | Save              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                 | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Save Attachment Behaviour | Save and Close Modal | Grantee State Program | GNT__PageBlockTitle__c    | Attachments                |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "Program Artifacts" inside table
    Then I see "Save and Close" at bottom of Attachment Modal

  @53093    @saveAttachementBehaviourFieldAtNotesAndAttachmentPageBlockAsSaveAndSaveAndCloseModal-gPlanning
  Scenario: Changing save attachment behaviour at attachment modal from config and validating it at attachment modal
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                 | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Save Attachment Behaviour | Save              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                 | fieldNewValue                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Save Attachment Behaviour | Save and Save and Close Modal | Grantee State Program | GNT__PageBlockTitle__c    | Attachments                |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "Program Artifacts" inside table
    And I see "Save" at bottom of Attachment Modal
    Then I see "Save and Close" at bottom of Attachment Modal

  @53388    @requiredForSubmitBehaviourAtPageBlockDetailForTitleField-gPlanning
  Scenario: changing value of required behaviour and removing program title and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-9168                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "   " into field "ProgramNameText__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Program Name Text is required to submit under Overview. |

  @53389    @requiredForSubmitBehaviourAtPageBlockDetailForOwnerOrganizationField-gPlanning
  Scenario: changing value of required behaviour and removing owner organization value and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "Test Program For Automation - Created - Required Behaviour" into field "fieldProgramName__c"
    When I enter value "" into field "fieldAccount__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Owner Organization is required to submit under Overview. |

  @53390    @requiredForSubmitBehaviourAtPageBlockDetailForNumberField-gPlanning
  Scenario: changing value of required behaviour and removing Number Field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-9161                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "" into field "fieldNumber__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Number is required to submit under Overview. |

  @53391    @requiredForSubmitBehaviourAtPageBlockDetailForKPIRequiredField-gPlanning
  Scenario: changing value of required behaviour and keeping none at kpi required Field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-6440                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "--None--" into field "fieldKPIsRequired__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | KPI's Required? is required to submit under Overview. |

  @53392    @requiredForSubmitBehaviourAtPageBlockDetailForProjectPeriodStartDateField-gPlanning
  Scenario: changing value of required behaviour and keeping none at project start period Field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-584                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "No" into field "fieldKPIsRequired__c"
    When I enter value "" into field "fieldStartDate__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Project Period Start Date is required to submit under Overview. |

  @53393    @requiredForSubmitBehaviourAtPageBlockDetailForExpectedFutureFundingField-gPlanning
  Scenario: changing value of required behaviour and keeping none at expected future funding and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-688                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "0" into field "fieldStartDate__c"
    When I enter value "" into field "fieldExpectedFunding__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Expected Future Funding is required to submit under Overview. |

  @53394    @requiredForSubmitBehaviourAtPageBlockDetailForUrlField-gPlanning
  Scenario: changing value of required behaviour and keeping none at URL field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "50000" into field "fieldExpectedFunding__c"
    When I enter value "" into field "fieldWebsiteAddress__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Website Address is required to submit under Overview. |

  @53395    @requiredForSubmitBehaviourAtPageBlockDetailForProjectsGoalsField-gPlanning
  Scenario: changing value of required behaviour and keeping none at project goals field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-9163                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "www.google.com" into field "fieldWebsiteAddress__c"
    When I enter value "" into field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Project Goals is required to submit under Overview. |

  @53396    @requiredForSubmitBehaviourAtPageBlockDetailForPercentageField-gPlanning
  Scenario: changing value of required behaviour and keeping none at percentage field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-9165                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "" into field "fieldPercent__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Percent is required to submit under Overview. |

  @53397   @requiredForSubmitBehaviourAtPageBlockDetailForDateAndTimeField-gPlanning
  Scenario: changing value of required behaviour and keeping none at date and time field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-9166                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "" into field "fieldDateandTime__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | DateandTime is required to submit under Overview. |

  @53398   @requiredForSubmitBehaviourAtPageBlockDetailForTimeField-gPlanning
  Scenario: changing value of required behaviour and keeping none at time field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-9167                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "" into field "fieldTime__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Time is required to submit under Overview. |

  @53399   @requiredForSubmitBehaviourAtPageBlockDetailForAuthorizationField-gPlanning
  Scenario: changing value of required behaviour and keeping none at authorization field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-9164                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "" into field "fieldAuthorization__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Authorization is required to submit under Overview. |

  @79735    @verifyByClickOnUserValueItShouldRedirectedToRespectiveUserPageAtPageLayout-gPlanning
  Scenario: validate by click on user value in table , respective user page should get opens at page layout - gPlanning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    When I click "Nauman Shahid" lookup link
    Then I see "User" shown as over view header

  @82792   @verifyThatOptionAsALLIsPresentUnderRefineFilterByPhaseDropdown-gDashboard
  Scenario: validate that by click on by phase dropdown at refine filter , an option as ALL is displayed - gDashboard
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I click on By phase dropdown at dashboard
    Then I see "All" is displayed in dropdown at dashboard

  @82793   @verifyThatOptionAsCollabIsNotPresentUnderRefineFilterByPhaseDropdown-gDashboard
  Scenario: validate that by click on by phase dropdown at refine filter , an option as Collab is not displayed - gDashboard
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I click on By phase dropdown at dashboard
    Then I do not see "Collab" is displayed in dropdown at dashboard

  @82770    @verifyALinkIconPresentAtRichTextAreaDescriptionFieldUnderPageLayout-gPlanning
  Scenario: validate that link icon is present at rich text area description field under page layout - gPlanning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    Then I see icon for "Link" is present in rich text area description field

  @82786    @verifyHyperLinkIsPresentAtTextGivenInRichTextAreaDescriptionFieldUnderPageLayout-gPlanning
  Scenario: validate that a hyperlink is present at display text in rich text area description field under page layout - gPlanning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    When I click on "Link" icon in rich text area editor menu options
    When I create hyperlink for "text" as "TestAutomationDescription" at rich text area field
    Then I see hyperlink is present at "TestAutomationDescription" in rich text area field

  @82775    @verifyHyperLinkIsPresentAtURLGivenInRichTextAreaDescriptionFieldUnderPageLayout-gPlanning
  Scenario: validate that a hyperlink is present at URL in rich text area description field under page layout - gPlanning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "3" seconds
    When I click on "Link" icon in rich text area editor menu options
    When I create hyperlink for "URL" as "www.testAutomation.com" at rich text area field
    When I pause execution for "3" seconds
    Then I see hyperlink is present at "http://www.testAutomation.com" in rich text area field

  @83110    @verifyHyperLinkIsNotPresentAtUserNameUnderUserProfilePage
  Scenario: validate that a hyperlink is not present at user name under user profile page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    When I select "My Profile" from user dropdown
    Then I see hyperlink is not present at "Nauman Shahid" user

  @83111   @verifySpaceIsPresentBetweenLikesAndLabelUnderUserProfilePage
  Scenario: validate that space is present between likes count and label under user profile page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    When I select "My Profile" from user dropdown
    Then I softly see likesCount / label as "0" is present at user detail page
    Then I softly see likesCount / label as "Posts & Comments" is present at user detail page

  @83330   @verifyRequiredForSaveBehaviourAtPageBlockDetailInModalWindowForURLField
  Scenario: Changing value for required for save behaviour field for URL from config and checking error message at modal
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Announcement Create - Grantor | Name                      | PBD-9217                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-343-0034" into field "Program__c"
    And I click modal button "Continue"
    Then I see the following message in the page details contains:
      | Funding Opportunity Web Address is required to save. |

  @83324   @verifyAlertMessageForEnteringIncorrectDataAtURLFieldInModal-gAnnouncement
  Scenario: validate alert message for enetering incorrect data at url field on modal
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-343-0034" into field "Program__c"
    When I enter value "abc" into field "FundingOpportunityURL__c"
    And I click modal button "Continue"
    Then I see the following message in the page details :
      | Please enter valid URL value. |

  @83323 @verifyURLFieldIsAcceptsCorrectURLEnteredOnModalWindow-gAnnouncement
  Scenario:validate if correct URL value entered in URL field on modal and click on continue button then it redirects to next page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-343-0034" into field "Program__c"
    When I enter value "www.google.com" into field "FundingOpportunityURL__c"
    And I click modal button "Continue"
    Then I see "Create Funding Opportunity" shown as over view header

  @83351   @verifyDigitalSigniturePageBlockrendersUnderPageLayoutInEditMode-gAnnouncement
  Scenario: validate digital signiture page block displayed under page layout in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | Annoucement Profile-FOA | GNT__PageBlockTitle__c    | Digital signature          |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementForEmailNotify}"
    When I click on "Edit" icon for "{Framework_recordUsed:AnnouncementForEmailNotify}" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Digital signature" page block displayed

  @83157   @verifyHeaderFieldAccepts255CharactersAtFlexTableOnModalWindow-gPlanning
  Scenario Outline: validate digital signiture page block displayed xyz
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table            | Header    | Program Contacts  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header    | <enteredValue> | SelectNGOContacts  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I pause execution for "3" seconds
    Then I see "<requiredValue>" shown as inside "SelectNGOContacts"

    Examples:
      | enteredValue                                                                                                                                                                                                                                                    | requiredValue                                                                                                                                                                                                                                                   |
      | The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 Checked size limit... | The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 Checked size limit... |

  @83173    @pageBlockTitleFieldAccepts255CharAtPageBlock-gPlanning
  Scenario Outline: Changing page block title with the 255 character value from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Page Block Title | Program Information | Grantee State Program | GNT__PageBlockTitle__c    | <enteredValue>             |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Page Block Title | <enteredValue> | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "<requiredValue>" page block displayed

    Examples:
      | enteredValue                                                                                                                                                                                                                                                    | requiredValue                                                                                                                                                                                                                                                   |
      | The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 Checked size limit... | The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 Checked size limit... |

  @83206    @pageBlockTitleFieldAccepts255CharactersWithSpecialCharactersInItAtPageBlock-gPlanning
  Scenario Outline: Changing page block title with the 255 character including special characters value from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Page Block Title | Program Information | Grantee State Program | GNT__PageBlockTitle__c    | <enteredValue>             |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Page Block Title | <enteredValue> | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "<requiredValue>" page block displayed

    Examples:
      | enteredValue                                                                                                                                                                                                                                                    | requiredValue                                                                                                                                                                                                                                                   |
      | ~!@#$%^&*()_+=-`{} ][:yy;<>?/.The total size of this sentence is tes The total size of this sentence is test The total size of this sentence is tes The total size of this sentence is tes The total size of this sentence is tes The total size of this senten | ~!@#$%^&*()_+=-`{} ][:yy;<>?/.The total size of this sentence is tes The total size of this sentence is test The total size of this sentence is tes The total size of this sentence is tes The total size of this sentence is tes The total size of this senten |

  @83730    @verifyNavigationLogoIsLoadingOnChangingTheCustomAppFromUI
  Scenario: validate that navigation app is loading on changing the custom app on ui -gHOME
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    Then I see navigation logo on page

  @83713 @verifyRecordIsGettingCreatedEvenIfSkipAutoNumberingCheckBoxIsCheckedAtCustomSetting
  Scenario: validate that if skip auto numbering check box is checked then a record is getting created
    Given I have "customNameTemplate" configuration as below:
      | id                 | Name     | AutoNumberFormat | StartNumber | booleanValue                                          | customSettingApiName       |
      | a0e15000008FjIqAAK | Grant__c | {000}            | 0           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:false | GNT__NameTemplateConfig__c |
    And I update custom name template setting changes:
      | id                 | Name     | AutoNumberFormat | StartNumber | booleanValue                                         | customSettingApiName       |
      | a0e15000008FjIqAAK | Grant__c | {000}            | 0           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:true | GNT__NameTemplateConfig__c |
    Given I delete the record "Test Automation Grants Record" from the object "Grant__c" with field "ProjectTitle__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on top right button "New" in flex table with id "---program:-:ActiveGrantsTableId---"
    And I enter value "Test Automation Grants Record" into field "fieldProjectTitle__c"
    And I enter value "Test" into field "fieldGrantAbbreviation__c"
    And I click modal button "Continue"
    And I pause execution for "3" seconds
    And I navigate to "Overview" sub tab
    And I enter value "PG-755-0229" into field "fieldProgram__c"
    And I enter value "Test" into field "fieldGrantDescription__c"
    And I enter value "UnitedHealth Group" into field "fieldInternalOrganization__c"
    And I enter value "0" into field "fieldProjectPeriodStartDate__c"
    And I enter value "365" into field "fieldProjectPeriodEndDate__c"
    And I click on "Save" in the page details
    Then I see the sub-header is "Test Automation Grants Record" in the page details

  @83352   @verifyDigitalSigniturePageBlockrendersUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate digital signiture page block displayed under page layout in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | Annoucement Profile-FOA | GNT__PageBlockTitle__c    | Digital signature          |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Digital signature" page block displayed

  @84215 @verifyThatDarkBlueColorIsDisplayedForLoggedInUser-StateAsAGrantor
  Scenario: verify that page header / page is displayed in dark blue color for logged in user-StateAsAGrantor
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I see page is in "Dark Blue" color

  @84216 @verifyThatVeryDarkBlueColorIsDisplayedForLoggedInUser-StateAsAGrantee
  Scenario: verify that page header / page is displayed in very dark blue color for logged in user
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    Then I see page is in "Very Dark Blue" color

  @84224 @verifyThatVeryDarkGrayColorIsDisplayedForLoggedInUser-StateAsAdministrator
  Scenario: verify that page header / page is displayed in Very dark gray color for logged in user
    When I login as "Automation" user
    When I setup my app as "As an Administrator"
    Then I see page is in "Very Dark gray" color

  @84572 @verifyThatDarkBlueColorIsDisplayedAtFooterForLoggedInUser-StateAsAGrantor
  Scenario: verify that footer is displayed in dark blue color for logged in user-StateAsAGrantor
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I see page footer is in "Dark Blue" color

  @84575 @verifyThatVeryDarkBlueColorIsDisplayedAtFooterForLoggedInUser-StateAsAGrantee
  Scenario: verify that page footer is displayed in very dark blue color for logged in user
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    Then I see page footer is in "Very Dark Blue" color

  @84577 @verifyThatVeryDarkGrayColorIsDisplayedAtFooterForLoggedInUser-StateAsAdministrator
  Scenario: verify that page footer is displayed in Very dark gray color for logged in user
    When I login as "Automation" user
    When I setup my app as "As an Administrator"
    Then I see page footer is in "Very Dark gray" color

  @84227 @verifyThatDarkBlueColorIsDisplayedAtAllButtonsBackgroundForLoggedInUser-StateAsAGrantor
  Scenario: verify that dark blue color is displayed at background for all buttons for logged in user-StateAsAGrantor
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see header action has "Dark Blue" background color

  @84592 @verifyThatVeryDarkBlueColorIsDisplayedAtSidebarBackgroundForLoggedInUser-StateAsAGrantor
  Scenario: verify that very dark blue color is displayed as background for sidebar for logged in user-StateAsAGrantor
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I see sidebar has "Very Dark Blue" background color

  @84593 @verifyThatVeryDarkBlue1ColorIsDisplayedAtSidebarBackgroundForLoggedInUser-StateAsAGrantee
  Scenario: verify that Very Dark Blue 1 color is displayed as background for sidebar for logged in user-StateAsAGrantee
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    Then I see sidebar has "Very Dark Blue 1" background color

  @84595 @verifyThatBlackColorIsDisplayedAtSidebarBackgroundForLoggedInUser-AsAnAdministrator
  Scenario: verify that black color is displayed as background for sidebar for logged in user-As an Administrator
    When I login as "Automation" user
    When I setup my app as "As an Administrator"
    Then I see sidebar has "Black" background color

  @84594 @verifyThatVeryDarkCyanColorIsDisplayedAtSidebarBackgroundForLoggedInUser-recipient
  Scenario: verify that Very dark cyan color is displayed as background for sidebar for logged in user-recipient
    When I login as "Automation" user
    When I setup my app as "As a Sub-Recipient"
    Then I see sidebar has "Very dark cyan" background color

  @84218 @verifyThatVeryDarkBlueColorIsDisplayedForLoggedInUser-recipient
  Scenario: verify that page header / page is displayed in Very dark desaturated cyan color for logged in user-recipient
    When I login as "Automation" user
    When I setup my app as "As a Sub-Recipient"
    Then I see page footer is in "Very dark desaturated cyan" color

  @84755 @verifyThatVeryDarkBlueColorIsDisplayedAtPhasesTabForLoggedInUser-StateAsAGrantor
  Scenario: verify that very dark blue color is displayed as background for phases tab for logged in user-StateAsAGrantor
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I see phase tab has "Very Dark Blue" background color

  @84756 @verifyThatVeryDarkBlue1ColorIsDisplayedAtPhasesTabForLoggedInUser-StateAsAGrantee
  Scenario: verify that Very Dark Blue 1 color is displayed as background for phases tab for logged in user-StateAsAGrantee
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    Then I see phase tab has "Very Dark Blue 1" background color

  @84772 @verifyThatBlackColorIsDisplayedAtPhasesTabForLoggedInUser-AsAnAdministrator
  Scenario: verify that black color is displayed as background for phases tab for logged in user-As an Administrator
    When I login as "Automation" user
    When I setup my app as "As an Administrator"
    Then I see phase tab has "Black" background color

  @84757 @verifyThatVeryDarkCyanColorIsDisplayedAtPhasesTabForLoggedInUser-recipient
  Scenario: verify that Very dark cyan color is displayed as background for phases tab for logged in user-recipient
    When I login as "Automation" user
    When I setup my app as "As a Sub-Recipient"
    Then I see phase tab has "Very dark cyan" background color

  @84598 @verifyThatDropDownArrowIsUsedAtUserProfileSelectionDropdown
  Scenario: verify that dropdown arrow is displayed at user drop-down at header
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I see arrow is displayed at user drop-down

  @84743 @verifyThatWhiteColorIsDisplayedForActiveTabAtHeader
  Scenario: verify that white color is displayed for active tab at header
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see active tab has White background colour

  @84617   @verifyAProgramRecordIsGettingCreatedEvenIfSkipAutoNumberingCheckBoxIsCheckedAtCustomSetting
  Scenario: validate that if skip auto numbering check box is checked then a program record is getting created
    Given I have "customNameTemplate" configuration as below:
      | id                 | Name       | AutoNumberFormat | StartNumber | booleanValue                                          | customSettingApiName       |
      | a0e15000008FjIyAAK | Program__c | {000}            | 1           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:false | GNT__NameTemplateConfig__c |
    And I update custom name template setting changes:
      | id                 | Name       | AutoNumberFormat | StartNumber | booleanValue                                         | customSettingApiName       |
      | a0e15000008FjIyAAK | Program__c | {000}            | 1           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:true | GNT__NameTemplateConfig__c |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I see the sub-header is "Automation Internal Program for Approval and Snapshot scenarios" in the page details

  @84619   @verifyAProgramRecordIsGettingCreatedIfSkipAutoNumberingCheckBoxIsUncheckedAtCustomSetting
  Scenario: validate that if skip auto numbering check box is unchecked then a program record is getting created
    Given I have "customNameTemplate" configuration as below:
      | id                 | Name       | AutoNumberFormat | StartNumber | booleanValue                                          | customSettingApiName       |
      | a0e15000008FjIyAAK | Program__c | {000}            | 1           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:false | GNT__NameTemplateConfig__c |
    And I update custom name template setting changes:
      | id                 | Name       | AutoNumberFormat | StartNumber | booleanValue                                          | customSettingApiName       |
      | a0e15000008FjIyAAK | Program__c | {000}            | 1           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:false | GNT__NameTemplateConfig__c |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I see the sub-header is "Automation Internal Program for Approval and Snapshot scenarios" in the page details

  @84760   @verifyDateAndTimeFieldFormatForLocalAsESTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date and time field format under page layout in view mode with respective to EST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
    When I navigate to "Overview" sub tab
    Then I softly see field "Application Deadline" as "11/05/2020 2:57 AM"

  @84765   @verifyDateAndTimeFieldFormatForLocalAsEDTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date and time field format under page layout in view mode with respective to EDT Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
    When I navigate to "Overview" sub tab
    Then I softly see field "Application Deadline" as "05/11/2020 2:57 AM"

  @84766   @verifyDateAndTimeFieldFormatForLocalAsISTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date and time field format under page layout in view mode with respective to IST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
    When I navigate to "Overview" sub tab
    Then I softly see field "Application Deadline" as "5/11/2020 1:27 PM"

  @86802   @verifyDateFieldFormatForLocalAsESTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date field format under page layout in view mode with respective to EST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
    When I navigate to "Overview" sub tab
    Then I softly see field "FOA Release Date" as "11/04/2020"

  @86808   @verifyDateFieldFormatForLocalAsEDTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date field format under page layout in view mode with respective to EDT Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
    When I navigate to "Overview" sub tab
    Then I softly see field "FOA Release Date" as "04/11/2020"

  @86809   @verifyDateFieldFormatForLocalAsISTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date field format under page layout in view mode with respective to IST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
    When I navigate to "Overview" sub tab
    Then I softly see field "FOA Release Date" as "4/11/2020"

  @84732 @verifyThatBlackColorIsDisplayedForActiveTabAtWorkspaceLibrary-gHome
  Scenario: verify that black color is displayed at background for active tab at workspace library section
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see active tab has Black background colour at my workspace section

  @86820 @verifyThatLookupModalWindowIsDisplayedProperly
  Scenario: verify that lookup modal window is displayed properly
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click search icon for lookup "Organization Lookup (New Window)"
    Then I see a lookup modal with width as "800px" is rendered

  @86968 @verifyThatLookupModalWindowIsDisplayedProperlyIfLookupContainsMoreThanTwoDisplayFields
  Scenario Outline: verify that lookup modal window is displayed properly if lookup contains more that 2 display fields
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <defaultValue>    | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <newValue>    | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click search icon for lookup "Organization Lookup (New Window)"
    Then I see a lookup modal with width as "800px" is rendered

    Examples:
      | defaultValue | newValue                                                                                        |
      | Name         | Name,Jigsaw,AnnualRevenue,NumberOfEmployees,ApplicantType__c,SupplySchedule__c,IsCustomerPortal |

  @87261   @verifyAProgramRecordIsGettingCreatedAndIdIsDisplayedAsPerGivenLastSequence
  Scenario: validate that a program record is getting created with program id as per given last sequence in config
    Given I have "default" configuration as below:
      | configurationCategory         | fieldName     | fieldOrignalValue           | filterId         |
      | Name Template Sequence Config | Last Sequence |                             | ApiGeneratedId:0 |
      | Page Layout                   | Header        | Program - {!ProgramName__c} | ApiGeneratedId:1 |
    Given I have "customNameTemplate" configuration as below:
      | id                 | Name       | AutoNumberFormat | StartNumber | booleanValue                                          | customSettingApiName       |
      | a0e15000008FjIyAAK | Program__c | {000}            | 1           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:false | GNT__NameTemplateConfig__c |
    Given I setup test configuration as below:
      | configurationCategory                       | fieldName     | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue     |
      | Name Template Sequence Config:Name Template | Last Sequence | 2                 |                       | Internal Unique Id        | p8BKf5E0q1cd1Re8ybgBWh1jQ0Ap3D |
      | Page Layout:General                         | Header        | Program - {!Name} | Grantee State Program |                           |                                |
    And I update custom name template setting changes:
      | id                 | Name       | AutoNumberFormat | StartNumber | booleanValue                                         | customSettingApiName       |
      | a0e15000008FjIyAAK | Program__c | {000}            | 1           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:true | GNT__NameTemplateConfig__c |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I see the sub-header is "PG-343-003" in the page details

  @102100    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantee State Program | Name                      | PBD-646                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Title" is not displayed inside page block detail

  @102107    @verifyHideFieldJsonFieldByHidingDateFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide end date from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantee State Program | Name                      | PBD-646                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Project Period End Date" is not displayed inside page block detail

  @102114    @verifyHideFieldJsonFieldByDisablingTitleFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to disable title field Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisabledDateFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantee State Program | Name                      | PBD-646                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see field "ProgramName__c" is disabled

  @102115    @verifyHideFieldJsonFieldByDisablingDateFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to disable date from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisabledDateFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantee State Program | Name                      | PBD-646                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see field "EndDate__c" is disabled

  @102248    @verifyIdDateTimeFieldIsDisabledThenValueOfDateIsNotGettingChangedAfterPageScollInEditMode1
  Scenario:validate disabled dateTime field value is not getting changed on page scroll in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisabledDateFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantee State Program | Name                      | PBD-646                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see value "11/30/2022" of "Project Period End Date" field is not changed on page scroll

  @102251    @verifyIdDateFieldIsDisabledThenValueOfDateIsNotGettingChangedAfterPageScollInEditMode1
  Scenario:validate disabled date field value is not getting changed on page scroll in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisabledDateTimeFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantee State Program | Name                      | PBD-646                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see value "11/30/2020 5:00 PM" of "DateandTime" field is not changed on page scroll

  @104377    @verifyThatUserIsAbleToSaveValueInURLFieldWhenURLValidationRegexCustomMetadataCheckboxIsSetToTrue
  Scenario: verify that user can enter and save value in url field in a valid format when URL Validation Regex is set to true from custom metadata config
    Given I have "customMetaData" configuration as below:
      | id                 | label                | booleanValue | customMetaDataApiName    |
      | m031C000000XZY2QAO | URL Validation Regex | true         | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label                | booleanValue | customMetaDataApiName    |
      | m031C000000XZY2QAO | URL Validation Regex | true         | GNT__KeyValueHolder__mdt |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    And I enter value "www.google.com" into field "URL__c"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I softly see link "www.google.com" inside Page block

  @104754   @verifyThatUserIsNotAbleToSaveInvalidValueInURLFieldWhenURLValidationRegexCustomMetadataCheckboxIsSetToTrue
  Scenario: verify that user cannot enter and save value in url field in an in-valid format when URL Validation Regex is set to true from custom metadata config
    Given I have "customMetaData" configuration as below:
      | id                 | label                | booleanValue | customMetaDataApiName    |
      | m031C000000XZY2QAO | URL Validation Regex | true         | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label                | booleanValue | customMetaDataApiName    |
      | m031C000000XZY2QAO | URL Validation Regex | true         | GNT__KeyValueHolder__mdt |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    And I enter value "http://www.example.com:8800/" into field "URL__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Please enter valid URL value. |

  @105118    @verifyThatUserIsAbleToSaveSpecificURLFieldWhenURLValidationRegexCustomMetadataCheckboxIsSetToTrue @sanity
  Scenario: verify that user can enter and save specific url in  url field in a valid format when URL Validation Regex is set to true from custom metadata config
    Given I have "customMetaData" configuration as below:
      | id                 | label                | booleanValue | customMetaDataApiName    |
      | m031C000000XZY2QAO | URL Validation Regex | true         | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label                | booleanValue | customMetaDataApiName    |
      | m031C000000XZY2QAO | URL Validation Regex | true         | GNT__KeyValueHolder__mdt |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    And I enter value "http://schools.utah.gov/eseastateinitiatives/schoolimprovement?mid=1384&tid=1" into field "URL__c"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I softly see link "http://schools.utah.gov/eseastateinitiatives/schoolimprovement?mid=1384&tid=1" inside Page block

  @105141    @validateURLFieldAtRolesAndResponsilitiesModalWindow-gPlanning
  Scenario Outline: validate URL field at roles and responsibility view modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ProgramRolesAndResponsibilities |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I click on "Edit" icon for "Owner" to save inside subtab
    And I enter value "http://schools.utah.gov/eseastateinitiatives/schoolimprovement?mid=1384&tid=1" into field "Test_URL__c"
    And I click on "Save" in the page details
    When I navigate to "Roles" sub tab
    Then I see hyperlink at column value "http://schools.utah.gov/eseastateinitiatives/schoolimprovement?mid=1384&tid=1" inside "---program:-:rolesAndResponsibilitiesTableId---" table

    Examples:
      | newFieldsApi                                           | defaultFieldsApi                           |
      | Name1__c,BusinessRole__c,Responsibility__c,Test_URL__c | Name1__c,BusinessRole__c,Responsibility__c |

  @111877    @verifyBulbIconAtHeaderInstructionTextInsidePageLayoutForPMUser-gPlanning
  Scenario: verify bulb icon at header instruction text at program detail page for pm user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see bulb icon at header instruction is displayed

  @111900    @verifyBulbIconAtHeaderInstructionTextInsidePageLayoutForPMUser-gApplication
  Scenario: verify bulb icon at header instruction text at program detail page for pm user at application phase
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    Then I see bulb icon at header instruction is displayed

  @112569   @validateRequiredForSubmitSymbolAtPageBlockDetailForDescriptionField-gPlanning
  Scenario: validate required for submit icon at description Field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-2781                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    Then I see required for submit symbol as "fa-exclamation-triangle" at "fieldObjectives__c" field

  @112540   @validateRequiredForSubmitSymbolAtPageBlockDetailForDescriptionFieldForPMUser-gPlanning
  Scenario: validate required for submit icon at description Field for PM user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-2781                   |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see required for submit symbol as "fa-exclamation-triangle" at "fieldObjectives__c" field

  @112009  @validateFieldMessageDisplayedAtHeaderForRequiredForSubmitAndSaveFieldsForPMUser-gPlanning
  Scenario: validate field message displayed for required for save and submit Field at page header for PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @112563    @requiredForSaveBehaviourAtPageBlockDetailForPMUser-gPlanning
  Scenario: Changing value for required for save behaviour field from config and checking error message at program save for PM user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantee State Program | Name                      | PBD-584                    |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I clear the value from field "StartDate__c"
    When I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Project Period Start Date is required to save under Overview. |

  @113064    @requiredForSaveBehaviourAtPageBlockDetailForSPIUser-gPlanning
  Scenario: Changing value for required for save behaviour field from config and checking error message at program save for SPI user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | ApplicationView    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | ApplicationView    | Name                      | PBD-3901                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:ApplicationWitEditActionForSPIUser}"
    When I click on "Edit" icon for "{Framework_recordUsed:ApplicationWitEditActionForSPIUser}" inside table
    When I clear the value from field "ProjectPeriodStartDate__c"
    When I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Project Period Start Date is required to save under Overview. |

  @112010   @validateFieldMessageDisplayedAtHeaderForRequiredForSubmitAndSaveFieldsForPMUser-gPlanning
  Scenario: validate field message displayed for required for save and submit Field at page header for PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on top right button "New" in flex table with id "Programs"
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @113061    @verifyBadgesShownAtOverviewTabInEditModeIfRequiredForSubmitFieldIsBlankForAdminUser-gPlanning
  Scenario: verify that badges shown at Overview tab in page edit mode if required field from overview tab is blank
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-9163                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see missing field badge on "Overview" tab

  @112571    @verifyBadgesShownAtOverviewTabInEditLayoutIfRequiredForSubmitFieldIsBlankByLoginAsSPIUser
  Scenario: verify that badges shown at Overview tab in page edit mode if required field from overview tab is blank by login as SPI user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | ApplicationView    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | ApplicationView    | Name                      | PBD-3896                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:ApplicationWitEditActionForSPIUser}"
    When I click on "Edit" icon for "{Framework_recordUsed:ApplicationWitEditActionForSPIUser}" inside table
    When I navigate to "Overview" sub tab
    When I clear the value from field "ProjectDirector__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I see missing field badge on "Overview" tab

  @112546    @verifyBadgesShownAtOverviewTabInViewLayoutIfRequiredForSubmitFieldIsBlankForAdminUser-gPlanning
  Scenario: verify that badges shown at Overview tab in page view mode if required field from overview tab is blank for admin user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-9163                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see missing field badge on "Overview" tab

  @112562    @verifyBadgesShownAtOverviewTabInViewLayoutIfRequiredForSubmitFieldIsBlankForPMUser-gPlanning
  Scenario: verify that badges shown at Overview tab in page view mode if required field from overview tab is blank for PM user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-9163                   |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see missing field badge on "Overview" tab

  @112558    @verifyBadgesShownAtOverviewTabInEditModeIfRequiredForSubmitFieldIsBlankForPMUser-gPlanning
  Scenario: verify that badges shown at Overview tab in page edit mode if required field from overview tab is blank for PM user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-9163                   |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see missing field badge on "Overview" tab

  @112370    @verifyBadgesShownAtOverviewTabInEditLayoutIfRequiredForSubmitFieldIsBlankForPMUser-gPlanning
  Scenario: verify that badges shown at Overview tab in page edit mode if required field from overview tab is blank for PM user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-9163                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see missing field badge on "Overview" tab

  @112363    @requiredForSaveBehaviourAtPageBlockDetailForAdminUser-gPlanning
  Scenario Outline: Changing value for required for save behaviour field from config and checking error message at program save for admin user
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to url "<URL_Value>"
    Then I see "chatterPage" page displayed

    Examples:
      | URL_Value                                                    |
      | https://login.salesforce.com/_ui/core/chatter/ui/ChatterPage |

  @112373  @verifyBadgesShownAtOverviewTabInViewLayoutIfRequiredForSubmitFieldIsBlankByLoginAsSPIUser
  Scenario: verify that badges shown at Overview tab in page view mode if required field from overview tab is blank by login as SPI user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | ApplicationView    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | ApplicationView    | Name                      | PBD-3896                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:ApplicationWitEditActionForSPIUser}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationWitEditActionForSPIUser}" inside table
    Then I see missing field badge on "Overview" tab

  @112913    @verifyHelpTextAtAtPageBlockSeperator-gPlanning
  Scenario Outline: Changing content of help text long field at page block seperator type of block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | Grantee State Program | Name                      | PBD-9228                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Grantee State Program | Name                      | PBD-9228                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I hovering mouse on help text icon inside "Test Page Block1"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText             | old_helpText |
      | Help Text for Automation | Help Text    |

  @113065    @verifyHelpTextAtAtPageBlockSeperatorForPMUser-gPlanning
  Scenario Outline: Changing content of help text long field at page block seperator type of block from config and validating it at program detail page for PM user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | Grantee State Program | Name                      | PBD-9228                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Grantee State Program | Name                      | PBD-9228                   |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I hovering mouse on help text icon inside "Test Page Block1"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText             | old_helpText |
      | Help Text for Automation | Help Text    |

  @113066    @verifyHelpTextAtAtPageBlockSeperatorForSPIUser-gPlanning
  Scenario Outline: Changing content of help text long field at page block seperator type of block from config and validating it at program detail page for SPI user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | ISASpend           | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | ISASpend           | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | ISASpend           | Name                      | PBD-9229                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | ISASpend           | Name                      | PBD-9229                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    When I perform quick search for "Test Data DND"
    When I click on "View" icon for "Test Data DND" inside table
    When I hovering mouse on help text icon inside "Test Automation Seperator"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText             | old_helpText |
      | Help Text for Automation | Help Text    |

  @112368    @verifyBadgesShouldNotDisplayedAtOverviewTabInEditLayoutIfAllTheRequiredForSubmitFieldsAreFilledForAdminUser-gPlanning
  Scenario: verify that badges are not displayed at Overview tab in page edit mode if all required for submit fields all filled for admin user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I do not see missing field badge on "Overview" tab

  @114071    @verifyDisplayOfBadgesIfReqFieldProjectGoalIsHiddenByUsingHideFieldJSONOnPicklistFieldValueFromConfig
  Scenario: verify display of badges if req field is hidden by using hide field json at picklist field
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HideBadgesIfReqFieldIsHiddenOnTheBasisOfPicklistFieldValue | Grantee State Program | Name                      | PBD-646                    |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                         | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "ProgramType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114073    @verifyDisplayOfBadgesIfReqTextFieldIsHiddenByUsingHideFieldJSONOnPicklistFieldValueAsCooperativeAgreement
  Scenario: verify display of badges if req field is hidden by using hide field json at picklist field for value as Cooperative Agreement
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                                                   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HideBadgesIfReqFieldIsHiddenOnTheBasisOfPicklistFieldValueCooperativeAgreement | Grantee State Program | Name                      | PBD-646                    |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                                             | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Cooperative Agreement" into field "ProgramType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114084    @verifyDisplayOfBadgesIfMultipleReqtFieldsIsHiddenByUsingHideFieldJSONOnPicklistFieldValue
  Scenario: verify display of badges if multiple req fields is hidden by using hide field json at picklist field
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HideBadgesIfMultipleReqFieldIsHiddenOnTheBasisOfPicklistFieldValue | Grantee State Program | Name                      | PBD-646                    |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                                 | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "ProgramType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly see "Project Period Start Date" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114096    @verifyDisplayOfBadgesIfReqFieldProjectGoalIsHiddenByUsingHideFieldJSONNotEqualsToOnPicklistFieldValueFromConfig
  Scenario: verify display of badges if req field is hidden by using hide field json not equals to operator at picklist field
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesIfReqFieldIsHiddenOnTheBasisOfPicklistFieldValueUsingNotOperator | Grantee State Program | Name                      | PBD-646                    |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                                           | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "ProgramType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114195    @verifyDisplayOfBadgesIfReqFieldProjectGoalIsHiddenByUsingHideFieldJSONPicklistFieldValueIfValueIsProjectGrants
  Scenario: verify display of badges if req field is hidden by using hide field json at picklist field if value is project grants
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesIfReqFieldIsHiddenOnTheBasisOfPicklistFieldValueAsGrant | Grantee State Program | Name                      | PBD-646                    |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                                  | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Grant" into field "ProgramType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114203    @verifyDisplayOfBadgesIfReqFieldProjectGoalIsHiddenByUsingHideFieldJSONNotEqualsToPicklistFieldValueFromConfigInEditMode
  Scenario: verify display of badges if req field is hidden by using hide field json not equals to operator at picklist field in edit mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesIfReqFieldIsHiddenOnTheBasisOfPicklistFieldValueUsingNotOperator | Grantee State Program | Name                      | PBD-646                    |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                                           | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "ProgramType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114198    @verifyDisplayOfBadgesIfMultipleReqtFieldsAsPicklistAndTextIsHiddenByUsingHideFieldJSONOnPicklistFieldValue
  Scenario: verify display of badges if multiple req fields as picklist and text are hidden by using hide field json at picklist field
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HideBadgesIfMultipleReqFieldAsPicklistAndTextAreHiddenOnTheBasisOfPicklistFieldValue | Grantee State Program | Name                      | PBD-646                    |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                                                   | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "ProgramType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly see "Primary Funder Type" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114220    @verifyDisplayOfBadgesIfSubmitReqFieldIsHiddenUsingNotEqualsOperatorAndSaveReqFieldUsingEqualsOperator
  Scenario: verify display of badges if req field is hidden usig not equals operator and save req field hidden by equals operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination1 | Grantee State Program | Name                      | PBD-646                    |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Grant" into field "ProgramType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    And I enter value "Loan" into field "ProgramType__c"
    Then I softly see "Primary Funder Type" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114195    @verifyDisplayOfBadgesIfMultipleReqForSaveAndSubmitFieldsAresHiddenUsingHideFieldJSON
  Scenario: verify badges are hidden if req for save and submit fields are hidden
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination2 | Grantee State Program | Name                      | PBD-646                    |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "ProgramType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly see "Project Period Start Date" is not displayed inside page block detail
    Then I softly see "Project Period End Date" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @111861    @verifyDisplayOfBadgesIfMultipleReqForSaveAndSubmitFieldsAresHiddenUsingHideFieldJSONCombinations
  Scenario: verify badges are hidden if req for save and submit fields are hidden using hide field json combinations
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination3 | Grantee State Program | Name                      | PBD-646                    |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "ProgramType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    And I enter value "Grant" into field "ProgramType__c"
    Then I softly see "Primary Funder Type" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114380    @verifyTitleAndBadgeIsNotDisplayedIfReqForSubmitFieldIsHideUsingPicklistFieldInViewMode
  Scenario: verify badge is hidden from overview tab if title fields is hidden using hide field json on picklist field
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination4 | Grantee State Program | Name                      | PBD-3883                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantee State Program | Name                      | PBD-9162                   |
    When I click on "Edit" in the page details
    And I enter value "NGO" into field "FunderType__c"
    Then I softly see "Title" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114412    @verifyTitleAndBadgeIsNotDisplayedIfSaveAndSubmitReqFieldsAreHidddenUsingPicklistFieldInEditMode
  Scenario: verify badge is hidden from overview tab if picklist and goal fields are hidden using hide field json on picklist field in edit mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination5 | Grantee State Program | Name                      | PBD-3883                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "NGO" into field "FunderType__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I softly see "Program Type" is not displayed inside page block detail
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly do not see missing field badge on "Overview" tab

  @114212    @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingNumberFieldInViewMode
  Scenario: verify badge is hidden from overview tab if text field hidden using hide field json on number field in value in view mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination6 | Grantee State Program | Name                      | PBD-9161                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "123" into field "Number__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly do not see missing field badge on "Overview" tab

  @114215    @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenByUsingURLFieldInViewMode
  Scenario: verify badge is hidden from overview tab if text field hidden using hide field json at URL field in value in view mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination7 | Grantee State Program | Name                      | PBD-4719                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "www.google.com" into field "WebsiteAddress__c"
    When I click on "Save" in the page details
    Then I softly see field "Project Goals" inside page block
    Then I softly do not see missing field badge on "Overview" tab

  @114199    @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingTEXTFieldInViewMode
  Scenario: verify badge is hidden from overview tab if text field hidden using hide field json on text field in value in view mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination8 | Grantee State Program | Name                      | PBD-9164                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "ABC" into field "Authorization__c"
    When I click on "Save" in the page details
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly do not see missing field badge on "Overview" tab

  @114372   @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingDateFieldInViewMode @wip
  Scenario: verify badge is hidden from overview tab if text field hidden using hide field json on date field in value in view mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination9 | Grantee State Program | Name                      | PBD-9171                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "11/12/2020" into field "Publisheddate__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114219   @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingNumberFieldValueInViewModeUsingNotEqualsOperator
  Scenario: verify badge is hidden from overview tab if text field hidden using hide field json on number field with not in operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination10 | Grantee State Program | Name                      | PBD-9161                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "123" into field "Number__c"
    When I click on "Save" in the page details
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly do not see missing field badge on "Overview" tab

  @114218    @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingURLFieldForNotEqualsOperator
  Scenario: verify badge is hidden from overview tab if text field hidden using hide field json on URL field for not equals operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination7 | Grantee State Program | Name                      | PBD-4719                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "www.google.comm" into field "WebsiteAddress__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @111861    @verifyDisplayOfBadgesIfMultipleReqForSaveAndSubmitFieldsAresHiddenUsingHideFieldJSONCombinations
  Scenario: verify badges are hidden if req for save and submit fields are hidden using hide field json combinations
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination3 | Grantee State Program | Name                      | PBD-646                    |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "ProgramType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    And I enter value "Grant" into field "ProgramType__c"
    Then I softly see "Primary Funder Type" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114231    @verifyDisplayOfBadgesIfReqFieldProjectGoalIsHiddenByUsingHideFieldJSONOnPicklistFieldValueFromConfigForPMUser
  Scenario: verify display of badges if req field is hidden by using hide field json at picklist field for PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForFundedAmountAndNumber}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForFundedAmountAndNumber}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HideBadgesIfReqFieldIsHiddenOnTheBasisOfPicklistFieldValue | Grantee State Program | Name                      | PBD-646                    |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                         | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "ProgramType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114211    @verifyDisplayOfBadgesToPMUserIfReqFieldProjectGoalIsHiddenByUsingHideFieldJSONNotEqualsOperatorOnPicklistFieldValueFromConfigFor
  Scenario: verify display of badges to PM user if req field is hidden by using not equals operator for PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForFundedAmountAndNumber}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForFundedAmountAndNumber}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination12 | Grantee State Program | Name                      | PBD-646                    |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Grant" into field "ProgramType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114216    @verifyDisplayOfBadgesToPMUserIfMultipleReqFieldsAreHiddenByUsingHideFieldJSONOnPicklistFieldValueFromConfig
  Scenario: verify display of badges if multiple req fields are hidden for PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForFundedAmountAndNumber}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForFundedAmountAndNumber}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination5 | Grantee State Program | Name                      | PBD-3883                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "NGO" into field "FunderType__c"
    Then I softly see "Program Type" is not displayed inside page block detail
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114502    @verifyDisplayOfBadgesToPMUserIfMultipleReqFieldsAreHiddenByUsingHideFieldJSONOnPicklistFieldValueFromConfig
  Scenario: verify display of badges by hiding date,picklist,text field using hide field JSON
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination13 | Grantee State Program | Name                      | PBD-3883                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "NGO" into field "FunderType__c"
    Then I softly see "Program Type" is not displayed inside page block detail
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly see "Title" is not displayed inside page block detail
    Then I softly see "Project Period Start Date" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114503    @verifyDisplayOfBadgesToPMUserIfMultipleReqFieldsAreHiddenByUsingHideFieldJSONUsingNotEqualsOperator
  Scenario: verify display of badges by hiding date,picklist,text field using hide field JSON using not equals operator
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination14 | Grantee State Program | Name                      | PBD-3883                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "State" into field "FunderType__c"
    Then I softly see "Program Type" is not displayed inside page block detail
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly see "Title" is not displayed inside page block detail
    Then I softly see "Project Period Start Date" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114508    @verifyDisplayOfBadgesByHiddenPicklistTextFieldUsingHideFieldJSONAtLookupField
  Scenario: verify display of badges by hiding picklist,Text field using hide field JSON on lookup value
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination15 | Grantee State Program | Name                      | PBD-3178                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "Department of Community Health" into field "Account__c"
    Then I softly see "Program Type" is not displayed inside page block detail
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114537   @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingDateAndNumberFieldUsing2DifferentJSONInEditMode
  Scenario: verify badge is hidden from overview tab if text field hidden using 2 different JSON on date, text field in edit mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination6  | Grantee State Program | Name                      | PBD-9161                   |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination16 | Grantee State Program | Name                      | PBD-9171                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "12/11/2020" into field "Publisheddate__c"
    And I enter value "123" into field "Number__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114989    @verifyPageBlockSeperatorDisplayedForSPIUser-gPlanning
  Scenario: verify page block seperator displayed at SPI user if is active field is checked for record type as page block seperator
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ISASpend           | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | ISASpend           | Name                      | PBD-9229                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    When I perform quick search for "Test Data DND"
    When I click on "View" icon for "Test Data DND" inside table
    Then I see "Test Automation Seperator" page block displayed

  @114538   @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingDateAndNumberFieldUsing2DifferentJSONInViewMode
  Scenario: verify badge is hidden from overview tab if text field hidden using 2 different JSON on date, text field in view mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination6  | Grantee State Program | Name                      | PBD-9161                   |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination16 | Grantee State Program | Name                      | PBD-9171                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "12/11/2020" into field "Publisheddate__c"
    And I enter value "123" into field "Number__c"
    When I click on "Save" in the page details
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly do not see missing field badge on "Overview" tab

  @115588    @verifySpecialCharacterInHelpTextAtAtPageBlockSeperator-gPlanning
  Scenario Outline:validate special characters are accepted in help text field at page block seperator type of block at detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | Grantee State Program | Name                      | PBD-9228                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Grantee State Program | Name                      | PBD-9228                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I hovering mouse on help text icon inside "Test Page Block1"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText                 | old_helpText |
      | Help Text @#$ for Automation | Help Text    |

  @115592    @verifySpecialCharaterInHelpTextAtAtPageBlockSeperatorForSPIUser-gPlanning
  Scenario Outline:validate special characters are accepted in help text field at page block seperator type of block at detail page for SPI user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | ISASpend           | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | ISASpend           | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | ISASpend           | Name                      | PBD-9229                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | ISASpend           | Name                      | PBD-9229                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    When I perform quick search for "Test Data DND"
    When I click on "View" icon for "Test Data DND" inside table
    When I hovering mouse on help text icon inside "Test Automation Seperator"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText                 | old_helpText |
      | Help Text for @#$ Automation | Help Text    |

  @115664 @verifyThatVeryDarkBlueColorIsDisplayedAtPhasesTabForAdminUser-StateAsAGrantor
  Scenario: verify that very dark blue color is displayed as background for phases tab for admin user-StateAsAGrantor
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see phase tab has "Very Dark Blue" background color

  @115665 @verifyThatVeryDarkBlueColorIsDisplayedAtPhasesTabForSPIUser-StateAsAGrantor
  Scenario: verify that very dark blue color is displayed as background for phases tab for SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    When I perform quick search for "Test Data DND"
    When I click on "View" icon for "Test Data DND" inside table
    Then I see phase tab has "Very dark cyan" background color

  @116346    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistBlankValueUsingHideFiledJSON | Grantee State Program | Name                      | PBD-9163                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    And I enter value "--None--" into field "ProgramSubType__c"
    And I click on "Save" in the page details
    Then I see "Project Goals" is not displayed inside page block detail

  @117880    @verifyFaviconIconDisplayedAtBrowserTab
  Scenario: verify favicon icon displayed at browser tab
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I softly see FaviconIcon at "Planning" browser tab
    And I navigate to "Applications" tab
    Then I softly see FaviconIcon at "Applications" browser tab
    And I navigate to "Grants" tab
    Then I softly see FaviconIcon at "Grants" browser tab

  @117808    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueAsFormulaLoansInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value as formula loans in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistValueUsingHideFiledJSON | Grantee State Program | Name                      | PBD-2600                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    And I enter value "Grant" into field "ProgramType__c"
    And I enter value "Formula Grants" into field "ProgramSubType__c"
    And I click on "Save" in the page details
    Then I see "Project Goals" is not displayed inside page block detail

  @117805    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueAsBlankAndUsingNotEqualsOperatorInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value as blank and using not equals operator in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                                   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistBlankValueUsingHideFiledJSONNotEqualsOperator | Grantee State Program | Name                      | PBD-2600                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    And I enter value "Grant" into field "ProgramType__c"
    And I enter value "Formula Grants" into field "ProgramSubType__c"
    And I click on "Save" in the page details
    Then I see "Project Goals" is not displayed inside page block detail

  @117809    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueAndUsingMultipleConditionsInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistValueUsingHideFiledJSONMultipleCondition | Grantee State Program | Name                      | PBD-2600                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    And I enter value "Grant" into field "ProgramType__c"
    And I enter value "Formula Grants" into field "ProgramSubType__c"
    And I click on "Save" in the page details
    Then I see "Project Goals" is not displayed inside page block detail

  @117813    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueAndUsingNotEqualsOperatorInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value and using multiple conditions in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistValueUsingHideFiledJSONNotEqualsOperator | Grantee State Program | Name                      | PBD-2600                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    And I enter value "" into field "ProgramSubType__c"
    And I click on "Save" in the page details
    Then I see "Project Goals" is not displayed inside page block detail

  @116105    @verifyWhiteSpaceIsNotPresentAtModalIfAnyFieldIsHiddenUsingHideExpressionJSON
  Scenario: validate white space is not displayed at modal window if any field is hidden using hide expression json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Roles and Responsibilities 7    |                           |                            | ApiGeneratedId:0 |
      | Flex Table Action                        | Modal Width          | 800               | ProgramRolesAndResponsibilities | Name                      | New                        | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                           | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HideUserFieldUsingHideExpressionInsideRolesModalWindow | Roles and Responsibilities 7    | Name                      | PBD-8028                   |
      | Flex Table Action                        | Modal Width          | 1200                                                                    | ProgramRolesAndResponsibilities | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I click on top right button "New" in flex table with id "---program:-:programTableDivId---"
    Then I see fields are displayed without white space in modal

  @119856  @validateFieldMessageDisplayedAtHeaderForRequiredForSubmitAndSaveFieldsForAdminUserAtEditPage-gPlanning
  Scenario: validate field message displayed for required for save and submit Field at page header for admin user at edit mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Active Grants"
    When I perform quick search for "Demo_Title"
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @119858  @validateFieldMessageDisplayedAtHeaderForRequiredForSubmitAndSaveFieldsForAdminUserAtEditModal-gPlanning
  Scenario: validate field message displayed for required for save and submit Field at page header for admin user at modal
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @119859    @requiredToSaveBehaviourAtModalWindowIfDataInAnyRequiredFieldIsMissing-gPlanning
  Scenario: validate req to save error message at announcement create modal
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    And I click modal button "Continue"
    Then I see the following message in the page details contains:
      | Program ID is required to save. |

  @119857    @validateHelpTextAtPageBlockDetailIfTwoSameNameFieldsAreDisplayedAtTabAndHeaderInEditMode-gPlanning
  Scenario Outline: validating help text on hover at field inside program detail page if two same name fields are displayed at tab and header in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField      | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Annoucement Profile-FOA | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active      | true              | Annoucement Profile-FOA | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1>   | Annoucement Profile-FOA | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText2>   | Annoucement Profile-FOA | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue   | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-9238                   |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-3111                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1> | Annoucement Profile-FOA | Name                      | PBD-9238                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText2> | Annoucement Profile-FOA | Name                      | PBD-3111                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementForEmailNotify}"
    When I click on "Edit" icon for "{Framework_recordUsed:AnnouncementForEmailNotify}" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "General Information" page block
    Then I softly see "<new_helpText1>" shown as help text
    And I refresh the page
    When I hovering mouse on help text icon at "Status" inside "Overview Header" header
    Then I softly see "<new_helpText2>" shown as help text

    Examples:
      | new_helpText1 | new_helpText2 |
      | help text     | help text     |

  @120005    @validateHelpTextAtPageBlockDetailIfTwoSameNameFieldsAreDisplayedAtTabAndHeaderInViewMode-gPlanning
  Scenario Outline: validating help text on hover at field inside program detail page if two same name fields are displayed at tab and header in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField      | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Annoucement Profile-FOA | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active      | true              | Annoucement Profile-FOA | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1>   | Annoucement Profile-FOA | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText2>   | Annoucement Profile-FOA | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue   | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-9238                   |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-3111                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1> | Annoucement Profile-FOA | Name                      | PBD-9238                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText2> | Annoucement Profile-FOA | Name                      | PBD-3111                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementForEmailNotify}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementForEmailNotify}" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "General Information" page block
    Then I softly see "<new_helpText1>" shown as help text
    And I refresh the page
    When I hovering mouse on help text icon at "Status" inside "Overview Header" header
    Then I softly see "<new_helpText2>" shown as help text

    Examples:
      | new_helpText1 | new_helpText2 |
      | help text     | help text     |

  @120006    @validateHelpTextAtPageBlockDetailIfTwoSameNameFieldsAreDisplayedAtTwoDiffPageBlockInEditMode-gPlanning
  Scenario Outline: validating help text on hover at field inside program detail page if two same name fields are displayed at 2 diff page block in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField      | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Annoucement Profile-FOA | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Annoucement Profile-FOA | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1>   | Annoucement Profile-FOA | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1>   | Annoucement Profile-FOA | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue   | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-9238                   |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-9239                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1> | Annoucement Profile-FOA | Name                      | PBD-9238                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText2> | Annoucement Profile-FOA | Name                      | PBD-9239                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementForEmailNotify}"
    When I click on "Edit" icon for "{Framework_recordUsed:AnnouncementForEmailNotify}" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "General Information" page block
    Then I softly see "<new_helpText1>" shown as help text
    And I refresh the page
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "Details" page block
    Then I softly see "<new_helpText2>" shown as help text

    Examples:
      | new_helpText1 | new_helpText2 |
      | help text     | help text     |

  @120007    @validateHelpTextAtPageBlockDetailIfTwoSameNameFieldsAreDisplayedAtTwoDiffPageBlockInViewMode-gPlanning
  Scenario Outline: validating help text on hover at field inside program detail page if two same name fields are displayed at 2 diff page block in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField      | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Annoucement Profile-FOA | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Annoucement Profile-FOA | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1>   | Annoucement Profile-FOA | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1>   | Annoucement Profile-FOA | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue   | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-9238                   |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-9239                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1> | Annoucement Profile-FOA | Name                      | PBD-9238                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText2> | Annoucement Profile-FOA | Name                      | PBD-9239                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementForEmailNotify}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementForEmailNotify}" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "General Information" page block
    Then I softly see "<new_helpText1>" shown as help text
    And I refresh the page
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "Details" page block
    Then I softly see "<new_helpText2>" shown as help text

    Examples:
      | new_helpText1 | new_helpText2 |
      | help text     | help text     |

  @120009    @validateHelpTextAtPageBlockDetailIfTwoSameNameFieldsAreDisplayedAtTwoDiffTabsInEditModeWithDiffHelpText-gPlanning
  Scenario Outline: validating help text on hover at field two same name fields are displayed at 2 diff tabs in edit mode with diff help text
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue   | coreComponentField      | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false               | Annoucement Profile-FOA | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active      | false               | Annoucement Profile-FOA | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <default_helpText2> | Annoucement Profile-FOA | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue       | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-9238                   |
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-9240                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <default_helpText2> | Annoucement Profile-FOA | Name                      | PBD-9240                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementForEmailNotify}"
    When I click on "Edit" icon for "{Framework_recordUsed:AnnouncementForEmailNotify}" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "General Information" page block
    Then I softly see "<new_helpText1>" shown as help text
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I hovering mouse on help text icon at "Status" inside "Financial Details" page block
    Then I softly see "<new_helpText2>" shown as help text

    Examples:
      | new_helpText1 | new_helpText2 |
      | help text     | help text     |

  @120010    @validateHelpTextAtPageBlockDetailIfTwoSameNameFieldsAreDisplayedAtTwoDiffTabsInViewModeWithDiffHelpText-gPlanning
  Scenario Outline: validating help text on hover at field if two same name fields are displayed at 2 diff tabs in view mode with diff help text
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue   | coreComponentField      | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false               | Annoucement Profile-FOA | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active      | false               | Annoucement Profile-FOA | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <default_helpText2> | Annoucement Profile-FOA | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue       | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-9238                   |
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-9240                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <default_helpText2> | Annoucement Profile-FOA | Name                      | PBD-9240                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementForEmailNotify}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementForEmailNotify}" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "General Information" page block
    Then I softly see "<default_helpText1>" shown as help text
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I hovering mouse on help text icon at "Status" inside "Financial Details" page block
    Then I softly see "<default_helpText2>" shown as help text

    Examples:
      | default_helpText1 | default_helpText2 |
      | help text         | help text2        |

  @120012    @validateHelpTextAtPageBlockDetailIfTwoSameNameFieldsAreDisplayedAtTwoDiffTabsInViewModeWithSameHelpText-gPlanning
  Scenario Outline: validating help text on hover at field if two same name fields are displayed at 2 diff tabs in view mode with same help text
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue   | coreComponentField      | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false               | Annoucement Profile-FOA | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active      | false               | Annoucement Profile-FOA | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <default_helpText2> | Annoucement Profile-FOA | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue       | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-9238                   |
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-9240                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <default_helpText1> | Annoucement Profile-FOA | Name                      | PBD-9240                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementForEmailNotify}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementForEmailNotify}" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "General Information" page block
    Then I softly see "<default_helpText1>" shown as help text
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I hovering mouse on help text icon at "Status" inside "Financial Details" page block
    Then I softly see "<default_helpText1>" shown as help text

    Examples:
      | default_helpText1 | default_helpText2 |
      | help text         | help text2        |

  @120013    @validateHelpTextAtPageBlockDetailIfTwoSameNameFieldsAreDisplayedAtTwoDiffTabsInEditModeWithSameHelpText-gPlanning
  Scenario Outline: validating help text on hover at field if two same name fields are displayed at 2 diff tabs in edit mode with same help text
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue   | coreComponentField      | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false               | Annoucement Profile-FOA | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active      | false               | Annoucement Profile-FOA | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <default_helpText2> | Annoucement Profile-FOA | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue       | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-9238                   |
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-9240                   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <default_helpText1> | Annoucement Profile-FOA | Name                      | PBD-9240                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementForEmailNotify}"
    When I click on "Edit" icon for "{Framework_recordUsed:AnnouncementForEmailNotify}" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "General Information" page block
    Then I softly see "<default_helpText1>" shown as help text
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I hovering mouse on help text icon at "Status" inside "Financial Details" page block
    Then I softly see "<default_helpText1>" shown as help text

    Examples:
      | default_helpText1 | default_helpText2 |
      | help text         | help text2        |

  @120065    @verifyBulbIconWithInstructionTextIsDisplayedAtPageInstructionTextInEditMode-gPlanning
  Scenario: validate the page instructions text displayed with bulb icon at page header in page edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                    | filterId         |
      | Page Layout           | Page Instruction Text | govgrants_config:PageInstructionText | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | Automation Instruction Text | Grantee State Program |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I softly see bulb icon at header instruction is displayed
    And I refresh the page
    Then I softly see "Automation Instruction Text" shown as page instruction text

  @120062    @verifyBulbIconWithInstructionTextIsDisplayedAtPageInstructionTextInCreateMode-gPlanning
  Scenario: validate the page instructions text displayed with bulb icon at page header in page create mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                    | filterId         |
      | Page Layout           | Page Instruction Text | govgrants_config:PageInstructionText | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | Automation Instruction Text | Grantee State Program |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on top right button "New" in flex table with id "Programs"
    Then I softly see bulb icon at header instruction is displayed
    And I refresh the page
    Then I softly see "Automation Instruction Text" shown as page instruction text

  @120069    @verifyBulbIconWithInstructionTextIsDisplayedAtPageInstructionTextInViewMode-gPlanning
  Scenario: validate the page instructions text displayed with bulb icon at page header in page view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                    | filterId         |
      | Page Layout           | Page Instruction Text | govgrants_config:PageInstructionText | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | Automation Instruction Text | Grantee State Program |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I softly see bulb icon at header instruction is displayed
    And I refresh the page
    Then I softly see "Automation Instruction Text" shown as page instruction text

  @120091    @verifyHelpTextAtVisualIndicatorShownAtTabInsidePageLayoutInViewMode-gPlanning
  Scenario: verify help text displayed on mouse hover at visual indicator at tab inside page layout in view mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantee State Program | Name                      | PBD-9163                   |
    And I refresh the page
    Then I see "Missing fields information" shown as help text at visual indicator inside page layout

  @120089    @verifyHelpTextAtVisualIndicatorShownAtTabInsidePageLayoutInEditMode-gPlanning
  Scenario: verify help text displayed on mouse hover at visual indicator at tab inside page layout in edit mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    Then I see "Missing fields information" shown as help text at visual indicator inside page layout