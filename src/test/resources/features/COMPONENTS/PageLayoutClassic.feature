@PageLayout-component @PageLayout
Business Need: Page Layout Component Scenarios
  Test all page layout component based scenarios
  As a configuration manager i make different configurational changes in page layout component and will validate them.

  @34042
  Scenario: setting up header from configuration and validating its content in Edit view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue           | filterId         |
      | Page Layout           | Header    | Program - {!ProgramName__c} | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Header    | Program123 - {!ProgramName__c} | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I enter value "Header test" into field "ProgramName__c"
    And I click modal button "Save and Continue"
    Then I see "Header test" shown as over view title in header "Program123"

  @34047
  Scenario: validate the page instructions text apears as configured in Edit view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                    | filterId         |
      | Page Layout           | Page Instruction Text | govgrants_config:PageInstructionText | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | Automation Instruction Text | Grantor State Program |                           |                            |
      | Page Layout:General   | Page Instruction Text | Automation Instruction Text | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I see "Automation Instruction Text" shown as page instruction text

  @34049
  Scenario: setting up header over ride configuration and validating its content after clicking New button
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Modal Title | Create Program    | Programs           | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue                       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Modal Title | Creating New Program for Automation | Programs           | Name                      | New                        |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on top right button "New" in flex table with id "Programs"
    Then I see "Creating New Program for Automation" opens in overLay window

  @34052 @smoke
  Scenario Outline: Hide Submit for approval for Created from configuration and validating it for Created status view icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | filterId         |
      | Page Layout Action    | Hide Decision Expression | <old_hide_config> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Decision Expression | <new_hide_config> | Grantor State Program | Name                      | Submit For Approval        |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:programsTableId---"
    Then I see "Submit For Approval" button is not displayed

    Examples:
      | new_hide_config     | old_hide_config                                                                                                                                                                                                      |
      | Status__c='Created' | Status__c='Active' OR Status__c='Submitted for Approval' OR Status__c='Approved' OR Status__c='Closed' OR Status__c='Disapproved' OR Status__c='Change Requested' OR Status__c='Disapproved' OR Status__c='Rejected' |

  @34053 @smoke
  Scenario: Hide Submit for approval for Created from json configuration and validating it for Created status view icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Layout Action    | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:HideExpressionJson | Grantor State Program | Name                      | Submit For Approval        |
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    Then I see "Submit For Approval" button is not displayed

  @34069 @smoke @Bug-489182
  Scenario: Hide Submit for approval for specific profile from configuration and validating it for Created status view icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Layout Action    | Hide for profile |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide for profile | System Administrator | Grantor State Program | Name                      | Submit For Approval        |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Then I see "Submit For Approval" button is not displayed

  @34043 @200538 @200546 @34046
  Scenario Outline: Disabling of PDF download option from configuration and validating it from menu dropdown inside program detail page
  |Page Layout Export Functionality-Admin-config-To verify download as PDF option should not displayed for  flex table|
  |Page Layout Export Functionality-PM-UI-To verify download as PDF option should not displayed for  flex table|
  |Disabling of Take snapshot option from configuration and validating it from menu dropdown inside program detail page|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | Grantor State Program |                           |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    When I click on "Menu" in the page details
    Then I do not see "Download As PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed

    Examples:
      | User |
      | PM   |

  @34056 @smoke @Bug-489182
  Scenario: Hide submit for approval button for program view page and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Layout Action    | Hide For Context |                   | ApiGeneratedId:0 |
      | Page Layout Action    | Hide For Context |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide For Context | view          | Grantor State Program | Name                      | Submit For Approval        |
      | Page Layout Action    | Hide For Context | view          | Grantor State Program | Name                      | Submit For Approval        |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I get the "EGMS ID"
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:programsTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:programsTableId---" without waiting for record
    Then I see "Submit For Approval" button is not displayed at view detail page

  @35814  @35813
  Scenario: Setup cancel button label name as Automation cancel from config and it at program detail page
  |Setup save button label name as Automation cancel from config and it at program detail page|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Layout           | Cancel Button Label |                   | ApiGeneratedId:0 |
      | Page Layout           | Save Button Label   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Cancel Button Label | Auto Cancel   | Grantor State Program |                           |                            |
      | Page Layout:General   | Save Button Label   | Auto Save     | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    Then I see "Auto Cancel" button is displayed at edit detail page

  @35817 @smoke
  Scenario: Hide overview for program view page and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide For Context |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Hide For Context | View          | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Then I cannot see "Test Tab" sub tab at view detail page

  @34355 @34357  @34359
  Scenario: Setup header instruction text for overview page tab from config and validating it at program detail page
  |Changing sub tab title for overview page tab from config and validating it at program detail page|
  |Verify Tab Icon field by adding CSS for page tab|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue                  | filterId         |
      | Page Tabs Config      | Header Instruction Text |                                    | ApiGeneratedId:0 |
      | Page Tabs Config      | Tab Title               | Test Tab                           | ApiGeneratedId:1 |
      | Page Tabs Config      | Tab Icon                | govgrants_config:TabIconDefaultCss | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName               | fieldNewValue                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Header Instruction Text | Automation Header Text         | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
      | Page Tabs Config:Page Layout Action | Tab Title               | Automation Collab              | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
      | Page Tabs Config:Page Layout Action | Tab Icon                | govgrants_config:TabIconNewCss | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    Then I see "Automation Collab" subtab is present in page details
    Then I see pencil icon as "Automation Collab" sub tab
    Then I see "Automation Header Text" shown as header instruction text

  @35949 @35955 @35959 @smoke
  Scenario: Disabling of Overview page tab from config and validating it at program detail page
  |Hiding of overview page tab for internal user from config and validating it at program detail page|
  |Hiding of overview page tab for created state from config and validating it at program detail page|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    Then I do not see "Test Tab" subtab is present in page details

  @35955 @35959
  Scenario:  Hiding of overview page tab for internal user from config and validating it at program detail page|
  |Hiding of overview page tab for created state from config and validating it at program detail page|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active     | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Hide for User |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Is Active     | true          | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
      | Page Tabs Config:Page Layout Action | Hide for User | Internal      | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    And I refresh the page
    #35955
    Then I cannot see "Test Tab" sub tab at view detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide Decision Field |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Hide Decision Field | ShowActiveProgram__c | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    And I refresh the page
    And I pause execution for "5" seconds
    Then I cannot see "Test Tab" sub tab at view detail page

  @35956 @35976 @smoke
  Scenario: Hiding of overview page tab for specific profile from config and validating it at program detail page
  |Hiding overview tab from json config and validating it at program detail page|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide for Profile |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Hide for Profile | System Administrator | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    Then I cannot see "Test Tab" sub tab at view detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:HideExpressionJsonForPageTab | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    And I refresh the page
    And I pause execution for "5" seconds
    Then I cannot see "Test Tab" sub tab at view detail page

    ################## Page Block #########################
  @35979 @35980 @35984
  Scenario: Changing page block title from config and validating it at program detail page
  |Disabling of program information page block from config and validating it at program detail page|
  |Verify Header Instruction Text field for page block|
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | filterId         |
      | Page Block:Page Block Detail | Page Block Title | Information       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block:Page Block Detail | Page Block Title | Information Automation | Grantor State Program | Name                      | {pagelayout:InformationPageBlock} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Then I see "Information Automation" page block displayed
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName               | fieldOrignalValue | filterId         |
      | Page Block:Page Block Detail | Header Instruction Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName               | fieldNewValue         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block:Page Block Detail | Header Instruction Text | Header for Automation | Grantor State Program | Name                      | {pagelayout:InformationPageBlock} |
    And I refresh the page
    Then I see "Header for Automation" shown as header instruction text for page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block:Page Block Detail | Is Active | false         | Grantor State Program | Name                      | {pagelayout:InformationPageBlock} |
    And I refresh the page
    And I pause execution for "5" seconds
    Then I do not see "Information" page block displayed in page details

  @36037  @36038  @smoke
  Scenario: Hide program information page block from config and validating it at program detail page
  |Hiding of program information page block for internal user from config and validating it at program detail page|
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block            | Hide for Context |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide for Context | View          | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
    And I refresh the page
    Then I do not see "First Block" page block displayed in page details
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Block            | Hide for User |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide for User | Internal      | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
    And I refresh the page
    Then I do not see "First Block" page block displayed in page details

  @35957  @35958 @36039
  Scenario: Hide overview for program view page from config using AND operator and validating it at program detail page
  |Hide any tab for program view page from config using OR operator and validating it at program detail page|
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Operator         |                   | ApiGeneratedId:0 |
      | Page Tabs Config      | Hide for Profile |                   | ApiGeneratedId:0 |
      | Page Tabs Config      | Hide for User    |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Operator         | AND                  | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
      | Page Tabs Config:Page Layout Action | Hide for Profile | System Administrator | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
      | Page Tabs Config:Page Layout Action | Hide for User    | Internal             | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    And I refresh the page
    And I pause execution for "5" seconds
    Then I cannot see "Test Tab" sub tab at view detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Operator         |                   | ApiGeneratedId:0 |
      | Page Tabs Config      | Hide for Profile |                   | ApiGeneratedId:0 |
      | Page Tabs Config      | Hide for User    |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Operator         | OR                   | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
      | Page Tabs Config:Page Layout Action | Hide for Profile | System Administrator | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
      | Page Tabs Config:Page Layout Action | Hide for User    | Internal             | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    And I refresh the page
    Then I cannot see "Test Tab" sub tab at view detail page

  @36039
  Scenario:  Hide program information page block for particular user from config and validating it at program detail page|
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Test Tab" sub tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide for Profile | System Administrator | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
    And I refresh the page
    And I pause execution for "5" seconds
    Then I do not see "First Block" page block displayed in page details

  @36040 @36041
  Scenario: Hide program information for program view page from config using AND operator and validating it at program detail page
  |Hide program information for program view page from config using AND operator and validating it at program detail page|
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Test Tab" sub tab
    And I pause execution for "5" seconds
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block            | Operator         |                   | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Operator         | AND                  | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
      | Page Block:Page Block Detail | Hide for Profile | System Administrator | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
      | Page Block:Page Block Detail | Hide for User    | Internal             | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
    And I refresh the page
    And I pause execution for "5" seconds
    Then I do not see "First Block" page block displayed in page details
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block            | Operator         |                   | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Operator         | OR                   | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
      | Page Block:Page Block Detail | Hide for Profile | System Administrator | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
      | Page Block:Page Block Detail | Hide for User    | Internal             | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
    And I refresh the page
    And I pause execution for "5" seconds
    Then I do not see "First Block" page block displayed in page details


  @36051 @36053 @smoke
  Scenario: Hiding edit action item at row level inside attachments page block from config using disable option and validating it at program-submitted for approval detail page
  | Hiding edit action item at row level inside attachments page block from config using hide option and validating it at program-submitted for approval detail page|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                           | fieldOrignalValue | filterId         |
      | Page Block            | Hide/Disable attachment Row actions |                   | ApiGeneratedId:0 |
      | Page Block Rule       | Hide For Profile                    |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName                           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail           | Hide/Disable attachment Row actions | Disable              | Grantor State Program | GNT__PageBlockTitle__c    | Attachments                |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile                    | System Administrator | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_Yes.xlsx"
    And I click on "Save" in the page details
    And I get the "EGMS ID"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    Then I see "Edit" icon is disabled inside "Attachments" page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                           | fieldOrignalValue | filterId         |
      | Page Block            | Hide/Disable attachment Row actions |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide/Disable attachment Row actions | Hide          | Grantor State Program | GNT__PageBlockTitle__c    | Attachments                |
    And I refresh the page
    Then I softly cannot see row level action button "Edit" against "SendEmailAttachment.pdf" in flex table with id "Attachments"

  @36094 @36099  @36101 @smoke
  Scenario: Changing field api name for page block detail from config and validating it on program detail page
  |Verify Is Active field for page Block Detail|
  |Changing label of program name page block detail fom config and validating it at program detail page|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block Config     | Field API Name       | Abbreviation__c   | ApiGeneratedId:0 |
      | Page Block Config     | Field Label Override | Abbreviation      | ApiGeneratedId:1 |
      | Page Block Config     | Is Active            | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Field API Name       | BudgetingPreference__c | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Budgeting Preference   | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                   | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_Yes.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I see field "Budgeting Preference" inside page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config     | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    And I refresh the page
    Then I see "Abbreviation" is not displayed inside page block detail
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block Config     | Field Label Override | Abbreviation      | ApiGeneratedId:0 |
      | Page Block Config     | Is Active            | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Automation Title | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active            | true             | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see field "Automation Title" inside page block

  @36106
  Scenario: changing rendering behaviour of program name read only from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config     | Read Only | false             | ApiGeneratedId:0 |
      | Page Block Config     | Is Active | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Read Only | true          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_Yes.xlsx"
    Then I softly see that "Abbreviation__c" rendered in view mode only

  @36109
  Scenario:Hide program name field at page block detail from config validating it at program detail page|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide for Context |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Hide for Context | View          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_Yes.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see "Abbreviation" is not displayed inside page block detail


  @36110
  Scenario:  Hiding of program name page block detail for internal user from config and validating it at program detail page|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide for User |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active     | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Hide for User | Internal      | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active     | true          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "5" seconds
    Then I see "Abbreviation" is not displayed inside page block detail

  @36111 @36113 @36114 @smoke
  Scenario: Hide program name page block detail for specific profile from configuration and validating it at program detail page
  |Hide program name page block detail from config using AND operator and validating it at program detail page|
  | Hide program name page block detail from config using OR operator and validating it at program detail page|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide For Profile |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Hide For Profile | System Administrator | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                 | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_Yes.xlsx"
    And I click on "Save" in the page details
    Then I see "Abbreviation" is not displayed inside page block detail
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Operator         |                   | ApiGeneratedId:0 |
      | Page Block Config     | Hide For Profile |                   | ApiGeneratedId:1 |
      | Page Block Config     | Hide For User    |                   | ApiGeneratedId:2 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Operator         | AND                  | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Hide For Profile | System Administrator | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Hide For User    | Internal             | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                 | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see "Abbreviation" is not displayed inside page block detail
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Operator         | AND               | ApiGeneratedId:0 |
      | Page Block Config     | Hide For Profile |                   | ApiGeneratedId:1 |
      | Page Block Config     | Hide For User    |                   | ApiGeneratedId:2 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Operator         | OR                   | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Hide For Profile | System Administrator | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Hide For User    | Internal             | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                 | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see "Abbreviation" is not displayed inside page block detail

  @36126 @36104
  Scenario: changing rendering behaviour of program name read only for context from config and validaying it at program detail page
  |Hiding program name while making is hidden field as false from config and validaying it at program detail page|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Page Block Config     | Read Only For Context |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active             | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Read Only For Context | Edit          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active             | true          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_Yes.xlsx"
    Then I softly see that "Abbreviation__c" rendered in view mode only
    And I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Page Block Config     | Is Hidden Field | false             | ApiGeneratedId:0 |
      | Page Block Config     | Is Active       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Is Hidden Field | true          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active       | true          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    Then I see "Abbreviation" is not displayed inside page block detail

  @36127 @smoke
  Scenario: changing rendering behaviour of program name to read only for specific profile from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Page Block Config     | Read Only For Profile |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active             | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Read Only For Profile | System Administrator | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                 | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I softly see that "Abbreviation__c" rendered in view mode only

  @36107 @smoke
  Scenario: Changing value for required for save behaviour field from config and checking error message at program save
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Is Active         | true              | ApiGeneratedId:0 |
      | Page Block Config     | Required Behavior | Required for Save | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | Grantor State Program | Name                      | {pagelayout:ProgramName__c} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | {pagelayout:ProgramName__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I clear the value from field "ProgramName__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Title is required to save under Overview. |

  @36050 @smoke
  Scenario: Changing the values for Attachement classifications field from config and validating it at Program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue                                     | filterId         |
      | Page Block            | Attachment Classifications | Program Artifacts;Financial Artifacts;Other Artifacts | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Attachment Classifications | AnnouncementArtifacts1;AnnouncementArtifacts2; | Grantor State Program | GNT__PageBlockTitle__c    | Attachments                |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Files" sub tab
    When I click on "AddAttachments" button inside attachments page block
    Then I see "AnnouncementArtifacts1:AnnouncementArtifacts2" inside Type selectbox

  @36115 @36129  @36131   @smoke
  Scenario: Hiding of program name at pege block detail by making change  inside hide decision field from config and validating it at program detail page
  |Verify Read Only For User Field at page Block Detail |
  |Verify Read Decision Field at page Block Detail|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Decision Field |                   | ApiGeneratedId:0 |
      | Page Block Config     | Operator            | AND               | ApiGeneratedId:1 |
      | Page Block Config     | Is Active           | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Hide Decision Field | ShowActiveProgram__c | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Operator            |                      | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                 | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_Yes.xlsx"
    Then I softly see that "Abbreviation__c" rendered in view mode only
    And I click on "Save" in the page details
    Then I see "Abbreviation" is not displayed inside page block detail
    And I click on "Edit" in the page details
    And I pause execution for "4" seconds
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Page Block Config     | Read Only For User |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active          | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName          | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Read Only For User | Internal      | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active          | true          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    Then I softly see that "Abbreviation__c" rendered in view mode only
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block Config     | Read Decision Field |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active           | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Read Decision Field | ShowActiveProgram__c | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                 | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    And I refresh the page
    Then I softly see that "Abbreviation" rendered in view mode only

  @36136
  Scenario: Hiding program name label at page block detail from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Label | false             | ApiGeneratedId:0 |
      | Page Block Config     | Is Active  | true              | ApiGeneratedId:1 |
      | Page Block Config     | Is Active  | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Hide Label | true          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active  | true          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active  | true          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see "Abbreviation" is not displayed inside page block detail

  @36169 @36170
  Scenario: Hiding program name label at page block detail from config and validating it at program detail page
  | Verify Lookup Display Field Names field at page Block Detail|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue     | filterId         |
      | Page Block Config     | Lookup Header Text         | Internal Organization | ApiGeneratedId:0 |
      | Page Block            | Is Active                  | true                  | ApiGeneratedId:1 |
      | Page Block Config     | Lookup Display Field Names | Name                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Header Text         | Organization Automation | Grantor State Program | Name                      | {pagelayout:InternalOrg}   |
      | Page Block Config:Page Block Rule Detail | Is Active                  | true                    | Grantor State Program | Name                      | {pagelayout:InternalOrg}   |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,Code__c            | Grantor State Program | Name                      | {pagelayout:InternalOrg}   |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I click search icon for lookup "State Organization Lookup (New Window)"
    Then I see modal box with body "Organization Automation" is displayed
    Then I see "EGMS ID" in table header on lookup Modal

  @36178 @smoke
  Scenario: Changing value of attachment classification field from config and validating it at announcement detail page
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I click on top right button "Add Files" in flex table with id "---program:-:GrantorInternalProgramFilesTableId---"
    And I pause execution for "5" seconds
    And I switch to iframe with id "---program:-:addFilesIframeId---"
    And I upload attachment without random number "Attachment.pdf" of type "Program Artifacts" from computer
    And I pause execution for "5" seconds
    Then I softly see value "Program Artifacts" for title "Classification" inside table "---program:-:GrantorInternalProgramFilesTableId---"

  @36198 @smoke
  Scenario: Verify Is Active field at layout action
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Layout Action    | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Is Active | false         | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    Then I see "Edit" button is not displayed

  @36200 @36202
  Scenario: validate page layout action button field- Edit opens in overlay window
  |validate page layout action button field- Edit opens in New window|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Page Layout Action    | Action Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Behavior | Open in overlay | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:programsTableId---"
    When I click on "Edit" in the page details
    Then I see Edit opens in overlay window with "Cancel" button
    And I click on "Cancel" in the page details
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Page Layout Action    | Action Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Behavior | Open in new window | Grantor State Program | Name                      | Edit                       |
    And I refresh the page
    When I click on "Edit" in the page details
    Then I see new tab is opened

  @36204 @smoke
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
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see "Create Campaign" button is displayed

  @36205
  Scenario: Set up create campaign at page layout action from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Page Layout Action    | Display Area | Page Header       | ApiGeneratedId:0 |
      | Page Layout Action    | Is Active    | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Display Area | Menu          | Grantor State Program | Name                      | Test Automation            |
      | Page Layout Action    | Is Active    | true          | Grantor State Program | Name                      | Test Automation            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I click on "Menu" in the page details
    Then I see "Test Automation" options is displayed

  @35982 @201278 @201279
  Scenario Outline: Changing content of help text field at page block from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | coreComponentField | filterId         |
      | Page Block            | Help Text | <old_helpText>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block:Page Block Detail | Help Text | <new_helpText> | Grantor State Program | Name                      | {pagelayout:InformationPageBlock} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I hovering mouse on help text icon inside "Information"
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText                                                                           |
      | Help Text for Automation | The section gives program overview along with funder and funding organization details. |

  @36102
  Scenario Outline: Changing content of help text long field at page block detail from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Page Block Config     | Help Text Long | <old_helpText>    | ApiGeneratedId:0 |
      | Page Block Config     | Is Active      | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I hovering mouse on help text icon inside page block detail "Abbreviation"
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText                                       |
      | Help Text for Automation | Name represents for what the program is meant for. |

  @36043 @smoke
  Scenario: Hiding program information page block from json config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HideExpressionJsonForPageBlock | Grantor State Program | Name                      | {pagelayout:InformationPageBlock} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    And I navigate to "Test Tab" sub tab
    Then I do not see "First Block" page block displayed in page details

  @36116 @smoke
  Scenario: Disabling of program name page block detail from json config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Expression JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active            | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForProfilePM | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                             | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    Then I see "Abbreviation" is not displayed inside page block detail

  @36134 @smoke
  Scenario: changing rendering behaviour of program name read only with read only expression json field from config and validaying it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Page Block Config     | Read Only Expression JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active                 | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                 | fieldNewValue                                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Read Only Expression JSON | govgrants_config:ReadOnlyExpressionJsonForPageBlockDetail | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Is Active                 | true                                                      | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I softly see that "Abbreviation" rendered in view mode only

  @53094
  Scenario: Hide edit action from attachment page block from config validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Rule       | Hide for Context |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide for Context | View          | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    Then I softly cannot see row level action button "Edit" against "SendEmailAttachment.pdf" in flex table with id "Attachments"

  @53095
  Scenario: Hide edit action from attachment page block from config validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Rule       | Hide for Profile |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide for Profile | System Administrator | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    Then I softly cannot see row level action button "Edit" against "SendEmailAttachment.pdf" in flex table with id "Attachments"

  @53096
  Scenario: Hide edit action from attachment page block from config validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Page Block Rule       | Hide for User |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide for User | Internal      | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    Then I softly cannot see row level action button "Edit" against "SendEmailAttachment.pdf" in flex table with id "Attachments"

  @53098
  Scenario: Hide edit row level action using OR operator from configuration and validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Rule       | Hide For Profile |                   | ApiGeneratedId:0 |
      | Page Block Rule       | Hide For User    |                   | ApiGeneratedId:1 |
      | Page Block Rule       | Hide Operator    |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile | System Administrator | Grantor State Program | Name                      | Edit                       |
      | Page Block Rule:Page Block Rule Detail | Hide For User    | Internal             | Grantor State Program | Name                      | Edit                       |
      | Page Block Rule:Page Block Rule Detail | Hide Operator    | OR                   | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    Then I softly cannot see row level action button "Edit" against "SendEmailAttachment.pdf" in flex table with id "Attachments"
#    Then I see "Edit" icon is disabled inside "Files" page block

  @53097
  Scenario: Hide edit row level action using AND operator from configuration and validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Rule       | Hide For Profile |                   | ApiGeneratedId:0 |
      | Page Block Rule       | Hide For User    |                   | ApiGeneratedId:1 |
      | Page Block Rule       | Hide Operator    |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide For Profile | System Administrator | Grantor State Program | Name                      | Edit                       |
      | Page Block Rule:Page Block Rule Detail | Hide For User    | Internal             | Grantor State Program | Name                      | Edit                       |
      | Page Block Rule:Page Block Rule Detail | Hide Operator    | AND                  | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    Then I softly cannot see row level action button "Edit" against "SendEmailAttachment.pdf" in flex table with id "Attachments"

  @53260
  Scenario: Hide edit action from attachment page block from config validating it at attachments table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Uid Config:Uid        | Hide Decision Field |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName           | fieldNewValue    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide Decision Field | HideDeleteBtn__c | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Files" sub tab
    Then I see "Edit" icon is disabled inside "Attachments" page block

  @53092
  Scenario: Changing save attachment behaviour at attachment modal from config and validating it at attachment modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Page Block            | Save Attachment Behaviour | Save              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                 | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block:Page Block Detail | Save Attachment Behaviour | Save and Close Modal | Grantor State Program | Name                      | {pagelayout:AttachmentBlock} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    Then I see "Save and Close" at bottom of Attachment Modal

  @53388 @bug-490119
  Scenario: changing value of required behaviour and removing program title and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active         | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | {pagelayout:TextField_Abbreviation} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                | Grantor State Program | Name                      | {pagelayout:TextField_Abbreviation} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    When I enter value "" into field "Abbreviation__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                      | Program |
      | {SavedValue:EXE Username} | Step 1  |
    When I get the "EGMS ID"
    And I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Abbreviation is required to submit under Overview. |

  @53389 @bug-490119
  Scenario: changing value of required behaviour and removing owner organization value and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active         | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                 |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | {pagelayout:LookupField_PrimaryFundingOrg} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                | Grantor State Program | Name                      | {pagelayout:LookupField_PrimaryFundingOrg} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    When I enter value "" into field "PrimaryFundingOrganization__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                      | Program |
      | {SavedValue:EXE Username} | Step 1  |
    When I get the "EGMS ID"
    And I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Primary Funding Organization is required to submit under Overview. |

  @53390 @bug-490119
  Scenario: changing value of required behaviour and removing Number Field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior    |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active            | false             | ApiGeneratedId:1 |
      | Page Block Config     | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                 |
      | Page Block Config:Page Block Rule Detail | Required Behavior    | Required for Submit | Grantor State Program | Name                      | {pagelayout:Numberfield_NumberofApprovals} |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                | Grantor State Program | Name                      | {pagelayout:Numberfield_NumberofApprovals} |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                     | Grantor State Program | Name                      | {pagelayout:Numberfield_NumberofApprovals} |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                      | Program |
      | {SavedValue:EXE Username} | Step 1  |
    And I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Number is required to submit under Overview. |

  @53391
  Scenario: changing value of required behaviour and keeping none at kpi required Field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active         | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_Yes.xlsx"
    And I click on "Save" in the page details
    And I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Program Sub Type is required to submit under Overview. |

  @53392 @bug-490119
  Scenario: changing value of required behaviour and keeping none at project start period Field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active         | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue     |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | {pagelayout:DateField_EndDate} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                | Grantor State Program | Name                      | {pagelayout:DateField_EndDate} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    When I enter value "" into field "EndDate__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                      | Program |
      | {SavedValue:EXE Username} | Step 1  |
    When I get the "EGMS ID"
    And I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Project Period End Date is required to submit under Overview. |

  @53393 @bug-490119
  Scenario: changing value of required behaviour and keeping none at expected future funding and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active         | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    When I enter value "" into field "FundedAmount__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                      | Program |
      | {SavedValue:EXE Username} | Step 1  |
    When I get the "EGMS ID"
    And I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Funded Amount is required to submit under Overview. |

  @53394 @bug-490119
  Scenario: changing value of required behaviour and keeping none at URL field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active         | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | {pagelayout:URLField_WebsiteAddress} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                | Grantor State Program | Name                      | {pagelayout:URLField_WebsiteAddress} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    When I enter value "" into field "WebsiteAddress__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                      | Program |
      | {SavedValue:EXE Username} | Step 1  |
    When I get the "EGMS ID"
    And I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Website Address is required to submit under Overview. |

  @53395 @bug-490119
  Scenario: changing value of required behaviour and keeping none at project goals field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active         | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | {pagelayout:LongTextAreaField_ProjectGoals} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                | Grantor State Program | Name                      | {pagelayout:LongTextAreaField_ProjectGoals} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    When I enter value "" into field "ProjectGoals__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                      | Program |
      | {SavedValue:EXE Username} | Step 1  |
    When I get the "EGMS ID"
    And I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Project Goals is required to submit under Overview. |

  @53396 @bug-490119
  Scenario: changing value of required behaviour and keeping none at percentage field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active         | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | {pagelayout:PercentField_Percent} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                | Grantor State Program | Name                      | {pagelayout:PercentField_Percent} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    When I enter value "" into field "Percent__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                      | Program |
      | {SavedValue:EXE Username} | Step 1  |
    When I get the "EGMS ID"
    And I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Percent is required to submit under Overview. |

  @53397 @bug-490119
  Scenario: changing value of required behaviour and keeping none at date and time field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active         | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue             |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | {pagelayout:DateTimeField_DateAndTime} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                | Grantor State Program | Name                      | {pagelayout:DateTimeField_DateAndTime} |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    When I enter value "" into field "Date_And_Time__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                      | Program |
      | {SavedValue:EXE Username} | Step 1  |
    When I get the "EGMS ID"
    And I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Date And Time is required to submit under Overview. |

  @53398 @bug-490119
  Scenario: changing value of required behaviour and keeping none at time field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active         | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | {pagelayout:TimeField_Time} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                | Grantor State Program | Name                      | {pagelayout:TimeField_Time} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    When I enter value "" into field "Time__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                      | Program |
      | {SavedValue:EXE Username} | Step 1  |
    When I get the "EGMS ID"
    And I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Time is required to submit under Overview. |

  @53399 @bug-490119
  Scenario: changing value of required behaviour and keeping none at authorization field and validating error message while submitting program for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active         | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue               |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | {pagelayout:TextAreaField_Authorization} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                | Grantor State Program | Name                      | {pagelayout:TextAreaField_Authorization} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    When I enter value "" into field "Authorization__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                      | Program |
      | {SavedValue:EXE Username} | Step 1  |
    When I get the "EGMS ID"
    And I click on "Submit For Approval" in the page details
    Then I see the following message in the page details contains:
      | Authorization is required to submit under Overview. |

  @82792
  Scenario: validate that by click on by phase dropdown at refine filter , an option as ALL is displayed - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I click on By phase dropdown at dashboard
    Then I see "All" is displayed in dropdown at dashboard

  @82793
  Scenario: validate that by click on by phase dropdown at refine filter , an option as Collab is not displayed - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I click on By phase dropdown at dashboard
    Then I do not see "Collab" is displayed in dropdown at dashboard

  @82770
  Scenario: validate that link icon is present at rich text area description field under page layout - gPlanning
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I see icon for "Link" is present in rich text area description field

  @82786
  Scenario: validate that a hyperlink is present at display text in rich text area description field under page layout - gPlanning
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    When I click on "Link" icon in rich text area editor menu options
    When I create hyperlink for "text" as "TestAutomationDescription" at rich text area field
    Then I see hyperlink is present at "TestAutomationDescription" in rich text area field

  @82775
  Scenario: validate that a hyperlink is present at URL in rich text area description field under page layout - gPlanning
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I pause execution for "3" seconds
    When I click on "Link" icon in rich text area editor menu options
    When I create hyperlink for "URL" as "www.testAutomation.com" at rich text area field
    When I pause execution for "3" seconds
    Then I see hyperlink is present at "http://www.testAutomation.com" in rich text area field

  @83110 @wip
  Scenario: validate that a hyperlink is not present at user name under user profile page
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    When I select "My Profile" from user dropdown
    Then I see hyperlink is not present at "Automation ADMIN" user

  @83111
  Scenario: validate that space is present between likes count and label under user profile page
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    When I select "My Profile" from user dropdown
    Then I softly see likesCount / label as "0" is present at user detail page
    Then I softly see likesCount / label as "Posts & Comments" is present at user detail page

  @83330
  Scenario: Changing value for required for save behaviour field for URL from config and checking error message at modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior | Required for Save | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Announcement Create - Grantor | Name                      | PBD-17257                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    And I click on top right button "New" in flex table with id "---announcement:-:competitiveAnnouncementTableId---"
    When I enter value "" into field "Program__c"
    And I click modal button "Continue"
    Then I see the following message in the page details contains:
      | Program ID is required to save. |

  @83324
  Scenario: validate alert message for enetering incorrect data at url field on modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "invalid url" into field "fieldWebsiteAddress__c"
    And I click modal button "Save and Continue"
    Then I see the following message in the page details contains:
      | Website Name: Please enter valid URL value. |

  @83323
  Scenario:validate if correct URL value entered in URL field on modal and click on continue button then it redirects to next page
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "www.google.com" into field "fieldWebsiteAddress__c"
    And I click modal button "Save and Continue"
    Then I softly see "Information" page block displayed

  @83173
  Scenario Outline: Changing page block title with the 255 character value from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | filterId         |
      | Page Block:Page Block Detail | Page Block Title | Information       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block:Page Block Detail | Page Block Title | <enteredValue> | Grantor State Program | Name                      | {pagelayout:InformationPageBlock} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see "<requiredValue>" page block displayed

    Examples:
      | enteredValue                                                                                                                                                                                                                                                    | requiredValue                                                                                                                                                                                                                                                   |
      | The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 Checked size limit... | The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 The total size of this sentence is 255 Checked size limit... |

  @83206
  Scenario Outline: Changing page block title with the 255 character including special characters value from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue | filterId         |
      | Page Block:Page Block Detail | Page Block Title | Information       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block:Page Block Detail | Page Block Title | <enteredValue> | Grantor State Program | Name                      | {pagelayout:InformationPageBlock} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see "<requiredValue>" page block displayed

    Examples:
      | enteredValue                                                                                                                                                                                                                                                    | requiredValue                                                                                                                                                                                                                                                   |
      | ~!@#$%^&*()_+=-`{} ][:yy;<>?/.The total size of this sentence is tes The total size of this sentence is test The total size of this sentence is tes The total size of this sentence is tes The total size of this sentence is tes The total size of this senten | ~!@#$%^&*()_+=-`{} ][:yy;<>?/.The total size of this sentence is tes The total size of this sentence is test The total size of this sentence is tes The total size of this sentence is tes The total size of this sentence is tes The total size of this senten |

  @83730
  Scenario: validate that navigation app is loading on changing the custom app on ui -gHOME
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantee"
    Then I see navigation logo on page


  @84215
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
    When I setup my app as "As Administrator"
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

  @84577
  Scenario: verify that page footer is displayed in Very dark gray color for logged in user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As Administrator"
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


  @84760   @verifyDateAndTimeFieldFormatForLocalAsESTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date and time field format under page layout in view mode with respective to EST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "PM" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created Date" as "DateField"
    Then I softly see field "Created Date" as "{savedValue:DateField}"

  @84765
  Scenario: validate displayed of date and time field format under page layout in view mode with respective to EDT Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "PM" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created Date" as "DateField"
    Then I softly see field "Created Date" as "{savedValue:DateField}"

  @84766
  Scenario: validate displayed of date and time field format under page layout in view mode with respective to IST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "PM" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created Date" as "DateField"
    Then I softly see field "Created Date" as "{savedValue:DateField}"

  @86802
  Scenario: validate displayed of date field format under page layout in view mode with respective to EST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "PM" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created Date" as "DateField"
    Then I softly see field "Created Date" as "{savedValue:DateField}"

  @86808
  Scenario: validate displayed of date field format under page layout in view mode with respective to EDT Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "PM" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created Date" as "DateField"
    Then I softly see field "Created Date" as "{savedValue:DateField}"

  @86809   @verifyDateFieldFormatForLocalAsISTUnderUnderPageLayoutInViewMode-gAnnouncement
  Scenario: validate displayed of date field format under page layout in view mode with respective to IST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "PM" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created Date" as "DateField"
    Then I softly see field "Created Date" as "{savedValue:DateField}"

  @84732 @verifyThatBlackColorIsDisplayedForActiveTabAtWorkspaceLibrary-gHome
  Scenario: verify that black color is displayed at background for active tab at workspace library section
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    Then I see active tab has Black background colour at my workspace section


  @102100    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                 | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{StaticRecords:PageLayoutRecord}"
    When I click on "Edit" icon for "{StaticRecords:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    And I enter value "Project Grants" into field "ProgramSubType__c"
    When I click on "Save" in the page details
    Then I see "Program Sub Type" is not displayed inside page block detail

  @102107    @verifyHideFieldJsonFieldByHidingDateFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide end date from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                 | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{StaticRecords:PageLayoutRecord}"
    When I click on "Edit" icon for "{StaticRecords:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    And I enter value "Project Grants" into field "ProgramSubType__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I see "Program Sub Type" is not displayed inside page block detail

  @102114    @verifyHideFieldJsonFieldByDisablingTitleFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to disable title field Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:1 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisabledDateFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantor State Program | Name                      | {pagelayout:ProgramName__c}               |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                     | Grantor State Program | Name                      | {pagelayout:ProgramName__c}               |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                     | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I softly see field "ProgramName__c" is not editable

  @102115
  Scenario: Set up hide field json value to disable date from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:1 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisabledDateFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}            |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                     | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}            |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                     | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I softly see field "EndDate__c" is not editable

  @102248    @verifyIdDateTimeFieldIsDisabledThenValueOfDateIsNotGettingChangedAfterPageScollInEditMode1
  Scenario:validate disabled dateTime field value is not getting changed on page scroll in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:1 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:DisabledDateFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}            |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                     | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}            |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                     | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I softly see field "EndDate__c" is not editable

  @111877    @verifyBulbIconAtHeaderInstructionTextInsidePageLayoutForPMUser-gPlanning
  Scenario: verify bulb icon at header instruction text at program detail page for pm user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see bulb icon at header instruction is displayed

  @111900    @verifyBulbIconAtHeaderInstructionTextInsidePageLayoutForPMUser-gApplication
  Scenario: verify bulb icon at header instruction text at program detail page for pm user at application phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                    | filterId         |
      | Page Layout           | Page Instruction Text | govgrants_config:PageInstructionText | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | Automation Instruction page instruction text | ApplicationView    |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on "View" icon in flex table for first draft record
    Then I softly see bulb icon at header instruction is displayed
    Then I softly see "Automation Instruction page instruction text" shown as page instruction text

  @112009  @validateFieldMessageDisplayedAtHeaderForRequiredForSubmitAndSaveFieldsForPMUser-gPlanning
  Scenario: validate field message displayed for required for save and submit Field at page header for PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see field message with text as "Required to Save" and "Required to Submit"


  @112010   @validateFieldMessageDisplayedAtHeaderForRequiredForSubmitAndSaveFieldsForPMUser-gPlanning
  Scenario: validate field message displayed for required for save and submit Field at page header for PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on top right button "New" in flex table with id "Programs"
    Then I see field message with text as "Required to Save" and "Required to Submit"


  @112546
  Scenario: verify that badges shown at Overview tab in page view mode if required nfield from overview tab is blank for admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior | Required for Save | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "" into field "ProgramName__c"
    And I click on "Save" in the page details
    Then I see missing field badge on "Overview" tab

  @112562
  Scenario: verify that badges shown at Overview tab in page view mode if required field from overview tab is blank for PM user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior | Required for Save | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "" into field "ProgramName__c"
    And I click on "Save" in the page details
    Then I see missing field badge on "Overview" tab

  @112558
  Scenario: verify that badges shown at Overview tab in page edit mode if required field from overview tab is blank for PM user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    Then I see missing field badge on "Overview" tab

  @112370
  Scenario: verify that badges shown at Overview tab in page edit mode if required field from overview tab is blank for PM user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Required Behavior | Required for Save | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | PBD-17333                  |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I enter value "" into field "ProgramName__c"
    Then I see missing field badge on "Overview" tab


  @113066  @114989
  Scenario Outline: Changing content of help text long field at page block seperator type of block from config and validating it at program detail page for SPI user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Page Block Config     | Is Active      | true              | ApiGeneratedId:0 |
      | Page Block Config     | Help Text Long | <old_helpText>    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | Recipient ApplicationView | Name                      | {pagelayout:PageBlockSeperator_SPI} |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Recipient ApplicationView | Name                      | {pagelayout:PageBlockSeperator_SPI} |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    #114989
    Then I softly see "Page Block Separator" page block displayed
    #113066
    When I hovering mouse on help text icon inside "Page Block Separator"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText             | old_helpText |
      | Help Text for Automation | Help Text    |

  @115592
  Scenario Outline:validate special characters are accepted in help text field at page block seperator type of block at detail page for SPI user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Page Block Config     | Is Active      | true              | ApiGeneratedId:0 |
      | Page Block Config     | Help Text Long | <old_helpText>    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | Recipient ApplicationView | Name                      | {pagelayout:PageBlockSeperator_SPI} |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Recipient ApplicationView | Name                      | {pagelayout:PageBlockSeperator_SPI} |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I pause execution for "10" seconds
    When I hovering mouse on help text icon inside "Page Block Separator"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText | old_helpText |
      | Help@text$%  | Help Text    |

  @115664 @verifyThatVeryDarkBlueColorIsDisplayedAtPhasesTabForAdminUser-StateAsAGrantor
  Scenario: verify that very dark blue color is displayed as background for phases tab for admin user-StateAsAGrantor
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see phase tab has "Very Dark Blue" background color


  @116346
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:1 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistBlankValueUsingHideFiledJSON | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                           | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                           | Grantor State Program | Name                      | {pagelayout:ProgramName__c}               |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "--None--" into field "ProgramSubType__c"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    Then I see "Title" is not displayed inside page block detail


  @117808
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value as formula loans in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active        | true              | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active        | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistValueUsingHideFiledJSON | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                      | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                      | Grantor State Program | Name                      | {pagelayout:ProgramName__c}               |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "Project Grants" into field "ProgramSubType__c"
    When I click on "Save" in the page details
    Then I see "Title" is not displayed inside page block detail


  @117809    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueAndUsingMultipleConditionsInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:1 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistValueUsingHideFiledJSONMultipleCondition | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                                       | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                                       | Grantor State Program | Name                      | {pagelayout:ProgramName__c}               |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see "Title" is not displayed inside page block detail

  @117813    @verifyHideFieldJsonFieldByHidingtextFieldOnTheBasisOfPicklistFieldValueAndUsingNotEqualsOperatorInViewMode
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value and using multiple conditions in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active        | true              | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active        | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistValueUsingHideFiledJSONNotEqualsOperator | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                                       | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                                       | Grantor State Program | Name                      | {pagelayout:ProgramName__c}               |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see "Title" is not displayed inside page block detail

  @119856
  Scenario: validate field message displayed for required for save and submit Field at page header for admin user at edit mode
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @119858
  Scenario: validate field message displayed for required for save and submit Field at page header for admin user at modal
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @119859
  Scenario: validate req to save error message at announcement create modal
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "New" in flex table with id "flexTableDivId"
    And I click modal button "Continue"
    Then I see the following message in the page details contains:
      | Program ID is required to save. |

  @120065
  Scenario: validate the page instructions text displayed with bulb icon at page header in page edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                    | filterId         |
      | Page Layout           | Page Instruction Text | govgrants_config:PageInstructionText | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | Automation Instruction Text | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I softly see bulb icon at header instruction is displayed
    And I refresh the page
    Then I softly see "Automation Instruction Text" shown as page instruction text

  @120062
  Scenario: validate the page instructions text displayed with bulb icon at page header in page create mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                    | filterId         |
      | Page Layout           | Page Instruction Text | govgrants_config:PageInstructionText | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | govgrants_config:PageInstructionText | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    Then I softly see bulb icon at header instruction is displayed

  @120069
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
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I softly see bulb icon at header instruction is displayed
    And I refresh the page
    Then I softly see "Automation Instruction Text" shown as page instruction text

  @120233    @validateLoadingIconIsNotDisplayedAtAddNotesModalWindowInViewMode
  Scenario: validate loading icon is not displayed at add Notes modal window when record is in view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    When I click on top right button "Add" in notes and attachment with name "Notes"
    And I wait for "5" seconds
    Then I do not see loading icon at "Add Notes" modal

  @120235
  Scenario: validate loading icon is not displayed at add Notes modal window when record is in edit mode
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    When I click on top right button "Add" in notes and attachment with name "Notes"
    And I wait for "5" seconds
    Then I do not see loading icon at "Add Notes" modal

  @120234
  Scenario: validate loading icon is not displayed at add attachment modal window when record is in view mode
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    When I click on top right button "Add" in notes and attachment with name "Attachments"
    And I wait for "5" seconds
    Then I do not see loading icon at "Add Attachments" modal

  @120236
  Scenario: validate loading icon is not displayed at add Attachments modal window when record is in edit mode
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    When I click on top right button "Add" in notes and attachment with name "Attachments"
    And I wait for "5" seconds
    Then I do not see loading icon at "Add Attachments" modal

  @120450
  Scenario: validate Notes are getting added successfully using add button
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Notes"
    And I enter value "Test Automation" into "Title"
    And I enter value "Test Data" into "Description"
    And I click modal button "Save"
    Then I see the following message in the page details :
      | Saved Successfully! |

  @120237
  Scenario: validate loading icon is not displayed at associate modal at flex table when record is in edit mode
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I pause execution for "5" seconds
    Then I do not see loading icon at "Associate Contacts" modal

  @120239    @validateLoadingIconIsNotDisplayedAtAssociateModalWindowInViewMode
  Scenario: validate loading icon is not displayed at associate modal at flex table when record is in view mode
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I wait for "5" seconds
    Then I do not see loading icon at "Associate Contacts" modal

  @120241    @validateLoadingIconIsNotDisplayedAtAddNotesModalWindowInViewModeByLoginAsExternalUser
  Scenario: validate loading icon is not displayed at add Notes modal window when record is in view mode by login as external user
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---" without waiting for record
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    When I click on top right button "Add" in notes and attachment with name "Notes"
    And I wait for "5" seconds
    Then I do not see loading icon at "Add Notes" modal

  @120242
  Scenario: validate loading icon is not displayed at add attachments modal window when record is in view mode by login as external user
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---" without waiting for record
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "5" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I wait for "7" seconds
    Then I do not see loading icon at "Add Attachments" modal

  @120451
  Scenario: validate are getting edited successfully without throwing alert message if all required fields are filled
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Notes"
    And I enter value "Test Automation" into "Title"
    And I enter value "Test Data" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    Then I see row level action button "Edit" against "Notes" in table name "Notes"

  @120452
  Scenario: validate records are getting added successfully without throwing alert message if all required fields are filled
  |Sanity TC - Admin - To verify that user able to see Edit action on Notes and Attachments tables at row level|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active | true              | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | Grantor State Program | Name                      | PB-6708                    |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I pause execution for "10" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    Then I see the following message in the page details :
      | Attachment added Successfully. |


  @121223
  Scenario: validate that visual indicator not displayed at detail page if req for save field is inactive in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Is Active         | true              | ApiGeneratedId:0 |
      | Page Block Config     | Required Behavior | Required for Save | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                       |
      | Page Block Config:Page Block Rule Detail | Is Active         | false         | Grantor State Program | Name                      | {pagelayout:RequiredForSaveField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Required Behavior |               | Grantor State Program | Name                      | {pagelayout:RequiredForSaveField_ProgramSubType} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    Then I do not see missing field badge on "Overview" tab


  @121225  @foradmin
  Scenario: validate that visual indicator not displayed at detail page if req for save field is hidden in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block Config     | Is Active            | true              | ApiGeneratedId:0 |
      | Page Block Config     | Required Behavior    | Required for Save | ApiGeneratedId:1 |
      | Page Block Config     | Hide Expression JSON |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                       |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                                    | Grantor State Program | Name                      | {pagelayout:RequiredForSaveField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Required Behavior    | Required for Save                                                       | Grantor State Program | Name                      | {pagelayout:RequiredForSaveField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HideExpressionAtPageBlockDetailFieldForVisualIndicator | Grantor State Program | Name                      | {pagelayout:RequiredForSaveField_ProgramSubType} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I do not see missing field badge on "Overview" tab

  @122001    @VerifyAtProgramCreationModalIfWeClickOnCancelButtonThenUserIsRedirectedToDraftProgramFlexTableWhenPageRedirectBehaviourIsSetToSaveAndContinue
  Scenario: Validate that a draft program table is displayed by click on cancel button at record creation if page redirected behaviour is set to save and continue
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Forms                 | Page Redirect Behaviour | Save              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Page Redirect Behaviour | Save and Continue | Grantor State Program |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    Then I can see bottom button "Save and Continue" in page detail


  @112159  @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataAtPageLayout
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "Department of Children health" into field "fieldAccount__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"


  @127792   @verifyThatUserCanFilterByPlanningPhaseUnderRefineFilterByPhaseDropdown-gDashboard
  Scenario: validate that User should able to filter by using planning phase - gDashboard
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Standard Reports" content inside "Activities" subheader on left panel
    When I click on By phase dropdown at dashboard
    And I select "Grantor-Planning" and click at "Apply Filter"
    Then I softly see value "Grants, w/ Overdue Progress Reports" for title "Report Name" inside table "Reports"
    Then I softly do not see value "Funding Decision Memo with Application" for title "Report Name" inside table "Reports"

  @127823   @verifyViewActionAtStandardReportRecordUnderAnalyticsTable-gDashboard
  Scenario: validate view action is working at analytics tab table - gDashboard
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    When I navigate to "View Standard Reports" content inside "Activities" subheader on left panel
    When I perform quick search for "FDMs w/Applications and Recommendations"
    When I click on "View" icon for "FDMs w/Applications and Recommendations" inside flex table with id "Reports"
    Then I see the text :
      | FDMs w/Applications and Recommendations |


  @130293    @helpTextDisplayedAtBottomOfHelpIconAtPageLayoutInViewMode
  Scenario: validate help text displayed at bottom of help icon at page layout view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I hovering mouse on help text icon inside page block detail "Title"
    Then I see help text is displayed at bottom


  @132859 @132862 @132856 @132856
  Scenario: validate currency field is displayed at enhanced flex edit page layout
  |validate date field is displayed at enhanced flex edit page layout|
  |validate rich text area field is displayed at enhanced flex edit page layout|
  |validate save and cancel buttons are displayed at enhanced flex edit page layout|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config     | Is Active | false             | ApiGeneratedId:0 |
      | Page Block Config     | Is Active | false             | ApiGeneratedId:1 |
      | Page Block Config     | Is Active | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate}     |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PageLayoutRichTextArea__c}  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I softly see field "Funded Amount" inside page block
    Then I softly see field "Project Period Start Date" inside page block
    Then I softly see field "PageLayoutRichTextArea" inside page block
    Then I see the following page detail buttons :
      | Cancel |
      | Save   |


  @132863  @verifyDateTimeFieldIsDisplayedAtEnhancedFlexEditLayout
  Scenario: validate date time field is displayed at enhanced flex edit page layout
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I pause execution for "5" seconds
    And I save the field labeled "Created Date" as "DATE"
    When I navigate to "Overview" sub tab
    Then I softly see field "Created Date" as "{SavedValue:DATE}"

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
    And I click on "Edit" icon in flex table for first draft record
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @131795  @verifyCharacterCountDisplayedInsideCKEditorBoxAtRichTextAreaFieldInsideEditPageLayout
  Scenario Outline: validate charater count displayed at ck-editor box inside edit page layout
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    And I clear the value from field "cke_1_contents"
    And I enter value "<enterText>" into field "cke_1_contents"
    Then I softly see word count as "63" in ck editor at page layout
    Then I softly see word count as "9937" in ck editor at page layout

    Examples:
      | enterText                                                                  |
      | Lorem Ipsum is simply dummy text of the printing and typesetting industry. |

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
    And I click on "Edit" icon in flex table for first draft record
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
    And I click on "Edit" icon in flex table for first draft record
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
    And I click on "Edit" icon in flex table for first draft record
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
    And I click on "Edit" icon in flex table for first draft record
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
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    And I enter value "Test" into field "cke_1_contents"
    And I clear the value from field "cke_1_contents"
    And I enter value "Test Automation temp" into field "cke_1_contents"
    And I change formatting of all text to "Italic" inside CK editor
    And I change formatting of all text to "Remove Format" inside CK editor
    Then I see "Test Automation temp" displayed in "Plain" format inside CK editor


  @133727  @verifyContinueActionAtCreateAnnouncementModalWindow
  Scenario: validate continue action at create announcement modal window
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    When I enter value "{StaticRecords:ActiveProgram}" into field "Program__c"
    When I enter value "Test" into field "AnnouncementName__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
    When I enter value "Construction" into field "Budget_Category_Package__c"
    And I click modal button "Continue"
    Then I softly see "Announcement Specific Settings" page block displayed


  @133875    @verifyHideFieldJsonFieldByHidingDateFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide date from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:1 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideDateFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}            |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                         | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}            |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                         | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    #Then I see field "StartDate__c" is disabled
    Then I softly see field "EndDate__c" is not editable

  @133876    @verifyHideFieldJsonFieldByHidingPicklistFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide picklist from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:1 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:2 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HidePicklistFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}            |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HidePicklistFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                             | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}            |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                             | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "Project Grants" into field "ProgramSubType__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I softly see field "EndDate__c" is not editable
    Then I softly see field "ProgramSubType__c" is not editable

  @133877    @verifyHideFieldJsonFieldByHidingTextFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide text from from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:2 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                         | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                         | Grantor State Program | Name                      | {pagelayout:TextField_Abbreviation}       |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "Project Grants" into field "ProgramSubType__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I softly see field "Abbreviation__c" is not editable

  @133879    @verifyHideFieldJsonFieldByHidingCurrencyFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide currency field from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:2 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideCurrencyFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                             | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                             | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount}   |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "Project Grants" into field "ProgramSubType__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I softly see field "FundedAmount__c" is not editable

  @133883
  Scenario: Set up hide field json value to Hide date from Overview page block using text field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:1 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideDateFieldOnTheBasisOfTextInEditMode | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}      |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                     | Grantor State Program | Name                      | {pagelayout:TextField_Abbreviation} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                     | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}      |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_Yes.xlsx"
    When I enter value "ABC" into field "Abbreviation__c"
    When I enter value "50" into field "EndDate__c"
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    When I click on "Edit" in the page details
    #Then I see field "Project Period End Date" is disabled
    Then I softly see field "EndDate__c" is not editable

  @133886
  Scenario: Set up hide field json value to Hide date, text and picklist from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active        | false             | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active        | false             | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Is Active        | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideMultipleFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                             | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                             | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}            |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                             | Grantor State Program | Name                      | {pagelayout:TextField_Abbreviation}       |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "Project Grants" into field "ProgramSubType__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I softly see field "EndDate__c" is not editable
    Then I softly see field "ProgramSubType__c" is not editable
    Then I softly see field "Abbreviation__c" is not editable

  @133894
  Scenario: Set up hide field json value to Hide text from Overview page block using date field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active        | false             | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active        | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfDateInEditMode | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}      |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                     | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}      |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                     | Grantor State Program | Name                      | {pagelayout:TextField_Abbreviation} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "730" into field "EndDate__c"
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    When I click on "Edit" in the page details
    Then I softly see field "Abbreviation__c" is not editable

  @133895
  Scenario: Set up hide field json value to Hide picklist from Overview page block using date field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:1 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HidePicklistFieldOnTheBasisOfDateInEditMode | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}            |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                         | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}            |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                         | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "730" into field "EndDate__c"
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    When I click on "Edit" in the page details
    Then I softly see field "ProgramSubType__c" is not editable

  @133896
  Scenario: Set up hide field json value to Hide currency from Overview page block using date field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:2 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideCurrencyFieldOnTheBasisOfDateInEditMode | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}          |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                         | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}          |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                         | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "730" into field "EndDate__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I softly see field "FundedAmount__c" is not editable

  @134150
  Scenario: Set up hide field json value to Hide checkbox,URL and picklist using picklist field value on modal window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:1 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:2 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                              | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideCheckboxPicklistNdURLFieldOnTheBasisOfPicklistOnModal | Grantor State Program Create | Name                      | {pagelayout:PicklistModalField_Type} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                       | Grantor State Program Create | Name                      | {pagelayout:PicklistModalField_Type} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                       | Grantor State Program Create | Name                      | {pagelayout:URLModalField_Website}   |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                       | Grantor State Program Create | Name                      | {pagelayout:CheckboxModalField_CFDA} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I enter value "Project Grants" into field "Type__c"
    Then I softly see field "Type__c" is not editable
    Then I softly see field "WebsiteAddress__c" is not editable
    Then I softly see field "CFDA_Data__c" is not editable

  @134158
  Scenario: Set up hide field json value to Hide checkbox from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:2 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:3 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                    | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideCheckboxFieldOnTheBasisOfPicklistInEditMode | Grantor State Program Create | Name                      | {pagelayout:PicklistModalField_Type} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                             | Grantor State Program Create | Name                      | {pagelayout:PicklistModalField_Type} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                             | Grantor State Program Create | Name                      | {pagelayout:URLModalField_Website}   |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                             | Grantor State Program Create | Name                      | {pagelayout:CheckboxModalField_CFDA} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I enter value "Project Grants" into field "Type__c"
    Then I softly see field "Type__c" is not editable
    Then I softly see field "WebsiteAddress__c" is not editable
    Then I softly see field "CFDA_Data__c" is not editable

  @134161    @verifyHideFieldJsonFieldByHidingCheckbox,Picklist,Date,CurrencyFieldOnTheBasisOfPicklistFieldValueInEditMode
  Scenario: Set up hide field json value to Hide checkbox,picklist,date &currency field  from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:1 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:3 |
      | Page Block Config     | Is Active        | false             | ApiGeneratedId:4 |
      | Page Block Config     | Is Active        | true              | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideCheckboxPicklistDateCurrencyFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                                 | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                                 | Grantor State Program | Name                      | {pagelayout:DateField_EndDate}            |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                                 | Grantor State Program | Name                      | {pagelayout:CheckBoxField_CFDA}           |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                                 | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount}   |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "Project Grants" into field "ProgramSubType__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I softly see field "StartDate__c" is not editable
    Then I softly see field "CFDA_Data__c" is not editable
    Then I softly see field "FundedAmount__c" is not editable
    Then I softly see field "ProgramSubType__c" is not editable

  @134169 @wip
  Scenario: Set up hide field json value to Hide lookup using picklist field value on modal window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                               | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideLookupFieldOnTheBasisOfPicklistOnModal | Announcement Create - Grantor | Name                      | PBD-16186                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "New" in flex table with id "{program:toggleFlexTableActiveFundingOpportunitiesAll}"
    When I enter value "Competitive" into field "AnnouncementType__c"
    Then I see field "Program__c" is disabled

  @133880
  Scenario: Set up hide field json value to Hide lookup from Overview page block using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active        | false             | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active        | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                 |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideLookupFieldOnTheBasisOfPicklistInEditMode | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType}  |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                           | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType}  |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                           | Grantor State Program | Name                      | {pagelayout:LookupField_PrimaryFundingOrg} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "Project Grants" into field "ProgramSubType__c"
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I see field "PrimaryFundingOrganization__c" is disabled

  @134480
  Scenario: verify by click at Save action on modal layout then modal is  getting closed automatically
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "New" in flex table with id "---program:-:programContactsTableId---"
    When I enter value "RandomFirstName" into field "FirstName"
    When I enter value "RandomLastName" into field "LastName"
    And I generate the random EmailID and save as "uniqueEmailID"
    And I enter value "{SavedValue:uniqueEmailID}" into field "Email"
    And I click modal button "Save"
    Then I softly see "Contacts" page block displayed

  @136938
  Scenario: verify missing field msg is not displayed if req for save picklist field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination12 | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                     | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                  | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Then I cannot see the following message in the page details contains:
      | Program Sub Type is required to save under Overview. |

  @137275
  Scenario: verify missing field msg is not displayed if req for save date field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue     |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination17 | Grantor State Program | Name                      | {pagelayout:DateField_EndDate} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                     | Grantor State Program | Name                      | {pagelayout:DateField_EndDate} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                  | Grantor State Program | Name                      | {pagelayout:DateField_EndDate} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Then I cannot see the following message in the page details contains:
      | Project Period End Date is required to save under Overview. |

  @137281
  Scenario: verify missing field msg is not displayed if req for save URL field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingURLFieldUsingHideFieldJSON | Grantor State Program | Name                      | {pagelayout:URLField_WebsiteAddress} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                 | Grantor State Program | Name                      | {pagelayout:URLField_WebsiteAddress} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                              | Grantor State Program | Name                      | {pagelayout:URLField_WebsiteAddress} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Then I cannot see the following message in the page details contains:
      | URL is required to save under Overview. |

  @137282
  Scenario: verify missing field msg is not displayed if req for save currency field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON  |                   | ApiGeneratedId:0 |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:1 |
      | Page Block Config     | Is Active         | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingCurrencyFieldUsingHideFieldJSON | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                      | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
      | Page Block Config:Page Block Rule Detail | Is Active         | false                                                  | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Then I cannot see the following message in the page details contains:
      | Funded Amount is required to save under Overview. |

  @137283
  Scenario: verify missing field msg is not displayed if req for save percent field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON  |                   | ApiGeneratedId:0 |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:1 |
      | Page Block Config     | Is Active         | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingPercentFieldUsingHideFieldJSON | Grantor State Program | Name                      | {pagelayout:PercentField_Percent} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                     | Grantor State Program | Name                      | {pagelayout:PercentField_Percent} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                  | Grantor State Program | Name                      | {pagelayout:PercentField_Percent} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Then I cannot see the following message in the page details contains:
      | Percent is required to save under Overview. |

  @137286
  Scenario: verify missing field msg is not displayed if req for save time field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON  |                   | ApiGeneratedId:0 |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:1 |
      | Page Block Config     | Is Active         | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingTimeFieldUsingHideFieldJSON | Grantor State Program | Name                      | {pagelayout:TimeField_Time} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                  | Grantor State Program | Name                      | {pagelayout:TimeField_Time} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                               | Grantor State Program | Name                      | {pagelayout:TimeField_Time} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Then I cannot see the following message in the page details contains:
      | Time is required to save under Overview. |

  @137288
  Scenario: verify missing field msg is not displayed if req for save Date and Time field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON  |                   | ApiGeneratedId:0 |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:1 |
      | Page Block Config     | Is Active         | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue             |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingDateTimeFieldUsingHideFieldJSON | Grantor State Program | Name                      | {pagelayout:DateTimeField_DateAndTime} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                      | Grantor State Program | Name                      | {pagelayout:DateTimeField_DateAndTime} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                   | Grantor State Program | Name                      | {pagelayout:DateTimeField_DateAndTime} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Then I cannot see the following message in the page details contains:
      | Date and Time is required to save under Overview. |

  @137289    @verifyDisplayOfMissingFieldMessageIfReqForSaveNumberFieldIsHiddenUsingHideFieldJSON
  Scenario: verify missing field msg is not displayed if req for save Number field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON  |                   | ApiGeneratedId:0 |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:1 |
      | Page Block Config     | Is Active         | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                 |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingNumberFieldUsingHideFieldJSON | Grantor State Program | Name                      | {pagelayout:Numberfield_NumberofApprovals} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                    | Grantor State Program | Name                      | {pagelayout:Numberfield_NumberofApprovals} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                 | Grantor State Program | Name                      | {pagelayout:Numberfield_NumberofApprovals} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Then I cannot see the following message in the page details contains:
      | Number Of Approvals is required to save under Overview. |

  @137290
  Scenario: verify missing field msg is not displayed if req for save lookup field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON  |                   | ApiGeneratedId:0 |
      | Page Block Config     | Required Behavior | Required for Save | ApiGeneratedId:1 |
      | Page Block Config     | Is Active         | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                 |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingNumberFieldUsingHideFieldJSON | Grantor State Program | Name                      | {pagelayout:LookupField_PrimaryFundingOrg} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                    | Grantor State Program | Name                      | {pagelayout:LookupField_PrimaryFundingOrg} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                 | Grantor State Program | Name                      | {pagelayout:LookupField_PrimaryFundingOrg} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Then I cannot see the following message in the page details contains:
      | Primary Funding Organization is required to save under Overview. |

  @137291
  Scenario: verify missing field msg is not displayed if req for save text field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config     | Hide Fields JSON  |                   | ApiGeneratedId:0 |
      | Page Block Config     | Required Behavior |                   | ApiGeneratedId:1 |
      | Page Block Config     | Is Active         | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingTextFieldUsingHideFieldJSON | Grantor State Program | Name                      | {pagelayout:TextField_Abbreviation} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                  | Grantor State Program | Name                      | {pagelayout:TextField_Abbreviation} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                               | Grantor State Program | Name                      | {pagelayout:TextField_Abbreviation} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I click on "Save" in the page details
    Then I cannot see the following message in the page details contains:
      | Abbreviation is required to save under Overview. |

  @137783 @wip
  Scenario: verify missing field msg is not displayed on modal if req for save text field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config     | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config     | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config     | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                             | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingTextFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-24009                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                         | Announcement Create - Grantor | Name                      | PBD-24009                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                      | Announcement Create - Grantor | Name                      | PBD-24009                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    And I click on top right button "New" in flex table with id "---announcement:-:competitiveAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Announcement_Field_Values.xlsx"
    And I click modal button "Continue"
    Then I cannot see the following message in the page details contains:
      | Ann Group Code is required to save under Overview. |

  @137799  @wip
  Scenario: verify missing field msg is not displayed on modal if req for save lookup field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config     | Hide Expression JSON |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config     | Required Behavior    |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config     | Is Active            | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON     | govgrants_config:FlexTableHideExpressionBuilderJsonForPMUser | Announcement Create - Grantor | Name                      | {pagelayout:ProgramApprover__c} |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | Required for Save                                            | Announcement Create - Grantor | Name                      | {pagelayout:ProgramApprover__c} |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                         | Announcement Create - Grantor | Name                      | {pagelayout:ProgramApprover__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    And I click on top right button "New" in flex table with id "---announcement:-:competitiveAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Announcement_Field_Values.xlsx"
    Then I softly cannot see field "Program Approver" inside page block
    And I click modal button "Continue"
    Then I cannot see the following message in the page details contains:
      | Program Approver is required to save. |

  @137803   @wip
  Scenario: verify missing field msg is not displayed on modal if req for save currency field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                 | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue                     |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingCurrencyFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | {CommonConfigFile:ExpectedTotalAwardAmount__c} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                             | Announcement Create - Grantor | Name                      | {CommonConfigFile:ExpectedTotalAwardAmount__c} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                          | Announcement Create - Grantor | Name                      | {CommonConfigFile:ExpectedTotalAwardAmount__c} |
    When I login to "As a Grantor" app as "EXE" user
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    And I click toggle button to select "Draft Competitive Announcements"
    And I click on top right button "New" in flex table with id "---announcement:-:competitiveAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Announcement_Field_Values.xlsx"
    And I click modal button "Continue"
 # @137803 verify that req field message is not displayed for hidden currency field
    Then I cannot see the following message in the page details contains:
      | Expected Total Award Amount is required to save under Overview. |

  @137807   @wip @verifyDisplayOfMissingFieldMessageIfReqForSaveNumberFieldIsHiddenUsingHideFieldJSONOnModal
  Scenario: verify missing field msg is not displayed on modal if req for save number field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                 | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue                   |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingCurrencyFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | {CommonConfigFile:ExpectedNumberofAwards__c} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                             | Announcement Create - Grantor | Name                      | {CommonConfigFile:ExpectedNumberofAwards__c} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                          | Announcement Create - Grantor | Name                      | {CommonConfigFile:ExpectedNumberofAwards__c} |
    When I login to "As a Grantor" app as "EXE" user
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    And I click toggle button to select "Draft Competitive Announcements"
    And I click on top right button "New" in flex table with id "---announcement:-:competitiveAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Announcement_Field_Values.xlsx"
    And I click modal button "Continue"
 # @137807 verify that req field message is not displayed for hidden number field
    Then I cannot see the following message in the page details contains:
      | Expected Number of Awards is required to save under Overview. |

  @137815 @wip
  Scenario: verify missing field msg is not displayed on modal if req for save URL field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                            | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingURLFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | {CommonConfigFile:FundingOppURL__c} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                        | Announcement Create - Grantor | Name                      | {CommonConfigFile:FundingOppURL__c} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                     | Announcement Create - Grantor | Name                      | {CommonConfigFile:FundingOppURL__c} |
    When I login to "As a Grantor" app as "EXE" user
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    And I click toggle button to select "Draft Competitive Announcements"
    And I click on top right button "New" in flex table with id "---announcement:-:competitiveAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Announcement_Field_Values.xlsx"
    And I click modal button "Continue"
 # @137815 verify that req field message is not displayed for hidden URL field
    Then I cannot see the following message in the page details contains:
      | External Announcement URL is required to save under Overview. |

  @137818 @wip   @verifyDisplayOfMissingFieldMessageIfReqForSaveURLFieldIsHiddenUsingHideFieldJSONOnModal
  Scenario: verify missing field msg is not displayed on modal if req for save URL field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                             | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue               |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingDateFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | {CommonConfigFile:FOAPublicationDate__c} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                         | Announcement Create - Grantor | Name                      | {CommonConfigFile:FOAPublicationDate__c} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                      | Announcement Create - Grantor | Name                      | {CommonConfigFile:FOAPublicationDate__c} |
    When I login to "As a Grantor" app as "EXE" user
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    And I click toggle button to select "Draft Competitive Announcements"
    And I click on top right button "New" in flex table with id "---announcement:-:competitiveAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Announcement_Field_Values.xlsx"
    And I click modal button "Continue"
 # @137818 verify that req field message is not displayed for hidden URL field
    Then I cannot see the following message in the page details contains:
      | FOA Release Date is required to save. |

  @137825 @wip
  Scenario: verify missing field msg is not displayed on modal if req for save checkbox field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                 | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingCheckboxFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-16737                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                             | Announcement Create - Grantor | Name                      | PBD-23613                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                          | Announcement Create - Grantor | Name                      | PBD-23613                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "{pagelayout:PageLayoutRecord}" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
 # @137825 verify that Checkbox field is hidden on the basis of announcement type field value
    Then I softly cannot see field "Funding Plan Created" inside page block
    And I click modal button "Continue"
 # @137825 verify that req field message is not displayed for hidden Checkbox field
    Then I cannot see the following message in the page details contains:
      | Funding Plan Created is required to save under Overview. |

  @137829  @wip  @verifyDisplayOfMissingFieldMessageIfReqForSaveDate/TimeFieldIsHiddenUsingHideFieldJSONOnModal
  Scenario: verify missing field msg is not displayed on modal if req for save date/time field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                 | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingDateTimeFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-16737                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                             | Announcement Create - Grantor | Name                      | PBD-23614                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                          | Announcement Create - Grantor | Name                      | PBD-23614                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "{pagelayout:PageLayoutRecord}" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
 # @137829 verify that date/time field is hidden on the basis of announcement type field value
    Then I softly cannot see field "Letter Of Intent Due Date Time" inside page block
    And I click modal button "Continue"
 # @137829 verify that req field message is not displayed for hidden date/time field
    Then I cannot see the following message in the page details contains:
      | Letter Of Intent Due Date Time is required to save under Overview. |

  @137835   @wip @verifyDisplayOfMissingFieldMessageIfReqForSavePercentFieldIsHiddenUsingHideFieldJSONOnModal
  Scenario: verify missing field msg is not displayed on modal if req for save percent field is hidden using hide field json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Announcement Create - Grantor | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Announcement Create - Grantor | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                                | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingPercentFieldOnModalUsingHideFieldJSON | Announcement Create - Grantor | Name                      | PBD-16737                  |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save                                            | Announcement Create - Grantor | Name                      | PBD-23615                  |
      | Page Block Config:Page Block Rule Detail | Is Active         | true                                                         | Announcement Create - Grantor | Name                      | PBD-23615                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "{pagelayout:PageLayoutRecord}" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
 # @137835 verify that percent field is hidden on the basis of announcement type field value
    Then I softly cannot see field "Sub Recipient Match %" inside page block
    And I click modal button "Continue"
 # @137835 verify that req field message is not displayed for hidden percent field
    Then I cannot see the following message in the page details contains:
      | Sub Recipient Match % is required to save under Overview. |

  @145522
  Scenario: Set up hide field json value to Hide start date field using profile as system admin in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HidePageBlockAndBlockDetailForProfileAsAdmin | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate} |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                          | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I see "Project Period Start Date" is not displayed inside page block detail

  @145526
  Scenario: Set up hide field json value to Hide start date field using user type as Internal in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailForUserTypeAsInternal | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate} |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                             | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I see "Project Period Start Date" is not displayed inside page block detail

  @145528
  Scenario: Set up hide field json value to Hide start date field using context as Edit in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabForContextAsEdit | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate} |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                             | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I see "Project Period Start Date" is not displayed inside page block detail

  @145533
  Scenario: Set up hide field json value to Hide start date field using user app as As a Grantor in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabForUserAppAsStateAsGrantor | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate} |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                                       | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I see "Project Period Start Date" is not displayed inside page block detail

  @145661
  Scenario: Hide OVERVIEW Tab for Profile Admin in edit mode
    Given I have "default" configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:HideExpressionJsonForPageTab | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I cannot see "Test Tab" sub tab at view detail page

  @145662
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with IN operator and Left Operand USERTYPE in edit mode
    Given I have "default" configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabsConfigOveriviewHideExpressionWithOperatorINAndOperandUSERTYPE | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I cannot see "Test Tab" sub tab at view detail page

  @145663
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with IN operator and Left Operand AS Context edit in edit mode
    Given I have "default" configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabForContextAsEdit | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I cannot see "Test Tab" sub tab at view detail page

  @145664
  Scenario: Hide OVERVIEW Tab for user app state as Grantor in edit mode
    Given I have "default" configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabForUserAppAsStateAsGrantor | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I cannot see "Test Tab" sub tab at view detail page

  @145666
  Scenario: Set up hide expression json value to Hide page block using user type as Internal in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Is Active            | true              | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailForUserTypeAsInternal | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
      | Page Block:Page Block Detail | Is Active            | true                                                             | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Test Tab" sub tab
    Then I do not see "First Block" page block displayed in page details

  @145667
  Scenario: Set up hide expression json value to Hide page block using user app state as Grantor in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Is Active            | true              | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabForUserAppAsStateAsGrantor | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
      | Page Block:Page Block Detail | Is Active            | true                                                                       | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Test Tab" sub tab
    Then I do not see "First Block" page block displayed in page details

  @145668
  Scenario: Set up hide expression json value to Hide page block using using context as Edit in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Is Active            | true              | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabForContextAsEdit | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
      | Page Block:Page Block Detail | Is Active            | true                                                             | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Test Tab" sub tab
    Then I do not see "First Block" page block displayed in page details

  @145669
  Scenario: Set up hide expression json value to Hide page block for Profile Admin in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Is Active            | true              | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HidePageBlockAndBlockDetailForProfileAsAdmin | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
      | Page Block:Page Block Detail | Is Active            | true                                                          | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Test Tab" sub tab
    Then I do not see "First Block" page block displayed in page details

  @145672
  Scenario: Hide OVERVIEW Tab using picklist field value in edit mode
    Given I have "default" configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:HidePageTabsOrPageBlocksUsingPicklistFieldValue | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I cannot see "Overview" sub tab at view detail page

  @145836
  Scenario: validate hide expression by hiding date field using field as picklist in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldUsingPicklistWithOperatorEqualsTo | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate} |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                                                | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I see "Project Period Start Date" is not displayed inside page block detail

  @145839 @wip
  Scenario: validate hide expression by hiding date field using user operator in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabFieldUsingUserOperator | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate} |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                                   | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I see "Project Period Start Date" is not displayed inside page block detail

  @145844
  Scenario: validate hide expression by hiding tab using user operator in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabFieldUsingUserOperator | Grantor State Program | Name                      | {pagelayout:TestInternalTAB} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    Then I cannot see "Test Tab" sub tab at view detail page

  @145846
  Scenario: validate hide expression by hiding page block using picklist field value operator in edit mode
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName            | fieldOrignalValue | filterId         |
      | Page Block:Page Block Detail | Hide Expression JSON |                   | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Is Active            | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HidePageTabsOrPageBlocksUsingPicklistFieldValue | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
      | Page Block:Page Block Detail | Is Active            | true                                                             | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Test Tab" sub tab
    Then I do not see "First Block" page block displayed in page details

  @145847
  Scenario: validate hide expression by hiding page block using user operator in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active            | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active            | true                                                                   | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:HidePageBlockOrBlockDetailOrTabFieldUsingUserOperator | Grantor State Program | Name                      | {pagelayout:FirstBlock}    |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I do not see "First Block" page block displayed in page details

  @146387    @verifyHideExpressioJsonByHidingAddActionAtAttachmentUsingUserTypeOperator
  Scenario: validate hide the ADD action on attachment page block by using SObject hide logic as "user type"
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingUserTypeOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @146388    @verifyHideExpressioJsonByHidingAddActionAtAttachmentUsingProfileOperator
  Scenario: validate hide the ADD action on attachment page block by using SObject hide logic as "profile "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingProfileOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @146389    @verifyHideExpressioJsonByHidingAddActionAtAttachmentUsingContext!=ViewOperator
  Scenario: validate hide the ADD action on attachment page block by using SObject hide logic as  "Context "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingContextOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @146390    @verifyHideExpressioJsonByHidingAddActionAtAttachmentUsingUserAppOperator
  Scenario: validate hide the ADD action on attachment page block by using SObject hide logic as "User App "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingUserAppOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @146391    @verifyHideExpressioJsonByHidingAddActionAtAttachmentUsingFieldValueOperator @wip
  Scenario: validate hide the ADD action on attachment page block by using SObject hide logic as "Field "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingFieldOperatorForNotesAttachment | Application__c     |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I navigate to "Applications" content inside "Applications" subheader on left panel
    When I click toggle button to select "Applications - All"
    When I perform quick search for "Converted to Award"
    When I click on "View" icon for "Converted to Award" inside flex table with id "---program:-:ApplicationsApplicationsTableid---"
    When I navigate to "Forms and Files" sub tab
    Then I see "Add" button inside "Attachments" flex table not displayed

  @146395
  Scenario: validate hide the ADD action on attachment page block by using SObject hide logic as "$user"
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsing$UserOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @146396
  Scenario: validate hide the ADD action on notes page block by using SObject hide logic as "user type"
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingUserTypeOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I softly cannot see top right button "Add" in flex table with id "---program:-:notesFilesTableid---"

  @146397
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic as "profile "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingProfileOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I softly cannot see top right button "Add" in flex table with id "---program:-:notesFilesTableid---"

  @146398
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic as  "Context "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingContextOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I softly cannot see top right button "Add" in flex table with id "---program:-:notesFilesTableid---"

  @146400
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic as "User App "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingUserAppOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I softly cannot see top right button "Add" in flex table with id "---program:-:notesFilesTableid---"

  @146401
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic as "Field "
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingFieldOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I navigate to "Applications" content inside "Applications" subheader on left panel
    When I click toggle button to select "Applications - All"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Forms and Files" sub tab
    Then I softly cannot see top right button "Add" in flex table with id "---program:-:notesFilesTableid---"

  @146402
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic as "$user"
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsing$UserOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I softly cannot see top right button "Add" in flex table with id "---program:-:notesFilesTableid---"

  @146404
  Scenario: validate hide the ADD action on both Notes and Attachment page block by using SObject hide logic as "profile"
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON       |                   | ApiGeneratedId:0 |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON       | govgrants_config:HideAddActionUsing$UserOperatorForNotesAttachment | Program__c         |                           |                            |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsing$UserOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I softly cannot see top right button "Add" in flex table with id "---program:-:notesFilesTableid---"
    Then I see "Add" button inside "Files" flex table not displayed

  @146706
  Scenario: validate the alert message is displayed for unsaved picklist field data by click on browser navigation arrow
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_Yes.xlsx"
    And I click on "Save" in the page details
    When I click on "Edit" in the page details
    When I enter value "Project Grants" into field "ProgramSubType__c"
    And I click on back arrow
    Then I see alert popup box

  @147904
  Scenario: validate by click at save action at page layout, a record is getting saved with changed data
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue               |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:TextAreaField_Authorization} |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_Yes.xlsx"
    And I enter value "XYZ" into field "Authorization__c"
    And I click on "Save" in the page details
    Then I softly see field "Authorization" as "XYZ"
    When I click on "Edit" in the page details
    And I enter value "ABC" into field "Authorization__c"
    When I click on "Save" in the page details
    Then I softly see field "Authorization" as "ABC"

  @147920
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic using multiple operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingMultiOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I softly cannot see top right button "Add" in flex table with id "---program:-:notesFilesTableid---"

  @147921    @verifyHideExpressioJsonByHidingAddActionAtNotesUsingAndOrOperator
  Scenario: validate hide the ADD action on Notes page block by using SObject hide logic using multiple And, Or operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingAndOrOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I softly cannot see top right button "Add" in flex table with id "---program:-:notesFilesTableid---"

  @147923
  Scenario: validate hide the ADD action on Attachment page block by using SObject hide logic using multiple operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingMultiOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @147924
  Scenario: validate hide the ADD action on Attachments page block by using SObject hide logic using multiple And, Or operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingAndOrOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @147925
  Scenario: validate hide the ADD action on Attachments and notes page block by using SObject hide logic using multiple And, Or operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON       |                   | ApiGeneratedId:0 |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON       | govgrants_config:HideAddActionUsingAndOrOperatorForNotesAttachment | Program__c         |                           |                            |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingAndOrOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed
    Then I softly cannot see top right button "Add" in flex table with id "---program:-:notesFilesTableid---"

  @147926
  Scenario: validate hide the ADD action on Attachment and notes page block by using SObject hide logic using multiple operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON       |                   | ApiGeneratedId:0 |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON       | govgrants_config:HideAddActionUsingMultiOperatorForNotesAttachment | Program__c         |                           |                            |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingMultiOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed
    Then I softly cannot see top right button "Add" in flex table with id "---program:-:notesFilesTableid---"

  @147930
  Scenario: validate hide the ADD action on Attachments page block by using SObject hide logic using Or operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingOrOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed

  @147931
  Scenario: validate hide the ADD action on notes page block by using SObject hide logic using Or operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                     | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                     | fieldNewValue                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON | govgrants_config:HideAddActionUsingOrOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I softly cannot see top right button "Add" in flex table with id "---program:-:notesFilesTableid---"

  @147932
  Scenario: validate hide the ADD action on Attachment and notes page block by using SObject hide logic using OR operators
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName                           | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | Note Add Hide Expression JSON       |                   | ApiGeneratedId:0 |
      | Notes And Attachment Action Sobject Config | Attachment Add Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName                           | fieldNewValue                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | Note Add Hide Expression JSON       | govgrants_config:HideAddActionUsingOrOperatorForNotesAttachment | Program__c         |                           |                            |
      | Notes And Attachment Action Sobject Config:General | Attachment Add Hide Expression JSON | govgrants_config:HideAddActionUsingOrOperatorForNotesAttachment | Program__c         |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Files" flex table not displayed
    Then I softly cannot see top right button "Add" in flex table with id "---program:-:notesFilesTableid---"

  @146837
  Scenario: validate Notes View action working correctly at programs-planning
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Notes"
    And I enter value "Test Automation" into "Title"
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    And I click on "close" button on "Add Notes" modal
    When I click on "View" icon for "Test Automation" inside flex table with id "---program:-:notesFilesTableid---"
    Then I see "View Notes" opens in overLay window

  @146931
  Scenario: validate Notes edit modal opens by click at Edit action at programs-planning
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Notes"
    And I enter value "Test Automation" into "Title"
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    And I click on "close" button on "Add Notes" modal
    When I click on "Edit" icon for "Test Automation" inside flex table with id "---program:-:notesFilesTableid---"
    Then I see "Edit Notes" opens in overLay window

  @148171
  Scenario: verify hide field json working for long text area fields in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active        | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                  |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJSONAtLongTextAreaField | Grantor State Program | Name                      | {pagelayout:LongTextAreaField_ProjectGoals} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                              | Grantor State Program | Name                      | {pagelayout:LongTextAreaField_ProjectGoals} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    #When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    Then I softly see "Project Goals" is not displayed inside page block detail

  @148172
  Scenario: verify hide field json working for long text area fields in view mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active        | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                  |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJSONAtLongTextAreaField | Grantor State Program | Name                      | {pagelayout:LongTextAreaField_ProjectGoals} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                              | Grantor State Program | Name                      | {pagelayout:LongTextAreaField_ProjectGoals} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I softly see "Project Goals" is not displayed inside page block detail

  @148319 @wip
  Scenario: verify number field is displayed with 4 decimal places at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-23596                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    And I enter value "12344" into field "Removenumber__c"
    And I click on "Save" in the page details
    Then I see field "Removenumber" as "12,344.0000"

  @149175
  Scenario: verify missing field msg is displayed for phone no field if req for save is set
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | Grantor State Program | Name                      | {pagelayout:Phone_Number__c} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | {pagelayout:Phone_Number__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I clear the value from field "Phone_Number__c"
    When I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Phone Field is required to save under Overview. |


  @151109
  Scenario: verify missing field msg is displayed for phone no field if req for save is set at newly created record
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior | --None--          | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | Grantor State Program | Name                      | {pagelayout:Phone_Number__c} |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | {pagelayout:Phone_Number__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "10" seconds
    Then I see the following message in the page details contains:
      | Phone Number is required to save under Overview. |

  @149700
  Scenario: validate the user can save unsaved data by click on save button at page layout
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    And I clear the value from field "fieldProgramName__c"
    When I enter value "Test" into field "fieldProgramName__c"
    And I click on "Save" in the page details
    Then I see field "Title" as "Test"

  @148392
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in text field at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "" into field "ProjectGoals__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148395
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in number field at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:Number__c}     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "1" into field "Number__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148397
  Scenario: validate the alert message is displayed for unsaved Currency field data by click on browser refresh button
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    When I enter value "234321" into field "FundedAmount__c"
    And I refresh the page
    Then I see alert popup box

  @148399
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in Currency field at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "1" into field "FundedAmount__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148400
  Scenario: validate the alert message is displayed for unsaved Percent field data by click on browser refresh button
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "1" into field "Percent__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148401
  Scenario: validate the alert message is displayed for unsaved Percent field data by click on browser navigation arrow
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PercentField_Percent} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "1" into field "Percent__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148402
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in Percent field at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PercentField_Percent} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "1" into field "Percent__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148468
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in url field at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:URLField_WebsiteAddress} |
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "www.google.com" into field "fieldURL__c"
    And I click on "Cancel" in the page details without processing
    Then I softly see confirmation box with body "Are you sure you want to cancel?" is displayed

  @148471
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in long text area field at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:LongTextAreaField_ProjectGoals} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "test" into field "fieldProjectGoals__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148473
  Scenario: validate the alert message is displayed for unsaved text area field data by click on browser navigation arrow
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue               |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:TextAreaField_Authorization} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "test" into field "Authorization__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148474
  Scenario: validate the alert message is displayed for unsaved text area field data by click on browser refresh button
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue               |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:TextAreaField_Authorization} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "test" into field "Authorization__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148475
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in text area field at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue               |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:TextAreaField_Authorization} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "test" into field "Authorization__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148501
  Scenario: validate the alert message is displayed for unsaved multi-picklist field data by click on browser navigation arrow
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue               |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:TextAreaField_Authorization} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "test" into field "Authorization__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148503 @wip
  Scenario: validate the alert message is displayed for unsaved multi-picklist field data by click on browser refresh button
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{pagelayout:Announcement}"
    When I click on "Edit" icon for "{pagelayout:Announcement}" inside table
    When I enter value "Other" into field "EligibleApplicantTypes__c"
    When I enter value "test" into field "OtherEligibleApplicantTypes__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @148505 @wip
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in multi-picklist field at page layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{pagelayout:Announcement}"
    When I click on "Edit" icon for "{pagelayout:Announcement}" inside table
    When I enter value "Other" into field "EligibleApplicantTypes__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @149127
  Scenario: validate the alert message is displayed for unsaved email field data by click on browser navigation arrow
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-23598                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "test@yopmail.com" into field "Email__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @149123
  Scenario: validate the alert message is displayed for unsaved email field data by click on browser refresh button
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-23598                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "test@yopmail.com" into field "Email_Test__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @149131
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in Email field at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:TestEmail__c}  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "test@yopmail.com" into field "TestEmail__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @149156
  Scenario: validate the alert message is displayed for unsaved Phone field data by click on browser refresh button
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:Phone_Number__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "9987" into field "Phone_Number__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @149159
  Scenario: validate the alert message is displayed for unsaved Phone field data by click on browser navigation arrow
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:Phone_Number__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "9987" into field "Phone_Number__c"
    And I click on back arrow
    And I pause execution for "2" seconds
    Then I see alert popup box

  @149158
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in Phone field at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:Phone_Number__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "9987" into field "Phone_Number__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @146707 @wip
  Scenario: validate the alert message is displayed for unsaved Picklist field data by click on browser refresh button
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:Phone_Number__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "9987" into field "Phone_Number__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @146708
  Scenario: validate that users should be warned when they click on Cancel button with unsaved data in Picklist field at page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:Phone_Number__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "9987" into field "Phone_Number__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @148176
  Scenario: validate that dropdown values under picklist field are displayed properly at edit page layout
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I click dropdown field "FocusAreaRequired__c"
    Then I see only the following ordered options in dropdown field "FocusAreaRequired__c" :
      | --None-- |
      | Yes      |
      | No       |

  @151531
  Scenario: verify if applied hide field json on text field and click on save button then record is getting saved successfully
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideTextFieldUsingHideFiledJSON | Grantor State Program | Name                      | {pagelayout:Number__c}     |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                             | Grantor State Program | Name                      | {pagelayout:Number__c}     |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    And I click on "Save" in the page details
    And I pause execution for "4" seconds
    Then I softly can see top right button "Edit" in page detail
    Then I softly can see top right button "Submit for Approval" in page detail

  @148753
  Scenario: validate required for save message is displayed for rich text field at page layout for ADINuser
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active         | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue             |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | {pagelayout:PageLayoutRichTextArea__c} |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | Grantor State Program | Name                      | {pagelayout:PageLayoutRichTextArea__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_Yes.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    Then I see the following message in the page details contains:
      | PageLayoutRichTextArea is required to save under Overview. |

  @151008
  Scenario: verify that user gets he validation message with the field name by entering invalid data in url field at modal
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Announcement Create - Grantor | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Announcement Create - Grantor | Name                      | {pagelayout:FundingOpportunityURL__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    And I click on top right button "New" in flex table with id "---announcement:-:competitiveAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Announcement_Field_Values.xlsx"
    When I enter value "dummytextummytextdummytextdummytext" into field "FundingOpportunityURL__c"
    And I click modal button "Continue"
    Then I see the following message in the page details contains:
      | Funding Opportunity Web Address: Please enter valid URL value. |

  @148732
  Scenario: verify that add notes modal window is displayed properly
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    When I click on top right button "Add" in notes and attachment with name "Notes"
    Then I see modal with id "addAtt" displayed properly

  @148734
  Scenario: verify that edit notes modal window is displayed properly
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Files" sub tab
    When I add notes records
    When I close modal by clicking the top right x button
    When I click on "Edit" icon for "Notes Record" inside table
    Then I see modal with id "addAtt" displayed properly


  @155305
  Scenario: Validate currency field value accepts the numbers inside page block detail in view mode
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    When I enter value "900000" into field "FundedAmount__c"
    And I click on "Save" in the page details
    Then I see field "Funded Amount" as "$900,000"

  @155304
  Scenario: Validate percent field value accepts the numbers inside page block detail in view mode
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    When I enter value "1234" into field "fieldPercent__c"
    And I click on "Save" in the page details
    Then I see field "Percent" as "1,234%"


  @161413
  Scenario: Verify If We Disabled Owner Organization Field On PBD Json Expression Using Equal To Operator Then Owner Organization Field Disabled
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active        | true              | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active        | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                 |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonUsingEqualToOperatorDisableLookupField | Grantor State Program | Name                      | {pagelayout:LookupField_PrimaryFundingOrg} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                 | Grantor State Program | Name                      | {pagelayout:LookupField_PrimaryFundingOrg} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                 | Grantor State Program | Name                      | {pagelayout:Abbreviation__c}               |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "ABC" into field "Abbreviation__c"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    Then I softly see field "Primary Funding Organization " is not editable

  @161419 @VerifyIfWeEnabledOwnerOrganizationFieldOnPBDJsonExpressionUsingNotEqualToOperatorThenOwnerOrganizationFieldEnabled @vaibhavC
  Scenario: Verify If We Enabled Owner Organization Field On PBD Json Expression Using Not EqualTo Operator Then Owner Organization Field Enabled
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active        | true              | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active        | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                 |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonUsingNotEqualToOperatorEnableLookupField | Grantor State Program | Name                      | {pagelayout:LookupField_PrimaryFundingOrg} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                   | Grantor State Program | Name                      | {pagelayout:LookupField_PrimaryFundingOrg} |
      | Page Block Config:Page Block Rule Detail | Is Active        | true                                                                   | Grantor State Program | Name                      | {pagelayout:Abbreviation__c}               |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "ABC" into field "Abbreviation__c"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    Then I see fields "PrimaryFundingOrganization__c" is in edit mode

  @158907
  Scenario: To validate that if there is multi picklist field is rendred as checkbox then add extra checkbox as Select All Option
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I softly see field "Select All" inside page block

  @158474
  Scenario: verify Select All Chcekbox Is Removed From UI Page Layout for the Multiselect Picklist Rendering on Edit layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | PBD-24003                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I do not see below checkbox options for field "TypesOfAssistance__c"
      | Select All |


  @158470
  Scenario: Validate Type Of Assistance In The Multiselect Picklist Read Only For The Page Layout Config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Read Only | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Read Only | true          | Grantor State Program | Name                      | {pagelayout:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I softly see that "TypesOfAssistance__c" rendered in view mode only

  @158464 @ValidateEditLayoutMultipickListTypeOfInstanceOnUiDisplayProperly @wip
  Scenario: Validate Edit Layout Multipick List Type Of Instance On Ui Display Properly
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "AN-A11-145"
    When I click on "View" icon for "AN-A11-145" inside table
    When I navigate to "Overview" sub tab
    Then I see field "Eligible Applicant Types" inside page block

  @153789 @ValidateSingleCheckboxIsDisplayedForCheckboxField
  Scenario: Validate Single Checkbox Is Displayed For Checkbox Field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:CheckBoxField_CFDA} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I see checkbox is displayed for field "fieldCFDA_Data__c"

  @165040
  Scenario: Validate User Apply Json On History Object Then History Dropdown Show Child Record
    Given I have "default" configuration as below:
      | configurationCategory                      | fieldName       | fieldOrignalValue | filterId         |
      | Notes And Attachment Action Sobject Config | History Objects |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                              | fieldName       | fieldNewValue                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Notes And Attachment Action Sobject Config:General | History Objects | govgrants_config:JsonForHistoryObjectForChildGrantee | Announcement__c    |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    And I click toggle button to select "Draft Competitive Announcements"
    And I click on top right button "New" in flex table with id "---announcement:-:competitiveAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Announcement_Field_Values.xlsx"
    And I click modal button "Continue"
    When I enter "Creation Second Negotiation" values from "Announcement_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I softly see expected table with id "toggleFlexTableHistory"
    When I softly see the text :
      | Field History |
    Then I see "Budget Period" is displayed inside History table dropdown menu


  @171511 @sprint19 @169581userstory @wip @coveredinalternaterendering
  Scenario: page layout -To verify,alternate rendering is configured for multi-select picklist fields and the User checked the "Hide Select All Checkbox" field from the config, then select all the options is enabled on the page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                    | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                    | fieldNewValue              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | true                       | Grantor State Program | Name                      | PBD-23574                                          |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | General Review Form   | Name                      | {CommonConfigFile:internalUserFormCheckboxType__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I select below checkbox options for field "fieldTypesOfAssistance__c"
      | Display 2 |
      | Display 1 |
    Then I do not see below checkbox options for field "fieldTypesOfAssistance__c"
      | Select All |

  @171512
  Scenario: page layout -To verify,alternate rendering is configured for Long text area or text field, the user should be able to check the checkbox when Hide Select All Checkbox is checked
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                    | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                    | fieldNewValue              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                  |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | true                       | Grantor State Program | Name                      | {pagelayout:LongTextAreaField_ProjectGoals} |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Grantor State Program | Name                      | {pagelayout:LongTextAreaField_ProjectGoals} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values.xlsx"
    Then I select below checkbox options for field "ProjectGoals__c"
      | Display Value on UI 1 |
      | Display Value on UI 2 |
      | Display Value on UI 3 |
      | Display Value on UI 4 |
    And I click on "Save" in the page details
    Then I softly see field "Display Value on UI 1" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 2" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 3" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 4" as "Checked" for multipicklist

  @174383
  Scenario: page layout -To verify,alternate rendering is configured for multi-select picklist fields and the User unchecked the "Hide Select All Checkbox" field from the config, then select all the options is enabled on the page layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active                | false             | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                    |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false         | Grantor State Program | Name                      | {pagelayout:AdminPmPageLayoutCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Is Active                | true          | Grantor State Program | Name                      | {pagelayout:AdminPmPageLayoutCheckboxType__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I select below checkbox options for field "AdminPmPageLayoutRadioType__c"
      | Display 2 |


  @171518
  Scenario: page layout -To verify,alternate rendering is configured for Long text area or text field, the user should be able to check the all checkbox when Hide Select All Checkbox is unchecked
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active                | false             | Grantor State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false         | Grantor State Program | Name                      | PBD-23604                  |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false         | Grantor State Program | Name                      | PBD-23592                  |
      | Page Block Config:Page Block Rule Detail | Is Active                | true          | Grantor State Program | Name                      | PBD-23592                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    And I pause execution for "60" seconds
    Then I select below checkbox options for field "fieldObjectives__c"
      | YES |
    Then I select below checkbox options for field "fieldProjectGoals__c"
      | YES |

  @171517 @wip @alternaterendering
  Scenario:page layout -To verify,alternate rendering is configured for Long text area or text field, the user should be able to check the all checkbox when Hide Select All Checkbox is checked
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId          |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0  |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:1  |
      | Page Block Config:Page Block Rule Detail | Is Active                | false             | Grantor State Program | ApiGeneratedId: 2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | PBD-23604                  |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | PBD-23592                  |
      | Page Block Config:Page Block Rule Detail | Is Active                | true          | Grantor State Program | Name                      | PBD-23592                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    And I pause execution for "20" seconds
    Then I select below checkbox options for field "fieldObjectives__c"
      | YES |

  @205806
  Scenario: To verify - Validation message should display properly when we use field label override in arial font Style for currency field  for automation user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PercentField_Percent}       |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:Number__c}                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
    When I login to "As a Grantor" app as "PM" user
    When I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "{pagelayout:Random20Digit}" into field "FundedAmount__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details :
      | Funded Amount : Number is too large. |

  @205808 @218874
  Scenario: To verify - Validation message should display properly when we use field label override in arial font Style for Number   field  for internal user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PercentField_Percent} |
    When I login to "As a Grantor" app as "PM" user
    When I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "{pagelayout:Random20Digit}" into field "fieldPercent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Percent: Number is too large. |

  @205807
  Scenario: To verify - Validation message should display properly when we use field label override in arial font Style for percent  field  for internal user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PercentField_Percent} |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I enter value "111111111111111111111111111111111" into field "fieldPercent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Percent: Number is too large. |

  @205810
  Scenario: To verify - Validation message should display properly when we use field label override in arial font Style for Number   field  for internal user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:Number__c}     |
    When I login to "As a Grantor" app as "PM" user
    When I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "{pagelayout:Random20Digit}" into field "fieldNumber__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Number: Number is too large. |

  @205809
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri Light(Headings) font Style for currency field  for internal user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | true              | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Funded Amount     | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Is Active            | true               | Grantor State Program | Name                      | {pagelayout:FundedAmount__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Funded Amount Test | Grantor State Program | Name                      | {pagelayout:FundedAmount__c} |
    When I login to "As a Grantor" app as "PM" user
    When I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "{pagelayout:Random20Digit}" into field "FundedAmount__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details :
      | Funded Amount Test: Number is too large. |

  @205812
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri Light(Headings) font Style for Number   field  for internal user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PercentField_Percent} |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I enter value "111111111111111111111111111111111" into field "fieldNumber__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Number: Number is too large. |

  @205811
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri Light(Headings) font Style for percent  field  for internal user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PercentField_Percent} |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I enter value "111111111111111111111111111111111" into field "fieldPercent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Percent: Number is too large. |

  @205813
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for currency field  for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I enter value "111111111111111111111111111111111" into field "FundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | Funded Amount : Number is too large. |

  @205815
  Scenario:  To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for Number   field for interl user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PageLayoutNumberField__c} |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I enter value "111111111111111111111111111111111" into field "fieldPageLayoutNumberField__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details :
      | PageLayoutNumberField: Number is too large. |

  @205798
  Scenario:  To verify - Validation message should display properly when we use field label override in  font Arial Nova for currency field (Nauman shahid
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Funded Amount     | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-17698                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "111111111111111111111111111111111" into field "FundedAmount__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @206506 @wip
  Scenario: To verify - Validation message should display properly when we use field label override in arial  for currency field Automation user(Nauman shahid)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Funded Amount     | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Dynamic field | Grantor State Program | Name                      | PBD-17698                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "111111111111111111111111111111111" into field "FundedAmount__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Dynamic field : Number is too large. |

  @206456 @wip
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri for currency field Automation user(Nauman shahid)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Funded Amount     | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Dynamic field Config | Grantor State Program | Name                      | PBD-17698                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "111111111111111111111111111111111" into field "FundedAmount__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Dynamic field Config : Number is too large. |

  @206566 @wip
  Scenario: To verify - Validation message should display properly when we use field label override in arial  for Percent field Automation user(Nauman shahid)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Dynamic field | Grantor State Program | Name                      | PBD-23586                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "111111111111111111111111111111111" into field "fieldPercent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Dynamic field : Number is too large. |

  @206570
  Scenario: To verify - Validation message should display properly when we use field label override in  font Arial Nova for Percent field (Nauman shahid
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-24006                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "111111111111111111111111111111111" into field "fieldPercent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @206569 @wip
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri for percent  field Automation user(Nauman shahid)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Dynamic field Config | Grantor State Program | Name                      | PBD-23586                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "111111111111111111111111111111111" into field "fieldPercent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Dynamic field Config : Number is too large. |

  @206571 @wip
  Scenario: To verify - Validation message should display properly when we use field label override in  font Arial Nova for Number field (Nauman shahid
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Number            | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-23595                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    And I pause execution for "4" seconds
    When I enter value "111111111111111111111111111111111" into field "fieldNumber__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @206572 @wip
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri for Number  field Automation user(Nauman shahid)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Number            | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Dynamic field Config | Grantor State Program | Name                      | PBD-23595                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "111111111111111111111111111111111" into field "fieldNumber__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see the following message in the page details contains:
      | Dynamic field Config : Number is too large. |

  @171509
  Scenario: page layout -To verify,alternate rendering is configured for Long text area  field, the admin user should be able to check the checkbox
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I select below checkbox options for field "fieldTypesOfAssistance__c"
      | Select All |

  @170159
  Scenario: Verify When Snapshot is generated manually, When pass the name dynamically from keyValueMap is not given then filename is not display on   'snapshot history'
   # Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Snapshot History"

  @172151
  Scenario: Page layout-To verify User hover over the lookup field icon on page layout then it should display the Field label override name from the GovGrants side.
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Owner Organization" inside page block

  @172215
  Scenario: Page layout-To verify User fill the lookup field ( Required for submit  ) and save the record and after edit the same record  then it should display the Field label override name from the GovGrants side.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | --None--          | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                 |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | Grantor State Program | Name                      | {pagelayout:LookupField_PrimaryFundingOrg} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Primary Funding Organization" inside page block

  @172178 @wip
  Scenario: Page layout-To verify User hover over the lookup field icon(Required Behavior-required to save ) on page layout edit mode  then it should display the Field label override name from the GovGrants side.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | --None--          | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-17603                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Owner Organization" inside page block

  @172212
  Scenario: Page layout-To verify User fill the lookup field and save the record and after edit the same record  then it should display the Field label override name from the GovGrants side.
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Owner Organization" inside page block

  @172179 @wip
  Scenario: Page layout-To verify User hover over the lookup field icon(Required Behavior-required to save ) on page layout edit mode  then it should display the Field label override name from the GovGrants side.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | --None--          | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | PBD-17603                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "5" seconds
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Owner Organization" inside page block

  @172154 @wip
  Scenario: Page layout-To verify User hover over the lookup field icon on page layout then it should display the Field label override name from the object level  side
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue  | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Owner Organization | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override |               | Grantor State Program | Name                      | PBD-17603                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "5" seconds
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Organization" inside page block

  @172213
  Scenario:Page layout-To verify User fill the lookup field ( Required for save ) and save the record and after edit the same record  then it should display the Field label override name from the GovGrants side.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | --None--          | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                 |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | Name                      | {pagelayout:LookupField_PrimaryFundingOrg} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "5" seconds
    And I click on "Edit" in the page details
    And I navigate to "Overview" sub tab
    And I hover mouse on text with id "Account__c"
    Then I see lookup link "Primary Funding Organization" inside page block

  @186950 @sprint26
  Scenario: To verify, all the Multiselect picklist fields (Selected/Unselected) should be displayed on the UI in View Mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    Then I softly see field "Types Of Assistance" inside page block

  @189071 @sprint26
  Scenario: To verify, Multiselect picklist field is marked as 'Hide Label' from page layout config, then its Label should not be visible on Page layout in Edit mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Label | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Hide Label | true          | Grantor State Program | Name                      | {pagelayout:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Types Of Assistance" inside page block

  @189072 @sprint26
  Scenario: To verify, Multiselect picklist field is marked as 'Hide Label' from page layout config, then its Label should not be visible on Page layout in View mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Label | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Hide Label | true          | Grantor State Program | Name                      | {pagelayout:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Types Of Assistance" inside page block

  @189074 @sprint26
  Scenario: To verify, Multiselect picklist field's lable is overriden with 'Field Label Override' config, then it should be visible on Page layout in Edit mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue   | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Types Of Assistance | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Types Of Assistance Test | Grantor State Program | Name                      | {pagelayout:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    Then I softly see field "Types Of Assistance Test" inside page block

  @189075 @sprint26
  Scenario: To verify, Multiselect picklist field's lable is overriden with 'Field Label Override' config, then it should be visible on Page layout in View mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Automation    | Grantor State Program | Name                      | {pagelayout:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    Then I softly see field "Automation" inside page block

  @189077 @spriint26
  Scenario: To verify, Multiselect picklist field is marked as 'Is Hidden Field' from page layout config, then it should not be visible on Page layout in Edit mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName       | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Hidden Field | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Is Hidden Field | true          | Grantor State Program | Name                      | {pagelayout:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Types Of Assistance" inside page block

  @189078 @sprint26
  Scenario: To verify, Multiselect picklist field is marked as 'Is Hidden Field' from page layout config, then it should not be visible on Page layout in View mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName       | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Hidden Field | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Hidden Field | true          | Grantor State Program | Name                      | PBD-23574                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Types Of Assistance" inside page block

  @189082 @sprint26 @wip
  Scenario: To verify, if "Disable Select All' config is checked, then 'Select all' is not displayed on Page layout in Edit mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | PBD-23574                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Select all" inside page block


  @174655 @sprint20 @userstory_171188
  Scenario: page layout : To verify, User should see the  name of the subrecipient's organization  under the planning /home Pending Tasks (Assigned to Me)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
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
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | {pagelayout:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Select All" inside page block

  @189066 @sprint26
  Scenario: To verify, Multiselect picklist field is marked as 'Read Only' from page layout config, then it should not be editable on Page layout in Edit mode (but 'Select All' option should be visible)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Read Only | true          | Grantor State Program | Name                      | {pagelayout:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I softly see field "Types Of Assistance" inside page block

  @189068 @sprint26
  Scenario: To verify, Multiselect picklist field is marked as 'Read Only' from page layout config, then it should not be editable on Page layout in View mode (without 'Select All' option)
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Read Only | true          | Grantor State Program | Name                      | {pagelayout:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I softly see field "Types Of Assistance" inside page block

  @189083 @sprint26 @wip
  Scenario: To verify, if "Disable Select All' config is checked, then 'Select all' is not displayed on Page layout in View mode.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox | true          | Grantor State Program | Name                      | PBD-23574                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    Then I softly cannot see field "Select All" inside page block

  @205789 @Sprint5
  Scenario: To verify, Verified for Percentage, Number, Currency and Formula  (Text)  fields
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PercentField_Percent}       |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:Number__c}                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    When I enter value "111111111111111111111111111111111111111111111" into field "Percent__c"
    When I enter value "222222222222222222222222222222222222222222222222" into field "Number__c"
    When I enter value "3333333333333333333333333333333333333333333333333" into field "FundedAmount__c"
    And I click on "Save" in the page details
    Then I softly see the following message in the page details contains:
      | Percent: Number is too large. |
    Then I softly see the following message in the page details contains:
      | Funded Amount: Number is too large. |
    Then I softly see the following message in the page details contains:
      | Number: Number is too large. |


  @205795
  Scenario: To verify - Validation message should display properly when we use field label override in arial font Style for percent  field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | {pagelayout:PercentField_Percent} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "1123345678456785667456789765432765443" into field "Percent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Percent is too large. |

  @205796
  Scenario: To verify - Validation message should display properly when we use field label override in arial font Style for Number   field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Number            | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | {pagelayout:Number__c}     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "123456783456789456789045678945678" into field "Number__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @205800
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri Light(Headings) font Style for percent  field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-23586                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "1234567834567834567834567834567834567" into field "Percent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @205802
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri Light(Headings) font Style for Number   field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Number            | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | {pagelayout:Number__c}     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "13456789034567894567890234567" into field "Number__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @205803
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for currency field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Funded Amount     | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Funded Amount | Grantor State Program | Name                      | {pagelayout:FundedAmount__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "1234567345673456734567345673456" into field "FundedAmount__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Funded Amount: Number is too large. |

  @205804
  Scenario: To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for percent  field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | {pagelayout:PercentField_Percent} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "1123345678456785667456789765432765443" into field "Percent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @205805
  Scenario:  To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for Number   field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Number            | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | {pagelayout:Number__c}     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "145678967890673456784567894567896788" into field "Number__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @205814 @wip
  Scenario:  To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for percent  field  for internal user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Percent           | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-23586                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "1123345678456785667456789765432765443" into field "Percent__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Percent is too large. |

  @205794 @wip
  Scenario:  To verify - Validation message should display properly when we use field label override in Calibri(Body) font Style for percent  field  for internal user
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Funded Amount     | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Go to platform setup | Grantor State Program | Name                      | PBD-17698                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I pause execution for "4" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter value "123456789012345676785678567867897890" into field "FundedAmount__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Go to platform setup : Number is too large. |

  @208958
  Scenario: Validation message should not display when user enter 4 digit no
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I enter value "1234" into field "FundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Funded Amount : Number is too large." error

  @208960
  Scenario: To verify - Validation message should not display when user enter 4 digit no for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I enter value "1111" into field "FundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Funded Amount : Number is too large." error

  @208962 @Sprint5
  Scenario:Validation message should not display when user enter 4 digit no for automation user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I enter value "1234" into field "FundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Funded Amount : Number is too large." error

  @208963 @Sprint5
  Scenario: To verify - Validation message should not display properly when user enter 4 digit number
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I enter value "1123" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Percent : Number is too large." error

  @208965 @Sprint5
  Scenario:  To verify - Validation message should not display properly when user enter 4 digit number for internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I enter value "1123" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Percent : Number is too large." error

  @208833
  Scenario: To verify, When hidden the Text fields which are required for save then no validation error is displayed on UI on saving the record
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonForThePageBlockFieldHide | Grantor State Program | Name                      | PBD-17604                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    And I select "Project Grants" from dropdown
    Then I see "Title" is not displayed inside page block detail
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I cannot see the following message in the page details :
      | Title is required to save |

  @208830 @wip
  Scenario: To verify, When hidden the Lookup  fields which are required for save then no validation error is displayed on UI on saving the record
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonForThePageBlockFieldHideForHideJson | Grantor State Program | Name                      | PBD-17604                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    And I select "Project Grants" from dropdown
    Then I see "Owner Organization" is not displayed inside page block detail
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I cannot see the following message in the page details :
      | Owner Organization is required to save |

  @208829
  Scenario: To verify, When hidden the Number fields which are required for save then no validation error is displayed on UI on saving the record
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonForThePageBlockFieldHideForHideJsonNumberField | Grantor State Program | Name                      | PBD-17604                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    And I select "Project Grants" from dropdown
    Then I see "fieldNumber__c" is not displayed inside page block detail
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I cannot see the following message in the page details :
      | Number Organization is required to save |

  @208828 @wip
  Scenario: To verify, When hidden the Date and Time fields which are required for save then no validation error is displayed on UI on saving the record
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonForThePageBlockFieldHideForHideJsonnForDateAndTime | Grantor State Program | Name                      | PBD-17604                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    And I select "Project Grants" from dropdown
    Then I see "fieldDateandTime__c" is not displayed inside page block detail
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I cannot see the following message in the page details :
      | Date And Time Organization is required to save |

  @208825 @wip
  Scenario: To verify, When hidden the currency  fields which are required for save then no validation error is displayed on UI on saving the record
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonForThePageBlockFieldHideForHideJsonnForFundedAmount | Grantor State Program | Name                      | PBD-17604                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    And I select "Project Grants" from dropdown
    Then I see "FundedAmount__c" is not displayed inside page block detail
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I cannot see the following message in the page details :
      | Funded Amount is required to save |

  @208826 @wip
  Scenario: To verify, When hidden the percent  fields which are required for save then no validation error is displayed on UI on saving the record
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:HideFieldJsonForThePageBlockFieldHideForHideJsonnForPercentField | Grantor State Program | Name                      | PBD-17604                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    And I select "Project Grants" from dropdown
    Then I see "fieldPercent__c" is not displayed inside page block detail
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I cannot see the following message in the page details :
      | Percent is required to save |

  @208865
  Scenario: UI/ UX : To check logo is loading on changing the app i.e. Grants to Grantee(PM-User)
    When I login as "PM" user
    When I setup my app as "As a Grantee"
    And I navigate to "Home" tab
    Then I see govgrants logo "GovGrants Logo expanded" is displayed with name "Enterprise Grants Management System"

  @208967
  Scenario: To verify - Validation message should not display properly when user enter 4 digit number for automation user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I enter value "1123" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Percent : Number is too large." error

  @208866
  Scenario: To verify, Logged in User User app "State as Grantor" ,Page background should be blue color(PM user)
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    Then I see page is in "Dark Blue" color

  @217210
  Scenario: Header Instruction - Admin - Config - To verify that if user not entered any header instruction in respective field in config, then no any header instruction text get displayed on UI above table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    Then I do not see "Header Instruction" options inside "flexTableDivId" enabled

  @217211
  Scenario: Header Instruction - PM - UI - To verify that if user not entered any header instruction in respective field in config, then no any header instruction text get displayed on UI above table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    Then I do not see "Header Instruction" options inside "flexTableDivId" enabled

  @217207
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

  @217208
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

  @217209 @HeaderHelpTextIconNotDisplayedOnUiSPIUser
  Scenario Outline: Header help text - SPI - UI - To verify that when user not entered any help text then help icon not displayed on UI.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | <new_helpText> | Programs           |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I pause execution for "7" seconds
    And I navigate to "Applications" tab
    Then I do not see "Help" options inside "flexTableDivId" enabled

    Examples:
      | new_helpText | old_helpText                                                                                                       |
      |              | 'internal program' represents all the programs that the user has access to and are presented as a list or a table. |

  @205033
  Scenario: Editor-To verify,When user add the text  it is not taking any extra line space between paragraphs/2 lines after pressing 'Enter'
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
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

  @205036 @wip
  Scenario: CK Editor-To verify,When user add the text  and After changing the style then extra line should not  come between paragraphs.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{pagelayout:Announcement}"
    When I click on "Edit" icon for "{pagelayout:Announcement}" inside table
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

  @205429 @wip
  Scenario: CK Editor-To verify,When internal user add the text  and After changing the style then extra line should not  come between paragraphs.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{pagelayout:Announcement}"
    When I click on "Edit" icon for "{pagelayout:Announcement}" inside table
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

  @205037 @wip
  Scenario: CK Editor-To verify,When user add the text  and  changing the font then extra line should Not come between paragraphs.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "{pagelayout:Announcement}"
    When I click on "Edit" icon for "{pagelayout:Announcement}" inside table
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

  @208969
  Scenario: Validation message should not display properly when user enter 4 digit number
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I enter value "1123" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Percent : Number is too large." error

    ################# Page Layout - Negative Scenarios ##############
  @218822 @218823
  Scenario: Page layout-To verify, User is not select "None " from picklist field  when field is "required to save"
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "" into field "fieldProgramName__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Title is required to save under Overview. |

  @218832 @151016
  Scenario: Page layout-To verify, User is not  enter numbers in URL field  if enter number field then error message should display
  |Scenario 4 : To verify that URL field error message validation display as "Field Name: Error message" on layout|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:URL__c}        |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    When I enter value "12345" into field "fieldURL__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | X_URL: Please enter valid URL value. |

  @218869
  Scenario: Page layout-To verify, User is not  edit the checkbox field in the view layout
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    And I click on "Save" in the page details
    Then I softly see field "fieldCFDA_Data__c" is not editable

  @218829 @379068 @379070 @Sanity @SanityPageLayout
  Scenario Outline: Page layout-To verify, User is not  edit formula field
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    And I click on "Save" in the page details
    Then I softly see field "PrimaryFunderType__c" is not editable
    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @218838 @wip
  Scenario Outline: Page layout-To verify,  when user not entered any help text  on field then help icon  not displayed on UI.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Page Block Config     | Help Text Long | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | Grantor State Program | Name                      | {pagelayout:ProgramName__c} |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I hovering mouse on help text icon inside page block detail "Title"
    Then I do not see help text icon is displayed for field "Title"

    Examples:
      | new_helpText | old_helpText                                       |
      |              | Name represents for what the program is meant for. |

 ###################### Export Functionality ########################
  @200536 @200545 @219535 @219536 @wip
  Scenario Outline: Page Layout Export Functionality-Admin-config-To verify download as PDF option should displayed for  pagelayout
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I click on "Menu" in the page details
    Then I see "Download as PDF" options is displayed
    And I select "Download as PDF" from dropdown
    And I download the file
    Then I softly see "Information" on page "1" of "govgrants" pdf file

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @200552 @219537 @wip
  Scenario: Page Layout Export Functionality-SPI-UI-To verify download as PDF option should displayed for pagelayout.
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
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
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide PDF Download | true          | Recipient ApplicationView |                           |                            |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed

  @200470 @200477 @200475 @200513
  Scenario Outline: Page Menu-Admin-config-To verify Take snapshot option should be displayed
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
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
     # | ADMIN |
      | PM   |

  @200529 @200531
  Scenario: Page Menu-SPI-UI-To verify Take snapshot option should be displayed
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
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
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I pause execution for "5" seconds
    Then I do not see "Take Snapshot" options is displayed

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @200530
  Scenario: Page Menu-SPI-UI-To verify take snapshot  option should not be displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Recipient ApplicationView | Name                      |                            |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    Then I do not see "Take Snapshot" options is displayed

  @219857 @219858
  Scenario Outline: Menu- Admin- Config- Verify Menu option appears on UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @219859
  Scenario: Menu- SPI-UI- Verify Menu option appears on UI
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout

    ################# Page Layout Action ###############

  @200428 @200434  @200431 @200435
  Scenario Outline: Page Layout Action-Admin-config-To verify page layout "Edit" and "Submit For Approval" actions should displayed in view layout
  |Page Layout Action-Admin-config-To verify page layout "Edit" and "Submit For Approval" actions should not displayed in view layout|
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
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_Yes.xlsx"
    And I click on "Save" in the page details
     #Then I see "Edit" button is not displayed
    Then I see "Edit" button is displayed on top right of pagelayout
    Then I see "Submit For Approval" button is displayed on top right of pagelayout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Layout Action    | Is Active | true              | ApiGeneratedId:0 |
      | Page Layout Action    | Is Active | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Is Active | false         | Grantor State Program | Name                      | Edit                       |
      | Page Layout Action    | Is Active | false         | Grantor State Program | Name                      | Submit For Approval        |
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see "Edit" button is not displayed
    Then I see "Submit For Approval" button is not displayed
    Examples:
      | User |
     # | ADMIN |
      | PM   |


  @200439 @219883
  Scenario: Page Layout Action-SPI-UI-To verify page layout "Edit" and "Submit Application" actions should displayed on view layout
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I see "Edit" button is displayed on top right of pagelayout
    Then I see "Submit Application" button is displayed on top right of pagelayout

  @200441
  Scenario: Page Layout Action-SPI-UI-To verify page layout "Edit" and "Submit Application" actions should not displayed on view layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Layout Action    | Is Active | true              | ApiGeneratedId:0 |
      | Page Layout Action    | Is Active | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Is Active | false         | Recipient ApplicationView | Name                      | Edit                       |
      | Page Layout Action    | Is Active | false         | Recipient ApplicationView | Name                      | Submit Application         |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I see "Edit" button is not displayed
    Then I see "Submit Application" button is not displayed

  @219868 @219869 @219882 @219881
  Scenario Outline: Page Layout Action-Admin-UI-To verify page layout "Cancel" and "Save" actions should displayed on edit layout
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    Then I see "Cancel" button is displayed on top right of pagelayout
    Then I see "Save" button is displayed on top right of pagelayout

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @219870
  Scenario: Page Layout Action-SPI-UI-To verify page layout "Cancel" and "Save" actions should displayed on edit layout
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    #When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I see "Cancel" button is displayed on top right of pagelayout
    Then I see "Save" button is displayed on top right of pagelayout

  @219875 @219876
  Scenario Outline:Page Layout Action-- Admin- config- Verify action name is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Page Layout Action    | Action Name | Edit              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Name | Edit Automation | Grantor State Program | Name                      | Edit                       |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    Then I see "Edit Automation" button is displayed on top right of pagelayout

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @219877
  Scenario: Page Layout Action-- Admin- config- Verify action name is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Page Layout Action    | Action Name | Edit              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue   | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Name | Edit Automation | Recipient ApplicationView | Name                      | Edit                       |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
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
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    Then I see the text "Edit The Record" on hovering button

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @219880
  Scenario: Page Layout Action-- SPI -UI- Verify text is displayed on hovering edit button
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Layout Action    | Button Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Button Help Text | Edit The Record | Recipient ApplicationView | Name                      | Edit                       |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    #And I hover the mouse on button "Edit"
    Then I see the text "Edit The Record" on hovering button

#################### Page Blocks #############################
  @200242 @200264
  Scenario Outline:Page Blocks-Admin-config-To verify configured field displayed in page block  as Program Name,Type ,Primary Funding Organization
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    Then I softly see "Title" inside page block detail
    Then I softly see "Type" inside page block detail
    Then I softly see "Primary Funding Organization" inside page block detail

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @200265 @200243
  Scenario Outline: Page Block-PM-UI-To verify created page block for record type fields should not displayed
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Grantor State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | {pagelayout:TextField_Abbreviation}     |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | {pagelayout:URLField_WebsiteAddress}    |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    Then I softly cannot see field "Abbreviation" inside page block
    Then I softly cannot see field "Website Address" inside page block
    Then I softly cannot see field "Funded Amount" inside page block

    Examples:
      | User |
     # | ADMIN |
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
      #| Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17697                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23595                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17600                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23588                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23586                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17698                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23589                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23594                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23590                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23576                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23592                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-23618                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | PBD-17520                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
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
    Then I softly cannot see field "Program Type" inside page block
    Then I softly cannot see field "Primary Funder Type" inside page block
    Examples:
      | User |
     # | ADMIN |
     # | PM    |

  @200249 @379389 @Sanity @SanityPageLayout
  Scenario: Page Block-SPI-UI-To verify configured fields displayed in page block  as Program Name,Type ,Primary Funding Organization in Informatopn Block
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I softly see field "Applicant Organization" inside page block
    Then I softly see field "Address" inside page block
    Then I softly see field "SAM Expiration Date" inside page block

  @200250
  Scenario: Page Block-SPI-UI-To verify configured fields should not displayed in page block  as Applicant Organization, Address, SAM Expiration Date, DUNS in Information Block
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient ApplicationView | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient ApplicationView | ApiGeneratedId:2 |
    #  | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient ApplicationView | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient ApplicationView | Name                      | PBD-20170                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient ApplicationView | Name                      | PBD-20169                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient ApplicationView | Name                      | PBD-20167                  |
    #  | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient ApplicationView | Name                      | PBD-20168                  |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I softly cannot see field "Applicant Organization" inside page block
    Then I softly cannot see field "Address" inside page block
    Then I softly cannot see field "DUNS" inside page block
    #Then I softly cannot see field "SAM Expiration Date" inside page block

  @200251
  Scenario: Page Block-SPI-UI-To verify configured fields displayed in page block  as Opportunity ID, Opportunity Title, Funding Organization, Subaward Floor in Opportunity Overview
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I softly see field "Opportunity ID" inside page block
    Then I softly see field "Opportunity Title" inside page block
    Then I softly see field "Funding Organization" inside page block
    Then I softly see field "Subaward Floor" inside page block

  @200252
  Scenario: Page Block-SPI-UI-To verify configured fields should not displayed in page block  as Opportunity ID, Opportunity Title, Funding Organization, Subaward Floor in Opportunity Overview
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient ApplicationView | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient ApplicationView | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | Recipient ApplicationView | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient ApplicationView | Name                      | PBD-20305                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient ApplicationView | Name                      | PBD-19939                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient ApplicationView | Name                      | PBD-20702                  |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Recipient ApplicationView | Name                      | PBD-19942                  |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
   # When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
   # When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I softly cannot see field "Opportunity ID" inside page block
    Then I softly cannot see field "Opportunity Title" inside page block
    Then I softly cannot see field "Funding Organization" inside page block
    Then I softly cannot see field "Subaward Floor" inside page block

  @201280 @wip
  Scenario Outline: Help Text SPI- UI- Verify given header help text is getting displayed under 'i' icon.
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block:Page Block Detail | Help Text | <old_helpText>    | Recipient ApplicationView | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue  | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block:Page Block Detail | Help Text | <new_helpText> | Recipient ApplicationView | GNT__PageBlockTitle__c    | {pagelayout:InformationPageBlock} |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
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
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue       |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | {pagelayout:OverviewTab}         |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | {pagelayout:SetupTab}            |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | {pagelayout:ResponsibilitiesTab} |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | {pagelayout:FilesTAB}            |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | {pagelayout:HistoryTab}          |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | {pagelayout:CollabInternalTAB}   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see "Overview" subtab is present in page details
    Then I see "Setup" subtab is present in page details
    Then I see "Responsibilities" subtab is present in page details
    Then I see "Files" subtab is present in page details
    Then I see "History" subtab is present in page details
    Then I see "Collab" subtab is present in page details

    Examples:
      | User |
     # | ADMIN |
      | PM   |

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
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue       |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | {pagelayout:OverviewTab}         |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | {pagelayout:SetupTab}            |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | {pagelayout:ResponsibilitiesTab} |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | {pagelayout:FilesTAB}            |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | {pagelayout:HistoryTab}          |
     # | Page Tabs Config:Page Layout Action | Is Active | false          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I do not see "Overview" subtab is present in page details
    Then I do not see "Setup tabs" subtab is present in page details
    Then I do not see "Responsibilities" subtab is present in page details
    Then I do not see "Files" subtab is present in page details
    Then I do not see "History" subtab is present in page details
   # Then I see "Collab" subtab is present in page details

    Examples:
      | User |
     # | ADMIN |
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
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | TAB-2733                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | TAB-2854                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | TAB-2732                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | TAB-2734                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | TAB-2845                   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | TAB-2852                   |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
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
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient ApplicationView | Name                      | TAB-2733                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient ApplicationView | Name                      | TAB-2854                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient ApplicationView | Name                      | TAB-2732                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient ApplicationView | Name                      | TAB-2734                   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient ApplicationView | Name                      | TAB-2845                   |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I do not see "Overview" subtab is present in page details
    Then I do not see "Budget" subtab is present in page details
    Then I do not see "Proposal" subtab is present in page details
    Then I do not see "Files" subtab is present in page details
    Then I do not see "History" subtab is present in page details

  @219886 @219887 @379091 @379092 @Sanity @SanityPageLayout
  Scenario Outline: Page Tab - Admin -Config - Verify page tab label should displayed properly with icon
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see "Overview" subtab is present with icon "glyphicon glyphicon-book" in page details
    Then I see "Setup" subtab is present with icon "fa fa-wrench" in page details
    Then I see "Responsibilities" subtab is present with icon "fa fa-star" in page details
    Then I see "Files" subtab is present with icon "fa fa-file" in page details
    Then I see "History" subtab is present with icon "fa fa-history" in page details
    Then I see "Collab" subtab is present with icon "fa fa-wechat" in page details
    Examples:
      | User |
      | PM   |

  @219888 @379093 @Sanity @SanityPageLayout
  Scenario: Page Tab - SPI- UI - Verify page tab label should displayed properly with icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:1 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:2 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:3 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:4 |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | {pagelayout:OverviewTabSPI} |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | {pagelayout:BudgetTabSPI}   |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | {pagelayout:ProposalTabSPI} |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | {pagelayout:FilesTabSPI}    |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | {pagelayout:HistoryTabSPI}  |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | {pagelayout:CollabSPI}      |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
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
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue       |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | {pagelayout:OverviewTab}         |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | {pagelayout:SetupTab}            |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | {pagelayout:ResponsibilitiesTab} |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | {pagelayout:FilesTAB}            |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | {pagelayout:HistoryTab}          |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | {pagelayout:CollabInternalTAB}   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I do not see "Overview" subtab is present with icon "glyphicon glyphicon-book" in page details
    Then I do not see "Setup" subtab is present with icon "fa fa-wrench" in page details
    Then I do not see "Responsibilities" subtab is present with icon "fa fa-star" in page details
    Then I do not see "Files" subtab is present with icon "fa fa-file" in page details
    Then I do not see "History" subtab is present with icon "fa fa-history" in page details
    Then I do not see "Collab" subtab is present with icon "fa fa-wechat" in page details
    Examples:
      | User |
     # | ADMIN |
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
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient ApplicationView | Name                      | {pagelayout:OverviewTabSPI} |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient ApplicationView | Name                      | {pagelayout:BudgetTabSPI}   |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient ApplicationView | Name                      | {pagelayout:ProposalTabSPI} |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient ApplicationView | Name                      | {pagelayout:FilesTabSPI}    |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient ApplicationView | Name                      | {pagelayout:HistoryTabSPI}  |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient ApplicationView | Name                      | {pagelayout:CollabSPI}      |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    Then I do not see "Overview" subtab is present with icon "glyphicon glyphicon-book" in page details
    Then I do not see "Budget" subtab is present with icon "fa fa-usd" in page details
    Then I do not see "Proposal" subtab is present with icon "glyphicon glyphicon-tasks" in page details
    Then I do not see "Files" subtab is present with icon "fa fa-paperclip" in page details
    Then I do not see "History" subtab is present with icon "fa fa-history" in page details
    Then I do not see "Collab" subtab is present with icon "fa fa-wechat" in page details

  @219894 @219893 @379380 @379382 @379412 @Sanity @SanityPageLayout
  Scenario Outline: Page Tab - PM -UI - Verify page tab should displayed properly in given sequence
  |Page Tab - PM -UI - Verify page tab should displayed properly in given sequence|
  |Page Tab - Admin -Config - Verify page tab should displayed properly in given sequence|
  |Sanity Testing- Page Layout- PM- To verify number of page tabs are showing correct which are added in the config|
  |Sanity Testing- Page Layout- Admin- To verify sort order of page tabs are showing correct.|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Sort Order | 0                 | ApiGeneratedId:0 |
      | Page Tabs Config      | Sort Order | 1                 | ApiGeneratedId:1 |
      | Page Tabs Config      | Sort Order | 2                 | ApiGeneratedId:2 |
      | Page Tabs Config      | Sort Order | 3                 | ApiGeneratedId:3 |
      | Page Tabs Config      | Sort Order | 4                 | ApiGeneratedId:4 |
      | Page Tabs Config      | Sort Order | 5                 | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Sort Order | 0             | Grantor State Program | Name                      | TAB-2673                   |
      | Page Tabs Config:Page Layout Action | Sort Order | 1             | Grantor State Program | Name                      | TAB-2722                   |
      | Page Tabs Config:Page Layout Action | Sort Order | 2             | Grantor State Program | Name                      | TAB-2677                   |
      | Page Tabs Config:Page Layout Action | Sort Order | 3             | Grantor State Program | Name                      | TAB-2671                   |
      | Page Tabs Config:Page Layout Action | Sort Order | 4             | Grantor State Program | Name                      | TAB-2672                   |
      | Page Tabs Config:Page Layout Action | Sort Order | 5             | Grantor State Program | Name                      | TAB-2675                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see sequence of "Overview" subtab is "1" on page layout
    Then I see sequence of "Setup" subtab is "2" on page layout
    Then I see sequence of "Responsibilities" subtab is "3" on page layout
    Then I see sequence of "Files" subtab is "4" on page layout
    Then I see sequence of "History" subtab is "5" on page layout
    Then I see sequence of "Collab" subtab is "6" on page layout
    Examples:
      | User |
      | PM   |

  @219895 @379383 @Sanity @SanityPageLayout
  Scenario: Page Tab - SPI- UI - Verify page tab should displayed properly in given sequence
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I see sequence of "Overview" subtab is "1" on page layout
    Then I see sequence of "Budget" subtab is "2" on page layout
    Then I see sequence of "Proposal" subtab is "3" on page layout
    Then I see sequence of "Files" subtab is "4" on page layout
    Then I see sequence of "History" subtab is "5" on page layout
    Then I see sequence of "Collab" subtab is "6" on page layout


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
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    #And I click on "...view more" button
    And I pause execution for "3" seconds
    Then I see bulb icon at header instruction is displayed
    Then I see "<new_helpText>" shown as page instruction text
    Examples:
      | User | new_helpText | old_helpText |
     # | ADMIN | Automation Text | The program construct of grants and awards that are managed throughout a program's life cycle. The program is approved and maintained by the program office.Program Manager (PM) is an authorised user that can create a program and who can also assign internal users to review/approve it. When a program is initiated it will start with a status of ‘Created’.The status for a created ‘Internal Program' that is submitted for approval by a pm will change to ‘Send for Approval’. a new task will be created for all assigned program approvers. Program approvers can review the program and are required to provide feedback/comments prior to approving. once approved the status is set to ‘Approved’. Program owner can see comments provided by program approver in ‘history’ tab and ‘active’ the program. once activated the status is set to ‘Active’ . |
   # |PM | Automation Text | The program construct of grants and awards that are managed throughout a program's life cycle. The program is approved and maintained by the program office.Program Manager (PM) is an authorised user that can create a program and who can also assign internal users to review/approve it. When a program is initiated it will start with a status of ‘Created’.The status for a created ‘Internal Program' that is submitted for approval by a pm will change to ‘Send for Approval’. a new task will be created for all assigned program approvers. Program approvers can review the program and are required to provide feedback/comments prior to approving. once approved the status is set to ‘Approved’. Program owner can see comments provided by program approver in ‘history’ tab and ‘active’ the program. once activated the status is set to ‘Active’ . |

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
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    #Then I see "<new_helpText>" shown as help text
    Then I do not see bulb icon at header instruction is displayed

    Examples:
      | User | new_helpText | old_helpText |
     # | ADMIN |              | The program construct of grants and awards that are managed throughout a program's life cycle. The program is approved and maintained by the program office.Program Manager (PM) is an authorised user that can create a program and who can also assign internal users to review/approve it. When a program is initiated it will start with a status of ‘Created’.The status for a created ‘Internal Program' that is submitted for approval by a pm will change to ‘Send for Approval’. a new task will be created for all assigned program approvers. Program approvers can review the program and are required to provide feedback/comments prior to approving. once approved the status is set to ‘Approved’. Program owner can see comments provided by program approver in ‘history’ tab and ‘active’ the program. once activated the status is set to ‘Active’ . |
   #   | PM    |              | The program construct of grants and awards that are managed throughout a program's life cycle. The program is approved and maintained by the program office.Program Manager (PM) is an authorised user that can create a program and who can also assign internal users to review/approve it. When a program is initiated it will start with a status of ‘Created’.The status for a created ‘Internal Program' that is submitted for approval by a pm will change to ‘Send for Approval’. a new task will be created for all assigned program approvers. Program approvers can review the program and are required to provide feedback/comments prior to approving. once approved the status is set to ‘Approved’. Program owner can see comments provided by program approver in ‘history’ tab and ‘active’ the program. once activated the status is set to ‘Active’ . |

  @200214
  Scenario Outline: Page Instruction-SPI-UI-To verify given page instruction should be displayed on page layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Page Layout           | Page Instruction Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue  | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | <new_helpText> | Recipient ApplicationView |                           |                            |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I softly see bulb icon at header instruction is displayed
    Then I see "<new_helpText>" shown as page instruction text
    Examples:
      | new_helpText    | old_helpText |
      | Automation Text |              |

  @200216
  Scenario: Page Instruction-SPI-UI-To verify given page instruction should not  be displayed on page layout
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
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
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see "<new_helpText>" shown as help text
    Then I see bulb icon at header instruction is displayed on pagelayout

    Examples:
      | User | new_helpText         | old_helpText                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
     # | ADMIN | 0123456789!@#$%^&*() | The program construct of grants and awards that are managed throughout a program's life cycle. The program is approved and maintained by the program office.Program Manager (PM) is an authorised user that can create a program and who can also assign internal users to review/approve it. When a program is initiated it will start with a status of ‘Created’.The status for a created ‘Internal Program' that is submitted for approval by a pm will change to ‘Send for Approval’. a new task will be created for all assigned program approvers. Program approvers can review the program and are required to provide feedback/comments prior to approving. once approved the status is set to ‘Approved’. Program owner can see comments provided by program approver in ‘history’ tab and ‘active’ the program. once activated the status is set to ‘Active’ . |
      | PM   | 0123456789!@#$%^&*() | The program construct of grants and awards that are managed throughout a program's life cycle. The program is approved and maintained by the program office.Program Manager (PM) is an authorised user that can create a program and who can also assign internal users to review/approve it. When a program is initiated it will start with a status of ‘Created’.The status for a created ‘Internal Program' that is submitted for approval by a pm will change to ‘Send for Approval’. a new task will be created for all assigned program approvers. Program approvers can review the program and are required to provide feedback/comments prior to approving. once approved the status is set to ‘Approved’. Program owner can see comments provided by program approver in ‘history’ tab and ‘active’ the program. once activated the status is set to ‘Active’ . |

  @200222 @379087 @Sanity @SanityPageLayout
  Scenario Outline: Page Instruction-SPI-UI-To  verify page instruction should accept the number & any special character
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Page Layout           | Page Instruction Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue  | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | <new_helpText> | Recipient ApplicationView |                           |                            |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    #379087
    Then I see step progress bar is displayed
    Then I softly see bulb icon at header instruction is displayed
    Then I see "<new_helpText>" shown as page instruction text
    Examples:
      | new_helpText         | old_helpText |
      | 0123456789!@#$%^&*() |              |

    ########################## Page Header #####################################
  @200123 @200127 @200138 @200140 @379409
  Scenario Outline: Page Header-Admin-config-To verify page header should be displayed
  | Page Header-Admin-config-To verify fields should displayed in the page header|
  | Sanity Testing- Page Layout- Admin- To verify for page tabs if Highlights Panel? is true then its showing top of the page layout.|
  |Sanity Testing- Page Layout- PM- To verify for page tabs if Highlights Panel? is true then its showing top of the page layout.|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active         | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Highlights Panel? | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active         | true          | Grantor State Program | Name                      | TAB-2674                   |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantor State Program | Name                      | TAB-2674                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on "View" icon in flex table for first draft record
    Then I softly see field "Program" inside page header
    Then I softly see field "EGMS ID" inside page header
    Then I softly see field "Status" inside page header
    Then I softly see field "Organization" inside page header
    Examples:
      | User |
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
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | {pagelayout:EGMSID}        |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | {pagelayout:Status}        |
      | Page Block Config:Page Block Rule Detail | Is Active | false         | Grantor State Program | Name                      | {pagelayout:Organization}  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I do not see field "EGMS ID" inside page header
    Then I do not see field "Status" inside page header
   # Then I do not see field "Organization" inside page header
    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @200145 @200155
  Scenario: Page header-SPI-UI-To verify page header should be diplayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | TAB-2921                   |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    Then I see field "EGMS ID" inside page header
    Then I see field "Status" inside page header
    Then I see field "Application Due Date" inside page header

  @200154 @200156
  Scenario: Page Header-SPI-UI-To verify page header should not be diplayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Recipient ApplicationView | Name                      | TAB-2921                   |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    Then I do not see field "EGMS ID" inside page header
    Then I do not see field "Status" inside page header
    Then I do not see field "Application Due Date" inside page header

  @379085 @379086 @Sanity @SanityPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify Step Progress bar is visible on page layout
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "{pagelayout:PageLayoutRecord}"
    When I click on "View" icon for "{pagelayout:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see step progress bar is displayed
    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @379088 @Sanity @SanityPageLayout
  Scenario: Sanity Testing- Page Layout- Admin- To verify page blocks are aligned properly on page layout.
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "{StaticRecords:PageLayoutRecord}" in "---program:-:programsTableId---" panel
    When I click on "View" icon for "{StaticRecords:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
#  Then I see entered text in my feed section displayed properly
    Then I see page block "Notes" aligned properly on page layout

  @379098 @379070 @Sanity @SanityPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify on View page layout, fields are not editable.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "{StaticRecords:PageLayoutRecord}" in "---program:-:programsTableId---" panel
    When I click on "View" icon for "{StaticRecords:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    Then I softly see field "ProgramName__c" is not editable
    Then I softly see field "StartDate__c" is not editable
    Then I softly see field "EndDate__c" is not editable
    Then I softly see field "Abbreviation__c" is not editable
    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @379071 @Sanity @SanityPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify on View page layout, fields are not editable.
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I softly see field "fieldAddressline1__c" is not editable
    Then I softly see field "fieldAddressline2__c" is not editable
    Then I softly see field "fieldCity__c" is not editable
    Then I softly see field "fieldCounty__c" is not editable

  @379085 @379086 @Sanity @SanityPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify Step Progress bar is visible on page layout
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "{StaticRecords:PageLayoutRecord}" in "---program:-:programsTableId---" panel
    When I click on "View" icon for "{StaticRecords:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    Then I see step progress bar is displayed
    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @379384 @379385 @Sanity @SanityPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify number of page blocks are showing correct which are added in the config
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "{StaticRecords:PageLayoutRecord}" in "---program:-:programsTableId---" panel
    When I click on "View" icon for "{StaticRecords:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Files" sub tab
    Then I softly see "Attachments" page block displayed
    Then I softly see "Notes" page block displayed
    Then I softly see "Program Files" page block displayed
    Then I softly see "Notes" page block displayed

    Examples:
      | User |
      | PM   |


  @200266 @200245 @379387 @379388 @Sanity @SanityPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify fields of all data type are rendering in the page blocks
  |Page Block-PM-UI-To verify all fields should displayed under pageblock|
  |Page Blocks-Admin-config-To verify all fields should displayed under pageblock|
  |Sanity Testing- Page Layout- PM- To verify fields of all data type are rendering in the page blocks|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName         | coreComponentSubFieldValue                 |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | {pagelayout:InformationPageBlock} | {pagelayout:URLField_WebsiteAddress}       |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | {pagelayout:InformationPageBlock} | {pagelayout:ProgramName__c}                |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | {pagelayout:InformationPageBlock} | {pagelayout:LookupField_PrimaryFundingOrg} |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | {pagelayout:InformationPageBlock} | {pagelayout:LongTextArea_Objectives__c}    |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | {pagelayout:InformationPageBlock} | {pagelayout:PicklistField_ProgramSubType}  |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    Then I softly see field "Website Address" inside page block
    Then I softly see field "Title" inside page block
    Then I softly see field "Primary Funding Organization" inside page block
    Then I softly see field "Description" inside page block
    Then I softly see field "Program Sub Type" inside page block
    Examples:
      | User |
      | PM   |


  @379395 @Sanity @SanityPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify page message type - Information is getting displayed on page layout.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on "Edit" icon in flex table for first draft record
    Then I see "Automation Test Information" page message displayed in page layout

  @379396 @379397 @379390 @379391 @379393 @379394 @379400 @379401 @Sanity @SanityPageLayout @wip
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify page message type - Alert is getting displayed on page layout.
  |Sanity Testing- Page Layout- PM- To verify page message type - Alert is getting displayed on page layout.|
  |Sanity Testing- Page Layout- Admin- To verify page message type - Success is getting displayed on page layout.|
  |Sanity Testing- Page Layout- PM- To verify page message type - Success is getting displayed on page layout.|
  |Sanity Testing- Page Layout- Admin- To verify page message type - Information is getting displayed on page layout.|
  |Sanity Testing- Page Layout- PM- To verify page message type - Information is getting displayed on page layout.|
  |Sanity Testing- Page Layout- Admin- To verify page message type - Warning is getting displayed on page layout.|
  |Sanity Testing- Page Layout- PM- To verify page message type - Warning is getting displayed on page layout.|
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    When I navigate to "Funding Sources" content inside "Setup" subheader on left panel
    And I click on top right button "New" in flex table with id "---program:-:fundingSourceTableId---"
    When I enter in modal "Creation" values from "FundingSource_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    Then I see "Automation Test Alert" page message displayed in page layout
    Then I see "Automation Test Success" page message displayed in page layout
    Then I see "Automation Test Information" page message displayed in page layout
    Then I see "Automation Test Warning" page message displayed in page layout

    Examples:
      | User |
      | EXE  |


  @379403 @379404 @Sanity @SanityPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify page message type - Warning is getting displayed on page layout.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    When I navigate to "Funding Sources" content inside "Setup" subheader on left panel
    And I click on top right button "New" in flex table with id "---program:-:fundingSourceTableId---"
    When I enter in modal "Creation" values from "FundingSource_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    Then I see "Automation Test Error" page message displayed in page layout

    Examples:
      | User |
      | EXE  |


  @379406 @379407 @Sanity @SanityPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify all page layout actions are displaying which are mentioned in the config.
  |Sanity Testing- Page Layout- PM- To verify all page layout actions are displaying which are mentioned in the config.|
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    Then I see "Save" button is displayed
    Then I see "Cancel" button is displayed
    When I enter "ProgramEdition_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "DataTableEnhanceProgramContacts"
    When I click "Associate" after selection of "Automation Admin" in the table "DataTableEnhanceProgramContacts"
    When I navigate to "Overview" sub tab
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program |
      | Automation PM | Step 1  |
    And I pause execution for "5" seconds
    Then I see "Submit For Approval" button is displayed

    Examples:
      | User |
      | PM   |

  @379408 @Sanity @SanityPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify all page layout actions are displaying which are mentioned in the config.
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "5" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I see "Submit Application" button is displayed
    Then I see "Edit" button is displayed

  @379409 @379410 @Sanity @SanityPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify for page tabs if Highlights Panel? is true then its showing top of the page layout.
  |Sanity Testing- Page Layout- PM- To verify for page tabs if Highlights Panel? is true then its showing top of the page layout.|
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on "View" icon in flex table for first draft record
    Then I softly see field "Name" inside page block
    Then I softly see field "Status" inside page block

    Examples:
      | User |
      | PM   |


  @379414 @Sanity @SanityPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify sort order of page tabs are showing correct.
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "4" seconds
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I see "Overview" shown at number "0" inside subtabs
    Then I see "Budget" shown at number "1" inside subtabs
    Then I see "Proposal" shown at number "2" inside subtabs
    Then I see "Files" shown at number "3" inside subtabs
    Then I see "History" shown at number "4" inside subtabs
    Then I see "Collab" shown at number "5" inside subtabs

  @379415 @379416 @Sanity @SanityPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify sort order of page blocks are showing correct.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "{StaticRecords:PageLayoutRecord}" in "---program:-:programsTableId---" panel
    When I click on "View" icon for "{StaticRecords:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see "Information" shown at number "0" inside detail page
    Then I see "Description" shown at number "1" inside detail page

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @379417
  Scenario: Sanity Testing- Page Layout- SPI- To verify sort order of page blocks are showing correct.
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I navigate to "Overview" sub tab
    Then I see "Information" shown at number "0" inside detail page


  @379419 @Sanity @SanityPageLayout
  Scenario: Sanity Testing- Page Layout- Admin- To verify help icon is visible on layout when help text is provided in page block config
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "{StaticRecords:PageLayoutRecord}" in "---program:-:programsTableId---" panel
    When I click on "View" icon for "{StaticRecords:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    Then I see "Information" shown at number "0" inside detail page

  @379420 @Sanity @SanityPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify sort order of page blocks detail fields are showing correct.
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    Then I see "Information" shown at number "0" inside detail page

  @379421 @379422 @Sanity @SanityPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify help icon is visible on layout when help text is provided in page block config
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "{StaticRecords:PageLayoutRecord}" in "---program:-:programsTableId---" panel
    When I click on "View" icon for "{StaticRecords:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see helpIcon displayed beside "Contacts" respective field or column
    Then I see helpIcon displayed beside "Information" respective field or column

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @379423 @Sanity @SanityPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify help icon is visible on layout when help text is provided in page block config
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | filterId         |
      | Page Block:Page Block Detail | Is Active | true              | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Help Text |                   | ApiGeneratedId:1 |
      | Page Block:Page Block Detail | Is Active | true              | ApiGeneratedId:2 |
      | Page Block:Page Block Detail | Help Text |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue         |
      | Page Block:Page Block Detail | Is Active | true          | Recipient ApplicationView | Name                      | {pagelayout:Information_SPI}       |
      | Page Block:Page Block Detail | Help Text | Help          | Recipient ApplicationView | Name                      | {pagelayout:Information_SPI}       |
      | Page Block:Page Block Detail | Is Active | true          | Recipient ApplicationView | Name                      | {pagelayout:SystemInformation_SPI} |
      | Page Block:Page Block Detail | Help Text | Help          | Recipient ApplicationView | Name                      | {pagelayout:SystemInformation_SPI} |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I see helpIcon displayed beside "Information" respective field or column
    Then I see helpIcon displayed beside "System Information" respective field or column

  @379424 @379425 @Sanity @SanityPageLayout
  Scenario Outline: Sanity Testing- Page Layout- Admin- To verify help icon is visible on layout when help text is provided in page block detail config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue                                  | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | true                                               | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | Name represents for what the program is meant for. | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue   |
      | Page Block Config:Page Block Rule Detail | Is Active      | true                                               | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
      | Page Block Config:Page Block Rule Detail | Help Text Long | Name represents for what the program is meant for. | Grantor State Program | Name                      | {pagelayout:Abbreviation__c} |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "{StaticRecords:PageLayoutRecord}" in "---program:-:programsTableId---" panel
    When I click on "View" icon for "{StaticRecords:PageLayoutRecord}" inside flex table with id "---program:-:programsTableId---"
    Then I see helpIcon displayed beside "Abbreviation" respective field or column
    Examples:
      | User |
      | PM   |

  @379426 @Sanity @SanityPageLayout
  Scenario: Sanity Testing- Page Layout- SPI- To verify help icon is visible on layout when help text is provided in page block detail config
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    When I click on "Edit" in the page details
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    Then I see helpIcon displayed beside "Project Period Start Date" respective field or column
    Then I see helpIcon displayed beside "Project Period End Date" respective field or column
    Then I see helpIcon displayed beside "Due Date" respective field or column