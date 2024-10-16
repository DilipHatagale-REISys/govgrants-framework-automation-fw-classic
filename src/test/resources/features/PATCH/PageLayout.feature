@PageLayout-PATCHcomponent @regression-PATCH @PageLayout @vrush-module
Business Need: Page Layout Component Scenarios
  Test all page layout component based scenarios
  As a configuration manager i make different configurational changes in page layout component and will validate them.

  @34042    @setUpHeaderWithContent-gPlanning @wip
  Scenario: setting up header from configuration and validating its content in Edit view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue           | filterId         |
      | Page Layout           | Header    | Program - {!ProgramName__c} | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Header    | Program - {!FederalProgramCFDA__c} | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see "TPA01" shown as over view title in header "Program"

  @34047    @setUpPageInstructionText-gPlanning
  Scenario: validate the page instructions text apears as configured in Edit view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                    | filterId         |
      | Page Layout           | Page Instruction Text | govgrants_config:PageInstructionText | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | Automation Instruction Text | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see "Automation Instruction Text" shown as page instruction text

  @34049    @setUpHeaderOverRideField-gPlanning
  Scenario: setting up header over ride configuration and validating its content after clicking New button
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue    | filterId         |
      | Page Layout           | Create Header Override | Creating New Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Create Header Override | Creating New Program for Automation | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on top right button "New" in flex table with id "Programs"
    Then I see "Creating New Program for Automation" shown as over view header

  @34052    @hideDecisionExpression-gPlanning @smokePATCH
  Scenario Outline: Hide Submit for approval for Created from configuration and validating it for Created status view icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | filterId         |
      | Page Layout Action    | Hide Decision Expression | <old_hide_config> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Decision Expression | <new_hide_config> | Grantor State Program | Name                      | Submit For Approval        |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View" icon for "{SavedValue:PEGMSID}" inside table
    Then I see "Submit For Approval" button is not displayed

    Examples:
      | new_hide_config     | old_hide_config                                                                                                                                                                                                      |
      | Status__c='Created' | Status__c='Active' OR Status__c='Submitted for Approval' OR Status__c='Approved' OR Status__c='Closed' OR Status__c='Disapproved' OR Status__c='Change Requested' OR Status__c='Disapproved' OR Status__c='Rejected' |

  @34053    @hideExpressionJSON-gPlanning @smokePATCH
  Scenario: Hide Submit for approval for Created from json configuration and validating it for Created status view icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Layout Action    | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:HideExpressionJson | Grantor State Program | Name                      | Submit For Approval        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Submit For Approval" button is not displayed

  @34069 @smokePATCH @wip
  Scenario: Hide Submit for approval for specific profile from configuration and validating it for Created status view icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Layout Action    | Hide for profile |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide for profile | System Administrator | Grantor State Program | Name                      | Submit For Approval        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Submit For Approval" button is not displayed

  @34043 @200538 @200546
  Scenario Outline: Disabling of PDF download option from configuration and validating it from menu dropdown inside program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | true          | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @34046    @HideTakeSnapshotFromMenuForMainPageLayout-gPlanning
  Scenario: Disabling of Take snapshot option from configuration and validating it from menu dropdown inside program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I click on "Menu" in the page details
    Then I do not see "Take Snapshot" options is displayed

  @34055    @enablePromptInputDialog-gPlanning
  Scenario: Enable prompt input box for Submit for approval button configuration and validating it for Created status view icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Enable Prompt Input Dialog | false             | Grantor State Program | Name                      | Submit For Approval        |
      | Page Layout Action    | Prompt Dailogue Header     |                   | Grantor State Program | Name                      | Submit For Approval        |
      | Page Layout Action    | Prompt Dialogue Text       |                   | Grantor State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Prompt Dailogue Header     | Automation Header | Grantor State Program | Name                      | Submit For Approval        |
      | Page Layout Action    | Prompt Dialogue Text       | Automation Text   | Grantor State Program | Name                      | Submit For Approval        |
      | Page Layout Action    | Enable Prompt Input Dialog | true              | Grantor State Program | Name                      | Submit For Approval        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I click on "Submit For Approval" button in right header
    Then I see prompt For automation is displayed

  @34056    @hideForContextFieldForMainPageLayoutAction-gPlanning @smokePATCH
  Scenario: Hide submit for approval button for program view page and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Layout Action    | Hide For Context |                   | ApiGeneratedId:0 |
      | Page Layout Action    | Hide For Context |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide For Context | view          | Grantor State Program | Name                      | Submit For Approval        |
      | Page Layout Action    | Hide For Context | view          | Grantor State Program | Name                      | Submit For Approval        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Submit For Approval" button is not displayed at view detail page

  @35814    @labelChangeOfCancelButtonAtMainPageLayout-gPlanning
  Scenario: Setup cancel button label name as Automation cancel from config and it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Layout           | Cancel Button Label |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Cancel Button Label | Auto Cancel   | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I click on "Edit" in the page details
    Then I see "Auto Cancel" button is displayed at edit detail page

  @35813    @labelChangeOfSaveButtonAtMainPageLayout-gPlanning
  Scenario: Setup save button label name as Automation cancel from config and it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Save Button Label |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Save Button Label | Auto Save     | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I click on "Edit" in the page details
    Then I see "Auto Save" button is displayed at edit detail page

  @35817p    @hideForContextFieldAtPageLayout-gPlanning @smokePATCH
  Scenario: Hide overview for program view page and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide For Context |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide For Context | View          | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @34354    @sortOrderForFieldAtPageTab-gPlanning
  Scenario: Changing sort order for overview page tab from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Sort Order | 0                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Sort Order | 6             | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Overview" shown at number "5" inside subtabs

  @34355    @headerInstructionTextFieldAtPageTab-gPlanning
  Scenario: Setup header instruction text for overview page tab from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Header Instruction Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName               | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Header Instruction Text | Automation Header Text | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Automation Header Text" shown as header instruction text

  @34357    @tabTitleFieldAtPagePageTab-gPlanning
  Scenario: Changing sub tab title for overview page tab from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Tab Title | Overview          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Tab Title | Automation Overview | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I softly see "Automation Overview" sub tab is displayed at view detail page

  @34359    @tabIconFieldAtPageTab-gPlanning
  Scenario: Setup tab icon for overview page tab from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                  | filterId         |
      | Page Tabs Config      | Tab Icon  | govgrants_config:TabIconDefaultCss | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Tab Icon  | govgrants_config:TabIconNewCss | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see pencil icon as "Overview" sub tab

  @35949    @isActiveFieldAtPageTab-gPlanning @smokePATCH
  Scenario: Disabling of Overview page tab from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @35955    @hideForUserAtPageTab-gPlanning @smokePATCH
  Scenario: Hiding of overview page tab for internal user from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide for User |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide for User | Internal      | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @35956    @hideForProfileAtPageTab-gPlanning @smokePATCH @wip
  Scenario: Hiding of overview page tab for specific profile from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide for Profile |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide for Profile | System Administrator | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @35959    @hideDecisionFieldAtPageTab-gPlanning @smokePATCH
  Scenario: Hiding of overview page tab for created state from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide Decision Field |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Decision Field | ShowActiveProgram__c | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @35962    @highlightsPanelFeildAtPageTab-gPlanning
  Scenario: Setup of header overview page tab from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId |
    #  | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
     # | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantor State Program | Name                      | TAB-2011                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see complete header overview tab is displayed at view detail page

  @35976    @hideExpressionJsonFieldAtPageTab-gPlanning @smokePATCH
  Scenario: Hiding overview tab from json config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:HideExpressionJsonForPageTab | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @35979    @pageBlockTitleFieldAtPageBlock-gPlanning
  Scenario: Changing page block title from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Page Block Title | Information       | Grantor State Program | GNT__PageBlockTitle__c    | Information Automation     |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Page Block Title | Information Automation | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Information Automation" page block displayed

  @35980    @isActiveFieldAtPageBlock-gPlanning @smokePATCH
  Scenario: Disabling of program information page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | false         | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I do not see "Information" page block displayed in page details

  @35981    @sortOrderFieldAtPageBlock-gPlanning
  Scenario: Changing sort order for Program information page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Page Block            | Sort Order | 0                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Sort Order | 10            | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Information" shown at number "5" inside detail page

  @35984pp    @headerInstructionTextFieldAtPageBlock-gPlanning
  Scenario: Setup header instruction text for program information page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName               | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Header Instruction Text |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName               | fieldNewValue         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Header Instruction Text | Header for Automation | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Header for Automation" shown as header instruction text for page block

  @36037    @hideForContextFieldAtPageBlock-gPlanning @smokePATCH
  Scenario: Hide program information page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Hide for Context |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide for Context | View          | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I do not see "Information" page block displayed in page details

  @36038    @hideForUserFieldAtPageBlock-gPlanning @smokePATCH
  Scenario: Hiding of program information page block for internal user from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName     | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Hide for User |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide for User | Internal      | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I do not see "Information" page block displayed in page details

  @35957pp    @hideOperatorFieldUsingANDOperatorAtPageTab-gPlanning
  Scenario: Hide overview for program view page from config using AND operator and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Operator         |                   | ApiGeneratedId:0 |
      | Page Tabs Config      | Hide for Profile |                   | ApiGeneratedId:1 |
      | Page Tabs Config      | Hide for User    |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Operator         | AND                  | Grantor State Program | Name                      | TAB-2673                   |
      | Page Tabs Config:Page Layout Action | Hide for Profile | System Administrator | Grantor State Program | Name                      | TAB-2673                   |
      | Page Tabs Config:Page Layout Action | Hide for User    | Internal             | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @35958    @hideOperatorFieldUsingOROperatorAtPageTab-gPlanning
  Scenario: Hide overview for program view page from config using OR operator and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Operator         |                   | ApiGeneratedId:0 |
      | Page Tabs Config      | Hide for Profile |                   | ApiGeneratedId:1 |
      | Page Tabs Config      | Hide for User    |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Operator         | OR                   | Grantor State Program | Name                      | TAB-2673                   |
      | Page Tabs Config:Page Layout Action | Hide for Profile | System Administrator | Grantor State Program | Name                      | TAB-2673                   |
      | Page Tabs Config:Page Layout Action | Hide for User    | Internal             | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @36039    @hideForProfileAtPageBlock-gPlanning @smokePATCH
  Scenario: Hide program information page block for particular user from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide for Profile | System Administrator | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I do not see "Information" page block displayed in page details

  @36040    @hideOperatorFieldUsingANDOperatorAtPageBlock-gPlanning
  Scenario: Hide program information for program view page from config using AND operator and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Operator         |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block:Page Block Detail | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Operator         | AND                  | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
      | Page Block:Page Block Detail | Hide for Profile | System Administrator | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
      | Page Block:Page Block Detail | Hide for User    | Internal             | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I do not see "Information" page block displayed in page details

  @36036    @totalFieldsPerRowFieldAtPageBlock-gPlanning @changeInDOMStructure
  Scenario: Setup value for total fields per row page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Total Fields per Row | 3                 | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Total Fields per Row | 3             | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Information" page block contains "3" elements

  @36041    @hideOperatorFieldUsingOROperatorAtPageBlock-gPlanning
  Scenario: Hide program information for program view page from config using AND operator and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Operator         |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block:Page Block Detail | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Operator         | OR                   | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
      | Page Block:Page Block Detail | Hide for Profile | System Administrator | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
      | Page Block:Page Block Detail | Hide for User    | Internal             | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I do not see "Information" page block displayed in page details

  @36042    @hideDecisionFieldAtPageBlock-gPlanning @smokePATCH
  Scenario: Hiding of program information page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName           | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Hide Decision Field |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Decision Field | ShowActiveProgram__c | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I do not see "Information" page block displayed in page details

  @36045    @flexTableNameFieldAtPageBlock-gPlanning @smokePATCH @wip
  Scenario: Changing flex table rendering by changing name inside flex table name field at page block from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Page Block            | Flex Table Name | ApiGeneratedId:0  | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName       | fieldNewValue              | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General            | Header          | Program Contacts           | ProgramContacts                 |                           |                            |
      | Flex Grid:General            | Header          | Roles And Responsibilities | ProgramRolesAndResponsibilities |                           |                            |
      | Page Block:Page Block Detail | Flex Table Name | ApiGeneratedId:1           | Grantor State Program           | GNT__PageBlockTitle__c    | Contacts                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I see Roles And Responsibilities flex table inside page block

  @36046    @flexGridNameFieldAtPageBlock-gPlanning @smokePATCH
  Scenario: Changing flex grid rendering by changing name inside flex grid name field at page block from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Page Block            | Flex Grid Name |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName             | fieldNewValue      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General            | Flex Grid Config Name | ProgramOutcomes    | ProgramOutcomes       |                           |                            |
      | Flex Grid:General            | Flex Grid Config Name | MonitoringGridView | MonitoringGridView    |                           |                            |
      | Page Block:Page Block Detail | Flex Grid Name        | ApiGeneratedId:1   | Grantor State Program | GNT__PageBlockTitle__c    | Out Comes                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Plan" sub tab
    Then I see Monitoring Schedule For All Active Grants flex grid inside page block

  @36051    @hideDisableAttachmentRowActionsFieldWithDisableOptionAtPageBlock-gPlanning @smokePATCH
  Scenario: Hiding edit action item at row level inside attachments page block from config using disable option and validating it at program-submitted for approval detail page
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName                           | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail           | Hide/Disable attachment Row actions |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile                    |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName                           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail           | Hide/Disable attachment Row actions | Disable              | Grantor State Program | GNT__PageBlockTitle__c    | Attachments                |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile                    | System Administrator | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I navigate to "Files" sub tab
    Then I see "Edit" icon is disabled inside "Files" page block

  @36053    @hideDisableAttachmentRowActionsFieldWithHideOptionAtPageBlock-gPlanning
  Scenario: Hiding edit action item at row level inside attachments page block from config using hide option and validating it at program-submitted for approval detail page
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName                           | fieldOrignalValue | filterId         |
      | Page Block:Page Block Detail           | Hide/Disable attachment Row actions | Disable           | ApiGeneratedId:0 |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile                    |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName                           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail           | Hide/Disable attachment Row actions | Hide                 | Grantor State Program | GNT__PageBlockTitle__c    | Attachments                |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile                    | System Administrator | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I navigate to "Files" sub tab
    Then I see "Edit" icon for "Award Letter" is not displayed inside flex table

  @36094    @feildAPINAmeFieldAtPageBlockDetail-gPlanning @smokePATCH
  Scenario: Changing field api name for page block detail from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field API Name       | ProgramName__c    | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Title             | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field API Name       | BudgetingPreference__c | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Budgeting Preference   | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see field "Budgeting Preference" inside page block

  @36099    @isActiveFieldAtPageBlockDetail-gPlanning @smokePATCH
  Scenario: Disabling of program name page block detail from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Title" is not displayed inside page block detail

  @36100    @sortOrderFieldAtPageBlockDetail-gPlanning
  Scenario: Changing sort order of program name page block detail from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Sort Order | 0                 | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Sort Order | 1             | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Title" shown at number "1" inside "Information" page block detail

  @36101    @fieldLabelOverrideFieldAtPageBlockDetail-gPlanning
  Scenario: Changing label of program name page block detail fom config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Title             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Automation Title | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see field "Automation Title" inside page block

  @36106pp    @readOnlyFieldAtPageBlockDetail-gPlanning
  Scenario: changing rendering behaviour of program name read only from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only | true          | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I softly see that "fieldProgramName__c" rendered in view mode only

  @36109    @hideForContextFieldAtPageBlockDetail-gPlanning @smokePATCH
  Scenario: Hide program name field at page block detail from config validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide for Context |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide for Context | View          | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Title" is not displayed inside page block detail

  @36110    @hideForUserFieldAtPageBlockDetail-gPlanning @smokePATCH
  Scenario: Hiding of program name page block detail for internal user from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName     | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide for User |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide for User | Internal      | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Title" is not displayed inside page block detail

  @36111    @hideForProfileFieldAtPageBlockDetail-gPlanning @smokePATCH
  Scenario: Hide program name page block detail for specific profile from configuration and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide For Profile |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide For Profile | System Administrator | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Title" is not displayed inside page block detail

  @36113    @hideOperatorFieldUsingANDOperatorAtPageBlockDetail-gPlanning
  Scenario: Hide program name page block detail from config using AND operator and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Operator         |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide For Profile |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide For User    |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Operator         | AND                  | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Hide For Profile | System Administrator | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Hide For User    | Internal             | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Title" is not displayed inside page block detail

  @36114    @hideOperatorFieldUsingOROperatorAtPageBlockDetail-gPlanning
  Scenario: Hide program name page block detail from config using OR operator and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Operator         | AND               | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide For Profile |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide For User    |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Operator         | OR                   | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Hide For Profile | System Administrator | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Hide For User    | Internal             | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Title" is not displayed inside page block detail

  @36126    @readOnlyForContextFieldAtPageBlockDetail-gPlanning
  Scenario: changing rendering behaviour of program name read only for context from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only For Context |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only For Context | Edit          | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I softly see that "fieldProgramName__c" rendered in view mode only

  @36127    @readOnlyForProfileFieldAtPageBlockDetail-gPlanning @smokePATCH
  Scenario: changing rendering behaviour of program name to read only for specific profile from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only For Profile |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only For Profile | System Administrator | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I softly see that "fieldProgramName__c" rendered in view mode only

  @36107    @requiredForSaveBehaviourAtPageBlockDetail-gPlanning @smokePATCH
  Scenario: Changing value for required for save behaviour field from config and checking error message at program save
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | Grantor State Program | Name                      | PBD-17094                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-17094                  |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    Then I see the following message in the page details contains:
      | Program Sub Type is required to save. |

  @36050    @attachementClassificationFieldAtPageBlock-gPlanning @smokePATCH
  Scenario: Changing the values for Attachement classifications field from config and validating it at Program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                                     | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Attachment Classifications | Program Artifacts;Financial Artifacts;Other Artifacts | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Attachment Classifications | AnnouncementArtifacts1;AnnouncementArtifacts2; | Grantor State Program | GNT__PageBlockTitle__c    | Attachments                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    When I click on "AddAttachments" button inside attachments page block
    Then I see "AnnouncementArtifacts1:AnnouncementArtifacts2" inside Type selectbox

  @36104    @isHiddenFieldAtPageBlockDetail-gPlanning
  Scenario: Hiding program name while making is hidden field as false from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName       | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Hidden Field | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Hidden Field | true          | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Title" is not displayed inside page block detail

  @36115    @hideDecisionFieldAtPageBlockDetail-gPlanning @smokePATCH
  Scenario: Hiding of program name at pege block detail by making change  inside hide decision field from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Decision Field |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Operator            | AND               | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Decision Field | ShowActiveProgram__c | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Operator            |                      | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Title" is not displayed inside page block detail

  @36129    @readOnlyForUserFieldAtPageDetail-gPlanning @smokePATCH
  Scenario: changing rendering behaviour of program name while making change for is hidden field as false from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName          | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only For User |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName          | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only For User | Internal      | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I softly see that "fieldProgramName__c" rendered in view mode only

  @36131    @readDecisionFieldAtPageBlockDetail-gPlanning @smokePATCH
  Scenario: changing rendering behaviour of program name while making change for read decision field from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Decision Field |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Decision Field | ShowActiveProgram__c | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I softly see that "fieldProgramName__c" rendered in view mode only

  @36136    @hideLabelFieldAtPageBlockDetail-gPlanning
  Scenario: Hiding program name label at page block detail from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Label | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Label | true          | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Title" is not displayed inside page block detail

  @36169p    @lookUpHeaderTextFieldAtPageBlockDetail-gPlanning
  Scenario: Hiding program name label at page block detail from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName          | fieldOrignalValue     | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Header Text | Internal Organization | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName          | fieldNewValue           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Header Text | Organization Automation | Grantor State Program | Name                      | PBD-17097                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I click search icon for lookup "Internal Organization"
    Then I see modal box with body "Organization Automation" is displayed

  @36170    @lookupDisplayFieldNamesFieldAtPageBlockDetail-gPlanning @smokePATCH
  Scenario: Changing column header and its data of lookup modal from config and valiodating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Code__c       | Grantor State Program | Name                      | PBD-17097                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I click search icon for look up field "Organization Lookup (New Window)" with clearing
    Then I see "Code" in table header on lookup Modal

  @36172    @lookupFilterCriteriaFieldAtPAgeBlockDetail-gPlanning @smokePATCH @wip
  Scenario Outline: Validate removing Created status category from table on lookup modal from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <oldLookupFilter> | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <newLookupDisplayName> | Grantor State Program | Name                      | PBD-17097                  |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <newLookupFilter>      | Grantor State Program | Name                      | PBD-17097                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I click search icon for look up field "Organization Lookup (New Window)" with clearing
    When I perform quick search for "Automation test organization" in "---program:-:AccountTableId---" panel
    Then I see "Created" status in lookup modal table

    Examples:
      | oldLookupFilter                                                                    | newLookupFilter       | newLookupDisplayName |
      | RecordType.Name='Internal' AND GroupCode__c='{!GroupCode}' AND Status__c ='Active' | Status__c = 'Created' | Name,Status__c       |

  @36178    @attachmentClassificationFieldAtPageBlockDetail-gPlanning @smokePATCH
  Scenario: Changing value of attachment classification field from config and validating it at announcement detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue   | filterId         |
      | Page Block Config:Page Block Rule Detail | Attachment Classifications | FOA;CFA;CFDA;Other; | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Attachment Classifications | Test1;Test2;  | Annoucement Profile-FOA | Name                      | PBD-5205                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
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
      | Page Layout Action    | Submit Warning Message | Test message for Automation | Grantor State Program | Name                      | Submit For Approval        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Test message for Automation" message inside confirmation box is displayed on click "Submit For Approval"

  @36198    @isActiveFieldAtPageLayoutAction-gPlanning @smokePATCH
  Scenario: Disabling of edit button action at page layout action from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Layout Action    | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Is Active | false         | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Edit" button is not displayed

  @36200    @editButtonActionOpensInOverLayWindowAtPageLayoutAction-gPlanning
  Scenario: validate page layout action button field- Edit opens in overlay window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Page Layout Action    | Action Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Behavior | Open in overlay | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I click on "Edit" in the page details
    Then I see Edit opens in overlay window with "Cancel" button

  @36202    @editButtonActionOpensInNewWindowAtPageLayoutAction-gPlanning @smokePATCH
  Scenario: validate page layout action button field- Edit opens in New window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Page Layout Action    | Action Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Behavior | Open in new window | Grantor State Program | Name                      | Edit                       |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View" icon for "{SavedValue:PEGMSID}" inside table
    When I click on "Edit" in the page details
    And I pause execution for "10" seconds
    And I refresh the page
    Then I see new tab is opened

  @36204    @displayAreaFieldForCreateCampaignAtPageLayoutAction-gPlanning @smokePATCH
  Scenario: Set up create campaign at page layout action from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Page Layout Action    | Is Active    | false             | ApiGeneratedId:0 |
      | Page Layout Action    | Display Area | Menu              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Is Active    | true          | Grantor State Program | Name                      | Create Campaign            |
      | Page Layout Action    | Display Area | Page Header   | Grantor State Program | Name                      | Create Campaign            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Create Campaign" button is displayed

  @36205    @displayAreaFieldForEditAtPageLayoutAction-gPlanning
  Scenario: Set up create campaign at page layout action from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Page Layout Action    | Display Area | Page Header       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Display Area | Menu          | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
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
      | Page Layout Action    | Header Sequence | 1             | Grantor State Program | Name                      | Edit                       |
      | Page Layout Action    | Header Sequence | 2             | Grantor State Program | Name                      | Submit For Approval        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Edit" Button at position "0"

  @35982 @201278 @201279   @helpTextFieldAtPageBlock-gPlanning
  Scenario Outline: Changing content of help text field at page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Help Text | <old_helpText>    | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Help Text | <new_helpText> | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I hovering mouse on help text icon inside "Information"
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText                                                                           |
      | Help Text for Automation | The section gives program overview along with funder and funding organization details. |

  @36102    @helpTextLongFieldAtPageBlockDetail-gPlanning
  Scenario Outline: Changing content of help text long field at page block detail from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I hovering mouse on help text icon inside page block detail "Title"
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText                                       |
      | Help Text for Automation | Name represents for what the program is meant for. |

  @36043    @hideExpressionJsonFieldAtPageBlock-gPlanning @smokePATCH
  Scenario: Hiding program information page block from json config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HideExpressionJsonForPageBlock | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I do not see "Information" page block displayed in page details

  @36116    @hideExpressionJsonFieldAtPageBlockDetail-gPlanning @smokePATCH
  Scenario: Disabling of program name page block detail from json config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HideExpressionJsonForPageBlockDetail | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Title" is not displayed inside page block detail

  @36134    @readOnlyExpressionJSONFieldAtPageBlockDetail-gPlanning @smokePATCH
  Scenario: changing rendering behaviour of program name read only with read only expression json field from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                 | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                 | fieldNewValue                                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only Expression JSON | govgrants_config:ReadOnlyExpressionJsonForPageBlockDetail | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I softly see that "fieldProgramName__c" rendered in view mode only

  @53094
  Scenario: Verify Hide for Context at Notes and attachments.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block            | Hide for Context | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide for Context | View          | Grantor State Program | Name                      | PB-6708                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    Then I do not see "Attachments" page block displayed

  @53095p @53100
  Scenario Outline:  Verify Hide for Profile at Notes and attachments.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block            | Hide for Profile |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide for Profile | System Administrator | Grantor State Program | Name                      | PB-6708                    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    Then I do not see "Attachments" page block displayed

    Examples:
      | User  |
      | ADMIN |

  @53096 @53101
  Scenario Outline:Page Block Detail – Verify Hide for User at Notes and attachments.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Block            | Hide for User |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide for User | Internal      | Grantor State Program | Name                      | PB-6708                    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    Then I do not see "Attachments" page block displayed
    Examples:
      | User |
      | PM   |

  @53098 @53103
  Scenario Outline: Hide edit row level action using OR operator from configuration and validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block            | Hide For Profile |                   | ApiGeneratedId:0 |
      | Page Block            | Hide For User    |                   | ApiGeneratedId:1 |
      | Page Block            | Hide Operator    |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide For Profile | System Administrator | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide For User    | Internal             | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide Operator    | OR                   | Grantor State Program | Name                      | PB-6708                    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    Then I do not see "Attachments" page block displayed
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @53097 @53102
  Scenario Outline:  Verify Hide for User And Profile System administration at Notes and attachments.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide For Profile |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide For User    |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide For Profile | System Administrator | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide For User    | Internal             | Grantor State Program | Name                      | PB-6708                    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    Then I do not see "Attachments" page block displayed
    Examples:
      | User  |
      | ADMIN |
