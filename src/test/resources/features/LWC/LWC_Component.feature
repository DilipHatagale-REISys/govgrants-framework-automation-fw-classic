@LWC_Component-component @regression-
Business Need: Flex Table Component Scenarios
  Test all flex table component based scenarios
  As a configuration manager i make different configurational changes in flex table component and will validate them.

############################# New Test Cases #######################
  @222337    @LWC-Flextable-QuickSearch-PM-UI-ToverifythatonenablingQuicksearch,itdisplayedontopofflextable
  Scenario:LWC-Flextable-QuickSearch-PM-UI-ToverifythatonenablingQuicksearch,itdisplayedontopofflextable
    Given I delete the record "Automation Internal Program for flow" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Component testing" sub tab
    Then I softly see quick search inside table id "Programs_TestflexTable"

  @222532 @LWC-Flextable-QuickSearch-PM-UI-ToverifythatuserisabletosearchforPicklistfield @vip
  Scenario:LWC-Flex table-Quick Search-PM-UI-To verify that user is able to search for Picklist field
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Component testing" sub tab
    When I perform quick search for "Project Grants"
    Then I see value "Project Grants" for title "Type" against the value "PG-A11-0028" inside table "Programs_TestflexTable"
    Then I see value "Project Grants" for title "Type" against the value "PG-A11-0030" inside table "Programs_TestflexTable"
    Then I see value "Project Grants" for title "Type" against the value "PG-A11-0059" inside table "Programs_TestflexTable"


  @222461 @LWC-Flextable-QuickSearch-Admin-UI-Toverifythatuserisabletosearchfortextfield(i.e.Textdatatype)
  Scenario:LWC-Flex table-Quick Search-Admin-UI-To verify that user is able to search for text field (i.e. Text data type)
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Component testing" sub tab
    When I perform quick search for "Internal Program Testing Purpose"
    Then I softly see value "Internal Program Testing Purpose" for title "Program Name" inside table "Programs_TestflexTable"

  @222030 @LWC-Flextable-PM-UI-ToverifythatuserisabletoviewrenderedflextableonPagelayout-Pageblock
  Scenario:LWC-Flex table-PM-UI-To verify that user is able to view rendered flex table on Page layout - Page block
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Component testing" sub tab
    Then I softly see "Draft Programs" page block displayed
    Then I see expected table with id "Programs_TestflexTable"

  @222055 @LWC-Flextable-Header-PM-UI-ToverifythattextenteredinHeaderfield,displayedasaHeaderonflextable
    Scenario:LWC-Flex table-Header-PM-UI-To verify that text entered in Header field, displayed as a Header on flex table
    Given I delete the record "Automation Internal Program for flow" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I softly see "Contacts" page block displayed


    #############Existing Test Cases###############
  @136004a
  Scenario Outline:
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table                               | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
      | Flex Table List                          | Enable Total        | true               | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General                       | Display Field Names | <newFieldsApi> | Programs              |                           |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantee State Program | Name                      | PBD-9265                   |
      | Flex Table List                          | Enable Total        | true           | Programs              | Name                      | FTC-1542                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios1}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios1}" inside table
    When I enter value "1235" into field "Number_Test__c"
    And I click on "Save" in the page details
    When I pause execution for "6" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios1}"
    Then I see value "1,235.0000" for title "Number Test" against the value "Total" inside table "---program:-:ProgramsFlexTableToggleId---"

    Examples:
      | newFieldsApi                                 | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,Number_Test__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |



