@DataTableEnhanced-component @regression-QA @DataTableEnhanced
Business Need: DataTableEnhanced Component Scenarios
  Test all DataTableEnhanced component based scenarios
  As a configuration manager i make different configurational changes in DataTableEnhanced component and will validate them.

  @258152 @258153 @Toverifywhen'Ismasterview'istruefor'Test4'listviewthepageisrefreshedthenitwilllandon'Test4'listview(Admin) @vrushali @sprint-19
  Scenario Outline: To verify when 'Is master view' is true for 'Test 4' list view and the page is refreshed then it will land on 'Test 4' list view (Admin)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3834                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3837                   |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Component testing " sub tab
    Then I see "Test 4" page block displayed
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3837                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @258154 @258155 @ToverifywhenIsmasterview'istruefor'Test3'listviewandpageisrefreshedthenitwilllandon'Test3'listview(PM) @vrushali @sprint-19
  Scenario Outline:To verify when 'Is master view' is true for 'Test 3' list view and the page is refreshed then it will land on 'Test 3' list view (PM)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3834                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3836                   |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Component testing " sub tab
    Then I see "Test 3" page block displayed
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3836                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @258163 @258166 @Toverifywhen'Ismasterview'istruefor'Test2'listviewandpageisrefreshedthenitwilllandon'Test2listview(PM) @vrushali @sprint-19
  Scenario Outline:To verify when 'Is master view' is true for 'Test 2' list view and the page is refreshed then it will land on 'Test 2' list view (PM)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3834                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3835                   |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Component testing " sub tab
    Then I see "Test 2" page block displayed
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3835                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @258164 @258165 @258375 @258381 @258382 @258384 @Toverifywhen'Ismasterview'istruefor'Test1'listviewandpageisrefreshedthenitwilllandon'Test1'listview(PM) @vrushali @sprint-19
  Scenario Outline:To verify when 'Is master view' is true for 'Test 1' list view and the page is refreshed then it will land on 'Test 1' list view (PM)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Component testing " sub tab
    #258164 #258165
    Then I see "Test 1" page block displayed
    #258375 #258381
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Test 1"
    And I download the file
    Then I softly see "Test 1" on page "1" of "govgrants" pdf file
    #258382 #258384
    And I switch to parent tab
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Test 1"
    Then I see "Test 1" in downloaded xls or csv file "govgrants"
    Examples:
      | User  |
      | ADMIN |
      | PM    |