#      | PM    |

  @53099
  Scenario: Verify Hide for Context at Notes and attachments.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block            | Hide for Context | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide for Context | View          | Grantor State Program | Name                      | PB-6708                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    Then I do not see "Attachments" page block displayed

  @53260p
  Scenario:  Page Block Detail – Verify Hide decision field at Notes and attachments.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Hide Decision Field |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName           | fieldNewValue    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Decision Field | HideDeleteBtn__c | Grantor State Program | Name                      | PB-6708                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    Then I see "Delete" icon is disabled inside "Attachments" page block

  @53261    @hideDecisionFieldAtNotesAndAttachmentPageBlockForEditActionWithRecordTypeNotesConfig-gPlanning @wip
  Scenario Outline: Hide edit action from attachment page block from config validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide Decision Field |                   |                    | Internal Unique Id        | <value>                    |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Uid Config:Uid        | Hide Decision Field | HideDeleteBtn__c |                    | Internal Unique Id        | <value>                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Active Programs"
    When I perform quick search for "Test Demo"
    When I click on "View" icon for "Test Demo" inside table
    When I navigate to "Files" sub tab
    Then I see "Edit" icon for "Check Edit Behaviour" is not displayed inside flex table

    Examples:
      | value                          |
      | DXkA4qiwvbHfLbAaiAs6wiiVyPIp3D |

  @53092    @saveAttachementBehaviourFieldAtNotesAndAttachmentPageBlockAsSaveAndCloseModal-gPlanning
  Scenario: Changing save attachment behaviour at attachment modal from config and validating it at attachment modal
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                 | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Save Attachment Behaviour | Save              | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                 | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Save Attachment Behaviour | Save and Close Modal | Grantor State Program | GNT__PageBlockTitle__c    | Attachments                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    When I click on "Edit" icon for "Program Artifacts" inside table
    Then I see "Save and Close" at bottom of Attachment Modal

  @53093    @saveAttachementBehaviourFieldAtNotesAndAttachmentPageBlockAsSaveAndSaveAndCloseModal-gPlanning @wip
  Scenario: Changing save attachment behaviour at attachment modal from config and validating it at attachment modal
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                 | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Save Attachment Behaviour | Save              | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                 | fieldNewValue                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Save Attachment Behaviour | Save and Save and Close Modal | Grantor State Program | GNT__PageBlockTitle__c    | Attachments                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    When I click on "Edit" icon for "Program Artifacts" inside table
    And I see "Save" at bottom of Attachment Modal
    Then I see "Save and Close" at bottom of Attachment Modal

  @53388p   @requiredForSubmitBehaviourAtPageBlockDetailForTitleField-gPlanning
  Scenario: changing value of required behaviour and removing program title and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17333                  |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    When I enter value "   " into field "ProgramName__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Program Name Text is required to submit under Overview. |

  @53389    @requiredForSubmitBehaviourAtPageBlockDetailForOwnerOrganizationField-gPlanning
  Scenario: changing value of required behaviour and removing Internal Organization value and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17097                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "Test Program For Automation - Created - Required Behaviour" into field "fieldProgramName__c"
    When I enter value "" into field "Account__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Internal Organization is required to submit under Overview. |

  @53390    @requiredForSubmitBehaviourAtPageBlockDetailForNumberField-gPlanning
  Scenario: changing value of required behaviour and removing Number Field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-23985                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "" into field "fieldNumber__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Number is required to submit under Overview. |

  @53391    @requiredForSubmitBehaviourAtPageBlockDetailForKPIRequiredField-gPlanning
  Scenario: changing value of required behaviour and keeping none at kpi required Field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17201                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "--None--" into field "fieldKPIsRequired__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | KPI's Required? is required to submit under Overview. |

  @53392    @requiredForSubmitBehaviourAtPageBlockDetailForProjectPeriodStartDateField-gPlanning
  Scenario: changing value of required behaviour and keeping none at project start period Field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17330                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
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
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17091                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
   # When I enter value "0" into field "fieldStartDate__c"
    When I enter value "" into field "fieldExpectedFunding__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Expected Future Funding is required to submit under Overview. |

  @53394    @requiredForSubmitBehaviourAtPageBlockDetailForUrlField-gPlanning
  Scenario: changing value of required behaviour and keeping none at URL field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17398                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
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
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-23990                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
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
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-23987                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "" into field "fieldPercent__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Percent is required to submit under Overview. |

  @53397   @requiredForSubmitBehaviourAtPageBlockDetailForDateAndTimeField-gPlanning
  Scenario: changing value of required behaviour and keeping none at date and time field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | --None--          | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-23988                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "" into field "fieldDateandTime__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Date &Time is required to submit under Overview. |

  @53398   @requiredForSubmitBehaviourAtPageBlockDetailForTimeField-gPlanning
  Scenario: changing value of required behaviour and keeping none at time field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-23986                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "" into field "fieldTime__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Time is required to submit under Overview. |

  @53399   @requiredForSubmitBehaviourAtPageBlockDetailForAuthorizationField-gPlanning
  Scenario: changing value of required behaviour and keeping none at authorization field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-24004                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "" into field "Authorization__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Authorization is required to submit under Overview. |

  @79735    @verifyByClickOnUserValueItShouldRedirectedToRespectiveUserPageAtPageLayout-gPlanning
  Scenario: validate by click on user value in table , respective user page should get opens at page layout - gPlanning
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I click "Automation ADMIN" lookup link
    Then I see "User" shown as over view header

  @82792   @verifyThatOptionAsALLIsPresentUnderRefineFilterByPhaseDropdown-gDashboard
  Scenario: validate that by click on by phase dropdown at refine filter , an option as ALL is displayed - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I click on By phase dropdown at dashboard
    Then I see "All" is displayed in dropdown at dashboard

  @82793   @verifyThatOptionAsCollabIsNotPresentUnderRefineFilterByPhaseDropdown-gDashboard
  Scenario: validate that by click on by phase dropdown at refine filter , an option as Collab is not displayed - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I click on By phase dropdown at dashboard
    Then I do not see "Collab" is displayed in dropdown at dashboard

  @82770    @verifyALinkIconPresentAtRichTextAreaDescriptionFieldUnderPageLayout-gPlanning
  Scenario: validate that link icon is present at rich text area description field under page layout - gPlanning
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I see icon for "Link" is present in rich text area description field

  @82786    @verifyHyperLinkIsPresentAtTextGivenInRichTextAreaDescriptionFieldUnderPageLayout-gPlanning
  Scenario: validate that a hyperlink is present at display text in rich text area description field under page layout - gPlanning
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    When I click on "Link" icon in rich text area editor menu options
    When I create hyperlink for "text" as "TestAutomationDescription" at rich text area field
    Then I see hyperlink is present at "TestAutomationDescription" in rich text area field

  @82775    @verifyHyperLinkIsPresentAtURLGivenInRichTextAreaDescriptionFieldUnderPageLayout-gPlanning
  Scenario: validate that a hyperlink is present at URL in rich text area description field under page layout - gPlanning
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "3" seconds
    When I click on "Link" icon in rich text area editor menu options
    When I create hyperlink for "URL" as "www.testAutomation.com" at rich text area field
    When I pause execution for "3" seconds
    Then I see hyperlink is present at "http://www.testAutomation.com" in rich text area field

  @83110    @verifyHyperLinkIsNotPresentAtUserNameUnderUserProfilePage
  Scenario: validate that a hyperlink is not present at user name under user profile page
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    When I select "My Profile" from user dropdown
    Then I see hyperlink is not present at "Nauman Shahid" user

  @83111   @verifySpaceIsPresentBetweenLikesAndLabelUnderUserProfilePage
  Scenario: validate that space is present between likes count and label under user profile page
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    When I select "My Profile" from user dropdown
    Then I softly see likesCount / label as "0" is present at user detail page
    Then I softly see likesCount / label as "Posts & Comments" is present at user detail page

  @83330   @verifyRequiredForSaveBehaviourAtPageBlockDetailInModalWindowForURLField @wip
  Scenario: Changing value for required for save behaviour field for URL from config and checking error message at modal
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Announcement Create - Grantor | Name                      | PBD-23616                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-343-0034" into field "Program__c"
    And I click modal button "Continue"
    Then I see the following message in the page details contains:
      | Funding Opportunity Web Address is required to save |

  @83324   @verifyAlertMessageForEnteringIncorrectDataAtURLFieldInModal-gAnnouncement
  Scenario: validate alert message for enetering incorrect data at url field on modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "New" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-A11-1283" into field "Program__c"
    When I enter value "abc" into field "FundingOpportunityURL__c"
    And I click modal button "Continue"
    Then I see the following message in the page details contains:
      | Please enter valid URL value. |

  @83323 @verifyURLFieldIsAcceptsCorrectURLEnteredOnModalWindow-gAnnouncement
  Scenario:validate if correct URL value entered in URL field on modal and click on continue button then it redirects to next page
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "New" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-A11-1283" into field "Program__c"
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I navigate to "Files" sub tab
    Then I see "Digital signature" page block displayed

  @83157   @verifyHeaderFieldAccepts255CharactersAtFlexTableOnModalWindow-gPlanning @wip
  Scenario Outline: validate digital signiture page block displayed xyz
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table            | Header    | Program Contacts  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header    | <enteredValue> | SelectNGOContacts  |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:ContactPatchTableId---"
    And I pause execution for "3" seconds
    Then I see "<requiredValue>" shown as inside "SelectNGOContacts"

    Examples:
      | enteredValue                                                                                                                                                                                                                                                    | requiredValue                                                                                                                                                                                                                                                   |
      | The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 Checked size limit... | The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 Checked size limit... |

  @83173    @pageBlockTitleFieldAccepts255CharAtPageBlock-gPlanning
  Scenario Outline: Changing page block title with the 255 character value from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Page Block Title | Information       | Grantor State Program | GNT__PageBlockTitle__c    | <enteredValue>             |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Page Block Title | <enteredValue> | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "<requiredValue>" page block displayed

    Examples:
      | enteredValue                                                                                                                                                                                                                                                    | requiredValue                                                                                                                                                                                                                                                   |
      | The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 Checked size limit... | The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 Checked size limit... |

  @83206    @pageBlockTitleFieldAccepts255CharactersWithSpecialCharactersInItAtPageBlock-gPlanning
  Scenario Outline: Changing page block title with the 255 character including special characters value from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Page Block Title | Information       | Grantor State Program | GNT__PageBlockTitle__c    | <enteredValue>             |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Page Block Title | <enteredValue> | Grantor State Program | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "<requiredValue>" page block displayed

    Examples:
      | enteredValue                                                                                                                                                                                                                                                    | requiredValue                                                                                                                                                                                                                                                   |
      | ~!@#$%^&*()_+=-`{} ][:yy;<>?/.The total size of this sentence is tes The total size of this sentence is test The total size of this sentence is tes The total size of this sentence is tes The total size of this sentence is tes The total size of this senten | ~!@#$%^&*()_+=-`{} ][:yy;<>?/.The total size of this sentence is tes The total size of this sentence is test The total size of this sentence is tes The total size of this sentence is tes The total size of this sentence is tes The total size of this senten |

  @83730    @verifyNavigationLogoIsLoadingOnChangingTheCustomAppFromUI
  Scenario: validate that navigation app is loading on changing the custom app on ui -gHOME
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantee"
    Then I see navigation logo on page

  @83713 @verifyRecordIsGettingCreatedEvenIfSkipAutoNumberingCheckBoxIsCheckedAtCustomSetting @wip
  Scenario: validate that if skip auto numbering check box is checked then a record is getting created
    Given I have "customNameTemplate" configuration as below:
      | id                 | Name     | AutoNumberFormat | StartNumber | booleanValue                                          | customSettingApiName       |
      | a0e15000008FjIqAAK | Grant__c | {000}            | 0           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:false | GNT__NameTemplateConfig__c |
    And I update custom name template setting changes:
      | id                 | Name     | AutoNumberFormat | StartNumber | booleanValue                                         | customSettingApiName       |
      | a0e15000008FjIqAAK | Grant__c | {000}            | 0           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:true | GNT__NameTemplateConfig__c |
    Given I delete the record "Test Automation Grants Record" from the object "Grant__c" with field "ProjectTitle__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on top right button "New" in flex table with id "ActiveGrants"
    And I enter value "Test Automation Grants Record" into field "fieldProjectTitle__c"
    And I enter value "Test" into field "fieldGrantAbbreviation__c"
    And I click modal button "Continue"
    And I pause execution for "3" seconds
    And I navigate to "Overview" sub tab
    And I enter value "PG-755-0229" into field "fieldProgram__c"
    And I enter value "Test" into field "fieldTEXTAREAGrantDescription__c"
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    When I navigate to "Files" sub tab
    Then I see "Digital signature" page block displayed

  @84215 @verifyThatDarkBlueColorIsDisplayedForLoggedInUser-StateAsAGrantor
  Scenario: verify that page header / page is displayed in dark blue color for logged in user-StateAsAGrantor
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see page is in "Dark Blue" color

  @84216 @verifyThatVeryDarkBlueColorIsDisplayedForLoggedInUser-StateAsAGrantee
  Scenario: verify that page header / page is displayed in very dark blue color for logged in user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantee"
    Then I see page is in "Very Dark Blue" color

  @84224 @verifyThatVeryDarkGrayColorIsDisplayedForLoggedInUser-StateAsAdministrator
  Scenario: verify that page header / page is displayed in Very dark gray color for logged in user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As an Administrator"
    Then I see page is in "Very Dark gray" color

  @84572 @verifyThatDarkBlueColorIsDisplayedAtFooterForLoggedInUser-StateAsAGrantor
  Scenario: verify that footer is displayed in dark blue color for logged in user-StateAsAGrantor
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see page footer is in "Dark Blue" color

  @84575 @verifyThatVeryDarkBlueColorIsDisplayedAtFooterForLoggedInUser-StateAsAGrantee
  Scenario: verify that page footer is displayed in very dark blue color for logged in user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantee"
    Then I see page footer is in "Very Dark Blue" color

  @84577 @verifyThatVeryDarkGrayColorIsDisplayedAtFooterForLoggedInUser-StateAsAdministrator
  Scenario: verify that page footer is displayed in Very dark gray color for logged in user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As an Administrator"
    Then I see page footer is in "Very Dark gray" color

  @84227 @verifyThatDarkBlueColorIsDisplayedAtAllButtonsBackgroundForLoggedInUser-StateAsAGrantor
  Scenario: verify that dark blue color is displayed at background for all buttons for logged in user-StateAsAGrantor
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see header action has "Dark Blue" background color

  @84592 @verifyThatVeryDarkBlueColorIsDisplayedAtSidebarBackgroundForLoggedInUser-StateAsAGrantor
  Scenario: verify that very dark blue color is displayed as background for sidebar for logged in user-StateAsAGrantor
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see sidebar has "Very Dark Blue" background color

  @84593 @verifyThatVeryDarkBlue1ColorIsDisplayedAtSidebarBackgroundForLoggedInUser-StateAsAGrantee
  Scenario: verify that Very Dark Blue 1 color is displayed as background for sidebar for logged in user-StateAsAGrantee
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantee"
    Then I see sidebar has "Very Dark Blue 1" background color

  @84595 @verifyThatBlackColorIsDisplayedAtSidebarBackgroundForLoggedInUser-AsAnAdministrator
  Scenario: verify that black color is displayed as background for sidebar for logged in user-As an Administrator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As Administrator"
    Then I see sidebar has "Black" background color

  @84594 @verifyThatVeryDarkCyanColorIsDisplayedAtSidebarBackgroundForLoggedInUser-recipient @wip
  Scenario: verify that Very dark cyan color is displayed as background for sidebar for logged in user-recipient
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Sub-Recipient"
    Then I see sidebar has "Very dark cyan" background color

  @84218 @verifyThatVeryDarkBlueColorIsDisplayedForLoggedInUser-recipient @wip
  Scenario: verify that page header / page is displayed in Very dark desaturated cyan color for logged in user-recipient
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Sub-Recipient"
    Then I see page footer is in "Very dark desaturated cyan" color

  @84755 @verifyThatVeryDarkBlueColorIsDisplayedAtPhasesTabForLoggedInUser-StateAsAGrantor
  Scenario: verify that very dark blue color is displayed as background for phases tab for logged in user-StateAsAGrantor
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see phase tab has "Very Dark Blue" background color

  @84756 @verifyThatVeryDarkBlue1ColorIsDisplayedAtPhasesTabForLoggedInUser-StateAsAGrantee
  Scenario: verify that Very Dark Blue 1 color is displayed as background for phases tab for logged in user-StateAsAGrantee
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantee"
    Then I see phase tab has "Very Dark Blue 1" background color

  @84772 @verifyThatBlackColorIsDisplayedAtPhasesTabForLoggedInUser-AsAnAdministrator
  Scenario: verify that black color is displayed as background for phases tab for logged in user-As an Administrator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As Administrator"
    Then I see phase tab has "Black" background color

  @84757 @verifyThatVeryDarkCyanColorIsDisplayedAtPhasesTabForLoggedInUser-recipient @wip
  Scenario: verify that Very dark cyan color is displayed as background for phases tab for logged in user-recipient
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Sub-Recipient"
    Then I see phase tab has "Very dark cyan" background color

  @84598 @verifyThatDropDownArrowIsUsedAtUserProfileSelectionDropdown
  Scenario: verify that dropdown arrow is displayed at user drop-down at header
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see arrow is displayed at user drop-down

  @84743 @verifyThatWhiteColorIsDisplayedForActiveTabAtHeader
  Scenario: verify that white color is displayed for active tab at header
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see active tab has White background colour

  @84617   @verifyAProgramRecordIsGettingCreatedEvenIfSkipAutoNumberingCheckBoxIsCheckedAtCustomSetting @wip
  Scenario: validate that if skip auto numbering check box is checked then a program record is getting created
    Given I have "customNameTemplate" configuration as below:
      | id                 | Name       | AutoNumberFormat | StartNumber | booleanValue                                          | customSettingApiName       |
      | a0e15000008FjIyAAK | Program__c | {000}            | 1           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:false | GNT__NameTemplateConfig__c |
    And I update custom name template setting changes:
      | id                 | Name       | AutoNumberFormat | StartNumber | booleanValue                                         | customSettingApiName       |
      | a0e15000008FjIyAAK | Program__c | {000}            | 1           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:true | GNT__NameTemplateConfig__c |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    Then I see the sub-header is "Automation Internal Program for Approval and Snapshot scenarios" in the page details

  @84619   @verifyAProgramRecordIsGettingCreatedIfSkipAutoNumberingCheckBoxIsUncheckedAtCustomSetting @wip
  Scenario: validate that if skip auto numbering check box is unchecked then a program record is getting created
    Given I have "customNameTemplate" configuration as below:
      | id                 | Name       | AutoNumberFormat | StartNumber | booleanValue                                          | customSettingApiName       |
      | a0e15000008FjIyAAK | Program__c | {000}            | 1           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:false | GNT__NameTemplateConfig__c |
    And I update custom name template setting changes:
      | id                 | Name       | AutoNumberFormat | StartNumber | booleanValue                                          | customSettingApiName       |
      | a0e15000008FjIyAAK | Program__c | {000}            | 1           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:false | GNT__NameTemplateConfig__c |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    Then I see the sub-header is "Automation Internal Program for Approval and Snapshot scenarios" in the page details

  @84760p   @verifyDateAndTimeFieldFormatForLocalAsESTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date and time field format under page layout in view mode with respective to EST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    And I save the field labeled "Application Due Date" as "saveDate"
    Then I softly see field "Application Due Date" as "{savedValue:saveDate}"

  @84765   @verifyDateAndTimeFieldFormatForLocalAsEDTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date and time field format under page layout in view mode with respective to EDT Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    And I save the field labeled "Application Due Date" as "saveDate"
    Then I softly see field "Application Due Date" as "{savedValue:saveDate}"

  @84766   @verifyDateAndTimeFieldFormatForLocalAsISTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date and time field format under page layout in view mode with respective to IST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    And I save the field labeled "Application Due Date" as "saveDate"
    Then I softly see field "Application Due Date" as "{savedValue:saveDate}"

  @86802   @verifyDateFieldFormatForLocalAsESTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date field format under page layout in view mode with respective to EST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    And I save the field labeled "FOA Release Date" as "saveDate"
    Then I softly see field "FOA Release Date" as "{savedValue:saveDate}"

  @86808   @verifyDateFieldFormatForLocalAsEDTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date field format under page layout in view mode with respective to EDT Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    And I save the field labeled "FOA Release Date" as "saveDate"
    Then I softly see field "FOA Release Date" as "{savedValue:saveDate}"

  @86809   @verifyDateFieldFormatForLocalAsISTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date field format under page layout in view mode with respective to IST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    And I save the field labeled "FOA Release Date" as "saveDate"
    Then I softly see field "FOA Release Date" as "{savedValue:saveDate}"

  @84732 @verifyThatBlackColorIsDisplayedForActiveTabAtWorkspaceLibrary-gHome
  Scenario: verify that black color is displayed at background for active tab at workspace library section
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see active tab has Black background colour at my workspace section

  @86820 @verifyThatLookupModalWindowIsDisplayedProperly
  Scenario: verify that lookup modal window is displayed properly
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I click search icon for lookup "Organization Lookup (New Window)"
    Then I see a lookup modal with width as "800px" is rendered

  @86968 @verifyThatLookupModalWindowIsDisplayedProperlyIfLookupContainsMoreThanTwoDisplayFields @wip
  Scenario Outline: verify that lookup modal window is displayed properly if lookup contains more that 2 display fields
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <defaultValue>    | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <newValue>    | Grantor State Program | Name                      | PBD-17097                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I click search icon for lookup "Organization Lookup (New Window)"
    Then I see a lookup modal with width as "800px" is rendered

    Examples:
      | defaultValue | newValue                                                                                        |
      | Name         | Name,Jigsaw,AnnualRevenue,NumberOfEmployees,ApplicantType__c,SupplySchedule__c,IsCustomerPortal |

  @87261   @verifyAProgramRecordIsGettingCreatedAndIdIsDisplayedAsPerGivenLastSequence @wip
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
      | Page Layout:General                         | Header        | Program - {!Name} | Grantor State Program |                           |                                |
    And I update custom name template setting changes:
      | id                 | Name       | AutoNumberFormat | StartNumber | booleanValue                                         | customSettingApiName       |
      | a0e15000008FjIyAAK | Program__c | {000}            | 1           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:true | GNT__NameTemplateConfig__c |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I see the sub-header is "PG-755-0280" in the page details

  @102100    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Title" is not displayed inside page block detail

  @102107    @verifyHideFieldJsonFieldByHidingDateFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide end date from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see "Project Period End Date" is not displayed inside page block detail

  @102114    @verifyHideFieldJsonFieldByDisablingTitleFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to disable title field Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisabledDateFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see field "ProgramName__c" is disabled

  @102115    @verifyHideFieldJsonFieldByDisablingDateFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to disable date from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisabledDateFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see field "EndDate__c" is disabled

  @102248    @verifyIdDateTimeFieldIsDisabledThenValueOfDateIsNotGettingChangedAfterPageScollInEditMode1
  Scenario:validate disabled dateTime field value is not getting changed on page scroll in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisabledDateFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see value "11/30/2022" of "Project Period End Date" field is not changed on page scroll

  @102251    @verifyIdDateFieldIsDisabledThenValueOfDateIsNotGettingChangedAfterPageScollInEditMode1
  Scenario:validate disabled date field value is not getting changed on page scroll in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisabledDateTimeFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see value "10/15/2021 7:43 AM" of "Date &Time" field is not changed on page scroll

  @104377    @verifyThatUserIsAbleToSaveValueInURLFieldWhenURLValidationRegexCustomMetadataCheckboxIsSetToTrue @wip
  Scenario: verify that user can enter and save value in url field in a valid format when URL Validation Regex is set to true from custom metadata config
    Given I have "customMetaData" configuration as below:
      | id                 | label                | booleanValue | customMetaDataApiName    |
      | m031C000000XZY2QAO | URL Validation Regex | true         | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label                | booleanValue | customMetaDataApiName    |
      | m031C000000XZY2QAO | URL Validation Regex | true         | GNT__KeyValueHolder__mdt |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I enter value "www.google.com" into field "fieldURL__c"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I softly see link "www.google.com" inside Page block

  @104754   @verifyThatUserIsNotAbleToSaveInvalidValueInURLFieldWhenURLValidationRegexCustomMetadataCheckboxIsSetToTrue @wip
  Scenario: verify that user cannot enter and save value in url field in an in-valid format when URL Validation Regex is set to true from custom metadata config
    Given I have "customMetaData" configuration as below:
      | id                 | label                | booleanValue | customMetaDataApiName    |
      | m031C000000XZY2QAO | URL Validation Regex | true         | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label                | booleanValue | customMetaDataApiName    |
      | m031C000000XZY2QAO | URL Validation Regex | true         | GNT__KeyValueHolder__mdt |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I enter value "http://www.example.com:8800/" into field "fieldURL__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Please enter valid URL value. |

  @105118    @verifyThatUserIsAbleToSaveSpecificURLFieldWhenURLValidationRegexCustomMetadataCheckboxIsSetToTrue @SanityPATCH @SanityPATCHPageLayout @wip
  Scenario: verify that user can enter and save specific url in  url field in a valid format when URL Validation Regex is set to true from custom metadata config
    Given I have "customMetaData" configuration as below:
      | id                 | label                | booleanValue | customMetaDataApiName    |
      | m031C000000XZY2QAO | URL Validation Regex | true         | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label                | booleanValue | customMetaDataApiName    |
      | m031C000000XZY2QAO | URL Validation Regex | true         | GNT__KeyValueHolder__mdt |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I enter value "http://schools.utah.gov/eseastateinitiatives/schoolimprovement?mid=1384&tid=1" into field "fieldURL__c"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I softly see link "http://schools.utah.gov/eseastateinitiatives/schoolimprovement?mid=1384&tid=1" inside Page block

  @105141    @validateURLFieldAtRolesAndResponsilitiesModalWindow-gPlanning @wip
  Scenario Outline: validate URL field at roles and responsibility view modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ProgramRolesAndResponsibilities |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
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
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see bulb icon at header instruction is displayed

  @111900    @verifyBulbIconAtHeaderInstructionTextInsidePageLayoutForPMUser-gApplication
  Scenario: verify bulb icon at header instruction text at program detail page for pm user at application phase
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    Then I see bulb icon at header instruction is displayed

  @112569   @validateRequiredForSubmitSymbolAtPageBlockDetailForDescriptionField-gPlanning
  Scenario: validate required for submit icon at description Field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17363                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see required for submit symbol as "fa-exclamation-triangle" at "fieldObjectives__c" field

  @112540   @validateRequiredForSubmitSymbolAtPageBlockDetailForDescriptionFieldForPMUser-gPlanning
  Scenario: validate required for submit icon at description Field for PM user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17363                  |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see required for submit symbol as "fa-exclamation-triangle" at "fieldObjectives__c" field

  @112009  @validateFieldMessageDisplayedAtHeaderForRequiredForSubmitAndSaveFieldsForPMUser-gPlanning
  Scenario: validate field message displayed for required for save and submit Field at page header for PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @112563    @requiredForSaveBehaviourAtPageBlockDetailForPMUser-gPlanning
  Scenario: Changing value for required for save behaviour field from config and checking error message at program save for PM user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-17330                  |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "StartDate__c"
    When I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Project Period Start Date is required to save under Overview. |

  @113064    @requiredForSaveBehaviourAtPageBlockDetailForSPIUser-gPlanning
  Scenario: Changing value for required for save behaviour field from config and checking error message at program save for SPI user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Recipient ApplicationView | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Recipient ApplicationView | Name                      | PBD-19851                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "Edit" icon for "New Application For Testing Only" inside table
    When I clear the value from field "fieldCity__c"
    When I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | City is required to save under Overview. |

  @112010   @validateFieldMessageDisplayedAtHeaderForRequiredForSubmitAndSaveFieldsForPMUser-gPlanning
  Scenario: validate field message displayed for required for save and submit Field at page header for PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on top right button "New" in flex table with id "Programs"
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @113061    @verifyBadgesShownAtOverviewTabInEditModeIfRequiredForSubmitFieldIsBlankForAdminUser-gPlanning
  Scenario: verify that badges shown at Overview tab in page edit mode if required field from overview tab is blank
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-23990                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see missing field badge on "Overview" tab

  @112571    @verifyBadgesShownAtOverviewTabInEditLayoutIfRequiredForSubmitFieldIsBlankByLoginAsSPIUser
  Scenario: verify that badges shown at Overview tab in page edit mode if required field from overview tab is blank by login as SPI user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Recipient ApplicationView | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Recipient ApplicationView | Name                      | PBD-19851                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "Edit" icon for "New Application For Testing Only" inside table
    When I navigate to "Overview" sub tab
    When I clear the value from field "fieldCity__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I see missing field badge on "Overview" tab

  @112546    @verifyBadgesShownAtOverviewTabInViewLayoutIfRequiredForSubmitFieldIsBlankForAdminUser-gPlanning
  Scenario: verify that badges shown at Overview tab in page view mode if required field from overview tab is blank for admin user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-23990                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see missing field badge on "Overview" tab

  @112562    @verifyBadgesShownAtOverviewTabInViewLayoutIfRequiredForSubmitFieldIsBlankForPMUser-gPlanning
  Scenario: verify that badges shown at Overview tab in page view mode if required field from overview tab is blank for PM user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-23990                  |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see missing field badge on "Overview" tab

  @112558    @verifyBadgesShownAtOverviewTabInEditModeIfRequiredForSubmitFieldIsBlankForPMUser-gPlanning
  Scenario: verify that badges shown at Overview tab in page edit mode if required field from overview tab is blank for PM user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-23990                  |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    Then I see missing field badge on "Overview" tab

  @112370    @verifyBadgesShownAtOverviewTabInEditLayoutIfRequiredForSubmitFieldIsBlankForPMUser-gPlanning
  Scenario: verify that badges shown at Overview tab in page edit mode if required field from overview tab is blank for PM user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-23990                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see missing field badge on "Overview" tab

  @112363    @verifyThatAdminUserIsAbleToAccessChatterNativePage-gPlanning @wip
  Scenario Outline: verify that admin user is able to access chatter native page
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to url "<URL_Value>"
    Then I see "chatterPage" page displayed

    Examples:
      | URL_Value                                                    |
      | https://login.salesforce.com/_ui/core/chatter/ui/ChatterPage |

  @112373  @verifyBadgesShownAtOverviewTabInViewLayoutIfRequiredForSubmitFieldIsBlankByLoginAsSPIUser
  Scenario: verify that badges shown at Overview tab in page view mode if required field from overview tab is blank by login as SPI user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Recipient ApplicationView | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Recipient ApplicationView | Name                      | PBD-19851                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I see missing field badge on "Overview" tab

  @112913    @verifyHelpTextAtAtPageBlockSeperator-gPlanning @skipOnJenkins @wip
  Scenario Outline: Changing content of help text long field at page block seperator type of block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | Grantor State Program | Name                      | PBD-23602                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Grantor State Program | Name                      | PBD-23602                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I hovering mouse on help text icon inside "Test Page Block1"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText             | old_helpText |
      | Help Text for Automation | Help Text    |

  @113065    @verifyHelpTextAtAtPageBlockSeperatorForPMUser-gPlanning @skipOnJenkins @wip
  Scenario Outline: Changing content of help text long field at page block seperator type of block from config and validating it at program detail page for PM user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | Grantor State Program | Name                      | PBD-23602                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Grantor State Program | Name                      | PBD-23602                  |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I hovering mouse on help text icon inside "Test Page Block1"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText             | old_helpText |
      | Help Text for Automation | Help Text    |

  @113066    @verifyHelpTextAtAtPageBlockSeperatorForSPIUser-gPlanning
  Scenario Outline: Changing content of help text long field at page block seperator type of block from config and validating it at program detail page for SPI user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | Recipient ApplicationView | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | Recipient ApplicationView | Name                      | PBD-24003                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Recipient ApplicationView | Name                      | PBD-24003                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I hovering mouse on help text icon inside "Test Automation Seperator SPI"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText             | old_helpText |
      | Help Text for Automation | Help Text    |

  @112368    @verifyBadgesShouldNotDisplayedAtOverviewTabInEditLayoutIfAllTheRequiredForSubmitFieldsAreFilledForAdminUser-gPlanning
  Scenario: verify that badges are not displayed at Overview tab in page edit mode if all required for submit fields all filled for admin user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17107                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I do not see missing field badge on "Overview" tab

  @114071    @verifyDisplayOfBadgesIfReqFieldProjectGoalIsHiddenByUsingHideFieldJSONOnPicklistFieldValueFromConfig
  Scenario: verify display of badges if req field is hidden by using hide field json at picklist field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HideBadgesIfReqFieldIsHiddenOnTheBasisOfPicklistFieldValue | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                         | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114073    @verifyDisplayOfBadgesIfReqTextFieldIsHiddenByUsingHideFieldJSONOnPicklistFieldValueAsCooperativeAgreement
  Scenario: verify display of badges if req field is hidden by using hide field json at picklist field for value as Cooperative Agreement
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                                                   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HideBadgesIfReqFieldIsHiddenOnTheBasisOfPicklistFieldValueCooperativeAgreement | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                                             | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Cooperative Agreement" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114084    @verifyDisplayOfBadgesIfMultipleReqtFieldsIsHiddenByUsingHideFieldJSONOnPicklistFieldValue
  Scenario: verify display of badges if multiple req fields is hidden by using hide field json at picklist field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HideBadgesIfMultipleReqFieldIsHiddenOnTheBasisOfPicklistFieldValue | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                                 | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly see "Project Period Start Date" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114096    @verifyDisplayOfBadgesIfReqFieldProjectGoalIsHiddenByUsingHideFieldJSONNotEqualsToOnPicklistFieldValueFromConfig
  Scenario: verify display of badges if req field is hidden by using hide field json not equals to operator at picklist field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesIfReqFieldIsHiddenOnTheBasisOfPicklistFieldValueUsingNotOperator | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                                           | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114195    @verifyDisplayOfBadgesIfReqFieldProjectGoalIsHiddenByUsingHideFieldJSONPicklistFieldValueIfValueIsProjectGrants
  Scenario: verify display of badges if req field is hidden by using hide field json at picklist field if value is project grants
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesIfReqFieldIsHiddenOnTheBasisOfPicklistFieldValueAsGrant | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                                  | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114203    @verifyDisplayOfBadgesIfReqFieldProjectGoalIsHiddenByUsingHideFieldJSONNotEqualsToPicklistFieldValueFromConfigInEditMode
  Scenario: verify display of badges if req field is hidden by using hide field json not equals to operator at picklist field in edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesIfReqFieldIsHiddenOnTheBasisOfPicklistFieldValueUsingNotOperator | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                                           | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114198    @verifyDisplayOfBadgesIfMultipleReqtFieldsAsPicklistAndTextIsHiddenByUsingHideFieldJSONOnPicklistFieldValue
  Scenario: verify display of badges if multiple req fields as picklist and text are hidden by using hide field json at picklist field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HideBadgesIfMultipleReqFieldAsPicklistAndTextAreHiddenOnTheBasisOfPicklistFieldValue | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                                                   | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly see "Primary Funder Type" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114220    @verifyDisplayOfBadgesIfSubmitReqFieldIsHiddenUsingNotEqualsOperatorAndSaveReqFieldUsingEqualsOperator
  Scenario: verify display of badges if req field is hidden usig not equals operator and save req field hidden by equals operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination1 | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    And I enter value "Loan" into field "Type__c"
    Then I softly see "Primary Funder Type" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114195    @verifyDisplayOfBadgesIfMultipleReqForSaveAndSubmitFieldsAresHiddenUsingHideFieldJSON
  Scenario: verify badges are hidden if req for save and submit fields are hidden
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination2 | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly see "Project Period Start Date" is not displayed inside page block detail
    Then I softly see "Project Period End Date" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @111861    @verifyDisplayOfBadgesIfMultipleReqForSaveAndSubmitFieldsAresHiddenUsingHideFieldJSONCombinations
  Scenario: verify badges are hidden if req for save and submit fields are hidden using hide field json combinations
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination3 | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Block Grants" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    And I enter value "Formula Grants" into field "Type__c"
    Then I softly see "Primary Funder Type" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114380    @verifyTitleAndBadgeIsNotDisplayedIfReqForSubmitFieldIsHideUsingPicklistFieldInViewMode
  Scenario: verify badge is hidden from overview tab if title fields is hidden using hide field json on picklist field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination4 | Grantor State Program | Name                      | PBD-24005                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantor State Program | Name                      | PBD-17333                  |
    When I click on "Edit" in the page details
    And I enter value "NGO" into field "FunderType__c"
    Then I softly see "Title" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114412    @verifyTitleAndBadgeIsNotDisplayedIfSaveAndSubmitReqFieldsAreHidddenUsingPicklistFieldInEditMode
  Scenario: verify badge is hidden from overview tab if picklist and goal fields are hidden using hide field json on picklist field in edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination5 | Grantor State Program | Name                      | PBD-24005                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "NGO" into field "FunderType__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I softly see "Program Type" is not displayed inside page block detail
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly do not see missing field badge on "Overview" tab

  @114212    @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingNumberFieldInViewMode
  Scenario: verify badge is hidden from overview tab if text field hidden using hide field json on number field in value in view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination6 | Grantor State Program | Name                      | PBD-23985                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "123" into field "Number__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly do not see missing field badge on "Overview" tab

  @114215    @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenByUsingURLFieldInViewMode
  Scenario: verify badge is hidden from overview tab if text field hidden using hide field json at URL field in value in view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination7 | Grantor State Program | Name                      | PBD-17398                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "www.google.com" into field "WebsiteAddress__c"
    When I click on "Save" in the page details
    Then I softly see field "Project Goals" inside page block
    Then I softly do not see missing field badge on "Overview" tab

  @114199    @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingTEXTFieldInViewMode
  Scenario: verify badge is hidden from overview tab if text field hidden using hide field json on text field in value in view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination8 | Grantor State Program | Name                      | PBD-24004                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "ABC" into field "Authorization__c"
    When I click on "Save" in the page details
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly do not see missing field badge on "Overview" tab

  @114372   @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingDateFieldInViewMode @wip
  Scenario: verify badge is hidden from overview tab if text field hidden using hide field json on date field in value in view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination9 | Grantor State Program | Name                      | PBD-23989                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "11/12/2020" into field "Publisheddate__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114219   @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingNumberFieldValueInViewModeUsingNotEqualsOperator
  Scenario: verify badge is hidden from overview tab if text field hidden using hide field json on number field with not in operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination10 | Grantor State Program | Name                      | PBD-23985                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "123" into field "Number__c"
    When I click on "Save" in the page details
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly do not see missing field badge on "Overview" tab

  @114218    @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingURLFieldForNotEqualsOperator
  Scenario: verify badge is hidden from overview tab if text field hidden using hide field json on URL field for not equals operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination7 | Grantor State Program | Name                      | PBD-17398                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "www.google.comm" into field "WebsiteAddress__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @111861    @verifyDisplayOfBadgesIfMultipleReqForSaveAndSubmitFieldsAresHiddenUsingHideFieldJSONCombinations
  Scenario: verify badges are hidden if req for save and submit fields are hidden using hide field json combinations
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination3 | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    And I enter value "Project Grants" into field "Type__c"
    Then I softly see "Primary Funder Type" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114231    @verifyDisplayOfBadgesIfReqFieldProjectGoalIsHiddenByUsingHideFieldJSONOnPicklistFieldValueFromConfigForPMUser
  Scenario: verify display of badges if req field is hidden by using hide field json at picklist field for PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HideBadgesIfReqFieldIsHiddenOnTheBasisOfPicklistFieldValue | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                                         | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114211    @verifyDisplayOfBadgesToPMUserIfReqFieldProjectGoalIsHiddenByUsingHideFieldJSONNotEqualsOperatorOnPicklistFieldValueFromConfigFor
  Scenario: verify display of badges to PM user if req field is hidden by using not equals operator for PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination12 | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114216    @verifyDisplayOfBadgesToPMUserIfMultipleReqFieldsAreHiddenByUsingHideFieldJSONOnPicklistFieldValueFromConfig
  Scenario: verify display of badges if multiple req fields are hidden for PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination5 | Grantor State Program | Name                      | PBD-24005                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                  | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "NGO" into field "FunderType__c"
    Then I softly see "Program Type" is not displayed inside page block detail
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114502    @verifyDisplayOfBadgesToPMUserIfMultipleReqFieldsAreHiddenByUsingHideFieldJSONOnPicklistFieldValueFromConfig
  Scenario: verify display of badges by hiding date,picklist,text field using hide field JSON
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination13 | Grantor State Program | Name                      | PBD-24005                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantor State Program | Name                      | PBD-23990                  |
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination14 | Grantor State Program | Name                      | PBD-24005                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantor State Program | Name                      | PBD-23990                  |
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
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination15 | Grantor State Program | Name                      | PBD-17097                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I enter value "Department of Community Health" into field "Account__c"
    Then I softly see "Program Type" is not displayed inside page block detail
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114537   @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingDateAndNumberFieldUsing2DifferentJSONInEditMode
  Scenario: verify badge is hidden from overview tab if text field hidden using 2 different JSON on date, text field in edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination6  | Grantor State Program | Name                      | PBD-23985                  |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination16 | Grantor State Program | Name                      | PBD-23989                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I pause execution for "5" seconds
    And I enter value "12/11/2020" into field "fieldStartDate__c"
    And I enter value "123" into field "fieldNumber__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I softly see "Project Goals" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab

  @114989    @verifyPageBlockSeperatorDisplayedForSPIUser-gPlanning
  Scenario: verify page block seperator displayed at SPI user if is active field is checked for record type as page block seperator
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Recipient ApplicationView | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Recipient ApplicationView | Name                      | PBD-24003                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I see "Test Automation Seperator SPI" page block displayed

  @114538   @verifyTitleAndBadgeIsNotDisplayedIfTextIsHidddenUsingDateAndNumberFieldUsing2DifferentJSONInViewMode
  Scenario: verify badge is hidden from overview tab if text field hidden using 2 different JSON on date, text field in view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination6  | Grantor State Program | Name                      | PBD-23985                  |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination16 | Grantor State Program | Name                      | PBD-23989                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    And I pause execution for "5" seconds
    And I enter value "12/11/2020" into field "fieldStartDate__c"
    And I enter value "123" into field "fieldNumber__c"
    When I click on "Save" in the page details
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly do not see missing field badge on "Overview" tab

  @115588    @verifySpecialCharacterInHelpTextAtAtPageBlockSeperator-gPlanning @skipOnJenkins @wip
  Scenario Outline:validate special characters are accepted in help text field at page block seperator type of block at detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | Grantor State Program | Name                      | PBD-23602                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Grantor State Program | Name                      | PBD-23602                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I hovering mouse on help text icon inside "Test Page Block1"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText                 | old_helpText |
      | Help Text @#$ for Automation | Help Text    |

  @115592    @verifySpecialCharaterInHelpTextAtAtPageBlockSeperatorForSPIUser-gPlanning
  Scenario Outline:validate special characters are accepted in help text field at page block seperator type of block at detail page for SPI user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | Grantor State Program | Name                      | PBD-24003                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Grantor State Program | Name                      | PBD-24003                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I hovering mouse on help text icon inside "Test Automation Seperator SPI"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText                 | old_helpText |
      | Help Text for @#$ Automation | Help Text    |

  @115664 @verifyThatVeryDarkBlueColorIsDisplayedAtPhasesTabForAdminUser-StateAsAGrantor
  Scenario: verify that very dark blue color is displayed as background for phases tab for admin user-StateAsAGrantor
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see phase tab has "Very Dark Blue" background color

  @115665 @verifyThatVeryDarkBlueColorIsDisplayedAtPhasesTabForSPIUser-StateAsAGrantor
  Scenario: verify that very dark blue color is displayed as background for phases tab for SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I see phase tab has "Very dark cyan" background color

  @116346    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistBlankValueUsingHideFiledJSON | Grantor State Program | Name                      | PBD-23990                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "--None--" into field "ProgramSubType__c"
    And I click on "Save" in the page details
    Then I see "Project Goals" is not displayed inside page block detail

  @117880    @verifyFaviconIconDisplayedAtBrowserTab
  Scenario: verify favicon icon displayed at browser tab
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I softly see FaviconIcon at "Planning" browser tab
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    Then I softly see FaviconIcon at "Applications" browser tab
    And I navigate to "Grants" tab
    Then I softly see FaviconIcon at "Grants" browser tab

  @117808    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueAsFormulaLoansInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value as formula loans in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistValueUsingHideFiledJSON | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "Project Grants" into field "Type__c"
    And I enter value "Formula Grants" into field "ProgramSubType__c"
    And I click on "Save" in the page details
    Then I see "Project Goals" is not displayed inside page block detail

  @117805    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueAsBlankAndUsingNotEqualsOperatorInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value as blank and using not equals operator in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                                   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistBlankValueUsingHideFiledJSONNotEqualsOperator | Grantor State Program | Name                      | PBD-23994                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "Formula Grants" into field "Type__c"
    And I enter value "Formula Grants" into field "ProgramSubType__c"
    And I click on "Save" in the page details
    Then I see "Project Goals" is not displayed inside page block detail

  @117809    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueAndUsingMultipleConditionsInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistValueUsingHideFiledJSONMultipleCondition | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "Project Grants" into field "Type__c"
    And I enter value "Formula Grants" into field "ProgramSubType__c"
    And I click on "Save" in the page details
    Then I see "Project Goals" is not displayed inside page block detail

  @117813    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueAndUsingNotEqualsOperatorInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value and using multiple conditions in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistValueUsingHideFiledJSONNotEqualsOperator | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "" into field "ProgramSubType__c"
    And I click on "Save" in the page details
    Then I see "Project Goals" is not displayed inside page block detail

  @119856  @validateFieldMessageDisplayedAtHeaderForRequiredForSubmitAndSaveFieldsForAdminUserAtEditPage-gPlanning
  Scenario: validate field message displayed for required for save and submit Field at page header for admin user at edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Active Grants"
    When I perform quick search for "Automation Direct Grant"
    When I click on "Edit" icon for "Automation Direct Grant" inside table
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @119858  @validateFieldMessageDisplayedAtHeaderForRequiredForSubmitAndSaveFieldsForAdminUserAtEditModal-gPlanning
  Scenario: validate field message displayed for required for save and submit Field at page header for admin user at modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "New" in flex table with id "ActiveFundingOpportunities"
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @119859    @requiredToSaveBehaviourAtModalWindowIfDataInAnyRequiredFieldIsMissing-gPlanning
  Scenario: validate req to save error message at announcement create modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "New" in flex table with id "flexTableDivId"
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
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-23997                  |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-13668                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1> | Annoucement Profile-FOA | Name                      | PBD-23997                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText2> | Annoucement Profile-FOA | Name                      | PBD-13668                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "Description" page block
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
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-23997                  |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-13668                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1> | Annoucement Profile-FOA | Name                      | PBD-23997                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText2> | Annoucement Profile-FOA | Name                      | PBD-13668                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "Description" page block
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
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-23997                  |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-13668                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1> | Annoucement Profile-FOA | Name                      | PBD-23997                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText2> | Annoucement Profile-FOA | Name                      | PBD-13668                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "Description" page block
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
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-23997                  |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-13668                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText1> | Annoucement Profile-FOA | Name                      | PBD-23997                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText2> | Annoucement Profile-FOA | Name                      | PBD-13668                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "Description" page block
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
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField      | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Annoucement Profile-FOA | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Annoucement Profile-FOA | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText2>   | Annoucement Profile-FOA | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue   | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-23997                  |
      | Page Block Config:Page Block Rule Detail | Is Active      | true            | Annoucement Profile-FOA | Name                      | PBD-13668                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText2> | Annoucement Profile-FOA | Name                      | PBD-13668                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "Description" page block
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
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-23997                  |
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-13668                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <default_helpText2> | Annoucement Profile-FOA | Name                      | PBD-13668                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "Description" page block
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
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-23997                  |
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-13668                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <default_helpText1> | Annoucement Profile-FOA | Name                      | PBD-13668                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "Description" page block
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
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-23997                  |
      | Page Block Config:Page Block Rule Detail | Is Active      | true                | Annoucement Profile-FOA | Name                      | PBD-13668                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <default_helpText1> | Annoucement Profile-FOA | Name                      | PBD-13668                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon at "Status" inside "Description" page block
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
      | Page Layout:General   | Page Instruction Text | Automation Instruction Text | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
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
      | Page Layout:General   | Page Instruction Text | Automation Instruction Text | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
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
      | Page Layout:General   | Page Instruction Text | Automation Instruction Text | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I softly see bulb icon at header instruction is displayed
    And I refresh the page
    Then I softly see "Automation Instruction Text" shown as page instruction text

  @120091    @verifyHelpTextAtVisualIndicatorShownAtTabInsidePageLayoutInViewMode-gPlanning
  Scenario: verify help text displayed on mouse hover at visual indicator at tab inside page layout in view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "ProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-23990                  |
    And I refresh the page
    Then I see "Missing fields information" shown as help text at visual indicator inside page layout

  @120089    @verifyHelpTextAtVisualIndicatorShownAtTabInsidePageLayoutInEditMode-gPlanning
  Scenario: verify help text displayed on mouse hover at visual indicator at tab inside page layout in edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-23990                  |
    When I click on "Edit" in the page details
    Then I see "Missing fields information" shown as help text at visual indicator inside page layout

  @120233    @validateLoadingIconIsNotDisplayedAtAddNotesModalWindowInViewMode
  Scenario: validate loading icon is not displayed at add Notes modal window when record is in view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    When I click on top right button "Add" in notes and attachment with name "Notes"
    And I wait for "5" seconds
    Then I do not see loading icon at "Add Notes" modal

  @120235    @validateLoadingIconIsNotDisplayedAtAddNotesModalWindowInEditMode
  Scenario: validate loading icon is not displayed at add Notes modal window when record is in edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    When I click on top right button "Add" in notes and attachment with name "Notes"
    And I wait for "5" seconds
    Then I do not see loading icon at "Add Notes" modal

  @120234    @validateLoadingIconIsNotDisplayedAtAddAttachmentModalWindowInViewMode
  Scenario: validate loading icon is not displayed at add attachment modal window when record is in view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    When I click on top right button "Add" in notes and attachment with name "Files"
    And I wait for "5" seconds
    Then I do not see loading icon at "Add Attachments" modal

  @120236    @validateLoadingIconIsNotDisplayedAtAddAttachmentsModalWindowInEditMode
  Scenario: validate loading icon is not displayed at add Attachments modal window when record is in edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    When I click on top right button "Add" in notes and attachment with name "Files"
    And I wait for "5" seconds
    Then I do not see loading icon at "Add Attachments" modal

  @120450    @validateNotesIsAddedSuccessfullyUsingAddNotesButton
  Scenario: validate Notes are getting added successfully using add button
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    When I click on "Delete" icon for "Notes Record" inside table
    When I click "Yes" on modal confirmation box
    And I click modal button "Ok"
    And I pause execution for "5" seconds
    When I add notes records
    When I close modal by clicking the top right x button
    Then I see table with header "Notes" contains records "Notes Record"

  @120237p    @validateLoadingIconIsNotDisplayedAtAssociateModalWindowInEditMode
  Scenario: validate loading icon is not displayed at associate modal at flex table when record is in edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:ContactPatchTableId---"
    And I pause execution for "5" seconds
    Then I do not see loading icon at "Associate" modal

  @120239    @validateLoadingIconIsNotDisplayedAtAssociateModalWindowInViewMode
  Scenario: validate loading icon is not displayed at associate modal at flex table when record is in view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:ContactPatchTableId---"
    And I wait for "5" seconds
    Then I do not see loading icon at "Associate" modal

  @120241    @validateLoadingIconIsNotDisplayedAtAddNotesModalWindowInViewModeByLoginAsExternalUser
  Scenario: validate loading icon is not displayed at add Notes modal window when record is in view mode by login as external user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Files" sub tab
    When I click on top right button "Add" in notes and attachment with name "Notes"
    And I wait for "5" seconds
    Then I do not see loading icon at "Add Notes" modal

  @120242    @validateLoadingIconIsNotDisplayedAtAddAttachmentsModalWindowInViewModeByLoginAsExternalUser
  Scenario: validate loading icon is not displayed at add attachments modal window when record is in view mode by login as external user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Files" sub tab
    When I click on top right button "Add" in notes and attachment with name "Files"
    And I wait for "7" seconds
    Then I do not see loading icon at "Add Attachments" modal

  @120451    @validateAlertMessageNotDisplayedAtNotesIfAllRequiredFieldsAreFilledWhileEditingRecord
  Scenario: validate are getting edited successfully without throwing alert message if all required fields are filled
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I pause execution for "7" seconds
    When I navigate to "Files" sub tab
    When I click on "Edit" icon for "Automation Notes" inside table
    And I close modal by clicking the top right x button
    Then I cannot see the following messages in the page details contains:
      | required fields missing:[Parent Id] |

  @120452    @validateAlertMessageNotDisplayedAtNotesIfAllRequiredFieldsAreFilledWhileAddingNewRecord
  Scenario: validate records are getting added successfully without throwing alert message if all required fields are filled
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    When I click on "Delete" icon for "Notes Record" inside table
    When I click "Yes" on modal confirmation box
    And I click modal button "Ok"
    When I add notes records
    Then I cannot see the following messages in the page details contains:
      | required fields missing:[Parent Id] |

  @120516  @VerifyMiniPageLayoutShouldDisplayedProperlyOnMouseHoverAtPageDetailInEditMod
  Scenario: validate that mini page layout is getting displayed properly on mouse hover at page detail in edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    When I hover mouse on lookup link "Department of Community Health"
    And I pause execution for "3" seconds
    Then I softly see title at miniPageLayout is displayed as bold and left aligned
    Then I softly see value at miniPageLayout is displayed as bold and left aligned

  @120519  @VerifyMiniPageLayoutShouldDisplayedProperlyOnMouseHoverAtModalWindow @wip
  Scenario: validate that mini page layout is getting displayed properly on mouse hover at modal window
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Roles" sub tab
    When I click on "View" icon for "Program Approver" inside table
    And I pause execution for "3" seconds
    And I switch to iframe with id "ProgramRolesAndResponsibilitiesiframeContentId"
    When I hover mouse on lookup link "Automation PM"
    And I pause execution for "2" seconds
    Then I softly see title at miniPageLayout is displayed as bold and left aligned
    Then I softly see value at miniPageLayout is displayed as bold and left aligned

  @120517  @VerifyMiniPageLayoutShouldDisplayedProperlyOnMouseHoverAtEnhancedGridLookupValue @wip
  Scenario: validate that mini page layout is getting displayed properly on mouse hover at enhanced grid lookup value
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Test Demo" in "---program:-:flexGridEnhancedID---" panel
    When I hover mouse on lookup link "Child Development Centre" at table
    And I pause execution for "2" seconds
    Then I softly see title at miniPageLayout is displayed as bold and left aligned
