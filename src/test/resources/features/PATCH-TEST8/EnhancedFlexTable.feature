@EnhancedFlexTable-PATCHcomponent @regression-PATCH @DataTableEnhanced
Business Need: DataTableEnhanced Component Scenarios
  Test all DataTableEnhanced component based scenarios
  As a configuration manager i make different configurational changes in DataTableEnhanced component and will validate them.

  @wip @258152 @258153 @258389 @258390 @258584 @258588 @Toverifywhen'Ismasterview'istruefor'Test4'listviewthepageisrefreshedthenitwilllandon'Test4'listview(Admin) @vrushali @sprint-19
  Scenario Outline: To verify when 'Is master view' is true for 'Test 4' list view and the page is refreshed then it will land on 'Test 4' list view (Admin)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
      | Page Tabs Config          | Is Active      | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName      | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List           | Is Master View | false         | FederalPrograms       | Name                      | FLV-2254                   |
      | Flex Grid:Flex Table List           | Is Master View | true          | FederalPrograms       | Name                      | FLV-3837                   |
      | Page Tabs Config:Page Layout Action | Is Active      | true          | Grantor State Program | Name                      | TAB-3330                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Component testing" sub tab
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
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |
    Then I softly see "Test 4" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @wip @258154 @258155 @258387 @258586 @258388 @ToverifywhenIsmasterview'istruefor'Test3'listviewandpageisrefreshedthenitwilllandon'Test3'listview(PM) @vrushali @sprint-19
  Scenario Outline:To verify when 'Is master view' is true for 'Test 3' list view and the page is refreshed then it will land on 'Test 3' list view (PM)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-2254                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-3836                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
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
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |
    Then I softly see "Test 3" on page "1" of "govgrants" pdf file
    And I pause execution for "3" seconds
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @wip @258163 @258166 @258385 @258386 @258393 @258394 @Toverifywhen'Ismasterview'istruefor'Test2'listviewandpageisrefreshedthenitwilllandon'Test2listview(PM) @vrushali @sprint-19
  Scenario Outline:To verify when 'Is master view' is true for 'Test 2' list view and the page is refreshed then it will land on 'Test 2' list view (PM)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-2254                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2872                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
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
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-2872                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |
    Then I softly see "Test 2" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @wip @258164 @258165 @258375 @258381 @258382 @258384 @Toverifywhen'Ismasterview'istruefor'Test1'listviewandpageisrefreshedthenitwilllandon'Test1'listview(PM) @vrushali @sprint-19
  Scenario Outline:To verify when 'Is master view' is true for 'Test 1' list view and the page is refreshed then it will land on 'Test 1' list view (PM)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
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

  @wip @263251 @Toverifywhennolistviewsaremarkedastruefor'Ismasterview'thengettingerrormessageasatleast1listviewmustbemasterview.(Admin,PM) @vrushali @Sprint-19
  Scenario Outline: To verify when no list views are marked as true for 'Is master view' then getting the error message as at least 1 list view must be master view. (Admin , PM )
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-2254                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Component testing " sub tab
    Then I see the following message in the page details :
      | Atleast one list view should be marked as a Master List View |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |
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
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2872                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Component testing " sub tab
    Then I see the following message in the page details :
      | Two Master List Views are not allowed |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-2872                   |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @wip @271915 @ToverifynolistviewsaremarkedastrueforIsmasterview'thengettingerrormessageasatleast1listviewmustbemasterview.(SPI) @vrushali @sprint-19
  Scenario: To verify when no list views are marked as true for 'Is master view' then getting error message as at least 1 list view must be master view. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-2254                   |
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
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |

  @wip @271916 @Toverifywhenany2istviewsaremarkedastruefor'Ismasterview'gettingerrormessageasonlylistviewcanbemasterview(SPI) @vrushali @sprint-19
  Scenario: To verify when any 2 list views are marked as true for 'Is master view' then getting the error message as only list view can be master view. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2872                   |
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
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-2872                   |

  @wip @271925 @271917 @271918 @Toverifywhen'showinPDF'isfalseforeachlistview&whenuserselectslistviewas'Test4&clickson'downloadasPDF'thenrecordswhichcomesunder'Test4'shouldshow(SPI) @vrushali @sprint-19
  Scenario: To verify when 'show in PDF' is false for each list view and when user selects the list view as 'Test 4' and clicks on 'download as PDF' then records which comes under 'Test 4' should show (SPI)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-2254                   |
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
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |
    Then I softly see "Test 4" on page "1" of "govgrants" pdf file

  @wip  @271926 @271919 @271920 @Toverifywhen'Ismasterview'istruefor'Test3'listviewpageisrefreshedhenitwilllandon'Test3'listview(SPI) @vrushali @Sprint-19
  Scenario: To verify when 'Is master view' is true for 'Test 3' list view and the page is refreshed then it will land on 'Test 3' list view (SPI)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-2254                   |
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
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |
    Then I softly see "Test 3" on page "1" of "govgrants" pdf file

  @wip @271927 @271921 @271922 @Toverifywhen'Ismasterview'istruefor'Test2'listviewpagesrefreshedthenitwilllandon'Test2'listview(SPI) @Vrushali @Sprint-19
  Scenario: To verify when 'Is master view' is true for 'Test 2' list view and the page is refreshed then it will land on 'Test 2' list view (SPI)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-2254                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2872                   |
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
      | Flex Grid:Flex Table List | Is Master View | false         | FederalPrograms    | Name                      | FLV-2872                   |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |
    Then I softly see "Test 2" on page "1" of "govgrants" pdf file

  @wip @271928 @271924 @271923 @Toverifywhen'Ismasterview'istruefor'Test1'listviewpageisrefreshedthenitwilllandon'Test1'listview(SPI) @Vrushali @Sprint-19
  Scenario: To verify when 'Is master view' is true for 'Test 1' list view and the page is refreshed then it will land on 'Test 1' list view (SPI)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | FederalPrograms    | Name                      | FLV-2254                   |
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

    ##########  Depricated Test Cases From Test 5 Org ####################

  @76929    @disablingPDFExportFileForEnhancedDataTable-gPlanning @smokePATCH
  Scenario: validate disabling of PDF download from menu option in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (PDF) | false         | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#DataTableEnhanceProgramContactsFlexToggle"
    Then I see "Download as PDF" options inside "Contacts" disabled

  @76945    @disablingXLSExportFileForEnhancedDataTable-gPlanning @smokePATCH
  Scenario: validate disabling of XLS download from menu option in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | false         | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#DataTableEnhanceProgramContactsFlexToggle"
    Then I see "Download as XLS" options inside "Contacts" disabled

  @76931    @disablingAdvanceFilterForEnhancedDataTable-gPlanning @smokePATCH
  Scenario: validate disabling of advance filter from enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Filter | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Filter | false         | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see Advance Filter is disabled from table "---program:-:programContactsTableId---" with data target value "#advfDataTableEnhanceProgramContacts"

  @76932 @379012    @disablingQuickSearchForEnhancedDataTable-gPlanning @smokePATCH @SanityPATCH @SanityPATCHEnhancedTable
  Scenario: validate disabling of quick search from enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Quick Search | false         | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see quick search option disabled from enhanced grid

  @76934    @enablingAutoIndexForEnhancedDataTable-gPlanning
  Scenario: validate auto index for details inside enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Auto Index | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see "#" in enhanced flex grid header "---program:-:programContactsTableId---"

  @77110  @379019  @enablePageSizeFieldAtEnhancedDataTable-gPlanning
  Scenario Outline: enabling of page size dropdown at bottom inside enhanced enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Page Size  | false             | ApiGeneratedId:0 |
      | Flex Grid             | Default Page Size | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Page Size  | true          | DataTableEnhanceProgramContacts |                           |                            |
      | Flex Grid:General     | Default Page Size | 5             | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:programContactsTableId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @77112    @defaultPageSizeFieldAtEnhancedDataTable-gPlanning
  Scenario: validate change of default page size inside dropdown at bottom of enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Default Page Size | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Default Page Size | 5             | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see "5" records inside enhanced grid id "---program:-:programContactsTableId---"

  @77113  @379018 @SanityPATCH @SanityPATCHEnhancedTable  @disablingEnableTotalRecordCountFieldForAtEnhancedDataTable-gPlanning
  Scenario Outline: validate disabling of total row count in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Total Records Count | false         | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I do not see "Total Records" count in enhanced grid "---program:-:EnhancedDataTablegrid---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @77183    @disablingMenuFieldForAtEnhancedDataTable-gPlanning
  Scenario: validate disabling of burger menu icon in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Grid             | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Disable Menu | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see Menu icon is disabled from planning flex table "Contacts"

  @77215    @enableRecordSelectionForEnhancedDataTable-gPlanning
  Scenario: validate enabling of record selection check boxes in in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Record Selection | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Record Selection | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see Menu icon is disabled from planning flex table "Contacts"

  @77220    @orderBySortByFieldAtEnhancedDataTable-gPlanning @smokePATCH
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside  enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | ProjectRole__c | DataTableEnhanceProgramContacts |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC            | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see column "ProjectRole__c" value is in "Ascending" order

  @77221    @orderBySortDirectionAsDescFieldAtEnhancedDataTable-gPlanning @smokePATCH
  Scenario: Changing specific column value in Descending order with order by and sort by field from config and validating it inside  enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | ProjectRole__c | DataTableEnhanceProgramContacts |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC           | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see column "ProjectRole__c" value is in "Descending" order

  @77284    @enableOverallTotalFieldAtFlexTableForEnhanced-gPlanning @smokePATCH
  Scenario: validate enabling of overall total field after checking checkbox true of Enable Over All Total from config and validating it inside enhanced data table-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total | true          | DataTableEnhanceProgramContacts | Name                      | FTC-13607                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    Then I see over all total for "AmountAwarded__c" field at enhanced grid
    Then I see "BaseSalary" in enhanced flex grid header "---program:-:programContactsTableId---"

  @77288    @hideCellJsonFieldAtFlexTableForEnhanced-gPlanning @smokePATCH
  Scenario: Hiding specific cell value of enhanced data table from config and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable11 | GrantorRelatedAwards2 | Name                      | FTC-13606                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I softly do not see "External Organization" in flex table header "Subawards - Active"

  @77286    @hideColumnJsonFieldAtFlexTableForEnhanced-gPlanning @smokePATCH
  Scenario: Hiding specific column value of enhanced data table from config and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:HideColumnJsonForEnhancedGrid | DataTableEnhanceProgramContacts | Name                      | FTC-12390                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see "Organization" not displayed in enhanced grid table column title

  @77315    @hideExpressionJsonFieldAtFlexTableForEnhanced-gPlanning @smokePATCH
  Scenario: Set up configuration to hide edit action of parent enhanced grid using UserType IN Internal and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | DataTableEnhanceProgramContacts | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "Edit" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Applicationg test88888" in "---program:-:programContactsTableId---" panel
    Then I see "Edit" icon for "Applicationg test88888" is not displayed inside flex table

  @77353    @enableGroupingFieldAtFlexTableForEnhanced-gPlanning @smokePATCH
  Scenario: validate same value rows getting grouped and shown in sequence after checking checkbox true of Enable Row Grouping from config and validating it inside  enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | GrantorRelatedAwards2 | Name                      | FTC-12821                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I see "Budget" inside rows of enhanced grid id "---program:-:SubawardTableIdForAdminPM---"

  @77413    @enableSubTotalFieldAtFlexTableEnhanced-gPlanning
  Scenario: validate total of number of project areas after checking checkbox true of Enable Sub Total field from config and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Sub Total    | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Sub Total    | true          | GrantorRelatedAwards2 | Name                      | FTC-12818                  |
      | Flex Table List       | Enable Row Grouping | true          | GrantorRelatedAwards2 | Name                      | FTC-12818                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I see "Version Number" in flex table header "GrantorRelatedAwards2FlexToggle"

  @77401    @hideExpressionJsonFieldAtTopLevelActionFlexTableForEnhanced-gPlanning
  Scenario: Set up configuration to hide New action and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_EnhancedDataTable__TopAction_For_Specific_Program | DataTableEnhanceProgramContacts | Name                      | New                        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "5" seconds
    Then I see no "New" button inside "Contacts" enhanced grid

  @77329    @enableHideGroupingColumnFieldAtFlexTableEnhanced-gPlanning
  Scenario: validate display of number of project areas column after checking checkbox true of Hide Grouping Column field from config and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Grouping Column | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping  | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Grouping Column | true          | GrantorRelatedAwards2 | Name                      | FTC-12818                  |
      | Flex Table List       | Enable Row Grouping  | true          | GrantorRelatedAwards2 | Name                      | FTC-12818                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I see "Version Number" not displayed in enhanced grid table column title

  @104862  @VerifySortingLabelInsideEnhancedDataTable
  Scenario: verify that sorting label displayed inside enhanced data table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "10" seconds
    Then I softly see sorting label as "* Records are sorted by Last Modified Date ascending order" inside "---program:-:programContactsTableId---" table

  @104409    @validatePicklistFieldValueAsNoneAtEnhancedDataTableInInlineMode-gPlanning
  Scenario: validate picklist field value as none inside enhanced data table in inline edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "PG-REI-2065"
    When I click on "View" icon for "PG-REI-2065" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "FirstName LastNam" in "---program:-:programContactsTableId---" panel
    When I click on "Edit" icon for "FirstName LastNam" inside table
    Then I see "--None--:Authorized Signatory:Ebiz POC:Fiscal Contact:Grants Administrator:Principal Investigator:Program Manager:Project Director/Manager:Other" inside selectbox field "ProjectRole__c"

  @106413 @379016 @SanityPATCH @SanityPATCHEnhancedTable
  Scenario Outline: validate date inside value input box field is inserted successfullyAtFlexTableEnhanced
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantorRelatedAwards2 |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I click on advance filter "#advfGrantorRelatedAwards2" of table id "---program:-:SubawardTableIdForAdminPM---"
    When I enter advance filter values in table id "---program:-:SubawardTableIdForAdminPM---"
      | Budget Period End Date | equals to | 05/01/2023 |
    Then I see label containing value as "05/01/2023" inside advance filter

    Examples:
      | newFieldsApi                                                                                                                                                   | defaultFieldsApi                                                                                                                                               |
      | Name,GrantAwardName__c,BudgetPeriodStartDate__c,BudgetPeriodEndDate__c,ExternalOrganization__c,AmendmentNumber__c,Status__c,GrantAwardName__c,AmountAwarded__c | Name,GrantAwardName__c,BudgetPeriodStartDate__c,BudgetPeriodEndDate__c,ExternalOrganization__c,AmendmentNumber__c,Status__c,GrantAwardName__c,AmountAwarded__c |

  @106417  @validateAdvanceFilterValueForDateFieldWithOperatorStartWithAtFlexTableEnhanced
  Scenario Outline: validate Advance filter search for date field with start with operator At Flex Table Enhanced
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantorRelatedAwards2 |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I click on advance filter "#advfGrantorRelatedAwards2" of table id "---program:-:SubawardTableIdForAdminPM---"
    When I enter advance filter values in table id "---program:-:SubawardTableIdForAdminPM---"
      | EGMS ID | contains | AD-1000-01 |
    Then I see value "11/18/2022" for the title "Budget Period End Date" inside table "---program:-:SubawardTableIdForAdminPM---"
    Then I see value "02/19/2022" for the title "Budget Period Start Date" inside table "---program:-:SubawardTableIdForAdminPM---"

    Examples:
      | newFieldsApi                                                                                                                                                   | defaultFieldsApi                                                                                                                                               |
      | Name,GrantAwardName__c,BudgetPeriodStartDate__c,BudgetPeriodEndDate__c,ExternalOrganization__c,AmendmentNumber__c,Status__c,GrantAwardName__c,AmountAwarded__c | Name,GrantAwardName__c,BudgetPeriodStartDate__c,BudgetPeriodEndDate__c,ExternalOrganization__c,AmendmentNumber__c,Status__c,GrantAwardName__c,AmountAwarded__c |

  @111920  @validateToolTipDisplayedAtHoverOnColumnValueInsideEnhancedDataTable @skipOnJenkins
  Scenario Outline: validate tool tip displayed at hover on column value inside Enhanced data table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Automation FO" in "---program:-:programContactsTableId---" panel
    When I hovering mouse on table id "---program:-:programContactsTableId---" with table row level icon "<new_helpText>" for column value "Automation FO"
    Then I see "<new_helpText>" shown at mouse hover inside "---program:-:programContactsTableId---" table

    Examples:
      | new_helpText |
      | Contact      |

  @132268    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtEnhancedDataTable
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at enhanced data table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:programContactsTableId---" panel
    And I pause execution for "10" seconds
    When I hover mouse on lookup link "Lisa Mitchell" at table
    And I pause execution for "4" seconds
    Then I see "Name" as "Lisa Mitchell" in mini page layout

  @145488  @validateAdvanceFilterValueWithOperatorDoesNotContainAtFlexTableEnhanced
  Scenario: validate Advance filter  with does not contain operator At Flex Table Enhanced
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I click on advance filter "#advfGrantorRelatedAwards2" of table id "---program:-:SubawardTableIdForAdminPM---"
    When I enter advance filter values in table id "---program:-:SubawardTableIdForAdminPM---"
      | EGMS ID | does not contain | test1 |
    Then I do not see value "test1" for title "EGMS ID" inside table "---program:-:GridGrantorRelatedAwards2TableId---"

  @151054 @verifyThatParentPageDoesNotRefreshAfterClickingOnSaveActionInEnhancedDataTable
  Scenario: validate that Parent page does not refresh after clicking on Save action in enhanced data table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    When I perform quick search for "AD-1000-04" in "---program:-:SubawardTableIdForAdminPM---" panel
    When I click on "Edit" icon for "AD-1000-04" inside table
    When I enter value "TestGrant" into field "GrantAwardName__c"
    And I pause execution for "30" seconds
    When I click on top right button "Save" in table id "---program:-:SubawardTableIdForAdminPM---"
    And I click toggle button to select "Subawards  - All"
    When I perform quick search for "AD-1000-04" in "---program:-:SubawardTableIdForAdminPM---" panel
    Then I see value "TestGrant" for the title "Title" inside table "---program:-:SubawardTableIdForAdminPM---"

  @194928 @sprint1
  Scenario: Data Table Enhanced - To verify, Hide  expression builder is working for $user with text  field   with not equal to operator (External Organization)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable11 | GrantorRelatedAwards2 | Name                      | FTC-13606                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I softly do not see "External Organization" in flex table header "Subawards - Active"

  @194451p @sprint1
  Scenario:  Data Table Enhanced - To verify, Hide  expression builder is working for $user with text  field   with not equal to operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON |               | DataTableEnhanceProgramContacts | Name                      | FTC-12390                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:EGMSIDRecord}"
    When I click on "View" icon for "{Framework_recordUsed:EGMSIDRecord}" inside table
    And I navigate to "Overview" sub tab
    Then I softly do not see "Organization" in flex table header "Contacts"

  @194456 @sprint1
  Scenario: Data Table Enhanced - To verify, Hide  expression builder is working for $user with number  field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable11 | GrantorRelatedAwards2 | Name                      | FTC-13603                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I softly do not see "Amendment Number" in flex table header "Subawards - Active"

  @194457 @sprint1
  Scenario: Data Table Enhanced - To verify, Hide  expression builder is working for $user with currency   field(Total Award Obligated Amount)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable11 | GrantorRelatedAwards2 | Name                      | FTC-13604                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I softly do not see "Total Approved Budget:" in flex table header "Subawards - Active"

  @194459 @sprint1
  Scenario:  Data Table Enhanced - To verify, Hide  expression builder is working for $user with status
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable11 | GrantorRelatedAwards2 | Name                      | FTC-13605                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I softly do not see "Status" in flex table header "Subawards - Active"

  @194929 @sprint1 @wip
  Scenario: Data Table Enhanced - To verify, Hide  expression builder is working for $user with text  field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable11 | GrantorRelatedAwards2 | Name                      | FTC-13605                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I softly do not see "Status" in flex table header "Subawards - Active"

  @194931 @sprint1
  Scenario: Data Table Enhanced - To verify, Hide  expression builder is working for $user with number  field  with equal to operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable3 | GrantorRelatedAwards2 | Name                      | FTC-12818                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I softly do not see "Version Number" in flex table header "Subawards  - Active"

  @194932 @sprint1
  Scenario:Data Table Enhanced -To verify, Hide  expression builder is working  for $user with number  field  with  not equal to operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideExpreesionColumnJsonGrantEnhancedTable4 | GrantorRelatedAwards2 | Name                      | FTC-12818                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I softly do not see "Version Number" in flex table header "Subawards  - Active"

  @208595   @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtEnhancedDataTable
  Scenario:To verify , Mini layout UI at ME-Grid  table looks as   object name to the top, field title under it, then line separator for Internal user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Automation PM" in "---program:-:programContactsTableId---" panel
    And I hover mouse on link "Automation PM" at table
