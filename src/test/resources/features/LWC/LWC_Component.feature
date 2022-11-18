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
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Component testing" sub tab
    Then I softly see quick search inside table id "Programs_TestflexTable"

  @222532 @LWC-Flextable-QuickSearch-PM-UI-ToverifythatuserisabletosearchforPicklistfield
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

  @257101 @US-256030
    Scenario: Admin_View layout_To Verify that after manipulating id value, no any alert get displayed.
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
   # And I enter this "ASDF" script after ""