#    Then I softly see value at miniPageLayout is displayed as bold and left aligned

  @120515  @VerifyMiniPageLayoutShouldDisplayedProperlyOnMouseHoverAtFlexTableLookupValue @skipOnJenkins @wip
  Scenario: validate that mini page layout is getting displayed properly on mouse hover at table lookup value
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Allen PM" in "toggleFlexTableProgramContacts" panel
    When I hover mouse on lookup link "Allen PM" at table
    And I pause execution for "3" seconds
    Then I softly see title at miniPageLayout is displayed as bold and left aligned
#    Then I softly see value at miniPageLayout is displayed as bold and left aligned

  @120518  @VerifyMiniPageLayoutShouldDisplayedProperlyOnMouseHoverAtMeGridLookupValue @skipOnJenkins  @wip
  Scenario: validate that mini page layout is getting displayed properly on mouse hover at ME Grid lookup value
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Direct Grant"
    When I click on "View" icon for "Automation Direct Grant" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I hover mouse on lookup link "Loans & Debt Payment" at grid
    Then I softly see title at miniPageLayout is displayed as bold and left aligned
    Then I softly see value at miniPageLayout is displayed as bold and left aligned

  @120455  @VerifyMiniPageLayoutShouldDisplayedProperlyOnMouseHoverAtSidebarLinks @skipOnJenkins @wip
  Scenario: validate that mini page layout is getting displayed properly on mouse hover at sidebar links
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    And I save the field labeled "EGMS ID" as "savedValue"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    When I hover mouse on lookup link "{SavedValue:savedValue}"
    And I pause execution for "3" seconds
    Then I softly see title at miniPageLayout is displayed as bold and left aligned
    Then I softly see value at miniPageLayout is displayed as bold and left aligned

  @121028  @VerifyMiniPageLayoutShouldDisplayedProperlyOnMouseHoverAtN2GridLookupValue @wip
  Scenario: validate that mini page layout is getting displayed properly on mouse hover at n2 grid lookup value
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                                    | filterId         |
      | Flex Grid             | Display Field Names | Type__c,Title__c,Description__c,Status__c,DueDate__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | Type__c,Title__c,Description__c,Status__c,DueDate__c,CreatedBy.Name | ProgramStrategicGoals |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Plan" sub tab
    When I hover mouse on lookup link "Nauman Shahid" at grid
    Then I softly see title at miniPageLayout is displayed as bold and left aligned
    Then I softly see value at miniPageLayout is displayed as bold and left aligned

  @121223  @verifyThatVisualIndicatorNotDisplayedAtProgramDetailPageIfReqForSaveFieldIsInactiveInEditMode
  Scenario: validate that visual indicator not displayed at detail page if req for save field is inactive in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Grantor State Program | Name                      | PBD-17100                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-17100                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I do not see missing field badge on "Overview" tab

  @121224  @verifyThatVisualIndicatorNotDisplayedAtProgramDetailPageIfReqForSaveFieldIsInactive
  Scenario: validate that visual indicator not displayed at detail page if req for save field is inactive
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Grantor State Program | Name                      | PBD-17100                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-17100                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I click on "Save" in the page details
    Then I do not see missing field badge on "Overview" tab

  @121225  @verifyThatVisualIndicatorNotDisplayedAtProgramDetailPageIfReqForSaveFieldIsHiddenInEditMode
  Scenario: validate that visual indicator not displayed at detail page if req for save field is hidden in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior    |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                                    | Grantor State Program | Name                      | PBD-17100                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior    | Required for Save                                                       | Grantor State Program | Name                      | PBD-17100                  |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HideExpressionAtPageBlockDetailFieldForVisualIndicator | Grantor State Program | Name                      | PBD-17100                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I do not see missing field badge on "Overview" tab

  @121226  @verifyThatVisualIndicatorNotDisplayedAtProgramDetailPageIfReqForSaveFieldIsHidden
  Scenario: validate that visual indicator not displayed at detail page if req for save field is hidden
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior    |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                                    | Grantor State Program | Name                      | PBD-17100                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior    | Required for Save                                                       | Grantor State Program | Name                      | PBD-17100                  |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HideExpressionAtPageBlockDetailFieldForVisualIndicator | Grantor State Program | Name                      | PBD-17100                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I do not see missing field badge on "Overview" tab

  @122001    @VerifyAtProgramCreationModalIfWeClickOnCancelButtonThenUserIsRedirectedToDraftProgramFlexTableWhenPageRedirectBehaviourIsSetToSaveAndContinue
  Scenario: Validate that a draft program table is displayed by click on cancel button at record creation if page redirected behaviour is set to save and continue
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Forms                 | Page Redirect Behaviour | Save              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Page Redirect Behaviour | Save and Continue | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    And I click on "Cancel" in the page details
    Then I see expected table with id "toggleFlexTablePrograms"

  @112364    @verifyThatPMUserIsAbleToAccessChatterNativePage-gPlanning @wip
  Scenario Outline: verify that PM user is able to access chatter native page
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to url "<URL_Value>"
    Then I see "chatterPage" page displayed

    Examples:
      | URL_Value                                                    |
      | https://login.salesforce.com/_ui/core/chatter/ui/ChatterPage |

  @125231  @VerifyMiniPageLayoutShouldDisplayedProperlyOnMouseHoverAtSidebarLinksWithLabelAndValue
  Scenario: validate that mini page layout is getting displayed properly on mouse hover at sidebar links with label and value
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    And I save the field labeled "EGMS ID" as "savedValue"
    When I hover mouse on lookup link "{SavedValue:savedValue}"
    And I pause execution for "3" seconds
    Then I softly see "Title" shown inside mini page layout on hover
    Then I softly see "Announcement for Testing" shown inside mini page layout on hover

  @125229  @VerifyMiniPageLayoutShouldDisplayedWithUnBoldValueOnMouseHoverAtSidebarLinks
  Scenario: validate that mini page layout is getting displayed without bold value on mouse hover at sidebar links
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    And I save the field labeled "EGMS ID" as "savedValue"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    When I hover mouse on lookup link "{SavedValue:savedValue}"
    And I pause execution for "3" seconds
    Then I see mini page layout value is displayed in normal text with "500" font-weight

  @125232  @VerifyMiniPageLayoutShouldDisplayedWithGreyBackgrounfOnMouseHoverAtSidebarLinks
  Scenario: validate that mini page layout is getting displayed withgrey background on mouse hover at sidebar links
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    And I save the field labeled "EGMS ID" as "savedValue"
    When I hover mouse on lookup link "{SavedValue:savedValue}"
    And I pause execution for "3" seconds
    Then I see mini page layout background is in grey color

  @112159  @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataAtPageLayout
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "Department of Children health" into field "fieldAccount__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @125696    @verifyByClickOnUserValueInEditModeItShouldRedirectedToRespectiveUserPageAtPageLayout-gPlanning @wip
  Scenario: validate by click on user value in edit mode , respective user page should get opens at page layout - gPlanning
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I click "Nauman Shahid" lookup link
    Then I see "User" shown as over view header

  @126061   @VerifyDisplayOfSidebarComponentAndLogoAtAdminUserIfAdminUserEntryIsDeletedFromUserPreferenceConfigCustomSetting @wip
  Scenario: Validating sidebar components, logo is rendering properly for ADMIN user even after deleting user entery from user preference config custom setting
    Given I delete the record "Nauman Shahid" from the object "GNT__UserPreferences__c" with field "SetupOwner.Name"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see govgrants logo "GovGrants Logo expanded" is displayed with name "Enterprise Grants Management System"
    Then I softly see "Tasks" at sidebar
    Then I softly see "Activities" at sidebar
    Then I softly see "Recently Viewed" at sidebar

  @126059   @VerifyDisplayOfSidebarComponentAndLogoAtPMUserIfAdminUserEntryIsDeletedFromUserPreferenceConfigCustomSetting @wip
  Scenario: Validating sidebar components, logo is rendering properly for PM user even after deleting user entery from user preference config custom setting
    Given I delete the record "Automation PM" from the object "GNT__UserPreferences__c" with field "SetupOwner.Name"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see govgrants logo "GovGrants Logo expanded" is displayed with name "Enterprise Grants Management System"
    Then I softly see "Tasks" at sidebar
    Then I softly see "Activities" at sidebar
    Then I softly see "Recently Viewed" at sidebar

  @126062   @VerifyDisplayOfSidebarComponentAndLogoAtExternalUserIfAdminUserEntryIsDeletedFromUserPreferenceConfigCustomSetting @wip
  Scenario: Validating sidebar components, logo is rendering properly for EXTERNAL user even after deleting user entery from user preference config custom setting
    Given I delete the record "Automation spi" from the object "GNT__UserPreferences__c" with field "SetupOwner.Name"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    Then I see govgrants logo "GovGrants Logo expanded" is displayed with name "Enterprise Grants Management System"
    Then I softly see "Tasks" at sidebar
    Then I softly see "Activities" at sidebar
    Then I softly see "Recently Viewed" at sidebar

  @126069   @VerifyDisplayOfHistoryTabTablesAndFormsLayoutAtPMUserIfAdminUserEntryIsDeletedFromUserPreferenceConfigCustomSetting
  Scenario: Validating history tables and forms under attachment tab are rendering properly for PM user even after deleting user entery from user preference config custom setting
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-23591                  |
    #Given I delete the record "Automation PM" from the object "GNT__UserPreferences__c" with field "SetupOwner.Name"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "History" sub tab
    Then I softly see expected table with id "toggleFlexTableHistory"
    Then I softly see the text :
      | Snapshot History |
    When I navigate to "Files" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    Then I see the header is "Application Simple" in the page details

  @125745    @verifyByClickOnUserValueInViewModeItShouldOpenInNewTabAtPageLayout-gPlanning
  Scenario: validate by click on user value in view , it should open in new tab at page layout - gPlanning
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I click "Nauman Shahid" lookup link
    Then I see new tab is opened

  @127792   @verifyThatUserCanFilterByPlanningPhaseUnderRefineFilterByPhaseDropdown-gDashboard
  Scenario: validate that User should able to filter by using planning phase - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Standard Reports" content inside "Activities" subheader on left panel
    When I click on By phase dropdown at dashboard
    And I select "Planning" and click at "Apply Filter"
    Then I softly see value "Internal Program Statistics" for title "Report Name" inside table "Reports"
    Then I softly do not see value "Funding Decision Memo with Application" for title "Report Name" inside table "Reports"

  @127793   @verifyThatUserCanFilterByAnnouncementPhaseUnderRefineFilterByPhaseDropdown-gDashboard
  Scenario: validate that User should able to filter by using Announcement phase - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Standard Reports" content inside "Activities" subheader on left panel
    When I click on By phase dropdown at dashboard
    And I select "Announcements" and click at "Apply Filter"
    Then I softly see value "Announcement Details" for title "Report Name" inside table "Reports"
    Then I softly do not see value "Internal Program Statistics" for title "Report Name" inside table "Reports"

  @127794   @verifyThatUserCanFilterByApplicationPhaseUnderRefineFilterByPhaseDropdown-gDashboard
  Scenario: validate that User should able to filter by using Applications phase - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Standard Reports" content inside "Activities" subheader on left panel
    When I click on By phase dropdown at dashboard
    And I select "Applications" and click at "Apply Filter"
    Then I softly see value "Application Decision Report" for title "Report Name" inside table "Reports"
    Then I softly do not see value "Internal Program Statistics" for title "Report Name" inside table "Reports"

  @127795   @verifyThatUserCanFilterByApplicationAndGrantsBothPhasesUnderRefineFilterByPhaseDropdown-gDashboard @wip
  Scenario: validate that User should able to filter by using Applications and grants both phase - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Standard Reports" content inside "Activities" subheader on left panel
    When I click on By phase dropdown at dashboard
    And I select "Applications" and click at "Apply Filter"
    When I click on By phase dropdown at dashboard
    And I select "Grants" and click at "Apply Filter"
    Then I softly see value "Application Decision Report" for title "Report Name" inside table "Reports"
    When I perform quick search for "Grantor Applications by Status"
    Then I softly see value "Grantor Applications by Status" for title "Report Name" inside table "Reports"

  @127796   @verifyQuickSearchWorkingAtAnalyticsTabTable-gDashboard @wip
  Scenario: validate quick search working at analytics tab table - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Standard Reports" content inside "Activities" subheader on left panel
    When I click on By phase dropdown at dashboard
    And I select "Applications" and click at "Apply Filter"
    When I click on By phase dropdown at dashboard
    And I select "Grants" and click at "Apply Filter"
    When I perform quick search for "Grantor Applications by Status"
    Then I softly see value "Grantor Applications by Status" for title "Report Name" inside table "Reports"

  @127797   @verifyThatUserCanFilterByMultiplePhasesUnderRefineFilterByPhaseDropdown-gDashboard @wip
  Scenario: validate that User should able to filter by using multiple phase - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Standard Reports" content inside "Activities" subheader on left panel
    When I click on By phase dropdown at dashboard
    And I select "Applications" and click at "Apply Filter"
    When I click on By phase dropdown at dashboard
    And I select "Grants" and click at "Apply Filter"
    When I click on By phase dropdown at dashboard
    And I select "Monitoring" and click at "Apply Filter"
    When I click on By phase dropdown at dashboard
    And I select "Closeout" and click at "Apply Filter"
    When I perform quick search for "Application Decision Report"
    Then I softly see value "Application Decision Report" for title "Report Name" inside table "Reports"
    When I perform quick search for "Grantor Applications by Status"
    Then I softly see value "Grantor Applications by Status" for title "Report Name" inside table "Reports"
    When I perform quick search for "Closeout Request by Status"
    Then I softly see value "Closeout Request by Status" for title "Report Name" inside table "Reports"
    When I perform quick search for "Grantor Progress Report Pending by Month"
    Then I softly see value "Grantor Progress Report Pending by Month" for title "Report Name" inside table "Reports"

  @127799   @verifyThatUserCanFilterByAllPhasesUnderRefineFilterByPhaseDropdown-gDashboard @wip
  Scenario: validate that User should able to filter by using ALL phase - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Standard Reports" content inside "Activities" subheader on left panel
    When I click on By phase dropdown at dashboard
    And I select "All" and click at "Apply Filter"
    When I perform quick search for "Application Decision Report"
    Then I softly see value "Application Decision Report" for title "Report Name" inside table "Reports"
    When I perform quick search for "Grantor Applications by Status"
    Then I softly see value "Grantor Applications by Status" for title "Report Name" inside table "Reports"
    When I perform quick search for "Closeout Request by Status"
    Then I softly see value "Closeout Request by Status" for title "Report Name" inside table "Reports"
    When I perform quick search for "Grantor Progress Report Pending by Month"
    Then I softly see value "Grantor Progress Report Pending by Month" for title "Report Name" inside table "Reports"

  @127821   @verifyTAdvanceFilterWorkingAtAnalyticsPhase-gDashboard @wip
  Scenario: validate advance filter working at analytics tab table - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Standard Reports" content inside "Activities" subheader on left panel
    When I click on advance filter "#advfReports" of table id "Reports"
    When I enter advance filter values inside id "advfReports"
      | Report Name | Starts with | Application Decision |
    Then I see value "Application Decision Report" for title "Report Name" inside table "Reports"

  @127822   @verifyClearAllButtonWorkingAtAnalyticsPhase-gDashboard
  Scenario: validate clear all button working at analytics tab table - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Standard Reports" content inside "Activities" subheader on left panel
    When I click on By phase dropdown at dashboard
    And I select "Applications" and click at "Apply Filter"
    When I perform quick search for "Grantor Award by Status"
    Then I softly see "No Records Found" inside flex table with id "Reports"
    When I click on By phase dropdown at dashboard
    And I select "Grants" and click at "Clear All"
    When I perform quick search for "Grantor Award by Status"
    Then I softly see value "Grantor Award by Status" for title "Report Name" inside table "Reports"

  @127823   @verifyViewActionAtStandardReportRecordUnderAnalyticsTable-gDashboard
  Scenario: validate view action is working at analytics tab table - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Standard Reports" content inside "Activities" subheader on left panel
    When I perform quick search for "Grantor Award by Status"
    When I click on "View" icon for "Grantor Award by Status" inside table
    Then I see the text :
      | Grantor Award by Status |

  @127943   @verifyTAdvanceFilterWithNotEqualsOperatorWorkingAtAnalyticsPhase-gDashboard
  Scenario: validate advance filter working with not equals operator at analytics tab table - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Standard Reports" content inside "Activities" subheader on left panel
    When I click on advance filter "#advfReports" of table id "Reports"
    When I enter advance filter values inside id "advfReports"
      | Format | Not equals to | Summary |
    When I perform quick search for "Summary"
    Then I see "No Records Found" inside flex table with id "Reports"

  @127947   @verifyViewActionAtCustomReportRecordUnderAnalyticsTable-gDashboard
  Scenario: validate view action at custom record is working at analytics tab table - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Custom Reports" content inside "Activities" subheader on left panel
    When I click on "View" icon for "testing" inside table
    Then I see the text :
      | testing |

  @127946   @verifyEditActionAtCustomReportRecordUnderAnalyticsTable-gDashboard @wip
  Scenario Outline: validate edit action at custom record is working at analytics tab table - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Custom Reports" content inside "Activities" subheader on left panel
    When I click on "Edit" icon for "testing" inside table
    Then I see "<EditPageURL>" in current url

    Examples:
      | EditPageURL                                                    |
      | https://ggptest5-dev-ed.my.salesforce.com/00O1C000005x0MOUAY/e |

  @128474    @verifySuccessMessageSetFromPageMessageConfirIsDisplayedAtViewPageLayoutInGreenColor @wip
  Scenario: validate success message set from page message config is displayed at view page layout in green color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User |               | Grantor State Program | Name                      | LM-0065                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Green" color:
      | TEST PAGE SUCCESS MSG DND |

  @128481    @verifySuccessMessageSetFromPageMessageConfirIsDisplayedAtEditPageLayoutInGreenColor @wip
  Scenario: validate success message set from page message config is displayed at edit page layout in green color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User |               | Grantor State Program | Name                      | LM-0065                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Green" color:
      | TEST PAGE SUCCESS MSG DND |

  @128496    @verifyInformationMessageSetFromPageMessageConfirIsDisplayedAtViewPageLayoutInBlueColor @wip
  Scenario: validate information message set from page message config is displayed at view page layout in blue color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User |               | Grantor State Program | Name                      | LM-0063                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Blue" color:
      | test is done for page layout |

  @128491    @verifyAlertMessageSetFromPageMessageConfirIsDisplayedAtViewPageLayoutInBrownColor @wip
  Scenario: validate alert message set from page message config is displayed at view page layout in brown color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User |               | Grantor State Program | Name                      | LM-0064                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Brown" color:
      | TEST PAGE ALERT MSG DND |

  @128493    @verifyInformationMessageSetFromPageMessageConfirgIsNotDisplayedWhenHideForContextAsEditIsSelected @wip
  Scenario: validate information message set from page message config is not displayed when Hide for context as Edit is selected
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User    | Internal          | ApiGeneratedId:0 |
      | Page Message Config   | Hide For Context |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User    |               | Grantor State Program | Name                      | LM-0063                    |
      | Page Message Config:Page Layout Action | Hide For Context | Edit          | Grantor State Program | Name                      | LM-0063                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see the following message in the page details :
      | TEST PAGE INFORMATION MSG DND |

  @128510    @verifyInformationMessageSetFromPageMessageConfirgIsNotDisplayedWhenHideForContextAsViewIsSelected @wip
  Scenario: validate information message set from page message config is not displayed when Hide for context as View is selected
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User    | Internal          | ApiGeneratedId:0 |
      | Page Message Config   | Hide For Context |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User    |               | Grantor State Program | Name                      | LM-0063                    |
      | Page Message Config:Page Layout Action | Hide For Context | View          | Grantor State Program | Name                      | LM-0063                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see the following message in the page details :
      | TEST PAGE INFORMATION MSG DND |

  @128904    @verifyWarningMessageSetFromPageMessageConfirIsDisplayedAtViewPageLayoutInRedColor @wip
  Scenario: validate warning message set from page message config is displayed at view page layout in red color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User |               | Grantor State Program | Name                      | LM-0066                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Red" color:
      | TEST PAGE WARNING MSG DND |

  @128906    @verifyMultipleInformationMessageSetFromPageMessageConfirgIsIsDisplayedAtViewPageLayoutInBlueColor @wip
  Scenario: validate multiple information message set from page message config is is displayed at view page layout in blue color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User |               | Grantor State Program | Name                      | LM-0063                    |
      | Page Message Config:Page Layout Action | Hide For User |               | Grantor State Program | Name                      | LM-0070                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Blue" color:
      | test is done for page layout    |
      | TEST PAGE INFORMATION MSG DND 1 |

  @128908    @verifyWarningMessageSetFromPageMessageConfirIsDisplayedAtEditPageLayoutInRedColor @wip
  Scenario: validate warning message set from page message config is displayed at edit page layout in red color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User |               | Grantor State Program | Name                      | LM-0066                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Red" color:
      | TEST PAGE WARNING MSG DND |

  @128910    @verifyErrorMessageSetFromPageMessageConfirIsDisplayedAtEditPageLayoutInPurpleColor @wip
  Scenario: validate error message set from page message config is displayed at edit page layout in purple color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User |               | Grantor State Program | Name                      | LM-0067                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Purple" color:
      | TEST PAGE ERROR MSG DND |

  @128911    @verifyErrorMessageSetFromPageMessageConfirIsNotDisplayedAtEditPageLayoutWhenHideForUserIsSelectedAsInternal @wip
  Scenario: validate error message set from page message config is not displayed at edit page layout when hide for user=iternal selected
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User | Internal      | Grantor State Program | Name                      | LM-0067                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see the following message in the page details :
      | TEST PAGE ERROR MSG DND |

  @129066    @verifyErrorMessageSetFromPageMessageConfigIsNotDisplayedAtViewPageLayoutWhenHideForUserIsSelectedAsInternal @wip
  Scenario: validate error message set from page message config is not displayed at view page layout when hide for user=iternal selected
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User | Internal      | Grantor State Program | Name                      | LM-0067                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see the following message in the page details :
      | TEST PAGE ERROR MSG DND |

  @129071    @verifyErrorMessageSetFromPageMessageConfigIsNotDisplayedAtViewPageLayoutWhenHideForProfileIsSelectedAsSysAdmin @wip
  Scenario: validate error message set from page message config is not displayed at view page layout when hide for profile = System Admin
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User    | Internal          | ApiGeneratedId:0 |
      | Page Message Config   | Hide For Profile |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User    |                      | Grantor State Program | Name                      | LM-0067                    |
      | Page Message Config:Page Layout Action | Hide For Profile | System Administrator | Grantor State Program | Name                      | LM-0067                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see the following message in the page details :
      | TEST PAGE ERROR MSG DND |

  @129072    @verifyErrorMessageSetFromPageMessageConfigIsNotDisplayedAtEditPageLayoutWhenHideForProfileIsSelectedAsSysAdmin @wip
  Scenario: validate error message set from page message config is not displayed at edit page layout when hide for profile = System Admin
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User    | Internal          | ApiGeneratedId:0 |
      | Page Message Config   | Hide For Profile |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User    |                      | Grantor State Program | Name                      | LM-0067                    |
      | Page Message Config:Page Layout Action | Hide For Profile | System Administrator | Grantor State Program | Name                      | LM-0067                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see the following message in the page details :
      | TEST PAGE ERROR MSG DND |

  @128492    @verifySuccessMessageSetFromPageMessageConfirIsDisplayedAtEditPageBlockInGreenColor @wip
  Scenario: validate success message set from page message config is displayed at edit page block in green color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                      | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Block Rule Detail | Hide For User |               | Grantor State Program | Name                      | LM-0071                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Green" color:
      | TEST PAGE BLOCK SUCCESS MSG DND |

  @128495    @verifyInformationMessageSetFromPageMessageConfirIsDisplayedAtViewPageBlockInBlueColor @wip
  Scenario: validate information message set from page message config is displayed at view page block in blue color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                      | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Block Rule Detail | Hide For User |               | Grantor State Program | Name                      | LM-0072                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Blue" color:
      | TEST PAGE BLOCK INFORMATION MSG DND |

  @128507    @verifyAlertMessageSetFromPageMessageConfirIsDisplayedAtEditPageBlockInBrownColor @wip
  Scenario: validate alert message set from page message config is displayed at edit page block in brown color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                      | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Block Rule Detail | Hide For User |               | Grantor State Program | Name                      | LM-0073                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Brown" color:
      | TEST PAGE BLOCK ALERT MSG DND |

  @128512    @verifyWarningMessageSetFromPageMessageConfirIsDisplayedAtEditPageBlockInRedColor @wip
  Scenario: validate warning message set from page message config is displayed at edit page block in red color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                      | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Block Rule Detail | Hide For User |               | Grantor State Program | Name                      | LM-0074                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I softly see the following messages in the page details contains:
      | TEST PAGE BLOCK WARNING MSG DND |

  @128515    @verifyErrorMessageSetFromPageMessageConfirIsDisplayedAtEditPageBlockInPurpleColor @wip
  Scenario: validate error message set from page message config is displayed at edit page block in purple color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                      | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Block Rule Detail | Hide For User |               | Grantor State Program | Name                      | LM-0075                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Purple" color:
      | TEST PAGE BLOCK ERROR MSG DND |

  @128516    @verifyInstructionMessageSetFromPageMessageConfirIsDisplayedAtViewPageBlock @wip
  Scenario: validate instruction message set from page message config is displayed at view page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                      | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Block Rule Detail | Hide For User |               | Grantor State Program | Name                      | LM-0076                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see the following message in the page details :
      | TEST PAGE BLOCK INSTRUCTION MSG DND |

  @130096    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtPageLayout
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I hover mouse on lookup link "Department of Community Health"
    And I pause execution for "3" seconds
    Then I softly see "title" as "Department of Community Health" inside mini page layout
    And I refresh the page
    When I navigate to "Overview" sub tab
    When I hover mouse on lookup link "Department of Community Health"
    And I pause execution for "3" seconds
    Then I softly see "Label" as "Code" inside mini page layout
    And I refresh the page
    When I navigate to "Overview" sub tab
    When I hover mouse on lookup link "Department of Community Health"
    And I pause execution for "3" seconds
    Then I softly see "Value" as "343" inside mini page layout

  @130098    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtModalWindow @wip
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at modal window
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Roles" sub tab
    When I click on "View" icon for "Nauman Shahid" inside table
    When I hovering mouse on page block detail of label "Assigned to User" lookup field "Nauman Shahid"
    And I pause execution for "4" seconds
    Then I softly see "title" as "Nauman Shahid" inside mini page layout
    And I refresh the page
    When I navigate to "Roles" sub tab
    When I click on "View" icon for "Nauman Shahid" inside table
    When I hovering mouse on page block detail of label "Assigned to User" lookup field "Nauman Shahid"
    And I pause execution for "4" seconds
    Then I softly see "Label" as "Org" inside mini page layout
    And I refresh the page
    When I navigate to "Roles" sub tab
    When I click on "View" icon for "Nauman Shahid" inside table
    When I hovering mouse on page block detail of label "Assigned to User" lookup field "Nauman Shahid"
    And I pause execution for "4" seconds
    Then I softly see "Value" as "Department of Community Health" inside mini page layout

  @130293    @helpTextDisplayedAtBottomOfHelpIconAtPageLayoutInViewMode
  Scenario: validate help text displayed at bottom of help icon at page layout view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I hovering mouse on help text icon inside page block detail "Title"
    Then I see help text is displayed at bottom

  @130294    @helpTextDisplayedAtBottomOfHelpIconAtPageLayoutInEditMode
  Scenario: validate help text displayed at bottom of help icon at page layout edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I hovering mouse on help text icon inside page block detail "Title"
    Then I see help text is displayed at bottom

  @128929    @verify2SuccessMessagesSetFromPageMessageAndBlockMsgConfigIsDisplayedAtEditPageInGreenColor @wip
  Scenario: validate success message set from page msg and block msg config is displayed at edit page in green color
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                      | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Block Rule Detail | Hide For User |               | Grantor State Program | Name                      | LM-0071                    |
      | Page Message Config:Page Layout Action     | Hide For User |               | Grantor State Program | Name                      | LM-0065                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Green" color:
      | TEST PAGE BLOCK SUCCESS MSG DND |
      | TEST PAGE SUCCESS MSG DND       |

  @129619    @verifyInformationMessageSetFromPageMessageConfigIsDisplayedAtViewPageLayoutWhenHideForProfileIsSelectedAsPMAndContextAsEdit @wip
  Scenario: validate information message set from page message config is displayed at view page layout when hide for profile = PM and context=edit
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User    | Internal          | ApiGeneratedId:0 |
      | Page Message Config   | Hide For Profile |                   | ApiGeneratedId:1 |
      | Page Message Config   | Hide For Context |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User    |               | Grantor State Program | Name                      | LM-0063                    |
      | Page Message Config:Page Layout Action | Hide For Profile | PM            | Grantor State Program | Name                      | LM-0063                    |
      | Page Message Config:Page Layout Action | Hide For Context | Edit          | Grantor State Program | Name                      | LM-0063                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see below message at page detail in "Blue" color:
      | test is done for page layout |

  @129623    @verifyInformationMessageSetFromPageMessageConfigIsNotDisplayedAtViewPageLayoutWhenHideForProfileIsSelectedAsSysAdministratorAndUserAsInternal @wip
  Scenario: validate information message set from page message config is not displayed at view page layout when hide for profile = System Administrator and user=internal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User    | Internal          | ApiGeneratedId:0 |
      | Page Message Config   | Hide For Profile |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User    | Internal             | Grantor State Program | Name                      | LM-0063                    |
      | Page Message Config:Page Layout Action | Hide For Profile | System Administrator | Grantor State Program | Name                      | LM-0063                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see the following message in the page details :
      | TEST PAGE INFORMATION MSG DND |

  @129624    @verifyInformationMessageSetFromPageMessageConfigIsDisplayedAtViewPageLayoutWhenHideForProfileIsSelectedAsSystemAdministratorAndContextAsEditAndUserIsInternal @wip
  Scenario: validate information message set from page message config is not displayed at view page layout when hide for profile = System Administrator and context=edit and user=internal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User    | Internal          | ApiGeneratedId:0 |
      | Page Message Config   | Hide For Profile |                   | ApiGeneratedId:1 |
      | Page Message Config   | Hide For Context |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Layout Action | Hide For User    | Internal             | Grantor State Program | Name                      | LM-0063                    |
      | Page Message Config:Page Layout Action | Hide For Profile | System Administrator | Grantor State Program | Name                      | LM-0063                    |
      | Page Message Config:Page Layout Action | Hide For Context | Edit                 | Grantor State Program | Name                      | LM-0063                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I cannot see the following message in the page details :
      | TEST PAGE INFORMATION MSG DND |

  @128517    @verifyInstructionMessageSetFromPageMessageConfirIsDisplayedAtEditPageBlock @wip
  Scenario: validate instruction message set from page message config is displayed at edit page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                      | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Block Rule Detail | Hide For User |               | Grantor State Program | Name                      | LM-0076                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see the following message in the page details :
      | TEST PAGE BLOCK INSTRUCTION MSG DND |

  @132856    @verifySaveAndCancelButtonsAreDisplayedAtEnhancedFlexEditPageLayout
  Scenario: validate save and cancel buttons are displayed at enhanced flex edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see the following page detail buttons :
      | Cancel |
      | Save   |

  @132857  @verifyRichTextAreaFieldIsDisplayedAtEnhancedFlexEditLayout
  Scenario: validate rich text area field is displayed at enhanced flex edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see "Description" field is rendered as rich text area

  @132858  @verifyMiniPageLayoutIsDisplayedAtEnhancedFlexEditLayout @skipOnJenkins @wip
  Scenario: validate mini page layout is displayed at enhanced flex edit page layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    When I hover mouse on lookup link "Christine GGPTEST5" at table
    And I pause execution for "3" seconds
    Then I softly see "title" as "Christine GGPTEST5" inside mini page layout

  @132859  @verifyCurrencyFieldIsDisplayedAtEnhancedFlexEditLayout
  Scenario: validate currency field is displayed at enhanced flex edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I see "40,000" text enter in field "fieldFundedAmount__c"

  @132861  @verifyDataTableIsDisplayedAtEnhancedFlexEditLayout @wip
  Scenario: validate data table is displayed at enhanced flex edit page layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly see expected table with id "toggleFlexTableProgramContacts"

  @132862  @verifyDateFieldIsDisplayedAtEnhancedFlexEditLayout
  Scenario: validate date field is displayed at enhanced flex edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I see "11/30/2020" text enter in field "fieldStartDate__c"

  @132863  @verifyDateTimeFieldIsDisplayedAtEnhancedFlexEditLayout
  Scenario: validate date time field is displayed at enhanced flex edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Edit Layout Testing"
    When I click on "Edit" icon for "Edit Layout Testing" inside table
    When I navigate to "Overview" sub tab
    Then I softly see field "Created Date" as "07/19/2023 4:30 AM"

  @132864  @verifyHelpTextAtTitleFieldIsDisplayedOnHoverAtEnhancedFlexEditLayout
  Scenario Outline: validate help text at field hover is displayed at enhanced flex edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I hovering mouse on help text icon inside page block detail "Title"
    Then I see "<helpText>" shown as help text

    Examples:
      | helpText                                           |
      | Name represents for what the program is meant for. |

  @133015  @verifyQuickSearchWorkingAtEnhancedFlexEditLayout @wip
  Scenario: validate quick search working at enhanced flex edit page layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Christine GGPTEST5" in "toggleFlexTableProgramContacts" panel
    Then I see value "Christine GGPTEST5" for title "Full Name" inside table "toggleFlexTableProgramContacts"

  @132867  @verifyFieldMessageDisplayedAtHeaderForRequiredForSubmitAndSaveFieldsAtEnhancedFlexEditLayout
  Scenario: validate field message displayed for required for save and submit Field at enhanced flex edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @131795  @verifyCharacterCountDisplayedInsideCKEditorBoxAtRichTextAreaFieldInsideEditPageLayout
  Scenario Outline: validate charater count displayed at ck-editor box inside edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    And I clear the value from field "cke_1_contents"
    And I enter value "<enterText>" into field "cke_1_contents"
    Then I softly see word count as "Words: 15 Words Left: 985" in ck editor at page layout

    Examples:
      | enterText                                                                                                         |
      | Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum tesssssssssssssssttttttttt |

  @131797  @verifyCKEditorBoxColorIsGettingChangedIfEnteredMoreThanMaxLimitCharacter
  Scenario: validate ck editor box color turns into yellow if we enter more than 99 characters in it
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum testttttttttt rrrrrrrrrr" into field "cke_1_contents"
    When I pause execution for "20" seconds
    Then I see CK editor box color changed to "green"

  @131798  @verifytextInsideCkEditorInputBoxIsDisplayedInAnExpectedFormat
  Scenario: validate text inside ck editor input box is displayed in bold format at edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    And I clear the value from field "cke_1_contents"
    And I enter value "Test Automation" into field "cke_1_contents"
    And I change formatting of all text to "Bold" inside CK editor
    Then I see "Test Automation" displayed in "Bold" format inside CK editor

  @131800  @verifytextInsideCkEditorInputBoxIsDisplayedWithUnderlineFormat
  Scenario: validate text inside ck editor input box is displayed with underline below it at edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    And I clear the value from field "cke_1_contents"
    And I enter value "Test Automation" into field "cke_1_contents"
    And I change formatting of all text to "Underline" inside CK editor
    Then I see "Test Automation" displayed in "Underline" format inside CK editor

  @131801  @verifytextInsideCkEditorInputBoxIsDisplayedInItalicFormat
  Scenario: validate text inside ck editor input box is displayed with Italic format at edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    And I clear the value from field "cke_1_contents"
    And I enter value "Test Automation" into field "cke_1_contents"
    And I change formatting of all text to "Italic" inside CK editor
    Then I see "Test Automation" displayed in "Italic" format inside CK editor

  @131802  @verifytextInsideCkEditorInputBoxIsDisplayedAsPlainText
  Scenario: validate text inside ck editor input box is displayed as plain text at edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    And I enter value "Test" into field "cke_1_contents"
    And I clear the value from field "cke_1_contents"
    And I enter value "Test Automation temp" into field "cke_1_contents"
    And I change formatting of all text to "Italic" inside CK editor
    And I change formatting of all text to "Remove Format" inside CK editor
    Then I see "Test Automation temp" displayed in "Plain" format inside CK editor

  @131803  @verifytextInsideCkEditorInputBoxIsDisplayedAsStrikeThroughText
  Scenario: validate text inside ck editor input box is displayed as strike through text at edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    And I enter value "Test" into field "cke_1_contents"
    And I clear the value from field "cke_1_contents"
    And I enter value "Test Automation" into field "cke_1_contents"
    And I change formatting of all text to "Select All" inside CK editor
    And I change formatting of all text to "Strikethrough" inside CK editor
    Then I see "Test Automation" displayed in "Strikethrough" format inside CK editor

  @131808  @verifytextInsideCkEditorInputBoxIsDisplayedWithBoldItalicUnderlineAndStrikeThroughFormat
  Scenario: validate text inside ck editor input box is displayed with bold,italic,underline and strike through format at edit page layout
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    And I enter value "Test" into field "cke_1_contents"
    And I clear the value from field "cke_1_contents"
    And I enter value "Test Automation" into field "cke_1_contents"
    And I change formatting of all text to "Bold" inside CK editor
    And I change formatting of all text to "Italic" inside CK editor
    And I change formatting of all text to "Underline" inside CK editor
    And I change formatting of all text to "Select All" inside CK editor
    And I change formatting of all text to "Strikethrough" inside CK editor
    Then I see "Test Automation" displayed in "All" format inside CK editor

  @133021    @verifySaveAndCancelButtonsAreDisplayedAtEnhancedFlexEditPageLayoutToSPIUser @wip
  Scenario: validate save and cancel buttons are displayed at enhanced flex edit page layout to spi user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field |               | Applications       | Name                      | Edit1                      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "Edit1" icon for "Application For Announcement Testing" inside table
    Then I see the following page detail buttons :
      | Cancel |
      | Save   |

  @133023   @verifyCurrencyFieldIsDisplayedAtEnhancedFlexEditLayoutToSPIUser @wip
  Scenario: validate currency field is displayed at enhanced flex edit page layout to spi user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field |               | Applications       | Name                      | Edit1                      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "Edit1" icon for "Application For Announcement Testing" inside table
    When I navigate to "Overview" sub tab
    Then I see "2,106.00" text enter in field "fieldInitialRequestedAmount__c"

  @133027   @verifyDateFieldIsDisplayedAtEnhancedFlexEditLayoutToSPIUser @wip
  Scenario: validate date field is displayed at enhanced flex edit page layout to spi user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field |               | Applications       | Name                      | Edit1                      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "Edit1" icon for "Application For Announcement Testing" inside table
    When I navigate to "Overview" sub tab
    Then I see "6/30/2018" text enter in field "fieldProjectPeriodStartDate__c"

  @133022   @verifyMiniPageLayoutIsDisplayedAtEnhancedFlexEditLayoutToSPIUser @wip
  Scenario: validate mini page layout is displayed at enhanced flex edit page layout to spi user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field |               | Applications       | Name                      | Edit1                      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "Edit1" icon for "Application For Announcement Testing" inside table
    When I navigate to "Overview" sub tab
    When I hover mouse on lookup link "AN-603-055"
    And I pause execution for "3" seconds
    Then I softly see "title" as "AN-603-055" inside mini page layout

  @133024  @verifyDataTableIsDisplayedAtEnhancedFlexEditLayoutForSPIUser @wip
  Scenario: validate data table is displayed at enhanced flex edit page layout for spi user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field |               | Applications       | Name                      | Edit1                      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "Edit1" icon for "Application For Announcement Testing" inside table
    When I navigate to "Roles" sub tab
    Then I see expected table with id "toggleFlexTableGrantorApplicationRolesandResponsibilities"

  @133030   @verifyDateTimeFieldIsDisplayedAtEnhancedFlexEditLayoutToSPIUser @wip
  Scenario: validate dateTime field is displayed at enhanced flex edit page layout to spi user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field |               | Applications       | Name                      | Edit1                      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "Edit1" icon for "Application For Announcement Testing" inside table
    When I navigate to "Overview" sub tab
    Then I see "6/19/2018 5:41 AM" text enter in field "fieldSubmittedOn__c"

  @133032  @verifyHelpTextAtTitleFieldIsDisplayedOnHoverAtEnhancedFlexEditLayoutToSPIUser @wip
  Scenario Outline: validate help text at field hover is displayed at enhanced flex edit page layout to spi user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field |               | Applications       | Name                      | Edit1                      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "Edit1" icon for "Application For Announcement Testing" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text icon inside page block detail "Funding Opportunity ID"
    Then I see "<helpText>" shown as help text

    Examples:
      | helpText                                                                                                                             |
      | This is a notice of grant funding opportunity which allows the potential applicants (organizations) to apply for the grant or award. |

  @133035 @verifyFieldMessageDisplayedAtHeaderForRequiredForSubmitAndSaveFieldsAtEnhancedFlexEditLayoutToSPIUser @wip
  Scenario: validate field message displayed for required for save and submit Field at enhanced flex edit page layout to spi user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field |               | Applications       | Name                      | Edit1                      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "Edit1" icon for "Application For Announcement Testing" inside table
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @133037  @verifyQuickSearchWorkingAtEnhancedFlexEditLayoutAtSPIUser @wip
  Scenario: validate quick search working at enhanced flex edit page layout to spi user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field |               | Applications       | Name                      | Edit1                      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "Edit1" icon for "Application For Announcement Testing" inside table
    When I navigate to "Roles" sub tab
    When I perform quick search for "John Walker" in "toggleFlexTableGrantorApplicationRolesandResponsibilities" panel
    Then I see value "John Walker" for title "Assigned to User" inside table "toggleFlexTableGrantorApplicationRolesandResponsibilities"

  @132866  @verifyDisplayOfPickListFiedDropDownValueAtEnhancedFlexEditLayout @wip
  Scenario: validate picklist field dropdown values are displayed at enhanced flex edit page layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table Action     | Hide Decision Field | HideEdit1Button__c | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field |               | Programs           | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I enter value "Project Grants" into field "Type__c"
    When I click dropdown field "fieldProgramSubType__c"
    Then I see only the following ordered options in dropdown field "fieldProgramSubType__c" :
      | --None--         |
      | Project Grants   |
      | Research Grants  |
      | Formula Grants   |
      | Block Grant      |
      | Earmark Grant    |
      | Emergency Grants |

  @133727  @verifyContinueActionAtCreateAnnouncementModalWindow
  Scenario: validate continue action at create announcement modal window
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on top right button "Create" in flex table with id "---program:-:AnnouncementTableId---"
    When I enter value "PG-343-0034" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
    And I click modal button "Continue"
    Then I see the header is "Create Funding Opportunity" in the page details

  @duplicate @wip @130094    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtSidebar
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at sidebar
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    And I navigate to "Home" tab
    When I hover mouse on lookup link "PG-343-0058"
    And I pause execution for "3" seconds
    Then I softly see "title" as "PG-343-0058" inside mini page layout
    And I navigate to "Home" tab
    When I hover mouse on lookup link "PG-343-0058"
    And I pause execution for "3" seconds
    Then I softly see "Label" as "EGMS ID" inside mini page layout
    And I navigate to "Home" tab
    When I hover mouse on lookup link "PG-343-0058"
    And I pause execution for "3" seconds
    Then I softly see "Value" as "PG-343-0058" inside mini page layout

  @133875    @verifyHideFieldJsonFieldByHidingDateFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide date from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideDateFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "Project Grants" into field "Type__c"
    And I enter value "Project Grants" into field "ProgramSubType__c"
    Then I see field "StartDate__c" is disabled

  @133876    @verifyHideFieldJsonFieldByHidingPicklistFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide picklist from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HidePicklistFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "Project Grants" into field "Type__c"
    And I enter value "Project Grants" into field "ProgramSubType__c"
    Then I softly see field "StartDate__c" is disabled
    Then I softly see field "Type__c" is disabled

  @133877    @verifyHideFieldJsonFieldByHidingTextFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide text from from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "Project Grants" into field "Type__c"
    And I enter value "Project Grants" into field "ProgramSubType__c"
    Then I see field "ProgramName__c" is disabled

  @133879    @verifyHideFieldJsonFieldByHidingCurrencyFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide currency field from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideCurrencyFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "Project Grants" into field "Type__c"
    And I enter value "Project Grants" into field "ProgramSubType__c"
    Then I see field "FundedAmount__c" is disabled

  @133883    @verifyHideFieldJsonFieldByHidingDateFieldOnTheBasisOfTextFieldValueInEditMode
  Scenario: Set up hide field json value to Hide date from Overview page block using text field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideDateFieldOnTheBasisOfTextInEditMode | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see field "StartDate__c" is disabled

  @133886    @verifyHideFieldJsonFieldByHidingDateTextAndPicklistFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide date, text and picklist from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideMultipleFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "Project Grants" into field "Type__c"
    And I enter value "Project Grants" into field "ProgramSubType__c"
    Then I softly see field "StartDate__c" is disabled
    Then I softly see field "Type__c" is disabled
    Then I softly see field "ProgramName__c" is disabled

  @133894    @verifyHideFieldJsonFieldByHidingTextFieldOnTheBasisOfDateFieldValueInEditMode
  Scenario: Set up hide field json value to Hide text from Overview page block using date field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfDateInEditMode | Grantor State Program | Name                      | PBD-17330                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see field "ProgramName__c" is disabled

  @133895    @verifyHideFieldJsonFieldByHidingPicklistFieldOnTheBasisOfDateFieldValueInEditMode
  Scenario: Set up hide field json value to Hide picklist from Overview page block using date field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HidePicklistFieldOnTheBasisOfDateInEditMode | Grantor State Program | Name                      | PBD-17330                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see field "Type__c" is disabled

  @133896    @verifyHideFieldJsonFieldByHidingCurrencyFieldOnTheBasisOfDateFieldValueInEditMode
  Scenario: Set up hide field json value to Hide currency from Overview page block using date field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideCurrencyFieldOnTheBasisOfDateInEditMode | Grantor State Program | Name                      | PBD-17330                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see field "FundedAmount__c" is disabled

  @134132    @verifyHideFieldJsonFieldByHidingPicklistFieldOnTheBasisOPicklistFieldValueOnModal @wip
  Scenario: Set up hide field json value to Hide picklist using picklist field value on modal window
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Roles and Responsibilities 7 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                 | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HidePicklistFieldOnTheBasisOfPicklistOnModal | Roles and Responsibilities 7 | Name                      | PBD-8028                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Roles" sub tab
    And I click on "Edit" icon for "Nauman Shahid" inside flex table with id "toggleFlexTableProgramRolesAndResponsibilities"
    And I enter value "User" into field "UserType__c"
    Then I see field "BusinessRole__c" is disabled

  @134134    @verifyHideFieldJsonFieldByHidingURLFieldOnTheBasisOPicklistFieldValueOnModal @wip
  Scenario: Set up hide field json value to Hide URL using picklist field value on modal window
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Roles and Responsibilities 7 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                            | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideURLFieldOnTheBasisOfPicklistOnModal | Roles and Responsibilities 7 | Name                      | PBD-8028                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Roles" sub tab
    And I click on "Edit" icon for "Nauman Shahid" inside flex table with id "toggleFlexTableProgramRolesAndResponsibilities"
    And I enter value "User" into field "UserType__c"
    Then I see field "Test_URL__c" is disabled

  @134135    @verifyHideFieldJsonFieldByHidingCheckboxieldOnTheBasisOPicklistFieldValueOnModal @wip
  Scenario: Set up hide field json value to Hide checkbox using picklist field value on modal window
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Roles and Responsibilities 7 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                 | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideCheckboxFieldOnTheBasisOfPicklistOnModal | Roles and Responsibilities 7 | Name                      | PBD-8028                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Roles" sub tab
    And I click on "Edit" icon for "Nauman Shahid" inside flex table with id "toggleFlexTableProgramRolesAndResponsibilities"
    And I enter value "User" into field "UserType__c"
    Then I see field "Notify__c" is disabled

  @134138    @verifyHideFieldJsonFieldByHidingCheckboxURLFieldOnTheBasisOPicklistFieldValueOnModal @wip
  Scenario: Set up hide field json value to Hide checkbox,URL using picklist field value on modal window
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Roles and Responsibilities 7 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                      | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideCheckboxNdURLFieldOnTheBasisOfPicklistOnModal | Roles and Responsibilities 7 | Name                      | PBD-8028                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Roles" sub tab
    And I click on "Edit" icon for "Nauman Shahid" inside flex table with id "toggleFlexTableProgramRolesAndResponsibilities"
    And I enter value "User" into field "UserType__c"
    Then I softly see field "Notify__c" is disabled
    Then I softly see field "Test_URL__c" is disabled

  @134150    @verifyHideFieldJsonFieldByHidingCheckboxURLAndPicklistFieldOnTheBasisOPicklistFieldValueOnModal @wip
  Scenario: Set up hide field json value to Hide checkbox,URL and picklist using picklist field value on modal window
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Roles and Responsibilities 7 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                              | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideCheckboxPicklistNdURLFieldOnTheBasisOfPicklistOnModal | Roles and Responsibilities 7 | Name                      | PBD-8028                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Roles" sub tab
    And I click on "Edit" icon for "Nauman Shahid" inside flex table with id "toggleFlexTableProgramRolesAndResponsibilities"
    And I enter value "User" into field "UserType__c"
    Then I softly see field "Notify__c" is disabled
    Then I softly see field "Test_URL__c" is disabled
    Then I softly see field "BusinessRole__c" is disabled

  @134158    @verifyHideFieldJsonFieldByHidingCheckboxFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide checkbox from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideCheckboxFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "Project Grants" into field "Type__c"
    And I enter value "Project Grants" into field "ProgramSubType__c"
    Then I see field "CFDA_Data__c" is disabled

  @134161    @verifyHideFieldJsonFieldByHidingCheckbox,Picklist,Date,CurrencyFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide checkbox,picklist,date &currency field  from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideCheckboxPicklistDateCurrencyFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "Project Grants" into field "Type__c"
    And I enter value "Project Grants" into field "ProgramSubType__c"
    Then I softly see field "Type__c" is disabled
    Then I softly see field "StartDate__c" is disabled
    Then I softly see field "CFDA_Data__c" is disabled
    Then I softly see field "FundedAmount__c" is disabled

  @134169    @verifyHideFieldJsonFieldByHidingLookupieldOnTheBasisOPicklistFieldValueOnModal
  Scenario: Set up hide field json value to Hide lookup using picklist field value on modal window
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                               | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideLookupFieldOnTheBasisOfPicklistOnModal | Announcement Create - Grantor | Name                      | PBD-16186                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "Competitive" into field "AnnouncementType__c"
    Then I see field "Program__c" is disabled

  @133880    @verifyHideFieldJsonFieldByHidingLookupFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide lookup from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideLookupFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "Project Grants" into field "Type__c"
    And I enter value "Project Grants" into field "ProgramSubType__c"
    Then I see field "Account__c" is disabled

  @134480    @verifyByClickAtSaveActionOnModalAModalWindowIsGettingClosed
  Scenario: verify by click at Save action on modal layout then modal is  getting closed automatically
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I click on "Edit" icon for "BP-01" inside flex table with id "---program:-:budgetPeriodDetailsTableId---"
    And I switch to iframe with id "ProgramBudgetPeriodiframeContentId"
    And I click modal button "Save"
    And I pause execution for "7" seconds
    Then I do not see "Edit" modal window is displayed

  @129075    @verifyErrorMessageWithSpecialCharactersDisplayedByChangingMessageFieldValueFromErrorMessageConfig
  Scenario Outline: verify error message with special characters is displayed at page layout
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue     | coreComponentField    | filterId         |
      | Error Message Config:General | Message   | Automation Test Error | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue                   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Error Message Config:General | Message   | Test Automation Error Message @ | Grantor State Program | Name                      |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "10" seconds
    When I click on "Submit For Approval" in the page details
    Then I see the following messages in the page details contains:
      | Test Automation Error Message @ |

    Examples:
      | defaultMessage                                                                                                         |
      | 'Roles And Responsibility' Section Under 'Roles' Tab: A Program Approver Is Required To Be Associated With The Program |

  @129099    @verifyErrorMessageWithNumbersDisplayedByChangingMessageFieldValueFromErrorMessageConfig
  Scenario Outline: verify error message with numbers are displayed at page layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Error Message Config  | Message   | <defaultMessage>  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue                     | coreComponentField                            |
      | Error Message Config:General | Message   | Test Automation Error Message 123 | An Approver is a required field for a program |
      | Program                      | Status    | Created                           | Test Automation Program for error message dnd |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "10" seconds
    When I click on "Submit For Approval" in the page details
    Then I see the following messages in the page details contains:
      | Test Automation Error Message 123 |

    Examples:
      | defaultMessage                                                                                                         |
      | 'Roles And Responsibility' Section Under 'Roles' Tab: A Program Approver Is Required To Be Associated With The Program |

  @136938    @verifyDisplayOfMissingFieldMessageIfReqForSaveFieldIsHiddenUsingHideFieldJSON
  Scenario: verify missing field msg is not displayed if req for save picklist field is hidden using hide field json
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingPicklistFieldUsingHideFieldJSON | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                      | Grantor State Program | Name                      | PBD-17094                  |
    When I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
 # @136938 verify that picklist field is hidden on the basis of program type field value
    Then I softly see "Program Sub Type" is not displayed inside page block detail
    When I click on "Save" in the page details
 # @136938 verify that req field message is not displayed for hidden picklist field
    Then I cannot see the following message in the page details contains:
      | Program Sub Type is required to save under Overview. |

  @137275p    @verifyDisplayOfMissingFieldMessageIfReqForSaveDateFieldIsHiddenUsingHideFieldJSON
  Scenario: verify missing field msg is not displayed if req for save date field is hidden using hide field json
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingDateFieldUsingHideFieldJSON | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                  | Grantor State Program | Name                      | PBD-23989                  |
    When I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
 # @137275 verify that date field is hidden on the basis of program type field value
    Then I softly see "Published date" is not displayed inside page block detail
    When I click on "Save" in the page details
 # @137275 verify that req field message is not displayed for hidden date field
    Then I cannot see the following message in the page details contains:
      | Published date is required to save under Overview. |

  @137281    @verifyDisplayOfMissingFieldMessageIfReqForSaveURLFieldIsHiddenUsingHideFieldJSON
  Scenario: verify missing field msg is not displayed if req for save URL field is hidden using hide field json
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingURLFieldUsingHideFieldJSON | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                 | Grantor State Program | Name                      | PBD-17398                  |
    When I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
 # @137281 verify that URL field is hidden on the basis of program type field value
    Then I softly see "URL" is not displayed inside page block detail
    When I click on "Save" in the page details
 # @137281 verify that req field message is not displayed for hidden URL field
    Then I cannot see the following message in the page details contains:
      | URL is required to save under Overview. |

  @137282    @verifyDisplayOfMissingFieldMessageIfReqForSaveCurrencyFieldIsHiddenUsingHideFieldJSON
  Scenario: verify missing field msg is not displayed if req for save currency field is hidden using hide field json
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingCurrencyFieldUsingHideFieldJSON | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                      | Grantor State Program | Name                      | PBD-17329                  |
    When I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
 # @137282 verify that currency field is hidden on the basis of program type field value
    Then I softly see "Funded Amount" is not displayed inside page block detail
    When I click on "Save" in the page details
 # @137282 verify that req field message is not displayed for hidden currency field
    Then I cannot see the following message in the page details contains:
      | Funded Amount is required to save under Overview. |

  @137283    @verifyDisplayOfMissingFieldMessageIfReqForSavePercentFieldIsHiddenUsingHideFieldJSON
  Scenario: verify missing field msg is not displayed if req for save percent field is hidden using hide field json
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingPercentFieldUsingHideFieldJSON | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                     | Grantor State Program | Name                      | PBD-23987                  |
    When I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
 # @137283 verify that percent field is hidden on the basis of program type field value
    Then I softly see "Percent" is not displayed inside page block detail
    When I click on "Save" in the page details
 # @137283 verify that req field message is not displayed for hidden percent field
    Then I cannot see the following message in the page details contains:
      | Percent is required to save under Overview. |

  @137286    @verifyDisplayOfMissingFieldMessageIfReqForSaveTimeFieldIsHiddenUsingHideFieldJSON
  Scenario: verify missing field msg is not displayed if req for save time field is hidden using hide field json
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingTimeFieldUsingHideFieldJSON | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                  | Grantor State Program | Name                      | PBD-23986                  |
    When I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
 # @137286 verify that Time field is hidden on the basis of program type field value
    Then I softly cannot see field "Time" inside page block
    When I click on "Save" in the page details
 # @137286 verify that req field message is not displayed for hidden Time field
    Then I cannot see the following message in the page details contains:
      | Time is required to save under Overview. |

  @137288    @verifyDisplayOfMissingFieldMessageIfReqForSaveTimeFieldIsHiddenUsingHideFieldJSON
  Scenario: verify missing field msg is not displayed if req for save Date and Time field is hidden using hide field json
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingDateTimeFieldUsingHideFieldJSON | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                      | Grantor State Program | Name                      | PBD-23988                  |
    When I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
 # @137288 verify that Date/Time field is hidden on the basis of program type field value
    Then I softly cannot see field "DateandTime" inside page block
    When I click on "Save" in the page details
 # @137288 verify that req field message is not displayed for hidden Date/Time field
    Then I cannot see the following message in the page details contains:
      | DateandTime is required to save under Overview. |

  @137289    @verifyDisplayOfMissingFieldMessageIfReqForSaveNumberFieldIsHiddenUsingHideFieldJSON
  Scenario: verify missing field msg is not displayed if req for save Number field is hidden using hide field json
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingNumberFieldUsingHideFieldJSON | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                    | Grantor State Program | Name                      | PBD-23985                  |
    When I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
 # @137289 verify that Number field is hidden on the basis of program type field value
    Then I softly cannot see field "Number" inside page block
    When I click on "Save" in the page details
 # @137289 verify that req field message is not displayed for hidden Number field
    Then I cannot see the following message in the page details contains:
      | Number is required to save under Overview. |

  @137290    @verifyDisplayOfMissingFieldMessageIfReqForSaveLookupFieldIsHiddenUsingHideFieldJSON
  Scenario: verify missing field msg is not displayed if req for save lookup field is hidden using hide field json
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingLookupFieldUsingHideFieldJSON | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                    | Grantor State Program | Name                      | PBD-17097                  |
    When I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
 # @137290 verify that lookup field is hidden on the basis of program type field value
    Then I softly cannot see field "Internal Organization" inside page block
    When I click on "Save" in the page details
 # @137290 verify that req field message is not displayed for hidden lookup field
    Then I cannot see the following message in the page details contains:
      | Internal Organization is required to save under Overview. |

  @137291    @verifyDisplayOfMissingFieldMessageIfReqForSaveTextFieldIsHiddenUsingHideFieldJSON
  Scenario: verify missing field msg is not displayed if req for save text field is hidden using hide field json
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingTextFieldUsingHideFieldJSON | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                  | Grantor State Program | Name                      | PBD-17333                  |
    When I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
 # @137291 verify that text field is hidden on the basis of program type field value
    Then I softly cannot see field "Title" inside page block
    When I click on "Save" in the page details
 # @137291 verify that req field message is not displayed for hidden text field
    Then I cannot see the following message in the page details contains:
      | Title is required to save under Overview. |

  @137783    @verifyDisplayOfMissingFieldMessageIfReqForSaveTextFieldIsHiddenUsingHideFieldJSONOnModal
  Scenario: verify missing field msg is not displayed on modal if req for save text field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                             | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingTextFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-16186                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                         | Announcement Create - Grantor | Name                      | PBD-23606                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                      | Announcement Create - Grantor | Name                      | PBD-23606                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-501-0036" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
 # @137783 verify that text field is hidden on the basis of announcement type field value
    Then I softly cannot see field "Ann Group Code" inside page block
    And I click modal button "Continue"
 # @137783 verify that req field message is not displayed for hidden text field
    Then I cannot see the following message in the page details contains:
      | Ann Group Code is required to save under Overview. |

  @137799    @verifyDisplayOfMissingFieldMessageIfReqForSaveLookupFieldIsHiddenUsingHideFieldJSONOnModal
  Scenario: verify missing field msg is not displayed on modal if req for save lookup field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                               | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingLookupFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-16186                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                           | Announcement Create - Grantor | Name                      | PBD-23607                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                        | Announcement Create - Grantor | Name                      | PBD-23607                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-501-0036" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
 # @137799 verify that lookup field is hidden on the basis of announcement type field value
    Then I softly cannot see field "Program Approver" inside page block
    And I click modal button "Continue"
 # @137799 verify that req field message is not displayed for hidden lookup field
    Then I cannot see the following message in the page details contains:
      | Program Approver is required to save under Overview. |

  @137803
  Scenario: verify missing field msg is not displayed on modal if req for save currency field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                 | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingCurrencyFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-16186                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                             | Announcement Create - Grantor | Name                      | PBD-23608                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                          | Announcement Create - Grantor | Name                      | PBD-23608                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-501-0036" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
 # @137803 verify that currency field is hidden on the basis of announcement type field value
    Then I softly cannot see field "Expected Total Award Amount" inside page block
    And I click modal button "Continue"
 # @137803 verify that req field message is not displayed for hidden currency field
    Then I cannot see the following message in the page details contains:
      | Expected Total Award Amount is required to save under Overview. |

  @137807    @verifyDisplayOfMissingFieldMessageIfReqForSaveNumberFieldIsHiddenUsingHideFieldJSONOnModal
  Scenario: verify missing field msg is not displayed on modal if req for save number field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                               | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingNumberFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-16186                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                           | Announcement Create - Grantor | Name                      | PBD-23609                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                        | Announcement Create - Grantor | Name                      | PBD-23609                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-501-0036" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
 # @137807 verify that number field is hidden on the basis of announcement type field value
    Then I softly cannot see field "Expected Number of Awards" inside page block
    And I click modal button "Continue"
 # @137807 verify that req field message is not displayed for hidden number field
    Then I cannot see the following message in the page details contains:
      | Expected Number of Awards is required to save under Overview. |

  @137815    @verifyDisplayOfMissingFieldMessageIfReqForSaveURLFieldIsHiddenUsingHideFieldJSONOnModal
  Scenario: verify missing field msg is not displayed on modal if req for save URL field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                            | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingURLFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-16186                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                        | Announcement Create - Grantor | Name                      | PBD-23610                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                     | Announcement Create - Grantor | Name                      | PBD-23610                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-501-0036" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
 # @137815 verify that URL field is hidden on the basis of announcement type field value
    Then I softly cannot see field "External Announcement URL" inside page block
    And I click modal button "Continue"
 # @137815 verify that req field message is not displayed for hidden URL field
    Then I cannot see the following message in the page details contains:
      | External Announcement URL is required to save under Overview. |

  @137818    @verifyDisplayOfMissingFieldMessageIfReqForSaveURLFieldIsHiddenUsingHideFieldJSONOnModal
  Scenario: verify missing field msg is not displayed on modal if req for save URL field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                             | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingDateFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-16186                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                         | Announcement Create - Grantor | Name                      | PBD-23611                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                      | Announcement Create - Grantor | Name                      | PBD-23611                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-501-0036" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
 # @137818 verify that URL field is hidden on the basis of announcement type field value
    Then I softly cannot see field "FOA Publication Date" inside page block
    And I click modal button "Continue"
 # @137818 verify that req field message is not displayed for hidden URL field
    Then I cannot see the following message in the page details contains:
      | FOA Publication Date is required to save under Overview. |

  @137821    @verifyDisplayOfMissingFieldMessageIfReqForSaveURLFieldIsHiddenUsingHideFieldJSONOnModal
  Scenario: verify missing field msg is not displayed on modal if req for save URL field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                 | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingPicklistFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-16186                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                             | Announcement Create - Grantor | Name                      | PBD-23612                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                          | Announcement Create - Grantor | Name                      | PBD-23612                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-501-0036" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
 # @137821 verify that picklist field is hidden on the basis of announcement type field value
    Then I softly cannot see field "Fiscal Year" inside page block
    And I click modal button "Continue"
 # @137821 verify that req field message is not displayed for hidden picklist field
    Then I cannot see the following message in the page details contains:
      | Fiscal Year is required to save under Overview. |

  @137825    @verifyDisplayOfMissingFieldMessageIfReqForSaveCheckboxFieldIsHiddenUsingHideFieldJSONOnModal
  Scenario: verify missing field msg is not displayed on modal if req for save checkbox field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                 | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingCheckboxFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-16186                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                             | Announcement Create - Grantor | Name                      | PBD-23613                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                          | Announcement Create - Grantor | Name                      | PBD-23613                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-501-0036" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
 # @137825 verify that Checkbox field is hidden on the basis of announcement type field value
    Then I softly cannot see field "Funding Plan Created" inside page block
    And I click modal button "Continue"
 # @137825 verify that req field message is not displayed for hidden Checkbox field
    Then I cannot see the following message in the page details contains:
      | Funding Plan Created is required to save under Overview. |

  @137829    @verifyDisplayOfMissingFieldMessageIfReqForSaveDate/TimeFieldIsHiddenUsingHideFieldJSONOnModal
  Scenario: verify missing field msg is not displayed on modal if req for save date/time field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                 | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingDateTimeFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-16186                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                             | Announcement Create - Grantor | Name                      | PBD-23614                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                          | Announcement Create - Grantor | Name                      | PBD-23614                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-501-0036" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
 # @137829 verify that date/time field is hidden on the basis of announcement type field value
    Then I softly cannot see field "Letter Of Intent Due Date Time" inside page block
    And I click modal button "Continue"
 # @137829 verify that req field message is not displayed for hidden date/time field
    Then I cannot see the following message in the page details contains:
      | Letter Of Intent Due Date Time is required to save under Overview. |

  @137835    @verifyDisplayOfMissingFieldMessageIfReqForSavePercentFieldIsHiddenUsingHideFieldJSONOnModal
  Scenario: verify missing field msg is not displayed on modal if req for save percent field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingPercentFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-16186                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                            | Announcement Create - Grantor | Name                      | PBD-23615                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                         | Announcement Create - Grantor | Name                      | PBD-23615                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-501-0036" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
 # @137835 verify that percent field is hidden on the basis of announcement type field value
    Then I softly cannot see field "Sub Recipient Match %" inside page block
    And I click modal button "Continue"
 # @137835 verify that req field message is not displayed for hidden percent field
    Then I cannot see the following message in the page details contains:
      | Sub Recipient Match % is required to save under Overview. |

  @145522    @verifyHideFieldJsonFieldByHidingDateFieldUsingProfileAsSystemAdminInEditMode
  Scenario: Set up hide field json value to Hide start date field using profile as system admin in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HidePageBlockAndBlockDetailForProfileAsAdmin | Grantor State Program | Name                      | PBD-17330                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see "Project Period Start Date" is not displayed inside page block detail

  @145526    @verifyHideFieldJsonFieldByHidingDateFieldUsingUserTypeAsInternalInEditMode
  Scenario: Set up hide field json value to Hide start date field using user type as Internal in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailForUserTypeAsInternal | Grantor State Program | Name                      | PBD-17330                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see "Project Period Start Date" is not displayed inside page block detail

  @145528    @verifyHideFieldJsonFieldByHidingDateFieldUsingContextAsEditInEditMode
  Scenario: Set up hide field json value to Hide start date field using context as Edit in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabForContextAsEdit | Grantor State Program | Name                      | PBD-17330                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see "Project Period Start Date" is not displayed inside page block detail

  @145533    @verifyHideFieldJsonFieldByHidingDateFieldUsingUserAppAsAGrantorInEditMode
  Scenario: Set up hide field json value to Hide start date field using user app as As a Grantor in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabForUserAppAsStateAsGrantor | Grantor State Program | Name                      | PBD-17330                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see "Project Period Start Date" is not displayed inside page block detail

  @145661    @hide_expression_Overview_Tab_using_OR_operator_and_Left_Operand=Profile_As_AdminInEditMode
  Scenario: Hide OVERVIEW Tab for Profile Admin in edit mode
    Given I have "default" configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantor State Program | Name                      | TAB-2673                   |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:HideExpressionJsonForPageTab | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @145662    @hide_expression_Overview_Tab_using_IN_operator_and_Left_Operand_USERTYPE=InternalInEditMode
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with IN operator and Left Operand USERTYPE in edit mode
    Given I have "default" configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantor State Program | Name                      | TAB-2673                   |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabsConfigOveriviewHideExpressionWithOperatorINAndOperandUSERTYPE | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @145663    @hide_expression_Overview_Tab_using_IN_operator_and_Left_Operand_AS_Context_EditInEditMode
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with IN operator and Left Operand AS Context edit in edit mode
    Given I have "default" configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantor State Program | Name                      | TAB-2673                   |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabForContextAsEdit | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @145664    @verifyHideExpressionJsonFieldByHidingTabUsingUserAppAsAGrantorInEditMode
  Scenario: Hide OVERVIEW Tab for user app state as Grantor in edit mode
    Given I have "default" configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantor State Program | Name                      | TAB-2673                   |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabForUserAppAsStateAsGrantor | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @145666    @verifyHideExpressionJsonFieldByHidingPageBlockUsingUserTypeAsInternalInEditMode
  Scenario: Set up hide expression json value to Hide page block using user type as Internal in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailForUserTypeAsInternal | Grantor State Program | Name                      | PB-6823                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I do not see "Information" page block displayed in page details

  @145667    @verifyHideExpressionJsonFieldByHidingPageBlockUsingUserAppAsAGrantorInEditMode
  Scenario: Set up hide expression json value to Hide page block using user app state as Grantor in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabForUserAppAsStateAsGrantor | Grantor State Program | Name                      | PB-6823                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table

    When I navigate to "Overview" sub tab
    Then I do not see "Information" page block displayed in page details

  @145668    @verifyHideExpressionJsonFieldByHidingPageBlockUsingContextAsEditInEditMode
  Scenario: Set up hide expression json value to Hide page block using using context as Edit in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabForContextAsEdit | Grantor State Program | Name                      | PB-6823                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I do not see "Information" page block displayed in page details

  @145669    @verifyHideExpressionJsonFieldByHidingPageBlockUsingProfileAdminInEditMode
  Scenario: Set up hide expression json value to Hide page block for Profile Admin in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HidePageBlockAndBlockDetailForProfileAsAdmin | Grantor State Program | Name                      | PB-6823                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I do not see "Information" page block displayed in page details

  @145672    @hide_expression_Overview_TabUsingFieldOperatorInEditMode
  Scenario: Hide OVERVIEW Tab using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantor State Program | Name                      | TAB-2673                   |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:HidePageTabsOrPageBlocksUsingPicklistFieldValue | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @145836    @verifyHideExpressioJsonByHidingFieldsUsingPicklistFieldValueInEditMode
  Scenario: validate hide expression by hiding date field using field as picklist in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldUsingPicklistWithOperatorEqualsTo | Grantor State Program | Name                      | PBD-17330                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see "Project Period Start Date" is not displayed inside page block detail

  @145839    @verifyHideExpressioJsonByHidingFieldsUsingUserOperatoreInEditMode
  Scenario: validate hide expression by hiding date field using user operator in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabFieldUsingUserOperator | Grantor State Program | Name                      | PBD-17330                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see "Project Period Start Date" is not displayed inside page block detail

  @145844    @verifyHideExpressioJsonByHidingTabUsingUserOperatoreInEditMode
  Scenario: validate hide expression by hiding tab using user operator in edit mode
    Given I have "default" configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantor State Program | Name                      | TAB-2673                   |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabFieldUsingUserOperator | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I cannot see "Overview" sub tab at view detail page

  @145846    @verifyHideExpressioJsonByHidingPageBlockUsingPicklistFieldValueInEditMode
  Scenario: validate hide expression by hiding page block using picklist field value operator in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HidePageTabsOrPageBlocksUsingPicklistFieldValue | Grantor State Program | Name                      | PB-6823                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I do not see "Information" page block displayed in page details

  @145847    @verifyHideExpressioJsonByHidingPageBlockUsingUserOperatorInEditMode
  Scenario: validate hide expression by hiding page block using user operator in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabFieldUsingUserOperator | Grantor State Program | Name                      | PB-6823                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I do not see "Information" page block displayed in page details

  @146387    @verifyHideExpressioJsonByHidingAddActionAtAttachmentUsingUserTypeOperator
  Scenario: validate hide the ADD action on attachment page block by using SObject hide logic as "user type"
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingUserTypeOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @146388    @verifyHideExpressioJsonByHidingAddActionAtAttachmentUsingProfileOperator
  Scenario: validate hide the ADD action on attachment page block by using SObject hide logic as "profile "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingProfileOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @146389    @verifyHideExpressioJsonByHidingAddActionAtAttachmentUsingContext!=ViewOperator
  Scenario: validate hide the ADD action on attachment page block by using SObject hide logic as  "Context "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingContextOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @146390    @verifyHideExpressioJsonByHidingAddActionAtAttachmentUsingUserAppOperator
  Scenario: validate hide the ADD action on attachment page block by using SObject hide logic as "User App "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingUserAppOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @146391    @verifyHideExpressioJsonByHidingAddActionAtAttachmentUsingFieldValueOperator
  Scenario: validate hide the ADD action on attachment page block by using SObject hide logic as "Field "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingFieldOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @146395    @verifyHideExpressioJsonByHidingAddActionAtAttachmentUsing$UserOperator
  Scenario: validate hide the ADD action on attachment page block by using SObject hide logic as "$user"
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsing$UserOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @146396    @verifyHideExpressioJsonByHidingAddActionAtNotesUsingUserTypeOperator
  Scenario: validate hide the ADD action on notes page block by using SObject hide logic as "user type"
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingUserTypeOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Notes" flex table not displayed

  @146397    @verifyHideExpressioJsonByHidingAddActionAtNotesUsingProfileOperator
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic as "profile "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingProfileOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Notes" flex table not displayed

  @146398    @verifyHideExpressioJsonByHidingAddActionAtNotesUsingContext!=ViewOperator
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic as  "Context "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingContextOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Notes" flex table not displayed

  @146400    @verifyHideExpressioJsonByHidingAddActionAtNotesUsingUserAppOperator
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic as "User App "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingUserAppOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Notes" flex table not displayed

  @146401    @verifyHideExpressioJsonByHidingAddActionAtNotesUsingFieldValueOperator
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic as "Field "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingFieldOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Notes" flex table not displayed

  @146402    @verifyHideExpressioJsonByHidingAddActionAtNotesUsing$UserOperator
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic as "$user"
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsing$UserOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Notes" flex table not displayed

  @146404    @verifyHideExpressioJsonByHidingAddActionAtBothNotesAndAttachmentUsingProfileOperator
  Scenario: validate hide the ADD action on both Notes and Attachment page block by using SObject hide logic as "profile"
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON       |                   | ApiGeneratedId:0 |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON       | govgrants_config:HideAddActionUsing$UserOperatorForNotesAttachment | Application__c     |                           |                            |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsing$UserOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Notes" flex table not displayed
    Then I see "Add" button inside "Files" flex table not displayed

  @146706    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserBackArrowForUnsavedPicklistFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved picklist field data by click on browser navigation arrow
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "Formula Grants" into field "Type__c"
    When I enter value "123" into field "ProgramName__c"
    And I click on back arrow
    And I pause execution for "3" seconds
    Then I see alert popup box

  @147904    @verifyByClickAtSaveActionAtPageLayoutARecordIsGettingSavedWithChangedData
  Scenario: validate by click at save action at page layout, a record is getting saved with changed data
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "XYZ" into field "Authorization__c"
    When I click on "Save" in the page details
    Then I softly see field "Authorization" as "XYZ"