#    When I hover mouse on lookup link "SYSTEM" at table
    And I pause execution for "2" seconds
    Then I see "Contact" as "Automation PM" value inside mini page layout
    Then I see "Email" as "govgrantsuat@gmail.com.invalid" value inside mini page layout

  @208597    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtEnhancedGrid
  Scenario:To verify , Mini layout UI at form looks as   object name to the top, field title under it, then line separator for Internal user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I hover mouse on lookup link "Department of Higher Education" at table
    And I pause execution for "4" seconds
    Then I softly see "title" as "Department of Higher Education" inside mini page layout
    Then I softly see "Label" as "Code" inside mini page layout
    Then I softly see "Value" as "755" inside mini page layout

  @204740 @204742
  Scenario Outline: Is active- Admin- Config- Verify flex table should not be displayed,Is active- PM- UI- Verify flex table should not be displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | false         | Grantor State Program | Name                      | PB-6747                    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I do not see Header field "Contacts" displayed as a Header on flex table
    Examples:
      | User  |
      | Admin |
      | PM    |

  @204739 @204741
  Scenario Outline: Is active- Admin- Config- Verify flex table should be displayed, Is active- PM- UI- Verify flex table should be displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | Grantor State Program | Name                      | PB-6747                    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see Header field "Contacts" displayed as a Header on flex table
    Examples:
      | User  |
      | Admin |
      | PM    |

  @204736
  Scenario: Name- Admin- Config- Verify Flex table name displayed correctly on UI,
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table            | Header    | Contacts          | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header    | Contacts      | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see Header field "Contacts" displayed as a Header on flex table

  @204737
  Scenario: Name- PM- UI- Verify Flex table name displayed correctly on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table            | Header    | Contacts          | ApiGeneratedId:1 |
      | Flex Table            | Is Active | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header    | Contacts      | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Is Active | true          | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see Header field "Contacts" displayed as a Header on flex table

  @204738
  Scenario: Name- SPI- UI- Verify Flex table name displayed correctly on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table            | Header    | Contacts          | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header    | Contacts      | AppContact         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    When I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Overview" sub tab
    Then I see Header field "Contacts" displayed as a Header on flex table

  @204744
  Scenario: Is active- SPI- UI- Verify flex table should not be displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | false         | RecipientGrant     | Name                      | PB-8924                    |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I do not see Header field "Notes" displayed as a Header on flex table

  @204743
  Scenario: Is active- SPI- UI- Verify flex table should be displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | RecipientGrant     | Name                      | PB-8924                    |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I see Header field "Notes" displayed as a Header on flex table

  @204745 @204746
  Scenario Outline: Header instruction- Admin- Config- Verify if given header help text is getting displayed under 'i' icon,Header instruction- PM- UI- Verify if given header help text is getting displayed under 'i' icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | <defaultHelpText> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | <newHelpText> | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text "Contacts" icon
    Then I see "Help text for Automation" shown as help text
    Examples:
      | User  | defaultHelpText                                                                                         | newHelpText              |
      | Admin | State or funding organization contacts for applicants to refer.Tgfhg!$#%^$&^(**)_(+_)134655898-00=;/.,] | Help text for Automation |
      | PM    | State or funding organization contacts for applicants to refer.Tgfhg!$#%^$&^(**)_(+_)134655898-00=;/.,] | Help text for Automation |

  @204747
  Scenario Outline: Header instruction- SPI- UI- Verify if given header help text is getting displayed under 'i' icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Page Block            | Is Active        | true              | ApiGeneratedId:0 |
      | Flex Table            | Header Help Text | <defaultHelpText> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active        | true          | RecipientGrant      | Name                      | PB-8924                    |
      | Flex Table:General           | Header Help Text | <newHelpText> | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I hovering mouse on help text "Notes" icon
    Then I see "Help text for Automation" shown as help text
    Examples:
      | User | defaultHelpText | newHelpText              |
      | SPI  | none            | Help text for Automation |


  @204748 @204749 @204751 @204752
  Scenario Outline: Display Field Name - Admin -Config- Verify if all fields from 'Display field names' are getting displayed under on flex Table,Display Field Name -PM- UI- Verify if all fields from 'Display field names' are getting displayed under on flex Table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
      | Flex Table            | Header              | Contacts           | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header              | Contacts       | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Automation Program For Test"
    When I click on "View" icon for "Automation Program For Test" inside table
    When I navigate to "Overview" sub tab
    Then I see "Project Role" in flex table header "DataTableEnhanceProgramContactsFlexToggle"
    Then I see "Name" in flex table header "DataTableEnhanceProgramContactsFlexToggle"
    Then I see "Email" in flex table header "DataTableEnhanceProgramContactsFlexToggle"
    Then I see "Organization" in flex table header "DataTableEnhanceProgramContactsFlexToggle"
    Then I see "BaseSalary" in flex table header "DataTableEnhanceProgramContactsFlexToggle"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @204991 @204992 @379020 @SanityPATCH @SanityPATCHEnhancedTable
  Scenario Outline: Page Size- Admin- Config- Verify dropdown to select page size manually should not appear on UI,
  Page Size- PM- UI- Verify dropdown to select page size manually should not appear on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:1 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | false          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I do not see "Entries" page size inside table "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @204988 @204989
  Scenario Outline: Page Size- Admin- Config- Verify dropdown appears on UI to select page size manually,Page Size- PM- UI- Verify dropdown appears on UI to select page size manually
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:1 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I see "Entries" page size inside table "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @204994 @204995 @204997 @205005
  Scenario Outline: Default Page Size- Admin- Config- Verify default number of records displayed in flex table are as mentioned in ‘Default Page Size’,
  Default Page Size - PM- UI- Verify default number of records displayed in flex table are as mentioned in ‘Default Page Size’,
  Total Records Count- Admin- Config- Verify ‘Total Records Count’ displays on UI,
  Total Records Count- PM- UI- Verify ‘Total Records Count’ displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true               | ApiGeneratedId:3 |
      | Flex Table            | Default Page Size          | 10                 | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 10             | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I see "10" with page size dropdown at "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I see table contains "Showing 1 to" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205007 @205008
  Scenario Outline: Total Records Count- Admin- Config- Verify Total Records Count should not display on UI,
  Total Records Count- PM- UI- Verify Total Records Count should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true               | ApiGeneratedId:3 |
      | Flex Table            | Default Page Size          | 10                 | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | false          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 10             | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I see "10" with page size dropdown at "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I do not see table contains "Showing 1 to" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205013 @205014 @379022 @SanityPATCH @SanityPATCHEnhancedTable
  Scenario Outline: Pagination - Admin- Config- Verify Pagination should not display on UI,
  Pagination - PM- UI- Verify Pagination should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | false          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I do not see "---program:-:DataTableEnhanceTableIDforContactsTable---" table contains "Page 1 of"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |


  @205010 @205011 @379021 @SanityPATCH @SanityPATCHEnhancedTable
  Scenario Outline: Pagination- Admin- Config- Verify ‘Pagination’ displays on UI,Pagination - PM- UI- Verify ‘Pagination’ displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I see "---program:-:DataTableEnhanceTableIDforContactsTable---" table contains "Page 1 of"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205026 @205027
  Scenario Outline: Auto Index - Admin- Config- Verify index column (#) should not display on UI,
  Auto Index - PM- UI- Verify index column (#) should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | false          | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I do not see "#" in flex table header "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |


  @205023 @205024
  Scenario Outline: Auto Index- Admin- Config- Verify records are getting indexed under separate column (#),Auto Index - PM- UI- Verify records are getting indexed under separate column (#)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I see "#" in flex table header "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I see "5" with page size dropdown at "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205046 @205047
  Scenario Outline: Record Selection- Admin- Config- Verify Record Selection Column should not display on UI,
  Record Selection- PM- UI- Verify Record Selection Column should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names     | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Pagination       | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Record Selection | false              | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index       | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names     | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination       | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | false          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index       | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I do not see "Select All Check Box" displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205029 @205030 @205049 @205050
  Scenario Outline: Record Selection- Admin- Config- Verify ‘Record Selection Column’ displays on UI,
  Record Selection- PM- UI- Verify ‘Record Selection Column’ displays on UI
  Record Selection- Admin- Config- Verify correct Record Selection Column Header displays on UI,
  Record Selection- PM- UI- Verify correct Record Selection Column Header displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names     | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Pagination       | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Record Selection | false              | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index       | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names     | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination       | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index       | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I see "Select All Check Box" displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205052 @205053
  Scenario Outline: Record Selection- Admin- Config- Verify Record Selection Column rendered on desired position on UI,Record Selection- PM- UI- Verify Record Selection Column rendered on desired position on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                        | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names              | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Record Selection          | false              | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index                | true               | ApiGeneratedId:1 |
      | Flex Table            | Record Selection Column Position | none               | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                        | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names              | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Record Selection          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index                | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Record Selection Column Position | none           | Programs                        | Name                      | Record Selection           |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207562 @207563
  Scenario Outline: Test Case 205052: Record Selection- Admin- Config- Verify Record Selection Column rendered on desired position on UI,
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true               | ApiGeneratedId:3 |
      | Flex Table            | Default Page Size          | 10                 | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 10             | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I see "10" with page size dropdown at "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I see table contains "Showing 1 to" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I perform quick search for "Lisa"
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207565 @207566
  Scenario Outline: Records description- Admin- Config- Verify when we get any quick search results description of records displayed on UI should modify accordingly (eg. Showing 1 to 9 of 9 records),
  Records description - PM- UI- Verify when we get any quick search results description of records displayed on UI should modify accordingly (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true               | ApiGeneratedId:3 |
      | Flex Table            | Default Page Size          | 10                 | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 10             | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I performed quick search "Lisa" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---" on page block
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207568 @207569
  Scenario Outline: Records description - Admin/PM- UI- Verify when we apply ‘Advance filter’ description of records displayed on UI should modify accordingly (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I see Advance Filter box is displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---" in flex table
    When I performed quick search "Lisa" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---" on page block
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207584 @207585
  Scenario Outline: Page description- Admin- Config- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows),
  Page description - PM- UI- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207587 @207588
  Scenario Outline: Page description- Admin- Config- Verify when we get any quick search results Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
  Page description - PM- UI- Verify when we get any quick search results Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    And I click on page navigation arrow "---program:-:DataTableEnhanceTableIDforContactsTable---" for table id "Next"
    Then I see page description is displayed "Page 2 of" with "First" arrow inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207590 @207591
  Scenario Outline: Page description- Admin- Config- Verify when we apply ‘Advance filter’ Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows),
  Page description - PM- UI- Verify when we apply ‘Advance filter’ Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    And I select value inside table "---program:-:DataTableEnhanceTableIDforContactsTable---" is "5"
    When I click on advance filter "#advfDataTableEnhanceProgramContacts" of table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I enter advance filter values in table id "advfDataTableEnhanceProgramContacts"
      | Project Role | equals to | Other |
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207593 @207594
  Scenario Outline: Page description- Admin- Config- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows) and we can toggle page using arrows
  Page description - PM- UI- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows) and we can toggle page using arrows
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    And I select value inside table "---program:-:DataTableEnhanceTableIDforContactsTable---" is "5"
    And I click on page navigation arrow "---program:-:DataTableEnhanceTableIDforContactsTable---" for table id "Next"
    Then I see page description is displayed "Page 2 of" with "First" arrow inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207596 @207597
  Scenario Outline: Page description- Admin- Config- Verify we can toggle page using arrows Next arrow should get disabled on last page,
  Page description - PM- UI- Verify we can toggle page using arrows Next arrow should get disabled on last page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    And I select value inside table "---program:-:DataTableEnhanceTableIDforContactsTable---" is "5"
    And I click on page navigation arrow "---program:-:DataTableEnhanceTableIDforContactsTable---" for table id "Last"
    Then I do not see pagination "Next" arrow displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |


  @207599 @207600
  Scenario Outline: Page description- Admin- Config- Verify we can toggle page using arrows Previous arrow should get disabled on First page
  Page description - PM- UI- Verify we can toggle page using arrows Previous arrow should get disabled on First page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    And I select value inside table "---program:-:DataTableEnhanceTableIDforContactsTable---" is "5"
    And I click on page navigation arrow "---program:-:DataTableEnhanceTableIDforContactsTable---" for table id "Last"
    And I click on page navigation arrow "---program:-:DataTableEnhanceTableIDforContactsTable---" for table id "First"
    Then I do not see pagination "Previous" arrow displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207602 @207603
  Scenario Outline: Page description- Admin- Config- Verify we can directly jump on last page using this arrow,
  Page description - PM- UI- Verify we can directly jump on last page using this arrow
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    And I select value inside table "---program:-:DataTableEnhanceTableIDforContactsTable---" is "5"
    And I click on page navigation arrow "---program:-:DataTableEnhanceTableIDforContactsTable---" for table id "Last"
    Then I do not see pagination "Last" arrow displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207605 @207606
  Scenario Outline: Page description- Admin/PM- Config- Verify we can directly jump on First page using this arrow
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    And I select value inside table "---program:-:DataTableEnhanceTableIDforContactsTable---" is "5"
    And I click on page navigation arrow "---program:-:DataTableEnhanceTableIDforContactsTable---" for table id "First"
    Then I do not see pagination "First" arrow displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @204993
  Scenario:Page Size- SPI- UI- Verify dropdown to select page size manually should not appear on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-8924                    |
      | Flex Table:General           | Enable Page Size           | false         | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"
    Then I do not see "Entries" page size inside table "---program:-:FlexTableEnhancedNotesId---"

  @204990 @204996
  Scenario: Page Size- SPI- UI- Verify dropdown appears on UI to select page size manually,
  Default Page Size - SPI- UI- Verify default number of records displayed in flex table are as mentioned in ‘Default Page Size’
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Default Page Size          | 5                 | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-8924                    |
      | Flex Table:General           | Enable Page Size           | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Default Page Size          | 5             | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"
    Then I see "Entries" page size inside table "---program:-:FlexTableEnhancedNotesId---"
    Then I see "Total Records:" text-allignment is "center" in table id "---program:-:FlexTableEnhancedNotesId---"
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"

  @205009 @205015
  Scenario: Total Records Count- SPI- UI- Verify Total Records Count should not display on UI,
  Pagination - SPI- UI- Verify Pagination should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-8924                    |
      | Flex Table:General           | Enable Total Records Count | false         | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Pagination          | false         | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I do not see "---program:-:FlexTableEnhancedNotesId---" table contains "Page 1 of"
    Then I do not see "Total Records:" text-allignment is "center" in table id "---program:-:FlexTableEnhancedNotesId---"

  @205006 @205012 @207586
  Scenario: Total Records Count- SPI- UI- Verify ‘Total Records Count’ displays on UI,Pagination - SPI- UI- Verify ‘Pagination’ displays on UI,
  Page description - SPI- UI- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-8924                    |
      | Flex Table:General           | Enable Page Size           | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Pagination          | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"
    Then I see "Total Records:" text-allignment is "center" in table id "---program:-:FlexTableEnhancedNotesId---"
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "---program:-:FlexTableEnhancedNotesId---"

  @205028 @205048
  Scenario: Auto Index - SPI- UI- Verify index column (#) should not display on UI, Record Selection- SPI- UI- Verify Record Selection Column should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true              | ApiGeneratedId:3 |
      | Flex Table            | Enable Record Selection    | false             | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | false         | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Record Selection    | false         | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I do not see "#" in flex table header "---program:-:FlexTableEnhancedNotesId---"
    Then I do not see "Select All Check Box" displayed inside table id "---program:-:FlexTableEnhancedNotesId---"

  @205025 @205031
  Scenario: Auto Index - SPI- UI- Verify records are getting indexed under separate column (#),Record Selection- SPI- UI- Verify ‘Record Selection Column’ displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Record Selection    | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-8924                    |
      | Flex Table:General           | Enable Page Size           | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Pagination          | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Auto Index          | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Record Selection    | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I see "#" in flex table header "---program:-:FlexTableEnhancedNotesId---"
    Then I see "Select All Check Box" displayed inside table id "---program:-:FlexTableEnhancedNotesId---"

  @205051 @205054
  Scenario:Record Selection- SPI- UI- Verify Record Selection Column rendered on desired position on UI,Record Selection- SPI- UI- Verify correct Record Selection Column Header displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Page Block            | Is Active               | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName               | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active               | true          | RecipientGrant      | Name                      | PB-8924                    |
      | Flex Table:General           | Enable Record Selection | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I see "Select All Check Box" displayed inside table id "---program:-:FlexTableEnhancedNotesId---"
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:FlexTableEnhancedNotesId---"

  @207564
  Scenario: Records description - SPI- UI- Verify correct description of records displayed on UI (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-8924                    |
      | Flex Table:General           | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I see table contains "Showing 1 to" inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207567
  Scenario: Records description - SPI- UI- Verify when we get any quick search results description of records displayed on UI should modify accordingly (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I performed quick search "Showing 1 to 5 of 8 records" inside table id "---program:-:FlexTableEnhancedNotesId---" on page block
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207570
  Scenario: Records description - SPI- UI- Verify when we apply ‘Advance filter’ description of records displayed on UI should modify accordingly (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I click on advance filter "#advfRecipientsGrantPackages" of table id "---program:-:FlexTableEnhancedNotesId---"
    When I enter advance filter values in table id "advfRecipientsGrantPackages"
      | Title | contains | Showing 1 to 5 of 8 records |
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207589 @207592
  Scenario: Page description - SPI- UI- Verify when we get any quick search results Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows),
  Page description - SPI- UI- Verify when we apply ‘Advance filter’ Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Test Page description" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"
    When I click on advance filter "#advfRecipientsGrantPackages" of table id "---program:-:FlexTableEnhancedNotesId---"
    When I enter advance filter values in table id "advfRecipientsGrantPackages"
      | Title | contains | Test Page description |
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207598 @207595
  Scenario: Page description - SPI- UI- Verify we can toggle page using arrows Next arrow should get disabled on last page
  Page description - SPI- UI- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows) and we can toggle page using arrows,
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:4 |
      | Flex Table            | Default Page Size          | 5                 | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-8924                    |
      | Flex Table:General           | Enable Page Size           | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Pagination          | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Default Page Size          | 5             | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"
    And I click on page navigation arrow "---program:-:FlexTableEnhancedNotesId---" for table id "Last"
    Then I do not see pagination "Next" arrow displayed inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I click on page navigation arrow "---program:-:FlexTableEnhancedNotesId---" for table id "First"
    Then I see pagination "Next" arrow displayed inside table id "---program:-:FlexTableEnhancedNotesId---"
    Then I do not see pagination "Previous" arrow displayed inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I click on page navigation arrow "---program:-:FlexTableEnhancedNotesId---" for table id "Last"
    Then I do not see pagination "Last" arrow displayed inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207607 @207604
  Scenario: Page description - SPI- UI- Verify we can directly jump on First page using this arrow
  Page description - SPI- UI- Verify we can directly jump on last page using this arrow
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:4 |
      | Flex Table            | Default Page Size          | 5                 | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-8924                    |
      | Flex Table:General           | Enable Page Size           | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Pagination          | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Default Page Size          | 5             | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"
    And I click on page navigation arrow "---program:-:FlexTableEnhancedNotesId---" for table id "Last"
    Then I do not see pagination "Last" arrow displayed inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I click on page navigation arrow "---program:-:FlexTableEnhancedNotesId---" for table id "First"
    Then I do not see pagination "First" arrow displayed inside table id "---program:-:FlexTableEnhancedNotesId---"

    #########################Test suite: Advanced Filter (Suite ID: 205069)############################

  @205078 @205080 @379015 @SanityPATCH @SanityPATCHEnhancedTable
  Scenario Outline: Advanced Filter- Admin- Config- Verify Advanced Filter option should not available on UI,
  Advanced Filter- PM- UI- Verify Advanced Filter option should not available on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | false          | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I do not see Advance Filter box is displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---" in flex table
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205077 @205079 @379014 @SanityPATCH @SanityPATCHEnhancedTable
  Scenario Outline: Advanced Filter- Admin- Config- Verify Advanced Filter option available on UI,
  Advanced Filter- PM- UI- Verify Advanced Filter option available on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I see Advance Filter box is displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---" in flex table
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205082
  Scenario: Advanced Filter- SPI- UI- Verify Advanced Filter option should not available on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | false         | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I do not see Advance Filter box is displayed inside table id "---program:-:FlexTableEnhancedNotesId---" in flex table

  @205081
  Scenario: Advanced Filter- SPI- UI- Verify Advanced Filter option available on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I see Advance Filter box is displayed inside table id "---program:-:FlexTableEnhancedNotesId---" in flex table

  @205083 @205084
  Scenario Outline: Advanced Filter- Admin- Config- Verify when click on Advanced Filter text box does related previous search suggestion appears
  Advanced Filter- PM- UI- Verify when click on Advanced Filter text box does related previous search suggestion appears
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I click on advance filter "#advfDataTableEnhanceProgramContacts" of table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    And I click on "Column Name" after click advance filter
    Then I see dropdown value "Project Role" under field name "Column Name" inside flex table
    And I click on "Operator" after click advance filter
    Then I see dropdown value "equals to" under field name "Operator" inside flex table
    And I click on "Value" after click advance filter
    Then I see dropdown value "Other" under field name "Value" inside flex table
    Examples:
      | Users | newFieldsApi                                                                        | defaultFieldsApi                                                                    |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205085
  Scenario: Advanced Filter- SPI- UI- Verify when click on Advanced Filter text box does related previous search suggestion appears
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I click on advance filter "#advfRecipientGrantNotes" of table id "---program:-:FlexTableEnhancedNotesId---"
    And I click on "Column Name" after click advance filter
    Then I see dropdown value "Title" under field name "Column Name" inside flex table

  @207577 @207578
  Scenario Outline: Advance filter - Admin- Config- Verify when we get records with ‘Advance filter’ and refresh the page Advance filter should cleared and all records should be displayed on UI
  Advance filter - PM- UI- Verify when we get records with ‘Advance filter’ and refresh the page Advance filter should cleared and all records should be displayed on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:3 |
      | Flex Table            | Default Page Size          | 5                  | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I click on advance filter "#advfDataTableEnhanceProgramContacts" of table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I enter advance filter values in table id "advfDataTableEnhanceProgramContacts"
      | Project Role | equals to | Ebiz POC |
    Then I see table contains "Showing 1 to 2 of 2 records" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    And I refresh the page
    Then I see "5" with page size dropdown at "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | newFieldsApi                                                                        | defaultFieldsApi                                                                    |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207579
  Scenario: Advance filter - SPI- UI- Verify when we get records with ‘Advance filter’ and refresh the page Advance filter should cleared and all records should be displayed on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I click on advance filter "#advfRecipientGrantNotes" of table id "---program:-:FlexTableEnhancedNotesId---"
    When I enter advance filter values in table id "advfRecipientGrantNotes"
      | Title | contains | notes two |
    Then I see table contains "Showing 1 to 2 of 2 records" inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I refresh the page
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"

##########################Test suite: Quick Search (Suite ID: 207520)#########################

  @207522 @207523
  Scenario Outline: Quick Search- Admin- Config- Verify we can search records by entering numbers in quick search box
  Quick Search- PM- UI- Verify we can search records by entering numbers in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:3 |
      | Flex Table            | Default Page Size          | 5                  | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "11,000" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    Then I see table contains "Showing 1 to" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | newFieldsApi                                                                        | defaultFieldsApi                                                                    |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207524
  Scenario: Quick Search- SPI- UI- Verify we can search records by entering numbers in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "11,000" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to" inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207525 @207526
  Scenario Outline: Quick Search- Admin- Config- Verify we can search records by entering text in quick search box
  Quick Search- PM- UI- Verify we can search records by entering text in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size          | 5                  | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Ronald Clar" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | newFieldsApi                                                                        | defaultFieldsApi                                                                    |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207527
  Scenario: Quick Search- SPI- UI- Verify we can search records by entering text in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Notes three" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207528
  Scenario Outline: Quick Search- Admin- Config- Verify we can search records by entering partial text in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size          | 5                  | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Othe" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    Then I see table contains "Showing 1 to 5 of" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | newFieldsApi                                                                        | defaultFieldsApi                                                                    |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207530
  Scenario: Quick Search- SPI- SPI- Verify we can search records by entering partial text in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Notes" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to 5 of" inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207531 @207532
  Scenario Outline: Quick Search- Admin- Config- Verify we can search records by entering special characters in quick search box
  Quick Search- PM- UI- Verify we can search records by entering special characters in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size          | 5                  | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "sds@dv.com" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | newFieldsApi                                                                        | defaultFieldsApi                                                                    |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207533
  Scenario: Quick Search- SPI- UI- Verify we can search records by entering special characters in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "sds@dv.com" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207534 @207535
  Scenario Outline: Quick Search- Admin- Config- Verify we can search records by entering apostrophe in quick search box
  Quick Search- PM- UI- Verify we can search records by entering apostrophe in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size          | 5                  | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "'apostrophe 'apostrophe" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | newFieldsApi                                                                        | defaultFieldsApi                                                                    |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207536
  Scenario: Quick Search- SPI- UI- Verify we can search records by entering apostrophe in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "'apostrophe test''''" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207572 @207573
  Scenario Outline: Quick search - Admin- Config- Verify when we get any quick search results and refresh the page quick search should cleared and all records should be displayed on UI
  Quick search - PM- UI- Config- Verify when we get any quick search results and refresh the page quick search should cleared and all records should be displayed on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size          | 5                  | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "'apostrophe 'apostrophe" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click on "Menu" button inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click on "Reset Table" button inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I see "5" with page size dropdown at "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | newFieldsApi                                                                        | defaultFieldsApi                                                                    |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207574
  Scenario: Quick search - SPI- UI- Config- Verify when we get any quick search results and refresh the page quick search should cleared and all records should be displayed on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "'apostrophe test''''" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I refresh the page
    When I click on "Menu" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    When I click on "Reset Table" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"

######################Test suite: Action Config (Suite ID: 205379)########################

  @205382 @205384 @205388 @379006 @SanityPATCH @SanityPATCHEnhancedTable
  Scenario Outline: Action- Admin- config- Verify action is rendered on UI,
  Action- PM- UI- Verify action is rendered on UI
  Action- Admin- config- Verify action name is displaying correctly,
  Action- PM- UI- Verify action name is displaying correctlya
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Button Help Text    |                    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table Action     | Button Help Text    |                | DataTableEnhanceProgramContacts | Name                      | View                       |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    Then I see "Actions" in flex table header "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I see action name "View" itself get displayed inside tableid "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I see action name "Edit" itself get displayed inside tableid "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | newFieldsApi                                                                        | defaultFieldsApi                                                                    |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205386 @205390
  Scenario: Action- SPI- UI- Verify action is rendered on UI,
  Action- SPI- UI- Verify action name is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Button Help Text |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text |               | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    Then I see "Actions" in flex table header "---program:-:FlexTableEnhancedNotesId---"
    Then I see action name "Edit" itself get displayed inside tableid "---program:-:FlexTableEnhancedNotesId---"
    Then I see action name "Delete" itself get displayed inside tableid "---program:-:FlexTableEnhancedNotesId---"

  @205397
  Scenario Outline: Action- Admin- config- Verify Button help text is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Button Help Text    |                    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue         | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi>        | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table Action     | Button Help Text    | Test Button Help Text | DataTableEnhanceProgramContacts | Name                      | View                       |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    And I hovering mouse on action "Test Button Help Text" inside flex table
    Then I see action name "Test Button Help Text" itself get displayed on UI
    Examples:
      | Users | newFieldsApi                                                                        | defaultFieldsApi                                                                    |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205399
  Scenario: Action- SPI- UI- Verify Button help text is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Button Help Text |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue         | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text | Test Button Help Text | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    And I hovering mouse on action "Test Button Help Text" inside flex table
    Then I see action name "Test Button Help Text" itself get displayed on UI

  @205400 @205401 @255402 @255403 @205431 @205432
  Scenario Outline: Action- Admin- Config- Verify Actions icons are rendered at expected positions,
  Action- PM- UI- Verify Actions icons are rendered at expected positions,
  Action- Admin- Config- Verify Actions should be rendered as action name,
  Action- PM- UI- Verify Actions should be rendered as action name
  Action- Admin- Config- Verify Actions are rendered at expected location
  Action- PM- UI- Verify Actions are rendered at expected location
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table Action     | Sequence            | 0                  | ApiGeneratedId:1 |
      | Flex Table            | Button Help Text    |                    | ApiGeneratedId:2 |
      | Flex Table            | Location            |                    | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table Action     | Sequence            | 0              | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Button Help Text    |                | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Location            | Row            | DataTableEnhanceProgramContacts | Name                      | View                       |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    Then I see "View" row action Button at position "1" inside tableid "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | newFieldsApi                                                                        | defaultFieldsApi                                                                    |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205404 @205405 @205433 @205439
  Scenario: Action- SPI- UI- Verify Actions icons are rendered at expected positions,
  Action- SPI- UI- Verify Actions should be rendered as action name,
  Action- SPI- UI- Verify Actions are rendered at expected location,
  Action- SPI- UI- Verify if actions displayed on UI are following given sequence
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Sequence         | 0                 | ApiGeneratedId:1 |
      | Flex Table            | Button Help Text |                   | ApiGeneratedId:2 |
      | Flex Table            | Location         |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Sequence         | 0             | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Button Help Text |               | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Location         | Row           | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see "Edit" row action Button at position "1" inside tableid "---program:-:FlexTableEnhancedNotesId---"

  @205434 @205435
  Scenario Outline: Action- Admin- Config- Verify action rendered as per expected ‘Header Action Display Type’,
  Action- PM- UI- Verify action rendered as per expected ‘Header Action Display Type’
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue       | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row                     | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Action URL Long            | <actionUrlLongOldValue> | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Action Behavior            | Open in same window     | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type |                         | DataTableEnhanceProgramContacts | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue           | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row                     | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Action URL Long            | <actionUrlLongNewValue> | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type | Button                  | DataTableEnhanceProgramContacts | Name                      | View                       |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    Then I see "View" row action Button at position "1" inside tableid "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | actionUrlLongOldValue                             | actionUrlLongNewValue                             |
      | Admin | /apex/ContactView?id={!KeyContacts__c.Contact__c} | /apex/ContactView?id={!KeyContacts__c.Contact__c} |
      | PM    | /apex/ContactView?id={!KeyContacts__c.Contact__c} | /apex/ContactView?id={!KeyContacts__c.Contact__c} |

  @205436
  Scenario: Action- SPI- UI- Verify action rendered as per expected ‘Header Action Display Type’
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row               | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior            | EditRecord        | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Header Action Display Type |                   | RecipientGrantNotes | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row           | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Header Action Display Type | Button        | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior            | EditRecord    | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see "Edit" row action Button at position "1" inside tableid "---program:-:FlexTableEnhancedNotesId---"

  @205437 @205438
  Scenario Outline: Action- Admin- Config- Verify if actions displayed on UI are following given sequence,
  Action- PM- UI- Verify if actions displayed on UI are following given sequence
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table Action     | Sequence            | 0                  | ApiGeneratedId:1 |
      | Flex Table Action     | Sequence            | 1                  | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table Action     | Sequence            | 0              | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Sequence            | 1              | DataTableEnhanceProgramContacts | Name                      | Edit                       |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    Then I see "View" row action Button at position "1" inside tableid "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I see "Edit" row action Button at position "2" inside tableid "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | newFieldsApi                                                                        | defaultFieldsApi                                                                    |
      | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205440 @205441
  Scenario Outline: Action- Admin- Config- Verify when Action behavior is ‘Open in same window’ action should be performed in same window
  Action- PM- UI- Verify when Action behavior is ‘Open in same window’ action should be performed in same window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? |                   | DataTableEnhanceProgramContacts | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow    | DataTableEnhanceProgramContacts | Name                      | View                       |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    When I click on "View" icon for "Lisa Mitchell" inside table
    Then I see no new tab is opened
    Examples:
      | Users |
      | Admin |
      | PM    |

  @205442
  Scenario: Action- SPI- UI- Verify when Action behavior is ‘Open in same window’ action should be performed in same window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? |                   | RecipientGrantNotes | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow    | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Edit" icon for "Lisa Mitchell" inside table
    Then I see no new tab is opened

  @205456 @205457
  Scenario Outline: Action- Admin- Config- Verify when Action behavior is ‘Open in new window’ action should be performed in new window
  Action- PM- UI- Verify when Action behavior is ‘Open in new window’ action should be performed in same window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? |                   | DataTableEnhanceProgramContacts | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewWindow     | DataTableEnhanceProgramContacts | Name                      | View                       |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    When I click on "View" icon for "Lisa Mitchell" inside table
    Then I see new tab is opened
    Examples:
      | Users |
      | Admin |
      | PM    |

  @205458
  Scenario: Action- SPI- UI- Verify when Action behavior is ‘Open in new window’ action should be performed in same window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? |                   | RecipientGrantNotes | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewWindow     | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Edit" icon for "Lisa Mitchell" inside table
    Then I see no new tab is opened

  @205459 @205492 @205493
  Scenario Outline: Action- Admin- Config- Verify when Action behavior is ‘Open in overlay’ action should be performed in new small modal window appended in same page,
  Action- Admin- Config- Verify ‘Modal title’ is displaying correctly,Action- PM- UI - Verify ‘Modal title’ is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? |                   | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Modal Title     |                   | DataTableEnhanceProgramContacts | Name                      | View                       |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Flex Table Action     | Action Behavior | OpenURL           | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal           | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Modal Title     | View            | DataTableEnhanceProgramContacts | Name                      | View                       |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    When I click on "View" icon for "Lisa Mitchell" inside table
    Then I see "View" opens in overLay window
    Examples:
      | Users |
      | Admin |
      | PM    |

  @205462 @205463 @205489 @205490
  Scenario Outline: Action- Admin- Config- Verify Confirmation window is getting displayed,
  Action- PM- UI-  Verify Confirmation window is getting displayed,
  Action- Admin- Config- Verify correct Confirmation message is getting displayed,
  Action- PM- UI- Verify correct Confirmation message is getting displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  |                   | DataTableEnhanceProgramContacts | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | true          | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  | Automation    | DataTableEnhanceProgramContacts | Name                      | View                       |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    When I click on "View" icon for "Lisa Mitchell" inside table
    Then I see confirmation box with body "Automation" is displayed
    Examples:
      | Users |
      | Admin |
      | PM    |

  @205464 @205491
  Scenario: Action- SPI- UI - Verify Confirmation window is getting displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Test Notes" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Delete" icon for "Test Notes" inside table without accept popup
    Then I see confirmation box with body "Do you want to delete? Once it is deleted it cannot be restored." is displayed

  @205494
  Scenario: Action- SPI- UI- Verify ‘Modal title’ is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior       | EditRecord        | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Modal Title           |                   | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ?       |                   | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Show Confirmation Box | false             | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Confirmation Message  |                   | RecipientGrantNotes | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue    | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior       | EditRecord       | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Modal Title           | Automation Title | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ?       | Modal            | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Show Confirmation Box | false            | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Confirmation Message  |                  | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Edit" icon for "Lisa Mitchell" inside table
    Then I see "Automation Title" opens in overLay window

  @205495 @205496
  Scenario Outline: Action- Admin- Config- Verify modal window size is as per Modal width
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? |                   | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Modal Title     |                   | DataTableEnhanceProgramContacts | Name                      | View                       |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Flex Table Action     | Action Behavior | OpenURL           | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal           | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Modal Title     | View            | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Modal Width     | 50              | DataTableEnhanceProgramContacts | Name                      | View                       |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    When I click on "View" icon for "Lisa Mitchell" inside table
    And I pause execution for "5" seconds
    Then I see modal window is open in same tab with style "50"
    Examples:
      | Users |
      | Admin |
      | PM    |

  @205497
  Scenario: Action- SPI- UI- Verify modal window size is as per Modal width
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? |                   | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Modal Title     |                   | RecipientGrantNotes | Name                      | Edit                       |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Flex Table Action     | Action Behavior | OpenURL           | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | Modal           | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Modal Title     | View            | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Modal Width     | 50              | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Edit" icon for "Lisa Mitchell" inside table
    And I pause execution for "5" seconds
    Then I see modal window is open in same tab with style "50"

    #####################Test suite: Export functionality (Suite ID: 207538)#########################

  @207543 @207544 @207546 @207547
  Scenario Outline:Download as PDF- Admin- Config- Verify when we get any quick search results and click on download as PDF, we should see all records in PDF,
  Download as PDF- PM- UI- Verify when we get any quick search results and click on download as PDF, we should not see all records in PDF
  Download as PDF- Admin- Config- Verify when we get any quick search results and click on download as PDF, not only search result should be downloaded in PDF
  Download as PDF- PM- UI- Verify when we get any quick search results and click on download as PDF,not only search result should be downloaded in PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    When I click on "Menu" button inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click on "Download as PDF" button inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    And I download the file
    Then I see "Lisa Mitchell" on page "1" of "govgrants" pdf file
    Then I see "Automation PM" on page "1" of "govgrants" pdf file
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207545 @207548
  Scenario: Download as PDF- SPI- UI- Verify when we get any quick search results and click on download as PDF, we should see all records in PDF
  Download as PDF - SPI- UI- Verify when we get any quick search results and click on download as PDF,not only search result should be downloaded in PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Notes three" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Menu" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    When I click on "Download as PDF" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I download the file
    Then I see "Lisa Mitchell" on page "1" of "govgrants" pdf file

  @207549 @207550 @207552 @207553
  Scenario Outline: Download as XL / CSV- Admin- Config- Verify when we get any quick search results and click on download as XL / CSV, we should see all records in file
  Download as XL / CSV- PM- UI- Verify when we get any quick search results and click on download as XL / CSV, we should see all records in file
  Download as XL / CSV- Admin- Config- Verify when we get any quick search results and click on download as XL / CSV,not only search result should be downloaded in file
  Download as XL / CSV- PM- UI- Verify when we get any quick search results and click on download as XL / CSV,not only search result should be downloaded in file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    When I click on "Menu" button inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click on "Download as PDF" button inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    And I download the file
    Then I see "Lisa Mitchell" in downloaded xls or csv file "govgrants"
    Then I see "Automation PM" in downloaded xls or csv file "govgrants"
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207551 @207554
  Scenario: Download as XL / CSV- SPI- UI- Verify when we get any quick search results and click on download as XL / CSV, we should see all records in file
  Download as XL / CSV- SPI- UI- Verify when we get any quick search results and click on download as XL / CSV,not only search result should be downloaded in file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Notes three" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Menu" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    When I click on "Download as PDF" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I download the file
    Then I see "Lisa Mitchell" in downloaded xls or csv file "govgrants"

  @207612 @207613
  Scenario Outline: Total- Admin- Config- Verify the Total of values under the column can be displayed in PDF file when we download as PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "program for grand total enhance table"
    When I click on "View" icon for "program for grand total enhance table" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" button inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click on "Download as PDF" button inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    And I download the file
    And I pause execution for "10" seconds
    Then I see "$2,000.00" on page "1" of "govgrants" pdf file
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207614
  Scenario: Total - SPI- UI- Verify the Total of values under the column can be displayed in PDF file when we download as PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Notes three" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Menu" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    When I click on "Download as PDF" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I download the file
    Then I see "4000" on page "1" of "govgrants" pdf file

  @379017 @SanityPATCH @SanityPATCHEnhancedTable
  Scenario Outline: To verify that user is able to see Total Records count at bottom of the table, when Total Records count config is enabled
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see "Total Records" page size inside table "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @379005 @SanityPATCH @SanityPATCHEnhancedTable
  Scenario Outline: To verify that all top level actions are displayed on top of the table, which have been configured
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Contact Data Table Enhanced"
    When I click on "View" icon for "Automation Program For Contact Data Table Enhanced" inside table
    When I navigate to "Overview" sub tab
    Then I see "Associate" button inside "Contacts" flex table
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @379007
  Scenario Outline: To verify that user is able to create new record by clicking on New action
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
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "New" in flex table with id "---program:-:programContactsTableId---"
    When I enter "Contacts" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save"
    

    Examples:
      | User  |
      | ADMIN |
      #  | PM    |

  @379011 @379013 @379009 @smokePATCH @SanityPATCH @SanityPATCHEnhancedTable
  Scenario: validate disabling of quick search from enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Quick Search | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I performed quick search "Iron America" inside table id "---program:-:programContactsTableId---" on page block
    Then I see value "Iron America" for title "Name" against the value "Grants Administrator" inside table "---program:-:programContactsTableId---"
    When I click on "View" icon for "Iron America" inside table
    #379009
    Then I see new tab is opened

  @379010 @SanityPATCH @SanityPATCHEnhancedTable
  Scenario:To verify that user is able to delete record by clicking on Delete action
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    When I click on "Remove" icon for "12 21" inside table
    Then I see confirmation box with body "Do you want to delete? Once it is deleted it cannot be restored." is displayed

  @379008 @SanityPATCH @SanityPATCHEnhancedTable
  Scenario: To verify that user is able to edit existing record by clicking on Edit action
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    #When I click on "Edit" icon for "12 21" inside table without accept popup
    When I click on "Edit" icon for "Automation PM" inside table
    And I enter value "Program Manager" into field "ProjectRole__c"
    And I click on top right button "Save" in flex table with id "---program:-:programContactsTableId---"
    Then I see the following message in the page details :
      | Saved Successfully! |
