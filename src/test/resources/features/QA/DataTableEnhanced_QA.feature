@DataTableEnhanced-component @regression-QA @DataTableEnhanced
Business Need: DataTableEnhanced Component Scenarios
  Test all DataTableEnhanced component based scenarios
  As a configuration manager i make different configurational changes in DataTableEnhanced component and will validate them.

  @258152 @258153 @258389 @258390 @258584 @258588 @Toverifywhen'Ismasterview'istruefor'Test4'listviewthepageisrefreshedthenitwilllandon'Test4'listview(Admin) @vrushali @sprint-19
  Scenario Outline: To verify when 'Is master view' is true for 'Test 4' list view and the page is refreshed then it will land on 'Test 4' list view (Admin)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3834                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3837                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Component testing " sub tab
    #258152 #258153
    Then I see "Test 4" page block displayed
     #258584 #258588
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Test 4"
    Then I see "Test 4" in downloaded xls or csv file "govgrants"
     #258390 #258389
    And I switch to parent tab
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Test 4"
    And I download the file
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3837                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
    Then I softly see "Test 4" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @258154 @258155 @258387 @258586 @258388 @ToverifywhenIsmasterview'istruefor'Test3'listviewandpageisrefreshedthenitwilllandon'Test3'listview(PM) @vrushali @sprint-19
  Scenario Outline:To verify when 'Is master view' is true for 'Test 3' list view and the page is refreshed then it will land on 'Test 3' list view (PM)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3834                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3836                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I navigate to "Component testing " sub tab
    Then I see "Test 3" page block displayed
    #258586 #258585
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Test 3"
    Then I see "Test 3" in downloaded xls or csv file "govgrants"
    #258387 #258388
    And I switch to parent tab
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Test 3"
    And I download the file
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3836                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
    Then I softly see "Test 3" on page "1" of "govgrants" pdf file
    And I pause execution for "3" seconds
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @258163 @258166 @258385 @258386 @258393 @258394 @Toverifywhen'Ismasterview'istruefor'Test2'listviewandpageisrefreshedthenitwilllandon'Test2listview(PM) @vrushali @sprint-19
  Scenario Outline:To verify when 'Is master view' is true for 'Test 2' list view and the page is refreshed then it will land on 'Test 2' list view (PM)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3834                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3835                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Component testing " sub tab
    Then I see "Test 2" page block displayed
     #258393 #258394
    And I switch to parent tab
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Test 2"
    Then I see "Test 2" in downloaded xls or csv file "govgrants"
    #258385 #258386
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Test 2"
    And I download the file
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3835                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
    Then I softly see "Test 2" on page "1" of "govgrants" pdf file
    Examples:
      | User |
      | PM   |
      | ADMIN |

  @258164 @258165 @258375 @258381 @258382 @258384 @Toverifywhen'Ismasterview'istruefor'Test1'listviewandpageisrefreshedthenitwilllandon'Test1'listview(PM) @vrushali @sprint-19
  Scenario Outline:To verify when 'Is master view' is true for 'Test 1' list view and the page is refreshed then it will land on 'Test 1' list view (PM)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
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

  @263251 @Toverifywhennolistviewsaremarkedastruefor'Ismasterview'thengettingerrormessageasatleast1listviewmustbemasterview.(Admin,PM) @vrushali @Sprint-19
  Scenario Outline: To verify when no list views are marked as true for 'Is master view' then getting the error message as at least 1 list view must be master view. (Admin , PM )
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3834                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Component testing " sub tab
    Then I see the following message in the page details :
      | Atleast one list view should be marked as a Master List View |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @263252 @Toverifywhenany2listviewsaremarkedastruefor'Ismasterview'thengettingerrormessageasonlylistviewcanbemasterview.(Admin,PM) @vrushali @Sprint-19
  Scenario Outline:To verify when any 2 list views are marked as true for 'Is master view' then getting the error message as only list view can be master view. (Admin , PM)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3835                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Component testing " sub tab
    Then I see the following message in the page details :
      | Two Master List Views are not allowed |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3835                   |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @271915 @ToverifynolistviewsaremarkedastrueforIsmasterview'thengettingerrormessageasatleast1listviewmustbemasterview.(SPI) @vrushali @sprint-19
  Scenario: To verify when no list views are marked as true for 'Is master view' then getting error message as at least 1 list view must be master view. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3834                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Component testing " sub tab
    Then I see the following message in the page details :
      | Atleast one list view should be marked as a Master List View |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |

  @271916 @Toverifywhenany2istviewsaremarkedastruefor'Ismasterview'gettingerrormessageasonlylistviewcanbemasterview(SPI) @vrushali @sprint-19
  Scenario: To verify when any 2 list views are marked as true for 'Is master view' then getting the error message as only list view can be master view. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3835                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Component testing " sub tab
    Then I see the following message in the page details :
      | Two Master List Views are not allowed |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3835                   |

  @271925 @271917 @271918 @Toverifywhen'showinPDF'isfalseforeachlistview&whenuserselectslistviewas'Test4&clickson'downloadasPDF'thenrecordswhichcomesunder'Test4'shouldshow(SPI) @vrushali @sprint-19
  Scenario: To verify when 'show in PDF' is false for each list view and when user selects the list view as 'Test 4' and clicks on 'download as PDF' then records which comes under 'Test 4' should show (SPI)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3834                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3837                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Component testing " sub tab
      #271925
    Then I see "Test 4" page block displayed
        #271918
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Test 4"
    Then I see "Test 4" in downloaded xls or csv file "govgrants"
      #271917
    And I switch to parent tab
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Test 4"
    And I download the file
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3837                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
    Then I softly see "Test 4" on page "1" of "govgrants" pdf file

  @271926 @271919 @271920 @Toverifywhen'Ismasterview'istruefor'Test3'listviewpageisrefreshedhenitwilllandon'Test3'listview(SPI) @vrushali @Sprint-19
  Scenario: To verify when 'Is master view' is true for 'Test 3' list view and the page is refreshed then it will land on 'Test 3' list view (SPI)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3834                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3836                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Component testing " sub tab
    #271926
    Then I see "Test 3" page block displayed
     #271919
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Test 3"
    And I pause execution for "3" seconds
    Then I see "Test 3" in downloaded xls or csv file "govgrants"
    #271920
    And I switch to parent tab
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Test 3"
    And I download the file
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3836                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
    Then I softly see "Test 3" on page "1" of "govgrants" pdf file

  @271927 @271921 @271922 @Toverifywhen'Ismasterview'istruefor'Test2'listviewpagesrefreshedthenitwilllandon'Test2'listview(SPI) @Vrushali @Sprint-19
  Scenario: To verify when 'Is master view' is true for 'Test 2' list view and the page is refreshed then it will land on 'Test 2' list view (SPI)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3834                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3835                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Component testing " sub tab
    #271927
    Then I see "Test 2" page block displayed
     #271922
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Test 2"
    Then I see "Test 2" in downloaded xls or csv file "govgrants"
    #271921
    And I switch to parent tab
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Test 2"
    And I download the file
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-3835                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
    Then I softly see "Test 2" on page "1" of "govgrants" pdf file

  @271928 @271924 @271923 @Toverifywhen'Ismasterview'istruefor'Test1'listviewpageisrefreshedthenitwilllandon'Test1'listview(SPI) @Vrushali @Sprint-19
  Scenario: To verify when 'Is master view' is true for 'Test 1' list view and the page is refreshed then it will land on 'Test 1' list view (SPI)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3834                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Component testing " sub tab
    #271928
    Then I see "Test 1" page block displayed
    #271924
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Test 1"
    And I download the file
    Then I softly see "Test 1" on page "1" of "govgrants" pdf file
    #271923
    And I switch to parent tab
    When I click on parallel lines menu bar with data target value "#FederalProgramsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Test 2"
    Then I see "Test 1" in downloaded xls or csv file "govgrants"