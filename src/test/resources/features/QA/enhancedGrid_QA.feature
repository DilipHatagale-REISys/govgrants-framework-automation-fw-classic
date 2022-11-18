@EnhancedGrid_QA-component @regression-QA @EnhancedGrid
Business Need: EnhancedGrid Component Scenarios
  Test all EnhancedGrid component based scenarios
  As a configuration manager i make different configurational changes in EnhancedGrid component and will validate them.

  @257630 @257343 @Toverify,WhenInternalUserclickon'New'actionbuttontocreateanewrecordinEnhancedGrid,anewrecordshouldshowupingridineditmode. @Vrushali @Sprint-19
  Scenario Outline: To verify ,  When Internal User click on 'New' action button to create a new record in Enhanced Grid, a new record should show up in the grid in edit mode.
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Setup tabs" sub tab
    Then I softly see "Review Steps" page block displayed
    And I expand nested table containing column value "Pre-Screen Review"
    And I click on top right button "New" in flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" without processing
    Then I see fields "StepNumber__c" is in edit mode
    Then I see fields "Name" is in edit mode
    Then I see fields "Description__c" is in edit mode
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @257614 @257611 @ToverifyAdminUserclickonnewactionandthenclickonRefreshbuttonfromPagelayoutthennewrecordshouldnotshowup @Vrushali @Sprint-19 @US-255921
  Scenario Outline: To verify,Admin User click on new action and then click on Refresh button from Page layout  then new record should not show up
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
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
    And I refresh the page
    Then I softly see value "Pre-Screen Review" for title "Step Name" inside table "---program:-:ProgramReviewStepTemplatesTableId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @257558 @257557 @InternalUserclickonnewactionthenclickonRefreshbuttonfrompageblockhamburgericonthennewrecordshouldnotshowup @Vrushali @print-19 @US-255921
  Scenario Outline: Internal User click on new action and then click on Refresh button from page  block hamburger icon then new record should not show up
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Setup tabs" sub tab
    Then I softly see "Review Steps" page block displayed
    And I click on top right button "New" in flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" without processing
    Then I see fields "StepNumber__c" is in edit mode
    Then I see fields "Description__c" is in edit mode
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Refresh" from parallel lines dropdown of "Review Steps"
    And I pause execution for "3" seconds
    Then I softly see value "Pre-Screen Review" for title "Step Name" inside table "---program:-:ProgramReviewStepTemplatesTableId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @257555 @257452 @Toverify,InternalUsershouldseechildtableofsecondrecord(whichwasattoppreviously)linkedtosecondrecordonly. @Vrushali @Sprint-19 @US-255921
  Scenario Outline: To verify, Internal User should see child table of the second record (which was at top previously) linked to second record only.
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Setup tabs" sub tab
    And I expand nested table containing column value "SME Review"
    Then I softly see "Review Forms" page block displayed
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @257386 @Toverify,Usershouldnotseeanychildtableattachedtothenewlycreatedrecord. @Vrushali @Sprint-19 @US-255921
  Scenario: To verify, User should  not see any child table attached to the newly created record.
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Setup tabs" sub tab
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name   | Description |
      | 4          | Test Review | Description |
    And I expand nested table containing column value "Test Review"
    Then I softly see "No Records Found" inside flex table with id "---program:-:ProgramReviewStepPanelTemplatesFlexToggleTableId---"

  @257388 @Toverify,Usershouldbeabletoaddnewchildrecordinchildtablethatattachedtothenewlyreatedrecord. @Vrushali @Sprint-19 @US-255921
  Scenario: To verify, User should be able to add new child record in child table that attached to the newly created record.
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Setup tabs" sub tab
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name   | Description |
      | 4          | Test Review | Description |
    And I expand nested table containing column value "Test Review"
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepPanelTemplatesFlexToggleTableId---" by clicking "New" :
      | Form Name | Form Weight (%) | Minimum Number of Reviews per Application | Required? |
      | Testing   | 50              | 1                                         | Checked   |
    And I expand nested table containing column value "Test Review"
    Then I softly see value "Testing" for title "Form Name" inside table "---program:-:ProgramReviewStepPanelTemplatesFlexToggleTableId---"

  @257474 @Toverify,Advancedfiltershouldbeworkingfornewlyaddedchildrecordintable @Vrushali @Sprint-19 @US-255921
  Scenario: To verify, Advanced filter should be working for newly added child record in the table
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | ProgramReviewStepTemplates |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Setup tabs" sub tab
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name   | Description |
      | 4          | Test Review | Description |
    When I navigate to "Setup tabs" sub tab
    When I click on advance filter "#advfProgramReviewStepTemplates" of table id "---program:-:ProgramReviewStepTemplatesTableId---"
    When I enter advance filter values inside id "advfProgramReviewStepTemplates"
      | Step Name | contains | Test Review |
    Then I see value "Test Review" for title "Step Name" inside table "---program:-:ProgramReviewStepTemplatesTableId---"

  @257472 @Toverify,Usershouldbeabletoaddnewchildrecordinchildtablethatattachedtothenewlyreatedrecord. @Vrushali @Sprint-19 @US-255921
  Scenario: To verify, User should be able to add new child record in child table that attached to the newly created record.
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | ProgramReviewStepPanelTemplates |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Setup tabs" sub tab
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name   | Description |
      | 4          | Test Review | Description |
    And I expand nested table containing column value "Test Review"
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepPanelTemplatesFlexToggleTableId---" by clicking "New" :
      | Form Name  | Form Weight (%) | Minimum Number of Reviews per Application | Required? |
      | Automation | 50              | 1                                         | Checked   |
    And I expand nested table containing column value "Test Review"
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepPanelTemplatesFlexToggleTableId---" by clicking "New" :
      | Form Name | Form Weight (%) | Minimum Number of Reviews per Application | Required? |
      | Testing   | 75              | 1                                         | Checked   |
    And I expand nested table containing column value "Test Review"
    When I click on advance filter "#advfProgramReviewStepPanelTemplates" of table id "---program:-:ProgramReviewStepPanelTemplatesFlexToggleTableId---"
    When I enter advance filter values inside id "advfProgramReviewStepPanelTemplates"
      | Form Weight (%) | equals to | 75 |
    And I pause execution for "5" seconds
    Then I see value "75.00%" for title "Form Weight (%)" against the value "Testing" inside table "---program:-:ProgramReviewStepPanelTemplatesFlexToggleTableId---"


  @206105 @206107 @DownloadasXLSshouldworkforemptytablecurrency,Number&Percentcolumnshouldbeavailableontable @US-196926 @Sprint-5
  Scenario Outline:Download as XLS should work for empty table currency,  Number &Percent  column should be available on the table
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Setup tabs" sub tab
    Then I softly see "Supporting Documents Checklist" page block displayed
    When I click on parallel lines menu bar with data target value "#ProgramChecklistsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Supporting Documents Checklist"
    Then I see "currencytest" in downloaded xls or csv file "govgrants"
    Then I see "Numbertest" in downloaded xls or csv file "govgrants"
    Then I see "percenttest" in downloaded xls or csv file "govgrants"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206106 @206110 @DownloadasPDFshouldworkforemptytablecurrency,Number&Percentcolumnshouldbeavailableontable @US-196926 @Sprint-5
  Scenario Outline: Download as PDF should work for empty table currency,  Number &Percent  column should be available on the table
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Setup tabs" sub tab
    Then I softly see "Supporting Documents Checklist" page block displayed
    When I click on parallel lines menu bar with data target value "#ProgramChecklistsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Supporting Documents Checklist"
    And I download the file
    Then I softly see "currencytest" on page "1" of "govgrants" pdf file
    Then I softly see "Numbertest" on page "1" of "govgrants" pdf file
    Then I softly see "percenttest" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | ADMIN |
      | PM    |

    @206112 @Toverifyfoexternaluser,DownloadasPDFshouldworkforemptytablecurrency,Number&Percentcolumnshouldbeavailableontable @Vrushali @Sprint-5 @US-196926
      Scenario: To verify for external user,Download as PDF should work for empty table currency,  Number &Percent  column should be available on the table
      Given I am on "SUBPORTAL" portal
      When I login to "Grants Portal" app as "SPI" user
      And I navigate to "Applications" tab
      And I click toggle button to select "Applications - All"
      When I perform quick search for "AP-A11-001"
      When I click on "View" icon for "AP-A11-001" inside table
      When I navigate to "Files" sub tab
      Then I softly see "Supporting Documents Checklist" page block displayed
      When I click on parallel lines menu bar with data target value "#ApplicationChecklistsFlexToggle"
      And I select "Download as PDF" from parallel lines dropdown of "Supporting Documents Checklist"
      And I download the file
      Then I softly see "currencytest" on page "1" of "govgrants" pdf file
      Then I softly see "Numbertest" on page "1" of "govgrants" pdf file
      Then I softly see "percenttest" on page "1" of "govgrants" pdf file

      @206113 @ToverifyfoExternaluser,DownloadasXLSshouldworkforemptytablecurrency,Number&Percentcolumnshouldbeavailableontable @Vrushali @Sprint-5 @US-196296
      Scenario: To verify for External user,Download as XLS should work for empty table currency,Number &Percent  column should be available on the table
        Given I am on "SUBPORTAL" portal
        When I login to "Grants Portal" app as "SPI" user
        And I navigate to "Applications" tab
        And I click toggle button to select "Applications - All"
        When I perform quick search for "AP-A11-001"
        When I click on "View" icon for "AP-A11-001" inside table
        When I navigate to "Files" sub tab
        Then I softly see "Supporting Documents Checklist" page block displayed
        When I click on parallel lines menu bar with data target value "#ApplicationChecklistsFlexToggle"
        And I select "Download as XLS" from parallel lines dropdown of "Supporting Documents Checklist"
        Then I see "currencytest" in downloaded xls or csv file "govgrants"
        Then I see "Numbertest" in downloaded xls or csv file "govgrants"
        Then I see "percenttest" in downloaded xls or csv file "govgrants"