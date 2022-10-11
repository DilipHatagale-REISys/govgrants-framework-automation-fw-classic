@enhancedForms-component @regression-QA
Business Need: enhanced Forms Component Scenarios
  Test all enhanced forms component based scenarios
  As a configuration manager i make different configurational changes in enhanced forms component and will validate them.

  @257343 @Toverify,Usershouldbeabletoadddetailstothenewlydisplayedrecord
  Scenario:To verify, User should be able to add details to the newly displayed record
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Setup tabs" sub tab
    Then I softly see "Review Steps" page block displayed
    And I click on top right button "New" in flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" without processing
    Then I see fields "StepNumber__c" is in edit mode
    Then I see fields "Name" is in edit mode
    Then I see fields "Description__c" is in edit mode

  @258152 @Toverifywhen'Ismasterview'istruefor'Test4'listviewthepageisrefreshedthenitwilllandon'Test4'listview(Admin) @vip
  Scenario: To verify when 'Is master view' is true for 'Test 4' list view and the page is refreshed then it will land on 'Test 4' list view (Admin)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         | coreCOmponentSubFieldName | coreComponentSubFieldValue | coreComponentField |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 | Name                      | FLV-3834                   | Programs           |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | filterId         | coreCOmponentSubFieldName | coreComponentSubFieldValue | coreComponentField |
      | Flex Grid:Flex Table List | Is Master View | true          | ApiGeneratedId:0 | Name                      | FLV-3837                   | Programs           |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Component testing " sub tab

  @205034 @CKEditor-Toverify,Whenuseraddtextfrom"Textdirectionfromrighttoleft"thenextraineshouldnotcomebetweenparagraphs.
  Scenario: CK Editor-To verify,When user add text from "Text direction from right to left" then extra line should not come between paragraphs.
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    And I click on Right allign in description field
    And I enter value "0" into field "fieldStartDate__c"
    And I enter value "365" into field "fieldEndDate__c"
    And I pause execution for "4" seconds
    And I enter value "TestAutomationJava" into field "fieldTest_Description__c"
    And I press enter key
    And I enter value "DescriptionData" into field "fieldTest_Description__c"
    And I pause execution for "3" seconds
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    Then I see the following message in the page details :
      | TestAutomationJava |
      | DescriptionData    |