#    Then I see "XYZ" text enter in field "fieldAuthorization__c"
    When I click on "Edit" in the page details
    And I enter value "ABC" into field "Authorization__c"
    When I click on "Save" in the page details
    Then I softly see field "Authorization" as "ABC"
#    Then I see "ABC" text enter in field "fieldAuthorization__c"

  @147920    @verifyHideExpressioJsonByHidingAddActionAtNotesUsingMultipleOperator
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic using multiple operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingMultiOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Notes" flex table not displayed

  @147921    @verifyHideExpressioJsonByHidingAddActionAtNotesUsingAndOrOperator
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic using multiple And, Or operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingAndOrOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Notes" flex table not displayed

  @147923    @verifyHideExpressioJsonByHidingAddActionAtAttachmentUsingMultipleOperator
  Scenario: validate hide the ADD action on Attachment page block by using SObject hide logic using multiple operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingMultiOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @147924    @verifyHideExpressioJsonByHidingAddActionAtAttachmentsUsingAndOrOperator
  Scenario: validate hide the ADD action on Attachments page block by using SObject hide logic using multiple And, Or operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingAndOrOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @147925    @verifyHideExpressioJsonByHidingAddActionAtAttachmentsAndNotesUsingAndOrOperator
  Scenario: validate hide the ADD action on Attachments and notes page block by using SObject hide logic using multiple And, Or operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON       |                   | ApiGeneratedId:0 |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON       | govgrants_config:HideAddActionUsingAndOrOperatorForNotesAttachment | Application__c     |                           |                            |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingAndOrOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed
    Then I see "Add" button inside "Notes" flex table not displayed

  @147926    @verifyHideExpressioJsonByHidingAddActionAttachmentsAndNotesUsingMultipleOperator
  Scenario: validate hide the ADD action on Attachment and notes page block by using SObject hide logic using multiple operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON       |                   | ApiGeneratedId:0 |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON       | govgrants_config:HideAddActionUsingMultiOperatorForNotesAttachment | Application__c     |                           |                            |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingMultiOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed
    Then I see "Add" button inside "Notes" flex table not displayed

  @147930    @verifyHideExpressioJsonByHidingAddActionAtAttachmentsUsingOROperator
  Scenario: validate hide the ADD action on Attachments page block by using SObject hide logic using Or operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingOrOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @147931    @verifyHideExpressionJsonByHidingAddActionAtNotesUsingOROperator
  Scenario: validate hide the ADD action on notes page block by using SObject hide logic using Or operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingOrOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Notes" flex table not displayed

  @147932    @verifyHideExpressioJsonByHidingAddActionAttachmentsAndNotesUsingOROperator
  Scenario: validate hide the ADD action on Attachment and notes page block by using SObject hide logic using OR operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON       |                   | ApiGeneratedId:0 |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON       | govgrants_config:HideAddActionUsingOrOperatorForNotesAttachment | Application__c     |                           |                            |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingOrOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed
    Then I see "Add" button inside "Notes" flex table not displayed

  @146837    @validateNotesViewActionWorkingOrNot
  Scenario: validate Notes View action working correctly at programs-planning
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Files" sub tab
    When I add notes records
    When I close modal by clicking the top right x button
    When I click on "View" icon for "Notes Record" inside table
    Then I see the text :
      | Notes Record |

  @146931    @validateEditNotesModalOpensByClickAtEditActionAtNotes
  Scenario: validate Notes edit modal opens by click at Edit action at programs-planning
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Files" sub tab
    When I add notes records
    When I close modal by clicking the top right x button
    When I click on "Edit" icon for "Notes Record" inside table
    Then I see "Edit Notes" modal window is displayed

  @148171    @verifyHideFieldJSONWorkingForLongTextAreaFieldInEditMode
  Scenario: verify hide field json working for long text area fields in edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJSONAtLongTextAreaField | Grantor State Program | Name                      | PBD-17333                  |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "Type__c"
    Then I softly see "Project Goals" is not displayed inside page block detail

  @148172    @verifyHideFieldJSONWorkingForLongTextAreaFieldInViewMode
  Scenario: verify hide field json working for long text area fields in view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJSONAtLongTextAreaField | Grantor State Program | Name                      | PBD-17333                  |
    When I click on "Edit" in the page details
    And I enter value "Loan" into field "Type__c"
    When I click on "Save" in the page details
    Then I softly see "Project Goals" is not displayed inside page block detail

  @148319    @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtPageLayout
  Scenario: verify number field is displayed with 4 decimal places at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-23596                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I enter value "12344" into field "Removenumber__c"
    And I click on "Save" in the page details
    Then I see field "Removenumber" as "12,344.0000"

  @146261    @verifyInternalContactTableIsCollapsedByClickAtCollapsedArrow @wip
  Scenario: validate that Internal Contacts Table is collapsing by click at expand collapse as expected
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Contacts" content inside "Manage Organizations" subheader on left panel
    And I click toggle button to select "Internal"
    And I refresh the page
    And I expand table with header "Internal"
    Then I see "toggleFlexTableflexTableRandomID" table is collapsed

  @146267    @verifyRecipientContactTableIsCollapsedByClickAtCollapsedArrow @wip
  Scenario: validate that recipient Contacts Table is collapsing by click at expand collapse as expected
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Contacts" content inside "Manage Organizations" subheader on left panel
    And I click toggle button to select "Recipient"
    And I expand table with header "Recipient"
    Then I see "toggleFlexTableflexTableRandomID" table is collapsed

  @149193    @verifyInternalContactTableIsExpandedByClickAtExpandArrow @wip
  Scenario: validate that Internal Contacts Table is expanded by click at expand collapse as expected
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Contacts" content inside "Manage Organizations" subheader on left panel
    And I click toggle button to select "Internal"
    Then I see expected table with id "toggleFlexTableflexTableRandomID"

  @149197   @verifyInternalRecipientTableIsExpandedByClickAtExpandArrow @wip
  Scenario: validate that recipient Contacts Table is expanded by click at expand collapse as expected
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Contacts" content inside "Manage Organizations" subheader on left panel
    And I click toggle button to select "Internal"
    Then I see expected table with id "toggleFlexTableflexTableRandomID"

  @149175    @verifyDisplayOfMissingFieldMessageForReqForSavePhoneNumberField
  Scenario: verify missing field msg is displayed for phone no field if req for save is set
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | Grantor State Program | Name                      | PBD-24011                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-24011                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I clear the value from field "Phone_Field__c"
    When I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Phone Field is required to save under Overview. |

  @150972    @verifyDisplayOfMissingFieldMessageForReqForSavePhoneNumberFieldOnModal @wip
  Scenario: verify missing field msg is displayed for phone no field if req for save is set at modal
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Roles and Responsibilities 7 | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Roles and Responsibilities 7 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | Roles and Responsibilities 7 | Name                      | PBD-9267                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Roles and Responsibilities 7 | Name                      | PBD-9267                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    When I clear the value from field "phonetest__c"
    When I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | phonetest is required to save |

  @151109    @verifyDisplayOfMissingFieldMessageForReqForSavePhoneNumberFieldInCreateMode
  Scenario: verify missing field msg is displayed for phone no field if req for save is set at newly created record
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior | --None--          | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | Grantor State Program | Name                      | PBD-24011                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-24011                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "10" seconds
    Then I see the following message in the page details contains:
      | Phone Field is required to save |

  @151138    @verifyDisplayOfMissingFieldMessageForReqForSavePhoneNumberFieldOnModal @wip
  Scenario: verify missing field msg is displayed for phone no field if req for save is set at modal
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Roles and Responsibilities 7 | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Roles and Responsibilities 7 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | Roles and Responsibilities 7 | Name                      | PBD-9267                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Roles and Responsibilities 7 | Name                      | PBD-9267                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I navigate to "Roles" sub tab
    When I click on "Edit" icon for "Owner" inside table
    When I clear the value from field "phonetest__c"
    When I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | phonetest is required to save |

  @149695    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserBackArrowForUnsavedTextFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved text field data by click on browser navigation arrow
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "123" into field "ProgramName__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @149678    @verifyAnAlertMessageIsDisplayedForUnsavedTextFieldDataIfPageRefreshedAtPageLayout
  Scenario: validate the alert message is displayed for unsaved text field data by click on browser refresh
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "123" into field "ProgramName__c"
    And I refresh the page
    And I pause execution for "3" seconds
    Then I see alert popup box

  @149700    @verifyThatUserCanSaveAnUnsavedDataIfPageRefreshedAtPageLayout
  Scenario: validate the user can save unsaved data by click on save button at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I clear the value from field "fieldProgramName__c"
    When I enter value "Test" into field "fieldProgramName__c"
    And I click on "Save" in the page details
    Then I see field "Title" as "Test"

  @148392  @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataInTextFieldAtPageLayout
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in text field at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "" into field "ProjectGoals__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148393    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserBackArrowForUnsavedNumberFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved number field data by click on browser navigation arrow
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1" into field "Number__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148394    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserRefreshButtonForUnsavedNumberFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved number field data by click on browser refresh button
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1" into field "Number__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148395  @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataInNumberFieldAtPageLayout
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in number field at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1" into field "Number__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148398    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserBackArrowForUnsavedCurrencyFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved Currency field data by click on browser navigation arrow
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1" into field "fieldFundedAmount__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148397    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserRefreshButtonForUnsavedCurrencyFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved Currency field data by click on browser refresh button
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1" into field "fieldFundedAmount__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148399  @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataInCurrencyFieldAtPageLayout
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in Currency field at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1" into field "fieldFundedAmount__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148400    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserRefreshButtonForUnsavedPercentFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved Percent field data by click on browser refresh button
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1" into field "Percent__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148401    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserBackArrowForUnsavedPercentFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved Percent field data by click on browser navigation arrow
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1" into field "Percent__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148402  @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataInPercentFieldAtPageLayout
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in Percent field at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1" into field "Percent__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148466    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserBackArrowForUnsavedURLFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved url field data by click on browser navigation arrow
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "www.google.com" into field "URL__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148467    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserRefreshButtonForUnsavedURLFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved url field data by click on browser refresh button
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "www.google.com" into field "URL__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148468  @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataInURLFieldAtPageLayout
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in url field at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "www.google.com" into field "URL__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148469    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserBackArrowForUnsavedLongTextAreaFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved long text area field data by click on browser navigation arrow
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "test" into field "fieldProjectGoals__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148470    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserRefreshButtonForUnsavedLongTextAreaFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved long text area field data by click on browser refresh button
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "test" into field "fieldProjectGoals__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148471  @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataInLongTextAreaFieldAtPageLayout
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in long text area field at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "test" into field "fieldProjectGoals__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148473    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserBackArrowForUnsavedTextAreaFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved text area field data by click on browser navigation arrow
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "test" into field "Authorization__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148474    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserRefreshButtonForUnsavedTextAreaFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved text area field data by click on browser refresh button
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "test" into field "Authorization__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148475  @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataInTextAreaFieldAtPageLayout
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in text area field at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "test" into field "Authorization__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148501    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserBackArrowForUnsavedMultiPicklistFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved multi-picklist field data by click on browser navigation arrow
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I enter value "Other" into field "EligibleApplicantTypes__c"
    When I enter value "test" into field "OtherEligibleApplicantTypes__c"
    And I pause execution for "2" seconds
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148503    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserRefreshButtonForUnsavedMultiPicklistFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved multi-picklist field data by click on browser refresh button
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I enter value "Other" into field "EligibleApplicantTypes__c"
    When I enter value "test" into field "OtherEligibleApplicantTypes__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148505  @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataInMultiPicklistFieldAtPageLayout
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in multi-picklist field at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I enter value "Other" into field "EligibleApplicantTypes__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @149127    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserBackArrowForUnsavedEmailFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved email field data by click on browser navigation arrow
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-24006                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "test@yopmail.com" into field "Email_Test__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @149123    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserRefreshButtonForUnsavedEmailFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved email field data by click on browser refresh button
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-24006                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "test@yopmail.com" into field "Email_Test__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @149131  @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataInEmailFieldAtPageLayout
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in Email field at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-24006                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "test@yopmail.com" into field "Email_Test__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @149156    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserRefreshButtonForUnsavedPhoneFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved Phone field data by click on browser refresh button
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-24011                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "9987" into field "Phone_Field__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @149159    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserBackArrowForUnsavedPhoneFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved Phone field data by click on browser navigation arrow
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-24011                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "9987" into field "Phone_Field__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @149158  @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataInPhoneFieldAtPageLayout
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in Phone field at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-24011                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "9987" into field "Phone_Field__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @146707    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserRefreshButtonForUnsavedPicklistFieldDataAtPageLayout
  Scenario: validate the alert message is displayed for unsaved Picklist field data by click on browser refresh button
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-23985                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "9987" into field "Number__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @146708  @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataInPicklistFieldAtPageLayout
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in Picklist field at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-23985                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "9987" into field "Number__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @151016   @verifyThatUserGetsTheErrorMessageByEnteringInvalidURLAtPageLayout
  Scenario: verify that user gets he validation message with the field name by entering invalid data in url field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I enter value "http://www.example.com:8800/" into field "fieldURL__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details :
      | URL : Please enter valid URL value. |

  @148176    @verifyDisplayOfPicklistFieldDropdownValuesInsidePageLayout
  Scenario: validate that dropdown values under picklist field are displayed properly at edit page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I click dropdown field "fieldIsProjectServiceAreaneeded__c"
    Then I see only the following ordered options in dropdown field "fieldIsProjectServiceAreaneeded__c" :
      | --None-- |
      | Yes      |
      | No       |

  @151531    @verifyByApplyingHideFieldJsonOnPageLayoutThenRecordGetsSavedSuccessfully
  Scenario: verify if applied hide field json on text field and click on save button then record is getting saved successfully
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldUsingHideFiledJSON | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I click on "Save" in the page details
    And I pause execution for "4" seconds
    Then I see "programview" in current url

  @148175  @VerifyMiniPageLayoutAtLookupFieldShouldDisplayedProperlyOnMouseHoverAtPageDetailInEditMode @skipOnJenkins @wip
  Scenario: validate that mini page layout at lookup field is getting displayed properly on mouse hover at page detail in edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    When I hover mouse on lookup link "Shantanu GGP.TEST5"
    And I pause execution for "3" seconds
    Then I softly see title at miniPageLayout is displayed as bold and left aligned
    Then I softly see value at miniPageLayout is displayed as bold and left aligned

  @148753    @requiredForSaveMessageAtPageBlockDetailForRichTextAreaFieldByLoginAsAdminUser-gPlanning
  Scenario: validate required for save message is displayed for rich text field at page layout for ADINuser
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-17330                  |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "CreationWithoutDescription" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    Then I see the following message in the page details contains:
      | Description is required to save under Overview. |

  @151008    @verifyThatUserGetsTheErrorMessageByEnteringInvalidURLAtModal @wip
  Scenario: verify that user gets he validation message with the field name by entering invalid data in url field at modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-343-0034" into field "Program__c"
    When I enter value "dummytextummytextdummytextdummytext" into field "FundingOpportunityURL__c"
    And I click modal button "Continue"
    Then I see the following message in the page details contains:
      | Funding Opportunity Web Address: Please enter valid URL value. |

  @148795  @VerifyRecordsShouldDisplayOnLookupModalAsPerGivenFilterCriteriaInLookupFilterCriteriaFieldUsingANDConditionWindow @wip
  Scenario Outline: validate that lookup filter criteria field using AND operator
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName              | fieldOrignalValue | coreComponentField      | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria | <oldLookupFilter> | GrantIntermediateLayout | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName              | fieldNewValue     | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria | <newLookupFilter> | GrantIntermediateLayout | Name                      | PBD-16570                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on top right button "New ISA Grant" in flex table with id "ActiveGrants"
    When I click search icon for lookup "Internal Organization Lookup (New Window)"
    Then I softly see "Active" inside flex table with id "---program:-:AccountTableId---"

    Examples:
      | newLookupFilter                                                           | oldLookupFilter                                   |
      | RecordType.Name = 'Internal' AND Id != '{!OrgId}' AND Status__c ='Active' | RecordType.Name = 'Internal' AND Id != '{!OrgId}' |

  @148802  @VerifyRecordsShouldDisplayOnLookupModalAsPerGivenFilterCriteriaInLookupFilterCriteriaFieldUsingORConditionWindow @wip
  Scenario Outline: validate that lookup filter criteria field using OR operator
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName              | fieldOrignalValue | coreComponentField      | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria | <oldLookupFilter> | GrantIntermediateLayout | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName              | fieldNewValue     | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria | <newLookupFilter> | GrantIntermediateLayout | Name                      | PBD-16570                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on top right button "New ISA Grant" in flex table with id "ActiveGrants"
    When I click search icon for lookup "Internal Organization Lookup (New Window)"
    Then I pause execution for "30" seconds
    Then I softly see "Active" inside flex table with id "---program:-:AccountTableId---"

    Examples:
      | newLookupFilter                                  | oldLookupFilter                                   |
      | RecordType.Name = 'Internal' OR Id != '{!OrgId}' | RecordType.Name = 'Internal' AND Id != '{!OrgId}' |

  @148732 @verifyThatAddNotesModalWindowIsDisplayedProperlyInSize
  Scenario: verify that add notes modal window is displayed properly
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Files" sub tab
    When I click on top right button "Add" in notes and attachment with name "Notes"
    Then I see modal with id "addAtt" displayed properly

  @148734 @verifyThatEditNotesModalWindowIsDisplayedProperlyInSize
  Scenario: verify that edit notes modal window is displayed properly
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Files" sub tab
    When I add notes records
    When I close modal by clicking the top right x button
    When I click on "Edit" icon for "Notes Record" inside table
    Then I see modal with id "addAtt" displayed properly

  @152777  @VerifyThatPageDoesNotRefreshAfterClickingOnOKAtConfirmationMsgAtPageLayout @wip
  Scenario: validate that page does not refresh after click at confirmation pop-up action "OK" at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I clear the value from field "cke_1_contents"
    And I enter value "Test data" into field "cke_1_contents"
    When I navigate to "Financials" sub tab
    When I perform quick search for "Automation Direct Grant" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "Automation Direct Grant" inside table
    When I enter value "Test Automation123" into field "AddressProgramContact__c"
    And I click on "Save" in the page details
    When I click "Yes" on modal confirmation box
    When I navigate to "Overview" sub tab
    Then I donot see navigation logo on page

  @155305    @validateCurrencyFieldValueAcceptTheNumbersInPageBlockDetail
  Scenario: Validate currency field value accepts the numbers inside page block detail in view mode
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    When I enter value "900000" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    Then I see field "Funded Amount" as "$900,000"

  @155304    @validatePercentFieldValueAcceptTheNumbersInPageBlockDetail
  Scenario: Validate percent field value accepts the numbers inside page block detail in view mode
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    When I enter value "1234" into field "fieldPercent__c"
    And I click on "Save" in the page details
    Then I see field "Percent" as "1,234%"

  @148368  @VerifyTextAreaFieldDisplaysVerticallyAndDoesNotOverLappedOnOtherFieldsAtPageDetailInEditMode
  Scenario: validate that textarea field is displayed vertically alligned and not overlapped on other fields at page detail in edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Road Construction"
    When I click on "Edit" icon for "Road Construction" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "50" seconds
    Then I see field "fieldProjectGoals__c" is vertically resized

  @150747 @VerifyUserSendsRecordsToApproveUserForwardRecordAnotherUserThenRejectOptionAvailable @vaibhavC
  Scenario: Verify User Sends Records To Approve User Forward Record Another User Then Reject Option Available
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId |
      #| Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
    #  | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantor State Program | Name                      | TAB-2011                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reassign" to user "Automation PM" in the approval decision
    When I re-login to "As a Grantor" app as "PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Start" icon for "{SavedValue:PEGMSID}" inside table
    Then I can see the radio button "Reject" in the approval decision

  @159242 @VerifyUserClickOnSubmitForApprovalActionErroMessageDisplayedOnViewMode @vaibhavC @wip
  Scenario: Verify User Click On submit For Approval Action Error Message Displayed On View Mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId |
    #  | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
    #  | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantor State Program | Name                      | TAB-2011                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "Yes" into field "fieldBuildupFunctionalityNeeded__c"
    When I enter value "Yes" into field "fieldRiskAssessmentRequired__c"
    When I enter value "Yes" into field "fieldIsWBSRequired__c"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "savedValue"
    When I navigate to "Overview" sub tab
    When I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | 'Financials' Tab - 'Budget Category' Section : Program Must Have At Least One Budget Category To Be Associated.         |
      | 'Financials' Tab - 'Funding Account Information' Section: Provide At Least One Funding Account.                         |
      | 'Roles' Tab - 'Roles And Responsibility' Section: A Key POC Is Required To Be Associate With The Program.               |
      | 'Roles And Responsibility' Section Under 'Roles' Tab: A Program Approver Is Required To Be Associated With The Program  |
      | 'Program Contacts' Section: Provide At Least One Program Contact.                                                       |
      | 'Log' Tab - 'Program Service Areas' Section: Provide At Least One Project/Service Area For This Program                 |
      | 'Log' Tab - 'Related Federal Programs' Section: Provide At Least One Federal Or NGO Program With This Internal Program. |

  @159299 @VerifyAfterClickingEditButtonAllerrorMessageDisplayedOnViewModeCarryForwardedToEditMode @vaibhavC @wip
  Scenario: Verify After Clicking Edit Button All error Message Displayed On View Mode Carry Forwarded To Edit Mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId |
    #  | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
     # | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantor State Program | Name                      | TAB-2011                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "Yes" into field "fieldBuildupFunctionalityNeeded__c"
    When I enter value "Yes" into field "fieldRiskAssessmentRequired__c"
    When I enter value "Yes" into field "fieldIsWBSRequired__c"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "savedValue"
    When I navigate to "Overview" sub tab
    When I click on "Submit For Approval" in the page details
    When I click on "Edit" in the page details
    Then I see the following message in the page details contains:
      | 'Financials' Tab - 'Budget Category' Section : Program Must Have At Least One Budget Category To Be Associated.         |
      | 'Financials' Tab - 'Funding Account Information' Section: Provide At Least One Funding Account.                         |
      | 'Roles' Tab - 'Roles And Responsibility' Section: A Key POC Is Required To Be Associate With The Program.               |
      | 'Roles And Responsibility' Section Under 'Roles' Tab: A Program Approver Is Required To Be Associated With The Program  |
      | 'Program Contacts' Section: Provide At Least One Program Contact.                                                       |
      | 'Log' Tab - 'Program Service Areas' Section: Provide At Least One Project/Service Area For This Program                 |
      | 'Log' Tab - 'Related Federal Programs' Section: Provide At Least One Federal Or NGO Program With This Internal Program. |

  @160606 @VerifySubjectAndBodyFieldsAreAutoPopulatedWithAlreadyProvidedInvitationData  @vaibhavC @wip
  Scenario: Verify Subject And Body Fields Are Auto Populated With Already Provided Invitation Data
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal Organization(s)" content inside "Activities" subheader on left panel
    When I click on "View" icon for "Secretary of Health" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Pranit Shinde" in "ContactsByAccount" panel
    When I click on "send invitation" icon for "Pranit Shinde" inside table
    Then I see the text :
      | Subject:                                                                                                                                                                                                                  |
      | Invite Primary Users for Child Organizations                                                                                                                                                                              |
      | Hello Pranit Shinde,                                                                                                                                                                                                      |
      | You are invited to become an user.                                                                                                                                                                                        |
      | Please click on the url below to create your login account to register as an External User in the Enterprise Management System (EGMS), which will be used to manage the entire application intake and evaluation process. |
      | You will be prompted to sign a Non-Disclosure Agreement and Conflict of Interest Agreement.                                                                                                                               |
      | Sincerely,                                                                                                                                                                                                                |
      | EGMS Team                                                                                                                                                                                                                 |

  @160855    @verifyHideFieldJsonFieldByHidingUrlFieldOnTheEnhancedFlexEditLayoutWithEqualToOpratorInEditMode @abhishekS @wip
  Scenario: Set up hide field json value to Hide URL field from Program information page block using checkbox field value with Equal to oprator in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON    |                    | Grantor State Program | ApiGeneratedId:0 |
      | Flex Table Action                        | Hide Decision Field | HideEdit1Button__c |                       | ApiGeneratedId:1 |
     # | Page Tabs Config                         | Highlights Panel?   | false              |                       | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON    | govgrants_config:HideFeildJSONEnhacedFlexEditLayoutURLFieldinHideEditModeUsingEqualToOperator | Grantor State Program | Name                      | PBD-23599                  |
      | Flex Table Action                        | Hide Decision Field |                                                                                               | Programs              | Name                      | Edit1                      |
     # | Page Tabs Config:Page Layout Action      | Highlights Panel?   | true                                                                                          | Grantor State Program | Name                      | TAB-2011                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Edit" icon for "{SavedValue:PEGMSID}" inside table
    When I navigate to "Overview" sub tab
    And I enter value "Unchecked" into field "fieldCFDA_Data__c"
    Then I see "fieldURL__c" is not displayed inside page block detail

  @160862    @verifyHideFieldJsonFieldByHidingUrlFieldOnTheEnhancedFlexEditLayoutWithEqualToOpratorInViewMode @abhishekS @wip
  Scenario: Set up hide field json value to Hide URL field from Program information page block using checkbox field value with Equal to oprator in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON    |                    | Grantor State Program | ApiGeneratedId:0 |
      | Flex Table Action                        | Hide Decision Field | HideEdit1Button__c |                       | ApiGeneratedId:1 |
   #   | Page Tabs Config                         | Highlights Panel?   | false              |                       | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON    | govgrants_config:HideFeildJSONEnhacedFlexEditLayoutURLFieldCheckedThenHideEditModeUsingEqualToOperator | Grantor State Program | Name                      | PBD-23599                  |
      | Flex Table Action                        | Hide Decision Field |                                                                                                        | Programs              | Name                      | Edit1                      |
    #  | Page Tabs Config:Page Layout Action      | Highlights Panel?   | true                                                                                                   | Grantor State Program | Name                      | TAB-2011                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Edit" icon for "{SavedValue:PEGMSID}" inside table
    When I navigate to "Overview" sub tab
    And I enter value "Checked" into field "CFDA_Data__c"
    Then I see "URL" is not displayed inside page block detail

  @160923 @verifyHideFieldJsonFieldByHidingUrlFieldOnTheEnhancedFlexEditLayoutWithNotEqualToOpratorInEditMode @abhishekS @wip
  Scenario: Set up hide field json value to Hide URL field from Program information page block using checkbox field value with Not Equal to oprator in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON    |                    | Grantor State Program | ApiGeneratedId:0 |
      | Flex Table Action                        | Hide Decision Field | HideEdit1Button__c |                       | ApiGeneratedId:1 |
     # | Page Tabs Config                         | Highlights Panel?   | false              |                       | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON    | govgrants_config:HideFeildJSONEnhacedFlexEditLayoutURLFieldinHideEditModeUsingNotEqualToOperator | Grantor State Program | Name                      | PBD-23599                  |
      | Flex Table Action                        | Hide Decision Field |                                                                                                  | Programs              | Name                      | Edit1                      |
    #  | Page Tabs Config:Page Layout Action      | Highlights Panel?   | true                                                                                             | Grantor State Program | Name                      | TAB-2011                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Edit" icon for "{SavedValue:PEGMSID}" inside table
    When I navigate to "Overview" sub tab
    And I enter value "Checked" into field "CFDA_Data__c"
    Then I see "URL" is not displayed inside page block detail

  @160934 @verifyHideFieldJsonFieldByHidingUrlFieldOnTheEnhancedFlexEditLayoutWithNotEqualToOpratorInViewMode @abhishekS @wip
  Scenario: Set up hide field json value to Hide URL field from Program information page block using checkbox field value with Not Equal to oprator in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON    |                    | Grantor State Program | ApiGeneratedId:0 |
      | Flex Table Action                        | Hide Decision Field | HideEdit1Button__c |                       | ApiGeneratedId:1 |
     # | Page Tabs Config                         | Highlights Panel?   | false              |                       | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON    | govgrants_config:HideFeildJSONEnhacedFlexEditLayoutURLFieldinHideViewModeUsingNotEqualToOperator | Grantor State Program | Name                      | PBD-23599                  |
      | Flex Table Action                        | Hide Decision Field |                                                                                                  | Programs              | Name                      | Edit1                      |
     # | Page Tabs Config:Page Layout Action      | Highlights Panel?   | true                                                                                             | Grantor State Program | Name                      | TAB-2011                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Edit" icon for "{SavedValue:PEGMSID}" inside table
    When I navigate to "Overview" sub tab
    And I enter value "Unchecked" into field "CFDA_Data__c"
    Then I see "URL" is not displayed inside page block detail

  @161381    @verifyQueueLookupFieldIsDisableOnPBDJsonExpressionUsingEqualToOprator @abhishekS @wip
  Scenario: Set up BPD JSON expression of Queue lookup feild to Disable using 'Equal To' operator the Queue look up feild is disable on modal window
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Roles and Responsibilities 7 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                   | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisableQueueLookupFeildOnPBDJSONExpressionUsingEqualToOperator | Roles and Responsibilities 7 | Name                      | PBD-8028                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Roles" sub tab
    And I click on "Edit" in the page details
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    When I enter value "User" into field "UserType__c"
    Then I see field "QueueId__c" is disabled

  @161387    @verifyQueueLookupFieldIsDisableOnPBDJsonExpressionUsingNotEqualToOprator @abhishekS @wip
  Scenario: Set up BPD JSON expression of Queue lookup feild to Disable using 'Not Equal To' operator the Queue look up feild is disable on modal window
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Roles and Responsibilities 7 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                      | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisableQueueLookupFeildOnPBDJSONExpressionUsingNotEqualToOperator | Roles and Responsibilities 7 | Name                      | PBD-8028                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I click on "Edit" in the page details
    When I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    When I enter value "User" into field "UserType__c"
    Then I see field "Queue Lookup" inside page block

  @161413 @VerifyIfWeDisabledOwnerOrganizationFieldOnPBDJsonExpressionUsingEqualToOperatorThenOwnerOrganizationFieldDisabled @vaibhavC
  Scenario: Verify If We Disabled Internal Organization Field On PBD Json Expression Using Equal To Operator Then Internal Organization Field Disabled
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonPageLayoutUsingEqualToOperatorDisableProgramOrganisationField | Grantor State Program | Name                      | PBD-17333                  |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "EGMSID"
    When I navigate to "Overview" sub tab
    Then I see field "Account__c" is disabled

  @161419 @VerifyIfWeEnabledOwnerOrganizationFieldOnPBDJsonExpressionUsingNotEqualToOperatorThenOwnerOrganizationFieldEnabled @vaibhavC
  Scenario: Verify If We Enabled Internal Organization Field On PBD Json Expression Using Not EqualTo Operator Then Internal Organization Field Enabled
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonPageLayoutUsingNotEqualToOperatorEnableProgramOrganisationField | Grantor State Program | Name                      | PBD-17333                  |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "EGMSID"
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    Then I see field "Internal Organization" inside page block

  @161475 @VerifyOnViewModeDisableQueuedLookupFieldOnPBDJsonExpressionUsingEqualToOperatorThenQueuedLookupFieldIsDisable @vaibhavC @wip
  Scenario: Verify On View Mode Disable Queued Lookup Field On PBD Json Expression Using Equal To Operator Then Queued Lookup Field Is Disable
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Roles and Responsibilities 7 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                             | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonPageLayoutOnViewModeDisableQueuedLookupUsingEqualToOperator | Roles and Responsibilities 7 | Name                      | PBD-8028                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    And I enter value "User" into field "UserType__c"
    Then I see field "QueueId__c" is disabled

  @161484 @VerifyOnViewModeEnableQueuedLookupFieldOnPBDJsonExpressionUsingNotEqualToOperatorThenQueuedLookupFieldIsDisable @vaibhavC @wip
  Scenario: Verify On View Mode Enable Queued Lookup Field On PBD Json Expression Using Not Equal To Operator Then Queued Lookup Field Is Disable
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Roles and Responsibilities 7 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                      | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisableQueueLookupFeildOnPBDJSONExpressionUsingNotEqualToOperator | Roles and Responsibilities 7 | Name                      | PBD-8028                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I click on "Save" in the page details
    When I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    And I select "User" from dropdown
    And I pause execution for "10" seconds
    Then I see field "fieldQueueId__c" is disabled
    #Then I see below fields in "Information" page block
     # | Queue Lookup |

  @161568    @verifyThatOnEditActionIfUserDoNotShowTheFeildUsingJsonExpEqualToOpreatorThenFeildIsDoNotShowOnPageLayout   @abhishekS
  Scenario: verify Internal Organization field is not displayed if user is not displayed using hide field json on Page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:OwnerOrgnizationFeildDoNotShowUsingJSONExpressionUsingEqualToOperator | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "Test Program For Automation - Expression Builder 2" into field "fieldProgramName__c"
    When I enter value "242018" into field "FederalProgramCFDA__c"
    And I enter value "Project Grants" into field "Type__c"
    Then I softly cannot see field "Internal Organization" inside page block

  @162122    @verifySuccessMessageSetFromPageMessageOnPageBlockAndNoNullTextIsDisplay @wip
  Scenario: validate success message set from page message config is displayed at view page block and no null text is display
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Message Config   | Hide For User | Internal          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                      | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Message Config:Page Block Rule Detail | Hide For User |               | Grantor State Program | Name                      | LM-0071                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I softly see the following message in the page details contains:
      | TEST PAGE BLOCK SUCCESS MSG DND |
    Then I softly see "null" is not displayed inside page block detail

  @158907 @verifyMultiPicklistFieldIsRenderedAsChekboxThenWeAreAddingSelectAllOption
  Scenario: To validate that if there is multi picklist field is rendred as checkbox then add extra checkbox as Select All Option
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I select below checkbox options for field "fieldTypesOfAssistance__c"
      | Display 2 |
      | Display 1 |

  @158474    @verifySelectAllCheckboxIsRemovedFromUIPageLayoutforMultiselectPicklistOnEditLayout
  Scenario: verify Select All Chcekbox Is Removed From UI Page Layout for the Multiselect Picklist Rendering on Edit layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I do not see below checkbox options for field "TypesOfAssistance__c"
      | Select All |

  @161670    @verifyThatOnEditActionIfUserDoNotShowTheFeildUsingPBDJsonExpNOTEqualToOpreatorThenFeildIsDoNotDisplayOnPageLayout   @abhishekS
  Scenario: verify Internal Organization field is not displayed if user is not displayed using hide field PBD json exp Not Equal To operator on Page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:OwnerOrgnizationFeildDoNotShowUsingJSONExpressionUsingNotEqualToOperator | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "Test Program For Automation - Expression Builder 2" into field "fieldProgramName__c"
    When I enter value "242018" into field "FederalProgramCFDA__c"
    And I enter value "Project Grants" into field "Type__c"
    Then I softly cannot see field "Internal Organization" inside page block

  @161571    @verifyQueueLookupFieldIsDisableOnPBDJsonExpressionUsingEqualToOpratorWhenUserDoNotShow @abhishekS @wip
  Scenario: Set up BPD JSON expression of Queue lookup feild to Disable using 'Equal To' operator the Queue look up feild is disable on modal window
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Roles and Responsibilities 7 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                               | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:ShowQueueLookupFeildOnPBDJSONExpressionUsingEqualToOperatorWhenUserNotShow | Roles and Responsibilities 7 | Name                      | PBD-8028                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    When I enter value "User" into field "UserType__c"
    Then I softly cannot see field "Queue Lookup" inside page block

  @165045   @verifyWhenUserApplyJSONOnHistoryObjectThenFieldHistoryDropdownShowForGrantee @wip
  Scenario: To verify that When User apply JSON on history object then Field History dropdown show  child records for grantee
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName       | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | History Objects |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName       | fieldNewValue                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | History Objects | govgrants_config:JsonForDropdownHideConfigForText | Announcement__c    |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantee"
    And I navigate to "Opportunities" tab
    When I perform quick search for "FOA-USAID-004"
    When I click on "View" icon for "FOA-USAID-004" inside table
    When I navigate to "History" sub tab
    When I softly see expected table with id "toggleFlexTableHistory"
    When I softly see the text :
      | Field History |
    Then I see "text" is displayed inside History table dropdown menu

  @158470 @ValidateTypeOfAssistanceInTheMultiselectPicklistReadOnlyForThePageLayoutConfig
  Scenario: Validate Type Of Assistance In The Multiselect Picklist Read Only For The Page Layout Config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only | true          | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly see that "TypesOfAssistance__c" rendered in view mode only


  @163994 @ValidateLoggingInInternalUserHomePageUiIsNotBreakingAndRenderingProperly @wip
  Scenario: Validate Logging In Internal User Home Page Ui Is Not Breaking And Rendering Properly
    Given I have "customMetaData" configuration as below:
      | id                 | label   | booleanValue | customMetaDataApiName    |
      | m036O000000k9wRQAQ | BaseURL | false        | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label   | booleanValue | customMetaDataApiName    |
      | m036O000000k9wRQAQ | BaseURL | true         | GNT__KeyValueHolder__mdt |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    Then I see "Home" phase

  @158464 @ValidateEditLayoutMultipickListTypeOfInstanceOnUiDisplayProperly
  Scenario: Validate Edit Layout Multipick List Type Of Instance On Ui Display Properly
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    Then I see field "Eligible Applicant Types" inside page block

  @153789 @ValidateSingleCheckboxIsDisplayedForCheckboxField
  Scenario: Validate Single Checkbox Is Displayed For Checkbox Field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I see checkbox is displayed for field "fieldCFDA_Data__c"

  @165040 @ValidateUserApplyJsonOnHistoryObjectThenHistoryDropdownShowChildRecord
  Scenario: Validate User Apply Json On History Object Then History Dropdown Show Child Record
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName       | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | History Objects |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName       | fieldNewValue                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | History Objects | govgrants_config:JsonForHistoryObjectForChildGrantee | Announcement__c    |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "View" icon for "Announcement for Testing" inside table
    When I navigate to "History" sub tab
    When I softly see expected table with id "toggleFlexTableHistory"
    When I softly see the text :
      | Field History |
    Then I see "Budget Period" is displayed inside History table dropdown menu

  @170110 @tejal @wip
  Scenario: verify Relationship fields  should be shown as text in View layout when 'show link as text' checkbox is check
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Show Link as Text | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Show Link as Text | true          | Grantor State Program | Name                      | PBD-23603                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I softly see field "Show Link as Text" as "GT-HRGr-001"
    Then I softly do not see link "GT-HRGr-001" inside Page block

  @170111 @tejal @wip
  Scenario: verify Relationship fields  should be shown as text in Edit  layout when 'show link as text' checkbox is check
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Show Link as Text | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Show Link as Text | true          | Grantor State Program | Name                      | PBD-23603                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I softly see field "Show Link as Text" as "GT-HRGr-001"

  @170112 @tejal @wip
  Scenario: Verify Relationship fields  should be shown as Hyperlink not a text  in Edit  layout when 'show link as text' checkbox is uncheck
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Show Link as Text | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Show Link as Text | false         | Grantor State Program | Name                      | PBD-23603                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I softly see field "Show Link as Text" as "GT-HRGr-001"
    Then I softly see link "GT-HRGr-001" inside Page block

  @170113 @tejal @wip
  Scenario: Verify Relationship fields  should be shown as Hyperlink not a text  in view   layout when 'show link as text' checkbox is uncheck
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Show Link as Text | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Show Link as Text | false         | Grantor State Program | Name                      | PBD-23603                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I softly see field "Show Link as Text" as "GT-HRGr-001"
    Then I softly see link "GT-HRGr-001" inside Page block

  @171511 @sprint19 @169581userstory @jyoti
  Scenario: page layout -To verify,alternate rendering is configured for multi-select picklist fields and the User checked the "Hide Select All Checkbox" field from the config, then select all the options is enabled on the page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I select below checkbox options for field "fieldTypesOfAssistance__c"
      | Display 2 |
      | Display 1 |
    Then I do not see below checkbox options for field "fieldTypesOfAssistance__c"
      | Select All |

  @171512 @jyoti
  Scenario: page layout -To verify,alternate rendering is configured for Long text area or text field, the user should be able to check the checkbox when Hide Select All Checkbox is checked
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | PBD-23996                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    Then I select below checkbox options for field "CFDA_Data__c"
      | YES |

  @174383 @jyoti
  Scenario: page layout -To verify,alternate rendering is configured for multi-select picklist fields and the User unchecked the "Hide Select All Checkbox" field from the config, then select all the options is enabled on the page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false         | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I select below checkbox options for field "fieldTypesOfAssistance__c"
      | Display 2 |

  @171596 @jyoti @wip
  Scenario: To verify,alternate rendering is configured for text   field, the admin  user should be able to check the checkbox
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-23990                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "PG-343-0079"
    When I click on "Edit" icon for "PG-343-0079" inside table
    When I navigate to "Overview" sub tab
    Then I enter value "checked" into field "fieldProjectGoals__c

  @171518 @jyoti
  Scenario: page layout -To verify,alternate rendering is configured for Long text area or text field, the user should be able to check the all checkbox when Hide Select All Checkbox is unchecked
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId          |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0  |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:1  |
      | Page Block Config:Page Block Rule Detail | Is Active                | false             | Grantor State Program | ApiGeneratedId: 2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false         | Grantor State Program | Name                      | PBD-23996                  |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false         | Grantor State Program | Name                      | PBD-23990                  |
      | Page Block Config:Page Block Rule Detail | Is Active                | true          | Grantor State Program | Name                      | PBD-23990                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "60" seconds
    Then I select below checkbox options for field "fieldObjectives__c"
      | YES |
    Then I select below checkbox options for field "fieldProjectGoals__c"
      | YES |

  @171517 @jyoti
  Scenario:page layout -To verify,alternate rendering is configured for Long text area or text field, the user should be able to check the all checkbox when Hide Select All Checkbox is checked
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId          |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0  |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:1  |
      | Page Block Config:Page Block Rule Detail | Is Active                | false             | Grantor State Program | ApiGeneratedId: 2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | PBD-23996                  |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | PBD-23990                  |
      | Page Block Config:Page Block Rule Detail | Is Active                | true          | Grantor State Program | Name                      | PBD-23990                  |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    And I pause execution for "20" seconds
    Then I select below checkbox options for field "fieldObjectives__c"
      | YES |

  @205806 @ToverifyValidationmessageshoulddisplayproperlywhenweusefieldlabeloverrideinarialfontStyleforcurrencyfieldforautomationuser @Jyoti
  Scenario: To verify - Validation message should display properly when we use field label override in arial font Style for currency field  for automation user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "8888888888888888888888888888888888" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Funded Amount : Number is too large. |

  @205808p @218874 @ToverifyValidationmessageshoulddisplayproperlywhenweusefieldlabeloverrideinarialfontStylefornumberfieldforinternaluser @jyoti
  Scenario: To verify - Validation message should display properly when we use field label override in arial font Style for Number   field  for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "111111111111111111111111111111111" into field "fieldNumber__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Number : Number is too large. |

  @205807 @Toverify-ValidationmessageshoulddisplayproperlywhenweusefieldlabeloverrideinarialfontStyleforpercentfieldforinternaluser
  Scenario: To verify - Validation message should display properly when we use field label override in arial font Style for percent  field  for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "111111111111111111111111111111111" into field "fieldPercent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Percent : Number is too large. |

  @205810 @ToverifyValidationmessageshoulddisplayproperlywhenweusefieldlabeloverrideinarialfontStyleforNumberfieldforinternaluser @Jyoti
  Scenario: To verify - Validation message should display properly when we use field label override in arial font Style for Number   field  for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "111111111111111111111111111111111" into field "fieldNumber__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Number : Number is too large. |

  @205809 @ToverifyValidationmessageshoulddisplayproperlywhenweusefieldlabeloverridinCalibriLight(Headings)fontStyleforcurrencyfieldforinternaluser
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri Light(Headings) font Style for currency field  for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "111111111111111111111111111111111" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Funded Amount : Number is too large. |

  @205812 @ToverifValidationmessageshoulddisplayproperlywhenweusefieldlabeloverrideinCalibriLight(Headings)fontStyleforNumbefieldforinternaluser @Jyoti
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri Light(Headings) font Style for Number   field  for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "111111111111111111111111111111111" into field "fieldNumber__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Number : Number is too large. |

  @205811 @ToverifyValidationmessageshoulddisplayproperlywhenweusefieldlabeloverrideinCalibriLight(Headings)fontStyleforpercentfieldforinternaluser
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri Light(Headings) font Style for percent  field  for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "111111111111111111111111111111111" into field "fieldPercent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Percent : Number is too large. |

  @205813 @ToverifyValidationmessageshoulddisplayproperlywhenweusefieldlabeloverrideinCalibri(Body)fontStyleforcurrencyfieldforinternaluser
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for currency field  for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "111111111111111111111111111111111" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Funded Amount : Number is too large. |

  @205815 @ToverifyValidationmessageshoulddisplayproperlywhenweusefieldlabeloverrideinCalibri(Body)fontStylefornumberfieldforinterluser
  Scenario:  To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for Number   field for interl user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "111111111111111111111111111111111" into field "fieldNumber__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Number : Number is too large. |

  @205798 @ValidationMessageShuoldDisplayWhenWeUseLablOverride @Jyoti @sprint5
  Scenario:  To verify - Validation message should display properly when we use field label override in  font Arial Nova for currency field (Nauman shahid
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Funded Amount     | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-17329                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "111111111111111111111111111111111" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @206506 @ValidatonMessageShouldDisplyedInArialFont @sprint5 @Jyoti
  Scenario: To verify - Validation message should display properly when we use field label override in arial  for currency field Automation user(Nauman shahid)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Funded Amount     | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Dynamic field | Grantor State Program | Name                      | PBD-17329                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "111111111111111111111111111111111" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Dynamic field : Number is too large. |

  @206456 @ValidationMessageShouldDisplayInCalibriFont @sprint5 @Jyoti
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri for currency field Automation user(Nauman shahid)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Funded Amount     | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Dynamic field Config | Grantor State Program | Name                      | PBD-17329                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "111111111111111111111111111111111" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Dynamic field Config : Number is too large. |

  @206566 @ErrorMessageShouldbeDisplayInPercentField @sprint5 @Jyoti
  Scenario: To verify - Validation message should display properly when we use field label override in arial  for Percent field Automation user(Nauman shahid)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Dynamic field | Grantor State Program | Name                      | PBD-23987                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "111111111111111111111111111111111" into field "fieldPercent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Dynamic field : Number is too large. |

  @206570 @ValidationMessageShouldDisplyWhrenFontIsArialNovaForPercentField @Jyoti @sprint5
  Scenario: To verify - Validation message should display properly when we use field label override in  font Arial Nova for Percent field (Nauman shahid
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-23987                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "111111111111111111111111111111111" into field "fieldPercent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @206569 @ErroressageShouldDisplyedInCallabriForPercentField @Sprint5 @Jyoti
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri for percent  field Automation user(Nauman shahid)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Dynamic field Config | Grantor State Program | Name                      | PBD-23987                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "111111111111111111111111111111111" into field "fieldPercent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Dynamic field Config : Number is too large. |

  @206571 @ValidationMessageeShouldDisplyInArialNovaFont @sprint5 @jyoti
  Scenario: To verify - Validation message should display properly when we use field label override in  font Arial Nova for Number field (Nauman shahid
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Number            | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-23985                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I pause execution for "4" seconds
    When I enter value "111111111111111111111111111111111" into field "fieldNumber__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @206572 @ErrormESSAGEdisplyedForNumberField @sprint5 @Jyoti
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri for Number  field Automation user(Nauman shahid)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Number            | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Dynamic field Config | Grantor State Program | Name                      | PBD-23985                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "111111111111111111111111111111111" into field "fieldNumber__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details contains:
      | Dynamic field Config : Number is too large. |

  @171509 @jyoti
  Scenario: page layout -To verify,alternate rendering is configured for Long text area  field, the admin user should be able to check the checkbox
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I select below checkbox options for field "fieldObjectives__c"
      | YES |

  @170159 @tejal
  Scenario: Verify When Snapshot is generated manually, When pass the name dynamically from keyValueMap is not given then filename is not display on   'snapshot history'
   # Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Snapshot History"

  @172151 @jyoti
  Scenario: Page layout-To verify User hover over the lookup field icon on page layout then it should display the Field label override name from the GovGrants side.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Internal Organization" inside page block

  @172215 @jyoti
  Scenario: Page layout-To verify User fill the lookup field ( Required for submit  ) and save the record and after edit the same record  then it should display the Field label override name from the GovGrants side.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | --None--          | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17097                  |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Internal Organization" inside page block

  @172178 @jyoti
  Scenario: Page layout-To verify User hover over the lookup field icon(Required Behavior-required to save ) on page layout edit mode  then it should display the Field label override name from the GovGrants side.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | --None--          | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-17097                  |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Internal Organization" inside page block

  @172212 @jyoti
  Scenario: Page layout-To verify User fill the lookup field and save the record and after edit the same record  then it should display the Field label override name from the GovGrants side.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Internal Organization" inside page block

  @172179 @jyoti
  Scenario: Page layout-To verify User hover over the lookup field icon(Required Behavior-required to save ) on page layout edit mode  then it should display the Field label override name from the GovGrants side.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | --None--          | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-17097                  |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "5" seconds
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Internal Organization" inside page block

  @172154 @jyoti
  Scenario: Page layout-To verify User hover over the lookup field icon on page layout then it should display the Field label override name from the object level  side
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue     | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Internal Organization | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override |               | Grantor State Program | Name                      | PBD-17097                  |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "5" seconds
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Organization" inside page block

  @172213 @jyoti
  Scenario:Page layout-To verify User fill the lookup field ( Required for save ) and save the record and after edit the same record  then it should display the Field label override name from the GovGrants side.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | --None--          | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-17097                  |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "5" seconds
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Internal Organization" inside page block

  @172155 @jyoti @wip
  Scenario: Page layout-To verify User hover over the lookup field icon on (Required Behavior-required to save)  modal   then it should display the Field label override name from the GovGrants side.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    And I click on top right button "Create" in flex table with id "---program:-:ProgramsTableIdNew---"
    And I hover mouse on text with id "Program__c"
    Then I see lookup link " Program ID" inside page block

  @186950 @sprint26
  Scenario: To verify, all the Multiselect picklist fields (Selected/Unselected) should be displayed on the UI in View Mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly see field "Types Of Assistance" inside page block

  @189071 @sprint26
  Scenario: To verify, Multiselect picklist field is marked as 'Hide Label' from page layout config, then its Label should not be visible on Page layout in Edit mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Label | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Label | true          | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Types Of Assistance" inside page block

  @189072 @sprint26
  Scenario: To verify, Multiselect picklist field is marked as 'Hide Label' from page layout config, then its Label should not be visible on Page layout in View mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Label | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Label | true          | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Types Of Assistance" inside page block

  @189074 @sprint26
  Scenario: To verify, Multiselect picklist field's lable is overriden with 'Field Label Override' config, then it should be visible on Page layout in Edit mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Automation    | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I perform quick search for "Test Approver Table"
    And I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly see field "Automation" inside page block

  @189075 @sprint26
  Scenario: To verify, Multiselect picklist field's lable is overriden with 'Field Label Override' config, then it should be visible on Page layout in View mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Automation    | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly see field "Automation" inside page block

  @189077 @spriint26
  Scenario: To verify, Multiselect picklist field is marked as 'Is Hidden Field' from page layout config, then it should not be visible on Page layout in Edit mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName       | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Hidden Field | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Hidden Field | true          | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Types Of Assistance" inside page block

  @189078 @sprint26
  Scenario: To verify, Multiselect picklist field is marked as 'Is Hidden Field' from page layout config, then it should not be visible on Page layout in View mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName       | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Hidden Field | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Hidden Field | true          | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Types Of Assistance" inside page block

  @189082 @sprint26
  Scenario: To verify, if "Disable Select All' config is checked, then 'Select all' is not displayed on Page layout in Edit mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Select all" inside page block

  @172177 @sprint19 @wip
  Scenario: Page layout-To verify User hover over the lookup field icon on modal   then it should display the Field label override name from the GovGrants side.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    And I click on top right button "Create" in flex table with id "---program:-:ProgramsTableIdNew---"
    And I hover mouse on text with id "Program__c"
    Then I see lookup link " Program ID" inside page block

  @172175 @sprint19 @wip
  Scenario: Page layout-To verify User hover over the lookup field icon (Required Behavior-required to save) on modal   then it should display the Field label override name from the GovGrants side.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    And I click on top right button "Create" in flex table with id "---program:-:ProgramsTableIdNew---"
    And I hover mouse on text with id "Program__c"
    Then I see lookup link " Program ID" inside page block

  @181120 @Toverifyifanyfieldisrequiredtosaveanduserclickonsavebuttonthenitshowsthevalidationmessageonmodal,notredirectingtotheeditlayout @wip
  Scenario: To verify, if any field is required to save and user click on save button then it shows the validation message on modal, not redirecting to the edit layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I pause execution for "2" seconds
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "flexTableDivId"
    And I click modal button "Continue"
    Then I see the following message in the page details contains:
      | Program ID is required to save. |

  @174655 @sprint20 @userstory_171188
  Scenario: page layout : To verify, User should see the  name of the subrecipient's organization  under the planning /home Pending Tasks (Assigned to Me)
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    Then I softly see value "test 171385" for title "Organization Name" inside table "---program:-:programTableDivId---"

  @186955 @sprint26
  Scenario: To verify, 'Select All' option out of Multiselect picklist fields should not be displayed in Edit Layout the UI in View Mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Select All" inside page block

  @189066 @sprint26
  Scenario: To verify, Multiselect picklist field is marked as 'Read Only' from page layout config, then it should not be editable on Page layout in Edit mode (but 'Select All' option should be visible)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only | true          | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly see field "Types Of Assistance" inside page block

  @189068 @sprint26
  Scenario: To verify, Multiselect picklist field is marked as 'Read Only' from page layout config, then it should not be editable on Page layout in View mode (without 'Select All' option)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only | true          | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly see field "Types Of Assistance" inside page block

  @189083 @sprint26
  Scenario: To verify, if "Disable Select All' config is checked, then 'Select all' is not displayed on Page layout in View mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | PBD-23995                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Select All" inside page block

  @205789 @ToVerifyPercentageNumberCurrencyandFormulafields @Sprint5 @dnyaneshwari
  Scenario: To verify, Verified for Percentage, Number, Currency and Formula  (Text)  fields
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "111111111111111111111111111111111111111111111" into field "Percent__c"
    When I enter value "222222222222222222222222222222222222222222222222" into field "Number__c"
    When I enter value "888888888888888888888888888888888888" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Funded Amount : Number is too large. |
    Then I see the following message in the page details contains:
      | Number : Number is too large. |
    Then I see the following message in the page details contains:
      | Percent : Number is too large. |

  @205795 @ToVerifyValidationMessageShouldDisplayProperly @Sprint5 @dnyaneshwari @wip
  Scenario: To verify - Validation message should display properly when we use field label override in arial font Style for percent  field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-23987                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1123345678456785667456789765432765443" into field "Percent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @205796 @ToVerifyValidationMessageShouldDisplayProperly @Sprint5 @dnyaneshwari
  Scenario: To verify - Validation message should display properly when we use field label override in arial font Style for Number   field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Number            | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-23985                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "123456783456789456789045678945678" into field "Number__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @205800 @ToVerifyValidationMessageShouldDisplayProperly @Sprint5 @dnyaneshwari @wip
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri Light(Headings) font Style for percent  field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-23987                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1234567834567834567834567834567834567" into field "Percent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @205802 @ToVerifyValidationMessageShouldDisplayProperly @Sprint5 @dnyaneshwari
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri Light(Headings) font Style for Number   field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Number            | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-23985                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "13456789034567894567890234567" into field "Number__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @205803 @ToVerifyValidationMessageShouldDisplayProperly @Sprint5 @dnyaneshwari
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for currency field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Funded Amount     | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-17329                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1234567345673456734567345673456" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @205804 @ToVerifyValidationMessageShouldDisplayProperly @Sprint5 @dnyaneshwari
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for percent  field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-23987                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1123345678456785667456789765432765443" into field "Percent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @205805 @ToVerifyValidationMessageShouldDisplayProperly @Sprint5 @dnyaneshwari
  Scenario:  To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for Number   field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Number            | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-23985                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "145678967890673456784567894567896788" into field "Number__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @205814 @ToVerifyValidationMessageShouldDisplayProperly @Sprint5 @dnyaneshwari @wip
  Scenario:  To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for percent  field  for internal user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-23987                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "1123345678456785667456789765432765443" into field "Percent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @205794 @ToVerifyValidationMessageShouldDisplayProperly @Sprint5 @dnyaneshwari
  Scenario:  To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for percent  field  for internal user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Funded Amount     | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-17329                  |
    When I login to "As a Grantor" app as "pm" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I enter value "123456789012345676785678567867897890" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @208958 @ValidationMessageShouldNotDisplay @Sprint5 @wip
  Scenario: Validation message should not display when user enter 4 digit no
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "1234" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Funded Amount : Number is too large." error

  @208960 @ValidationMessageShouldNotDisplay @Sprint5
  Scenario: To verify - Validation message should not display when user enter 4 digit no for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "1111" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Funded Amount : Number is too large." error

  @208962 @ValidationMessageShouldNotDisplay @Sprint5 @wip
  Scenario:Validation message should not display when user enter 4 digit no for automation user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "1234" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Funded Amount : Number is too large." error

  @208963 @ValidationMessageShouldNotDisplay @Sprint5
  Scenario: To verify - Validation message should not display properly when user enter 4 digit number
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "1123" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Percent : Number is too large." error

  @208965 @ValidationMessageShouldNotDisplay @Sprint5
  Scenario:  To verify - Validation message should not display properly when user enter 4 digit number for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "1123" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Percent : Number is too large." error

  @208833 @HiddenTheTextFieldWhichAreRequiredForSaveThenNoValidationMessageDisplayedOnUI @Jyoti
  Scenario: To verify, When hidden the Text fields which are required for save then no validation error is displayed on UI on saving the record
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonForThePageBlockFieldHide | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I select "Project Grants" from dropdown
    Then I see "Title" is not displayed inside page block detail
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I cannot see the following message in the page details :
      | Title is required to save |

  @208830 @HiddenTheTextFieldWhichAreRequiredForSaveThenNoValidationMessageDisplayedOnUIAfteAppiedJson @Jyoti
  Scenario: To verify, When hidden the Lookup  fields which are required for save then no validation error is displayed on UI on saving the record
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonForThePageBlockFieldHideForHideJson | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I select "Project Grants" from dropdown
    Then I see "Internal Organization" is not displayed inside page block detail
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I cannot see the following message in the page details :
      | Internal Organization is required to save |

  @208829 @HiddenTheTextFieldWhichAreRequiredForSaveThenNoValidationMessageDisplayedOnUIAfteAppiedJsonNumberField @Jyoti
  Scenario: To verify, When hidden the Number fields which are required for save then no validation error is displayed on UI on saving the record
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonForThePageBlockFieldHideForHideJsonNumberField | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I select "Project Grants" from dropdown
    Then I see "fieldNumber__c" is not displayed inside page block detail
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I cannot see the following message in the page details :
      | Number Organization is required to save |

  @208828 @HiddenTheTextFieldWhichAreRequiredForSaveThenNoValidationMessageDisplayedOnUIAfteAppiedJsonDateAndTimeField @Jyoti
  Scenario: To verify, When hidden the Date and Time fields which are required for save then no validation error is displayed on UI on saving the record
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonForThePageBlockFieldHideForHideJsonnForDateAndTime | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I select "Project Grants" from dropdown
    Then I see "fieldDateandTime__c" is not displayed inside page block detail
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I cannot see the following message in the page details :
      | Date And Time Organization is required to save |

  @208825 @HiddenTheTextFieldWhichAreRequiredForSaveThenNoValidationMessageDisplayedOnUIAfteAppiedJsonFundedAField @Jyoti
  Scenario: To verify, When hidden the currency  fields which are required for save then no validation error is displayed on UI on saving the record
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonForThePageBlockFieldHideForHideJsonnForFundedAmount | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I select "Project Grants" from dropdown
    Then I see "fieldFundedAmount__c" is not displayed inside page block detail
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I cannot see the following message in the page details :
      | Funded Amount is required to save |

  @208826 @HiddenTheTextFieldWhichAreRequiredForSaveThenNoValidationMessageDisplayedOnUIAfteAppiedJsonForPercentAField @Jyoti
  Scenario: To verify, When hidden the percent  fields which are required for save then no validation error is displayed on UI on saving the record
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonForThePageBlockFieldHideForHideJsonnForPercentField | Grantor State Program | Name                      | PBD-17094                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    And I select "Project Grants" from dropdown
    Then I see "fieldPercent__c" is not displayed inside page block detail
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I cannot see the following message in the page details :
      | Percent is required to save |

  @208865 @LogoLodingChangingTheApp @Jyoti
  Scenario: UI/ UX : To check logo is loading on changing the app i.e. Grants to Grantee(PM-User)
    When I login as "PM" user
    When I setup my app as "As a Grantee"
    And I navigate to "Home" tab
    Then I see govgrants logo "GovGrants Logo expanded" is displayed with name "Enterprise Grants Management System"

  @208967 @ValidationMessageShouldNotDisplay @Sprint5
  Scenario: To verify - Validation message should not display properly when user enter 4 digit number for automation user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "1123" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Percent : Number is too large." error

  @208866 @PageBackgroundColorIsDisplyadInDarkColour @jyoti
  Scenario: To verify, Logged in User User app "State as Grantor" ,Page background should be blue color(PM user)
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    Then I see page is in "Dark Blue" color

  @217210 @HeaderInstructionIsNotDisplayedOnUi @jyoti @wip
  Scenario: Header Instruction - Admin - Config - To verify that if user not entered any header instruction in respective field in config, then no any header instruction text get displayed on UI above table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    Then I do not see "Header Instruction" options inside "flexTableDivId" enabled

  @217211 @HeaderInstructionIsNotDisplayedOnUiForPMUser @jyoti
  Scenario: Header Instruction - PM - UI - To verify that if user not entered any header instruction in respective field in config, then no any header instruction text get displayed on UI above table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    Then I do not see "Header Instruction" options inside "flexTableDivId" enabled

  @217207 @HeaderHelpTextIconNotDisplayedOnUi @Jyoti
  Scenario Outline: Header help text - Admin - Config - To verify that when user not entered any help text then help icon not displayed on UI.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | <new_helpText> | Programs           |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    Then I do not see "Help" options inside "flexTableDivId" enabled

    Examples:
      | new_helpText | old_helpText                                                                                                       |
      |              | 'internal program' represents all the programs that the user has access to and are presented as a list or a table. |

  @217208 @HeaderHelpTextIconNotDisplayedOnUiPMUser @Jyoti
  Scenario Outline:Header help text - PM - UI - To verify that when user not entered any help text then help icon not displayed on UI.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | <new_helpText> | Programs           |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    When I re-login as "PM" user on "default" portal
    And I pause execution for "7" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    Then I do not see "Help" options inside "flexTableDivId" enabled

    Examples:
      | new_helpText | old_helpText                                                                                                       |
      |              | 'internal program' represents all the programs that the user has access to and are presented as a list or a table. |

  @217209 @HeaderHelpTextIconNotDisplayedOnUiSPIUser @Jyoti
  Scenario Outline: Header help text - SPI - UI - To verify that when user not entered any help text then help icon not displayed on UI.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | <new_helpText> | Programs           |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    When I re-login to "Grants Portal" app as "SPI3" user on "SUBPORTAL" portal
    And I pause execution for "7" seconds
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    Then I do not see "Help" options inside "flexTableDivId" enabled

    Examples:
      | new_helpText | old_helpText                                                                                                       |
      |              | 'internal program' represents all the programs that the user has access to and are presented as a list or a table. |

  @205033 @WhenIPressEnterButtonThenItIsNotTakingExtraLineSpace @Jyoti
  Scenario: Editor-To verify,When user add the text  it is not taking any extra line space between paragraphs/2 lines after pressing 'Enter'
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    And I clear the value from field "cke_1_contents"
    And I enter value "Test Automation" into field "cke_1_contents"
    And I press enter key
    And I enter value "Test Automation" into field "cke_1_contents"
    And I click on "Save" in the page details
    Then I see the text containing :
      | Test Automation |
      | Test Automation |

  @205036 @IfIChangingStyleExtraLineShouldNotComeforMarker @Jyoti
  Scenario: CK Editor-To verify,When user add the text  and After changing the style then extra line should not  come between paragraphs.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    And I clear the value from field "cke_1_contents"
    And I enter value "Marker style testing" into field "cke_1_contents"
    And I select "Marker" from ck editor
    And I press enter key
    And I enter value "Marker style testing" into field "cke_1_contents"
    And I select "Marker" from ck editor
    And I click on "Save" in the page details
    And I pause execution for "7" seconds
    Then I see the text containing :
      | Marker style testing |
      | Marker style testing |

  @205429 @IfIChangingStyleExtraLineShouldNotCome @Jyoti
  Scenario: CK Editor-To verify,When internal user add the text  and After changing the style then extra line should not  come between paragraphs.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    And I clear the value from field "cke_1_contents"
    And I enter value "Test Automation" into field "cke_1_contents"
    And I select "Italic Title" from ck editor
    And I press enter key
    And I enter value "Test Automation" into field "cke_1_contents"
    And I select "Italic Title" from ck editor
    And I click on "Save" in the page details
    And I pause execution for "7" seconds
    Then I see the text containing :
      | Test Automation |
      | Test Automation |

  @205037 @IfIChangingfontExtraLineShouldNotComeforMarker @Jyoti
  Scenario: CK Editor-To verify,When user add the text  and  changing the font then extra line should Not come between paragraphs.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for Testing"
    When I click on "Edit" icon for "Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    And I clear the value from field "cke_1_contents"
    And I enter value "Arial Font" into field "cke_1_contents"
    And I change font "Arial" from ck editor
    And I press enter key
    And I enter value "Arial Font" into field "cke_1_contents"
    And I change font "Arial" from ck editor
    And I click on "Save" in the page details
    And I pause execution for "7" seconds
    Then I see the text containing :
      | Arial Font |
      | Arial Font |

  @208969 @ValidationMessageShouldNotDisplay @Sprint5
  Scenario: Validation message should not display properly when user enter 4 digit number
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "1123" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Percent : Number is too large." error

    ################# Page Layout - Negative Scenarios ##############
  @218822 @218823
  Scenario: Page layout-To verify, User is not select "None " from picklist field  when field is "required to save"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "--None--" into field "fieldType__c"
    When I enter value "100" into field "fieldNumber__c"
    Then I see the following message in the page details contains:
      | This field is required |

  @218832
  Scenario: Page layout-To verify, User is not  enter numbers in URL field  if enter number field then error message should display
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I enter value "12345" into field "fieldURL__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | URL : Please enter valid URL value. |

  @218869
  Scenario: Page layout-To verify, User is not  edit the checkbox field in the view layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I click on "Save" in the page details
    Then I softly see field "fieldCFDA_Data__c" is not editable

  @218829 @379068 @379070 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Page layout-To verify, User is not  edit formula field
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I click on "Save" in the page details
    Then I softly see field "Address__c" is not editable
    Then I softly see field "fieldCFDA_Data__c" is not editable
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @218838
  Scenario Outline: Page layout-To verify,  when user not entered any help text  on field then help icon  not displayed on UI.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Grantor State Program | Name                      | PBD-17107                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I hovering mouse on help text icon inside page block detail "Title"
    Then I do not see help text icon is displayed for field "Title"

    Examples:
      | new_helpText | old_helpText                                              |
      |              | Alphanumeric code which is unique for associated program. |

 ###################### Export Functionality ########################
  @200536 @200545 @219535 @219536
  Scenario Outline: Page Layout Export Functionality-Admin-config-To verify download as PDF option should displayed for  pagelayout
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I click on "Menu" in the page details
    Then I see "Download as PDF" options is displayed
    And I select "Download as PDF" from dropdown
    And I download the file
    Then I softly see "Information" on page "1" of "govgrants" pdf file

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @200552 @219537
  Scenario: Page Layout Export Functionality-SPI-UI-To verify download as PDF option should displayed for pagelayout.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I click on "Menu" in the page details
    Then I see "Download as PDF" options is displayed
    And I select "Download as PDF" from dropdown
    And I download the file
    Then I softly see "Information" on page "1" of "govgrants" pdf file

  @200553
  Scenario: Page Layout Export Functionality-SPI-UI-To verify download as PDF option should not displayed for  flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide PDF Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide PDF Download | true          | Recipient Recipient ApplicationView |                           |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed

  @200470 @200477 @200475 @200513
  Scenario Outline: Page Menu-Admin-config-To verify Take snapshot option should be displayed
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I click on "Menu" in the page details
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
      #200475 #200513
    Then I see take snap shot getting saved with "Snapshot History"

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @200529 @200531
  Scenario: Page Menu-SPI-UI-To verify Take snapshot option should be displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I click on "Menu" in the page details
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    #200531
    Then I see take snap shot getting saved with "Snapshot History"

  @200512 @200473
  Scenario Outline: Page Menu-PM-UI-To verify take snapshot  option should not be displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Grantor State Program | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Take Snapshot" options is displayed

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @200530
  Scenario: Page Menu-SPI-UI-To verify take snapshot  option should not be displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Recipient Recipient ApplicationView | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I click on "Menu" in the page details
    Then I do not see "Take Snapshot" options is displayed

  @219857 @219858
  Scenario Outline: Menu- Admin- Config- Verify Menu option appears on UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @219859
  Scenario: Menu- SPI-UI- Verify Menu option appears on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout

    ################# Page Layout Action ###############

  @200428 @200434
  Scenario Outline: Page Layout Action-Admin-config-To verify page layout "Edit" and "Submit For Approval" actions should displayed in view layout
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    #Then I see "Edit" button is not displayed
    Then I see "Edit" button is displayed on top right of pagelayout
    Then I see "Submit For Approval" button is displayed on top right of pagelayout

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @200431 @200435
  Scenario Outline: Page Layout Action-Admin-config-To verify page layout "Edit" and "Submit For Approval" actions should not displayed in view layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Layout Action    | Is Active | true              | ApiGeneratedId:0 |
      | Page Layout Action    | Is Active | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Is Active | false         | Grantor State Program | Name                      | Edit                       |
      | Page Layout Action    | Is Active | false         | Grantor State Program | Name                      | Submit For Approval        |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Edit" button is not displayed
    Then I see "Submit For Approval" button is not displayed

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @200439 @219883
  Scenario: Page Layout Action-SPI-UI-To verify page layout "Edit" and "Submit Application" actions should displayed on view layout
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I see "Edit" button is displayed on top right of pagelayout
    Then I see "Submit Application" button is displayed on top right of pagelayout

  @200441
  Scenario: Page Layout Action-SPI-UI-To verify page layout "Edit" and "Submit Application" actions should not displayed on view layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Layout Action    | Is Active | true              | ApiGeneratedId:0 |
      | Page Layout Action    | Is Active | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Is Active | false         | Recipient Recipient ApplicationView | Name                      | Edit                       |
      | Page Layout Action    | Is Active | false         | Recipient Recipient ApplicationView | Name                      | Submit Application         |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I see "Edit" button is not displayed
    Then I see "Submit Application" button is not displayed

  @219868 @219869 @219882 @219881
  Scenario Outline: Page Layout Action-Admin-UI-To verify page layout "Cancel" and "Save" actions should displayed on edit layout
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see "Cancel" button is displayed on top right of pagelayout
    Then I see "Save" button is displayed on top right of pagelayout

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @219872 @219873 @wip @notapplicableinTFS
  Scenario Outline: Page Layout Action-Admin-UI-To verify page layout "Cancel" and "Save" actions should not displayed on edit layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Layout Action    | Is Active | true              | ApiGeneratedId:0 |
      | Page Layout Action    | Is Active | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Is Active | false         | Grantor State Program | Name                      | Cancel                     |
      | Page Layout Action    | Is Active | false         | Grantor State Program | Name                      | Save                       |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "Edit" icon for "Test Approver Table" inside table
    Then I see "Cancel" button is not displayed
    Then I see "Save" button is not displayed

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @219870
  Scenario: Page Layout Action-SPI-UI-To verify page layout "Cancel" and "Save" actions should displayed on edit layout
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "Edit" icon for "New Application For Testing Only" inside table
    Then I see "Cancel" button is displayed on top right of pagelayout
    Then I see "Save" button is displayed on top right of pagelayout

  @219875p @219876
  Scenario Outline:Page Layout Action-- Admin- config- Verify action name is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Page Layout Action    | Action Name | Edit1             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Name | Edit Automation | Grantor State Program | Name                      | Edit1                      |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Edit Automation" button is displayed on top right of pagelayout

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @219877
  Scenario: Page Layout Action-- Admin- config- Verify action name is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | coreComponentField                  | filterId         |
      | Page Layout Action    | Action Name | Edit1             | Recipient Recipient ApplicationView | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue   | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Name | Edit Automation | Recipient Recipient ApplicationView | Name                      | Edit1                      |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I see "Edit Automation" button is displayed on top right of pagelayout

  @219878 @219879
  Scenario Outline: Page Layout Action-- Admin- config- Verify text is displayed on hovering edit button
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Layout Action    | Button Help Text | Edit              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Button Help Text | Edit The Record | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see the text "Edit The Record" on hovering button
    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @219880
  Scenario: Page Layout Action-- SPI -UI- Verify text is displayed on hovering edit button
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Layout Action    | Button Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Button Help Text | Edit The Record | Recipient Recipient ApplicationView | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    #And I hover the mouse on button "Edit"
    Then I see the text "Edit The Record" on hovering button

#################### Page Blocks #############################
  @200242 @200264
  Scenario Outline:Page Blocks-Admin-config-To verify configured field displayed in page block  as Program Name,Type ,Primary Funding Organization
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I softly see "Title" inside page block detail
    Then I softly see "Type" inside page block detail
    Then I softly see "Primary Funding Organization" inside page block detail

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @200265 @200243
  Scenario Outline: Page Block-PM-UI-To verify created page block for record type fields should not displayed
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17333                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17398                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I softly cannot see field "Title" inside page block
    Then I softly cannot see field "Type" inside page block
    Then I softly cannot see field "Primary Funding Organization" inside page block

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @200266p @200245 @379387 @379388 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline:Page Block-PM-UI-To verify all fields should displayed under pageblock
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-17330                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-17070                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-23985                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-17199                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-17218                  |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
    Then I softly see field "Project Period Start Date" inside page block
    Then I softly see field "Number" inside page block
    Then I softly see field "Project Period End Date" inside page block
    Then I softly see field "Time" inside page block
    Then I softly see field "Percent" inside page block
    Then I softly see field "Funded Amount" inside page block
    Then I softly see field "URL" inside page block
    Then I softly see field "Date and Time" inside page block
    Then I softly see field "Published Date" inside page block
    #Then I softly see field "TestPicklist" inside page block
    Then I softly see field "Project Goals" inside page block
    Then I softly see field "Type" inside page block
    Then I softly see field "Primary Funder Type" inside page block
    Examples:
      | User |
      | PM   |

  @200267 @200246
  Scenario Outline: Page Block-PM-UI-To verify all fields should not displayed under pageblock.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId          |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:0  |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:1  |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:2  |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:3  |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:4  |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:5  |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:6  |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:7  |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:8  |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:9  |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:10 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:11 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:12 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17330                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23985                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17070                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23986                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23987                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17329                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17398                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23988                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23989                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17218                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23990                  |
   #   | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23618                  |
   #   | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17520                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I softly cannot see field "Project Period Start Date" inside page block
    Then I softly cannot see field "Number" inside page block
    Then I softly cannot see field "Project Period End Date" inside page block
    Then I softly cannot see field "Time" inside page block
    Then I softly cannot see field "Percent" inside page block
    Then I softly cannot see field "Funded Amount" inside page block
    Then I softly cannot see field "URL" inside page block
    Then I softly cannot see field "Date and Time" inside page block
    Then I softly cannot see field "Published Date" inside page block
    Then I softly cannot see field "TestPicklist" inside page block
    Then I softly cannot see field "Project Goals" inside page block
    #Then I softly cannot see field "Program Type" inside page block
    #Then I softly cannot see field "Primary Funder Type" inside page block
    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @200249 @379389 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Page Block-SPI-UI-To verify configured fields displayed in page block  as Program Name,Type ,Primary Funding Organization in Informatopn Block
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I softly see field "Applicant Organization" inside page block
    Then I softly see field "Address" inside page block
    Then I softly see field "DUNS" inside page block
    Then I softly see field "SAM Expiration Date" inside page block

  @200250
  Scenario: Page Block-SPI-UI-To verify configured fields should not displayed in page block  as Applicant Organization, Address, SAM Expiration Date, DUNS in Information Block
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField                  | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:2 |
    #  | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient Recipient ApplicationView | Name                      | PBD-19708                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient Recipient ApplicationView | Name                      | PBD-19710                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient Recipient ApplicationView | Name                      | PBD-19725                  |
    #  | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient Recipient ApplicationView | Name                      | PBD-20168                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I softly cannot see field "Applicant Organization" inside page block
    Then I softly cannot see field "Address" inside page block
    Then I softly cannot see field "DUNS" inside page block
    #Then I softly cannot see field "SAM Expiration Date" inside page block

  @200251
  Scenario: Page Block-SPI-UI-To verify configured fields displayed in page block  as Opportunity ID, Opportunity Title, Funding Organization, Subaward Floor in Opportunity Overview
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I softly see field "Opportunity ID" inside page block
    Then I softly see field "Opportunity Title" inside page block
    Then I softly see field "Funding Organization" inside page block
    Then I softly see field "Subaward Floor" inside page block

  @200252
  Scenario: Page Block-SPI-UI-To verify configured fields should not displayed in page block  as Opportunity ID, Opportunity Title, Funding Organization, Subaward Floor in Opportunity Overview
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField                  | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient Recipient ApplicationView | Name                      | PBD-19869                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient Recipient ApplicationView | Name                      | PBD-19646                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient Recipient ApplicationView | Name                      | PBD-20364                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient Recipient ApplicationView | Name                      | PBD-23993                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I softly cannot see field "Opportunity ID" inside page block
    Then I softly cannot see field "Opportunity Title" inside page block
    Then I softly cannot see field "Funding Organization" inside page block
    Then I softly cannot see field "Subaward Floor" inside page block

  @201280
  Scenario Outline: Help Text SPI- UI- Verify given header help text is getting displayed under 'i' icon.
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField                  | filterId         |
      | Page Block:Page Block Detail | Help Text | <old_helpText>    | Recipient Recipient ApplicationView | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue  | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Help Text | <new_helpText> | Recipient Recipient ApplicationView | GNT__PageBlockTitle__c    | Information                |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I hovering mouse on help text icon inside "Information"
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText |
      | Help Text for Automation |              |

 ############################# Page Tab ######################################
  @200225 @200229
  Scenario Outline:Page Tab-Admin-config-To verify, Overview. Setup tabs, Responsibilities, Files, History, Collab tab should be display on the page layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:1 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:2 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:3 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:4 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2673                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2722                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2677                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2671                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2672                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2675                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Overview" subtab is present in page details
    Then I see "Setup" subtab is present in page details
    Then I see "Responsibilities" subtab is present in page details
    Then I see "Files" subtab is present in page details
    Then I see "History" subtab is present in page details
    Then I see "Collab" subtab is present in page details

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @200226 @200232
  Scenario Outline:Page Tab-Pm-UI-To verify,  Overview. Setup tabs, Responsibilities, Files, History, Collab tab should be display on the page layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:1 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:2 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:3 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:4 |
      #| Page Tabs Config      | Is Active | true              | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | TAB-2673                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | TAB-2722                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | TAB-2677                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | TAB-2671                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | TAB-2672                   |
     # | Page Tabs Config:Page Layout Action | Is Active | false          | Grantor State Program | Name                      | TAB-2675                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I do not see "Overview" subtab is present in page details
    Then I do not see "Setup" subtab is present in page details
    Then I do not see "Responsibilities" subtab is present in page details
    Then I do not see "Files" subtab is present in page details
    Then I do not see "History" subtab is present in page details
   # Then I see "Collab" subtab is present in page details

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @200233
  Scenario: Page Tab-SPI-UI-To verify, Overview, Budget, Proposal, Files, History tab should  display on the page layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:1 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:2 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:3 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:4 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient Recipient ApplicationView | Name                      | TAB-2923                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient Recipient ApplicationView | Name                      | TAB-2911                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient Recipient ApplicationView | Name                      | TAB-2922                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient Recipient ApplicationView | Name                      | TAB-2924                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient Recipient ApplicationView | Name                      | TAB-2788                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient Recipient ApplicationView | Name                      | TAB-2730                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I see "Overview" subtab is present in page details
    Then I see "Budget" subtab is present in page details
    Then I see "Proposal" subtab is present in page details
    Then I see "Files" subtab is present in page details
    Then I see "History" subtab is present in page details
    Then I see "Collab" subtab is present in page details

  @200237
  Scenario: Page Tab-SPI-UI-To verify, Overview, Budget, Proposal, Files, History tab should not display on the page layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:1 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:2 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:3 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient Recipient ApplicationView | Name                      | TAB-2923                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient Recipient ApplicationView | Name                      | TAB-2911                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient Recipient ApplicationView | Name                      | TAB-2922                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient Recipient ApplicationView | Name                      | TAB-2924                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient Recipient ApplicationView | Name                      | TAB-2788                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I do not see "Overview" subtab is present in page details
    Then I do not see "Budget" subtab is present in page details
    Then I do not see "Proposal" subtab is present in page details
    Then I do not see "Files" subtab is present in page details
    Then I do not see "History" subtab is present in page details

  @219886 @219887 @379091 @379092 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Page Tab - Admin -Config - Verify page tab label should displayed properly with icon
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "Overview" subtab is present with icon "glyphicon glyphicon-book" in page details
    Then I see "Setup" subtab is present with icon "fa fa-wrench" in page details
    Then I see "Responsibilities" subtab is present with icon "fa fa-star" in page details
    Then I see "Files" subtab is present with icon "fa fa-file" in page details
    Then I see "History" subtab is present with icon "fa fa-history" in page details
    Then I see "Collab" subtab is present with icon "fa fa-wechat" in page details
    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @219888 @379093 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Page Tab - SPI- UI - Verify page tab label should displayed properly with icon
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I see "Overview" subtab is present with icon "glyphicon glyphicon-book" in page details
    Then I see "Budget" subtab is present with icon "fa fa-usd" in page details
    Then I see "Proposal" subtab is present with icon "glyphicon glyphicon-tasks" in page details
    Then I see "Files" subtab is present with icon "fa fa-paperclip" in page details
    Then I see "History" subtab is present with icon "fa fa-history" in page details
    Then I see "Collab" subtab is present with icon "fa fa-wechat" in page details

  @219889 @219890
  Scenario Outline: Page Tab - Admin -Config - Verify page tab label should not displayed properly with icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:1 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:2 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:3 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:4 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | TAB-2673                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | TAB-2722                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | TAB-2677                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | TAB-2671                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | TAB-2672                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | TAB-2675                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I do not see "Overview" subtab is present with icon "glyphicon glyphicon-book" in page details
    Then I do not see "Setup" subtab is present with icon "fa fa-wrench" in page details
    Then I do not see "Responsibilities" subtab is present with icon "fa fa-star" in page details
    Then I do not see "Files" subtab is present with icon "fa fa-file" in page details
    Then I do not see "History" subtab is present with icon "fa fa-history" in page details
    Then I do not see "Collab" subtab is present with icon "fa fa-wechat" in page details
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @219891
  Scenario: Page Tab - SPI- UI - Verify page tab label should not displayed properly with icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:1 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:2 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:3 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient Recipient ApplicationView | Name                      | TAB-2923                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient Recipient ApplicationView | Name                      | TAB-2911                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient Recipient ApplicationView | Name                      | TAB-2922                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient Recipient ApplicationView | Name                      | TAB-2924                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient Recipient ApplicationView | Name                      | TAB-2788                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I do not see "Overview" subtab is present with icon "glyphicon glyphicon-book" in page details
    Then I do not see "Budget" subtab is present with icon "fa fa-usd" in page details
    Then I do not see "Proposal" subtab is present with icon "glyphicon glyphicon-tasks" in page details
    Then I do not see "Files" subtab is present with icon "fa fa-paperclip" in page details
    Then I do not see "History" subtab is present with icon "fa fa-history" in page details
    Then I do not see "Collab" subtab is present with icon "fa fa-wechat" in page details

  @219894 @219893 @379380 @379382 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Page Tab - PM -UI - Verify page tab should displayed properly in given sequence
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see sequence of "Overview" subtab is "1" on page layout
    Then I see sequence of "Setup" subtab is "2" on page layout
    Then I see sequence of "Responsibilities" subtab is "3" on page layout
    Then I see sequence of "Files" subtab is "4" on page layout
    Then I see sequence of "History" subtab is "5" on page layout
    Then I see sequence of "Collab" subtab is "6" on page layout
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @219895 @379383 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Page Tab - SPI- UI - Verify page tab should displayed properly in given sequence
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I see sequence of "Overview" subtab is "1" on page layout
    Then I see sequence of "Budget" subtab is "2" on page layout
    Then I see sequence of "Proposal" subtab is "3" on page layout
    Then I see sequence of "Files" subtab is "4" on page layout
    Then I see sequence of "History" subtab is "5" on page layout
    Then I see sequence of "Collab" subtab is "6" on page layout

  @219897
  Scenario Outline: Page Tab - Admin -Config - Verify page tab should not displayed properly in given sequence
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Sort Order | 0                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Sort Order | 6             | Grantor State Program | Name                      | TAB-2673                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I do not see sequence of "Overview" subtab is "1" on page layout
#      Then I do not see sequence of "Setup" subtab is "2" on page layout
#      Then I do not see sequence of "Responsibilities" subtab is "3" on page layout
#      Then I do not see sequence of "Files" subtab is "4" on page layout
#      Then I do not see sequence of "History" subtab is "5" on page layout
#      Then I do not see sequence of "Collab" subtab is "6" on page layout
    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @219899
  Scenario: Page Tab - SPI- UI - Verify page tab should not displayed properly in given sequence
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Sort Order | 0                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config      | Sort Order | 6             | Recipient Recipient ApplicationView | Name                      | TAB-2923                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I do not see sequence of "Overview" subtab is "1" on page layout
#    Then I do not see sequence of "Budget" subtab is "2" on page layout
#    Then I do not see sequence of "Proposal" subtab is "3" on page layout
#    Then I do not see sequence of "Files" subtab is "4" on page layout
#    Then I do not see sequence of "History" subtab is "5" on page layout
#    Then I do not see sequence of "Collab" subtab is "6" on page layout


 ################################# Page Instruction #########################################
  @200159 @200164
  Scenario Outline: Page Instruction-Admin-config- To verify given page instruction should be displayed on page lauout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Page Layout           | Page Instruction Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | <new_helpText> | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    #And I click on "...view more" button
    And I pause execution for "3" seconds
    Then I see bulb icon at header instruction is displayed
    Then I see "<new_helpText>" shown as page instruction text
    Examples:
      | User | new_helpText    | old_helpText                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
#      | ADMIN | Automation Text | The program construct of grants and awards that are managed throughout a program's life cycle. The program is approved and maintained by the program office.Program Manager (PM) is an authorised user that can create a program and who can also assign internal users to review/approve it. When a program is initiated it will start with a status of ‘Created’.The status for a created ‘Internal Program' that is submitted for approval by a pm will change to ‘Send for Approval’. a new task will be created for all assigned program approvers. Program approvers can review the program and are required to provide feedback/comments prior to approving. once approved the status is set to ‘Approved’. Program owner can see comments provided by program approver in ‘history’ tab and ‘active’ the program. once activated the status is set to ‘Active’ . |
      | PM   | Automation Text | The program construct of grants and awards that are managed throughout a program's life cycle. The program is approved and maintained by the program office.Program Manager (PM) is an authorised user that can create a program and who can also assign internal users to review/approve it. When a program is initiated it will start with a status of ‘Created’.The status for a created ‘Internal Program' that is submitted for approval by a pm will change to ‘Send for Approval’. a new task will be created for all assigned program approvers. Program approvers can review the program and are required to provide feedback/comments prior to approving. once approved the status is set to ‘Approved’. Program owner can see comments provided by program approver in ‘history’ tab and ‘active’ the program. once activated the status is set to ‘Active’ . |

  @200162 @200166
  Scenario Outline: Page Instruction-Admin-config-To verify given page instruction should not be displayed on page lauout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Page Layout           | Page Instruction Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | <new_helpText> | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    #Then I see "<new_helpText>" shown as help text
    Then I do not see bulb icon at header instruction is displayed

    Examples:
      | User | new_helpText | old_helpText                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
#      | ADMIN |              | The program construct of grants and awards that are managed throughout a program's life cycle. The program is approved and maintained by the program office.Program Manager (PM) is an authorised user that can create a program and who can also assign internal users to review/approve it. When a program is initiated it will start with a status of ‘Created’.The status for a created ‘Internal Program' that is submitted for approval by a pm will change to ‘Send for Approval’. a new task will be created for all assigned program approvers. Program approvers can review the program and are required to provide feedback/comments prior to approving. once approved the status is set to ‘Approved’. Program owner can see comments provided by program approver in ‘history’ tab and ‘active’ the program. once activated the status is set to ‘Active’ . |
      | PM   |              | The program construct of grants and awards that are managed throughout a program's life cycle. The program is approved and maintained by the program office.Program Manager (PM) is an authorised user that can create a program and who can also assign internal users to review/approve it. When a program is initiated it will start with a status of ‘Created’.The status for a created ‘Internal Program' that is submitted for approval by a pm will change to ‘Send for Approval’. a new task will be created for all assigned program approvers. Program approvers can review the program and are required to provide feedback/comments prior to approving. once approved the status is set to ‘Approved’. Program owner can see comments provided by program approver in ‘history’ tab and ‘active’ the program. once activated the status is set to ‘Active’ . |

  @200214
  Scenario Outline: Page Instruction-SPI-UI-To verify given page instruction should be displayed on page layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Page Layout           | Page Instruction Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue  | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | <new_helpText> | Recipient Recipient ApplicationView |                           |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I softly see bulb icon at header instruction is displayed
    Then I see "<new_helpText>" shown as page instruction text
    Examples:
      | new_helpText    | old_helpText |
      | Automation Text |              |

  @200216
  Scenario: Page Instruction-SPI-UI-To verify given page instruction should not  be displayed on page layout
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I do not see bulb icon at header instruction is displayed

  @200218 @218220
  Scenario Outline: Page Instruction-Admin-config-To  verify page instruction should accept the number & any special character
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Page Layout           | Page Instruction Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | <new_helpText> | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see "<new_helpText>" shown as help text
    Then I see bulb icon at header instruction is displayed on pagelayout

    Examples:
      | User | new_helpText         | old_helpText                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
#      | ADMIN | 0123456789!@#$%^&*() | The program construct of grants and awards that are managed throughout a program's life cycle. The program is approved and maintained by the program office.Program Manager (PM) is an authorised user that can create a program and who can also assign internal users to review/approve it. When a program is initiated it will start with a status of ‘Created’.The status for a created ‘Internal Program' that is submitted for approval by a pm will change to ‘Send for Approval’. a new task will be created for all assigned program approvers. Program approvers can review the program and are required to provide feedback/comments prior to approving. once approved the status is set to ‘Approved’. Program owner can see comments provided by program approver in ‘history’ tab and ‘active’ the program. once activated the status is set to ‘Active’ . |
      | PM   | 0123456789!@#$%^&*() | The program construct of grants and awards that are managed throughout a program's life cycle. The program is approved and maintained by the program office.Program Manager (PM) is an authorised user that can create a program and who can also assign internal users to review/approve it. When a program is initiated it will start with a status of ‘Created’.The status for a created ‘Internal Program' that is submitted for approval by a pm will change to ‘Send for Approval’. a new task will be created for all assigned program approvers. Program approvers can review the program and are required to provide feedback/comments prior to approving. once approved the status is set to ‘Approved’. Program owner can see comments provided by program approver in ‘history’ tab and ‘active’ the program. once activated the status is set to ‘Active’ . |

  @200222 @379087 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Page Instruction-SPI-UI-To  verify page instruction should accept the number & any special character
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Page Layout           | Page Instruction Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue  | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | <new_helpText> | Recipient ApplicationView |                           |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    #379087
    Then I see step progress bar is displayed
    Then I softly see bulb icon at header instruction is displayed
    Then I see "<new_helpText>" shown as page instruction text
    Examples:
      | new_helpText         | old_helpText |
      | 0123456789!@#$%^&*() |              |

    ########################## Page Header #####################################
  @200123 @200127 @200138 @200140
  Scenario Outline: Page Header-Admin-config-To verify page header should be displayed
  Page Header-Admin-config-To verify fields should displayed in the page header
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2674                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I softly see field "Program" inside page header
    Then I softly see field "EGMS ID" inside page header
    Then I softly see field "Status" inside page header
    Then I softly see field "Organization" inside page header
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @200128 @200141 @200124 @200139
  Scenario Outline: Page Header-Admin-config-To verify fields should not be displayed in the page header
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17388                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17203                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17316                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I do not see field "EGMS ID" inside page header
    Then I do not see field "Status" inside page header
   # Then I do not see field "Organization" inside page header
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @200145 @200155
  Scenario: Page header-SPI-UI-To verify page header should be diplayed
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField                  | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Recipient Recipient ApplicationView | Name                      | PBD-19821                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Recipient Recipient ApplicationView | Name                      | PBD-19757                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Recipient Recipient ApplicationView | Name                      | PBD-19800                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I see field "EGMS ID" inside page header
    Then I see field "Status" inside page header
    Then I see field "Application Due Date" inside page header

  @200154 @200156
  Scenario: Page Header-SPI-UI-To verify page header should not be diplayed
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField                  | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:2 |
      | Page Tabs Config                         | Is Active | true              | Recipient Recipient ApplicationView | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField                  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient Recipient ApplicationView | Name                      | PBD-19821                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient Recipient ApplicationView | Name                      | PBD-19757                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient Recipient ApplicationView | Name                      | PBD-19800                  |
      | Page Tabs Config:Page Layout Action      | Is Active | false         | Recipient Recipient ApplicationView | Name                      | TAB-2731                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I do not see field "EGMS ID" inside page header
    Then I do not see field "Status" inside page header
    Then I do not see field "Application Due Date" inside page header

  @379085 @379086 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify Step Progress bar is visible on page layout
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    Then I see step progress bar is displayed
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379088 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- Admin- To verify page blocks are aligned properly on page layout.
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    When I navigate to "Files" sub tab
#  Then I see entered text in my feed section displayed properly
    Then I see page block "Notes" aligned properly on page layout

  @379098 @379070 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify on View page layout, fields are not editable.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    When I navigate to "Overview" sub tab
    Then I softly see field "ProgramName__c" is not editable
    Then I softly see field "StartDate__c" is not editable
    Then I softly see field "EndDate__c" is not editable
    Then I softly see field "Abbreviation__c" is not editable
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379071 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify on View page layout, fields are not editable.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    Then I softly see field "fieldAddressline1__c" is not editable
    Then I softly see field "fieldAddressline2__c" is not editable
    Then I softly see field "fieldCity__c" is not editable
    Then I softly see field "fieldCounty__c" is not editable

  @379085 @379086 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify Step Progress bar is visible on page layout
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    When I navigate to "Overview" sub tab
    Then I see step progress bar is displayed
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379092 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify page tabs and tab icons are showing as expected.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    Then I see "Overview" subtab is present with icon "glyphicon glyphicon-book" in page details
    Then I see "Setup" subtab is present with icon "fa fa-wrench" in page details
    #Then I see "Related Log" subtab is present with icon "fa fa-star" in page details
    Then I see "Responsibilities" subtab is present with icon "fa fa-star" in page details
    Then I see "Files" subtab is present with icon "fa fa-file" in page details
    Then I see "Collab" subtab is present with icon "fa fa-wechat" in page details

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379380 @379382 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify number of page tabs are showing correct which are added in the config
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    Then I see "Overview" subtab is present in page details
    Then I see "Setup" subtab is present in page details
    Then I see "Responsibilities" subtab is present in page details
    #Then I see "Related Log" subtab is present in page details
    Then I see "Files" subtab is present in page details
    Then I see "Collab" subtab is present in page details

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379384 @379385 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify number of page blocks are showing correct which are added in the config
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    When I navigate to "Files" sub tab
    Then I softly see "Attachments" page block displayed
    Then I softly see "Notes" page block displayed
    Then I softly see "Program Files" page block displayed
    Then I softly see "Notes" page block displayed

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379386 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify number of page blocks are showing correct which are added in the config
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    When I navigate to "Files" sub tab
    Then I softly see "Attachments" page block displayed
    Then I softly see "Notes" page block displayed
    Then I softly see "Application Files" page block displayed
    Then I softly see "Notes" page block displayed

  @379387 @379388 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify fields of all data type are rendering in the page blocks
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-17330                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-17070                  |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
    Then I softly see field "Project Period Start Date" inside page block
    Then I softly see field "Website Address" inside page block
    Then I softly see field "Title" inside page block
    Then I softly see field "Primary Funding Organization" inside page block
    Then I softly see field "Description" inside page block
    Then I softly see field "KPI's Required?" inside page block
    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379390 @379391 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify page message type - Success is getting displayed on page layout.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    Then I see "Automation Test Success" page message displayed in page layout
    Examples:
      | User |
#      | ADMIN |
      | PM   |


  @379392 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify page message type - Success is getting displayed on page layout.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    Then I see "Automation Test Success" page message displayed in page layout

  @379393 @379394 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify page message type - Information is getting displayed on page layout.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    Then I see "Automation Test Information" page message displayed in page layout

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379395 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify page message type - Information is getting displayed on page layout.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    Then I see "Automation Test Information" page message displayed in page layout


  @379396 @379397 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify page message type - Alert is getting displayed on page layout.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    Then I see "Automation Test Alert" page message displayed in page layout

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379398 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify page message type - Alert is getting displayed on page layout.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    Then I see "Automation Test Alert" page message displayed in page layout

  @379400 @379401 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify page message type - Warning is getting displayed on page layout.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    Then I see "Automation Test Warning" page message displayed in page layout

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379402 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify page message type - Warning is getting displayed on page layout.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    Then I see "Automation Test Warning" page message displayed in page layout

  @379403 @379404 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify page message type - Warning is getting displayed on page layout.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    Then I see "Automation Test Error" page message displayed in page layout

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379405 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify page message type - Error is getting displayed on page layout.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    Then I see "Automation Test Error" page message displayed in page layout

  @379406 @379407 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify all page layout actions are displaying which are mentioned in the config.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    Then I softly see "Save" button is displayed
    Then I softly see "Cancel" button is displayed
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Overview" sub tab
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name             | Program | Announcement |
      | Automation Admin | Step 1  | Step 1       |
    And I pause execution for "5" seconds
    Then I see "Submit For Approval" button is displayed

    Examples:
      | User |
      | PM   |

  @379408 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify all page layout actions are displaying which are mentioned in the config.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    Then I see "Submit Application" button is displayed
    Then I see "Edit" button is displayed

  @379409p @379410 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify for page tabs if Highlights Panel? is true then its showing top of the page layout.
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    Then I softly see field "EGMS ID" inside page block
    Then I softly see field "Status" inside page block
    Then I softly see field "Organization" inside page block

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379411 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify for page tabs if Highlights Panel? is true then its showing top of the page layout.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    Then I softly see field "fieldInternalOrganization__c" inside page block
    Then I softly see field "fieldType__c" inside page block

  @379412 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify sort order of page tabs are showing correct.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    Then I see "Overview" shown at number "0" inside subtabs
    Then I see "Setup" shown at number "1" inside subtabs
    Then I see "Responsibilities" shown at number "2" inside subtabs
    Then I see "Files" shown at number "3" inside subtabs
    Then I see "History" shown at number "4" inside subtabs
    Then I see "Collab" shown at number "5" inside subtabs

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379414 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify sort order of page tabs are showing correct.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    Then I see "Overview" shown at number "0" inside subtabs
    Then I see "Financials" shown at number "1" inside subtabs
    Then I see "Files" shown at number "2" inside subtabs
    Then I see "History" shown at number "3" inside subtabs
    Then I see "Collab" shown at number "3" inside subtabs

  @379415p @379416 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify sort order of page blocks are showing correct.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    Then I see "Information" shown at the number "0" inside page layout
    Then I see "Description" shown at the number "1" inside page layout
    Then I see "Program Specific Settings" shown at the number "2" inside page layout

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379417
  Scenario: Sanity Testing- Page Layout- SPI- To verify sort order of page blocks are showing correct.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    Then I see "Description" shown at the number "0" inside page layout
    Then I see "System Information" shown at the number "1" inside page layout

  @379418 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify sort order of page blocks detail fields are showing correct.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I softly see field "StartDate__c" inside page block
    Then I softly see field "WebsiteAddress__c" inside page block
    Then I softly see field "ProgramName__c" inside page block
    Then I softly see field "PrimaryFundingOrganization__c" inside page block
    Then I softly see field "Objectives__c" inside page block
    Then I softly see field "KPIsRequired__c" inside page block

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @379419 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- Admin- To verify help icon is visible on layout when help text is provided in page block config
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    Then I see helpIcon displayed beside "Contacts" respective field or column
    Then I see helpIcon displayed beside "Information" respective field or column

  @379420 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify sort order of page blocks detail fields are showing correct.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    Then I see helpIcon displayed beside "Description" respective field or column
    Then I see helpIcon displayed beside "System Information" respective field or column

  @379421 @379422 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify help icon is visible on layout when help text is provided in page block config
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    Then I see helpIcon displayed beside "Contacts" respective field or column
    Then I see helpIcon displayed beside "Information" respective field or column

    Examples:
      | User |
      | PM   |

  @379423 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify help icon is visible on layout when help text is provided in page block config
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    Then I see helpIcon displayed beside "Description" respective field or column
    Then I see helpIcon displayed beside "System Information" respective field or column

  @379424 @379425 @SanityPATCH @SanityPATCHPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify help icon is visible on layout when help text is provided in page block detail config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-17330                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-17070                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-23985                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-17199                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-17218                  |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsFlexTableToggleId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    Then I see helpIcon displayed beside "Abbreviation" respective field or column
    Then I see helpIcon displayed beside "Type" respective field or column
    Then I see helpIcon displayed beside "Project Period Start Date" respective field or column
    Then I see helpIcon displayed beside "Project Period End Date" respective field or column
    Then I see helpIcon displayed beside "Internal Organization" respective field or column

    Examples:
      | User |
      | PM   |

  @379426 @SanityPATCH @SanityPATCHPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify help icon is visible on layout when help text is provided in page block detail config
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    Then I see helpIcon displayed beside "Project Period Start Date" respective field or column
    Then I see helpIcon displayed beside "Project Period End Date" respective field or column
    Then I see helpIcon displayed beside "Due Date" respective field or column

  @424689 @patch-lsc
  Scenario Outline: LSC - Patch 6.100.18 - To verify the search bar should be appropriate size on flex table
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    Then I see "quick-search" is displayed on table id "---program:-:associateProgramContactsTableId---"
    Examples:
      | User |
      | PM   |

