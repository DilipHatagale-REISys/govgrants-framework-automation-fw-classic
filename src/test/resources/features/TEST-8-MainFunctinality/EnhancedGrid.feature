@EnhancedGrid-component @regression-QA @EnhancedGrid
Business Need: EnhancedGrid Component Scenarios
  Test all EnhancedGrid component based scenarios
  As a configuration manager i make different configurational changes in EnhancedGrid component and will validate them.

  @257630 @257343 @Toverify,WhenInternalUserclickon'New'actionbuttontocreateanewrecordinEnhancedGrid,anewrecordshouldshowupingridineditmode. @Vrushali @Sprint-19
  Scenario Outline: To verify ,  When Internal User click on 'New' action button to create a new record in Enhanced Grid, a new record should show up in the grid in edit mode.
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
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
    When I login to "As a Grantor" app as "<User>" user
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
    When I login to "As a Grantor" app as "<User>" user
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
    When I login to "As a Grantor" app as "<User>" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "ADMIN" user
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
    When I login to "As a Grantor" app as "<User>" user
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
    When I login to "As a Grantor" app as "<User>" user
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

  @257457 @257460 @257455 @257463 @257477 @dilip @Sprint-19 @US-255921
  @ToverifyUsershouldbeabletoDeletethenewlyaddedrecord @UsershouldbeseeconfirmationboxwhenclickonDeleteactiononthenewlyaddedrecord @UsershouldbeabletoEditdetailstothenewlydisplayedrecord
  @Usershouldbeabletoadddetailstothenewlyaddedrecordandclickonsaveactionthenrecordisgettingsaved @InpageblockdownloadPDFfornewlyaddedrecordinthetableshouldbedisplayed
  Scenario:To verify, User should be able to Delete the newly added  record
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:PeerReviewerEnhancedGridTableId---" by clicking "New" :
      | Reviewer Name | Responsibility   | Description | Due Date   | Allow Record Editing | Status | multiselecttest | testcurrency | testnumber |
      | Automation PM | Program Reviewer | Desc test1  | 05/25/2023 | Yes                  |        | 1               | 1            | 1          |
    And I pause execution for "3" seconds
    #257463
    Then I see newly added record with Description "Desc test1" in row
    #257455
    And I refresh the page
    Then I see "Edit" action button respective "Desc test1" Description and Enabled
    And I refresh the page
    And I click on "Delete" action button respective "Desc test1" Description
    #257460
    Then I see massage "Do you want to delete? Once it is deleted it cannot be restored." displayed in delete modal
    And I click on "Yes" button on confirmation table
    #257457
    Then I do not see "Desc test1" Description inside "Peer Reviewers" table
    #257477
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    Then I download the file
    Then I see "Review Step Desc" on page "1" of "govgrants" pdf file

  @257481 @ToverifyInpageblockdownloadCSVfornewlyaddedrecordinthetableshouldbedisplayed @dilip @Sprint-19 @US-255921
  Scenario: To verify, In page block download CSV for newly added record in the table  should be displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Setup tabs" sub tab
    #257481
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name         | Description      | Step Weight (%) | # of Panels | Agency | Announcement | Funding Opportunity Id | Count of reviewers | Justification | Recall Comment |
      | 4          | Pre-Screen Review | Review Step Desc |                 |             |        |              |                        |                    |               |                |
    And I pause execution for "3" seconds
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I download the file
    Then I see "Review Step Desc" in downloaded xls or csv file "govgrants"

  @257480 @ToVerifyInRecordLayoutDownloadPDFForNewlyAddedRecordInTheTableShouldBeDisplayed @dilip @Sprint-19 @US-255921
  Scenario: To verify, In Record layout download PDF for newly added record in the table  should be displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Setup tabs" sub tab
    #257480
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name         | Description      | Step Weight (%) | # of Panels | Agency | Announcement | Funding Opportunity Id | Count of reviewers | Justification | Recall Comment |
      | 1          | Pre-Screen Review | Review Step Desc |                 |             |        |              |                        |                    |               |                |
    And I pause execution for "3" seconds
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    Then I download the file
    Then I see "Review Step Desc" on page "1" of "govgrants" pdf file

  @257482 @ToVerifyInRecordLayoutScreenshotNewlyAddedRecordInTheTableShouldBeDisplayed @dilip @Sprint-19 @US-255921
  Scenario:To verify, In Record layout Screenshot newly added record in the table  should be displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Setup tabs" sub tab
    #257482
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name         | Description      | Step Weight (%) | # of Panels | Agency | Announcement | Funding Opportunity Id | Count of reviewers | Justification | Recall Comment |
      | 1          | Pre-Screen Review | Review Step Desc |                 |             |        |              |                        |                    |               |                |
    And I pause execution for "3" seconds
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    Then I download the file
    Then I see "Review Step Desc" on page "1" of "govgrants" pdf file

  @257495 @ToVerifyAdvancedFilterShouldBeWorkingOnNewlyAddedChildRecordInTheTableForInternalUser @dilip @Sprint-19 @US-255921
  Scenario:To verify,  Advanced filter should be working on newly added child record in the table for Internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Setup tabs" sub tab
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name         | Description      | Step Weight (%) | # of Panels | Agency | Announcement | Funding Opportunity Id | Count of reviewers | Justification | Recall Comment |
      | 4          | Pre-Screen Review | Review Step Desc |                 |             |        |              |                        |                    |               |                |
    And I pause execution for "3" seconds
    When I click on advance filter "#advfProgramReviewStepTemplates" of table id "---program:-:ProgramReviewStepTemplatesTableId---"
    When I enter advance filter values inside id "advfProgramReviewStepTemplates"
      | Description | contains | Review Step Desc |
    Then I softly see value "Review Step Desc" for title "Description" inside table "---program:-:ProgramReviewStepTemplatesTableId---"

  @257502 @ToVerifyAdvancedFilterShouldBeWorkingOnNewlyAddedRecordInTheTableForInternalUser @dilip @Sprint-19 @US-255921
  Scenario: Advanced filter should be working on newly added record in the table for internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Setup tabs" sub tab
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name         | Description      | Step Weight (%) | # of Panels | Agency | Announcement | Funding Opportunity Id | Count of reviewers | Justification | Recall Comment |
      | 1          | Pre-Screen Review | Review Step Desc |                 |             |        |              |                        |                    |               |                |
    And I pause execution for "3" seconds
    When I click on advance filter "#advfProgramReviewStepTemplates" of table id "---program:-:ProgramReviewStepTemplatesTableId---"
    When I enter advance filter values inside id "advfProgramReviewStepTemplates"
      | Description | contains | Review Step Desc |
    Then I softly see value "Review Step Desc" for title "Description" inside table "---program:-:ProgramReviewStepTemplatesTableId---"

  @257516 @ToVerifyInternalUserShouldNotSeeAnyChildTableAttachedToTheNewlyCreatedRecord @dilip @Sprint-19 @US-255921
  Scenario: To verify, Internal User should  not see any child table attached to the newly created record
    When I login to "As a Grantor" app as "PM" user
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

  @257526 @ToVerifyInternalUserShouldBeAbleToAddNewChildRecordInChildTableThatAttachedToTheNewlyCreatedRecord @dilip @Sprint-19 @US-255921
  Scenario: To verify, Internal User should be able to add new child record in child table that attached to the newly created record
    When I login to "As a Grantor" app as "PM" user
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

  @257518 @ToVerifyInternalUserShouldBeAbleToAddDetailsToTheNewlyDisplayedRecord @dilip @Sprint-19 @US-255921
  Scenario: To verify, Internal User should be able to add details to the newly displayed record
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Setup tabs" sub tab
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name         | Description      | Step Weight (%) | # of Panels | Agency | Announcement | Funding Opportunity Id | Count of reviewers | Justification | Recall Comment |
      | 4          | Pre-Screen Review | Review Step Desc |                 |             |        |              |                        |                    |               |                |
    And I pause execution for "3" seconds
    Then I softly see value "Review Step Desc" for title "Description" inside table "---program:-:ProgramReviewStepTemplatesTableId---"

  @257535 @ToVerifyInPageBlockDownloadCSVForNewlyAddedRecordInTheTableShouldBeDisplayedForInternalUser @dilip @Sprint-19 @US-255921
  Scenario: To verify, In page block download CSV for newly added record in the table  should be displayed  for internal user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Setup tabs" sub tab
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name         | Description      |
      | 4          | Pre-Screen Review | Review Step Desc |
    And I pause execution for "3" seconds
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I download the file
    Then I see "Review Step Desc" in downloaded xls or csv file "govgrants"

  @257539 @ToVerifyInPageBlockDownloadPDFForNewlyAddedRecordInTheTableShouldBeDisplayedForInternalUser @dilip @Sprint-19 @US-255921
  Scenario: To verify, In page block download PDF for newly added record in the table  should be displayed  for Internal User
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Setup tabs" sub tab
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name         | Description |
      | 4          | Pre-Screen Review | Test file   |
    And I pause execution for "3" seconds
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    Then I download the file
    Then I see "Test file" on page "2" of "govgrants" pdf file

  @257523 @UsershouldbeabletoEditdetailstothenewlydisplayedrecord @vrishali @Sprint-19 @US-255921
  Scenario: User should be able to Edit details to the newly displayed record
#    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:PeerReviewerEnhancedGridTableId---" by clicking "New" :
      | Reviewer Name | Responsibility   | Description | Due Date   | Allow Record Editing | Status | multiselecttest | testcurrency | testnumber |
      | Automation PM | Program Reviewer | Test Data   | 11/25/2023 | Yes                  |        | 1               | 1            | 1          |
    And I pause execution for "3" seconds
    When I click on "Edit" icon for "1" inside flex table with id "---program:-:PeerReviewerEnhancedGridTableId---"
    And I enter value "Test Data" into field "Description__c"
    Then I softly see value "Test Data" for title "Description" inside table "---program:-:PeerReviewerEnhancedGridTableId---"

  @257520 @257526 @US-255921 @vrishali @Sprint-19 @US-255921
  Scenario: Internal User should be able to add details to the newly displayed record and click on save action then record is getting saved.
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Setup tabs" sub tab
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name   | Description            |
      | 4          | Test Review | Automation Description |
    Then I softly see value "Test Review" for title "Step Order" inside table "---program:-:ProgramReviewStepTemplatesTableId---"
    Then I softly see value "Automation Description" for title "Description" inside table "---program:-:ProgramReviewStepTemplatesTableId---"
  #257526
    And I expand nested table containing column value "Test Review"
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepPanelTemplatesFlexToggleTableId---" by clicking "New" :
      | Form Name | Form Weight (%) | Minimum Number of Reviews per Application | Required? |
      | Testing   | 50              | 1                                         | Checked   |
    And I expand nested table containing column value "Test Review"
    Then I softly see value "Testing" for title "Form Name" inside table "---program:-:ProgramReviewStepPanelTemplatesFlexToggleTableId---"

  @257541 @ToVerifyInRecordLayoutDownloadPDFForNewlyAddedRecordInTheTableShouldBeDisplayedForInternalUser @dilip @Sprint-19 @US-255921
  Scenario: In Record layout download PDF for newly added record in the table  should be displayed  for Internal User
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Setup tabs" sub tab
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name   | Description            |
      | 4          | Test Review | Automation Description |
    And I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    Then I download the file
    Then I see "Test Review" on page "2" of "govgrants" pdf file

  @257553  @257551 @InternalUserShouldBeAbleToDeleteTheNewlyAddedRecord @@dilip @Sprint-19 @US-255921
  @InternalUserShouldBeSeeConfirmationBoxWhenClickOnDeleteActionOnTheNewlyAddedRecord
  Scenario: To verify, Internal User should be see confirmation box when click on Delete action on  the newly added  record
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:PeerReviewerEnhancedGridTableId---" by clicking "New" :
      | Reviewer Name | Responsibility   | Description | Due Date   | Allow Record Editing | Status | multiselecttest | testcurrency | testnumber |
      | Automation PM | Program Reviewer | Desc test1  | 05/25/2023 | Yes                  |        | 1               | 1            | 1          |
    And I pause execution for "3" seconds
    And I refresh the page
    And I click on "Delete" action button respective "Desc test1" Description
    #257553
    Then I see massage "Do you want to delete? Once it is deleted it cannot be restored." displayed in delete modal
    And I click on "Yes" button on confirmation table
    #257551
    Then I do not see "Desc test1" Description inside "Peer Reviewers" table

  @35432    @disablingAdvanceFilterForEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of advance filter from planning-Program enhance flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Filter | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Filter | false         | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see Advance Filter is disabled from table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" with data target value "#advfEnhanceAppGrantorBudgetPeriods"

  @35433    @disablingMenuIconForEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of menu icon from Planning- Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Grid             | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Disable Menu | true          | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see Menu icon is disabled from planning flex table "Budget Periods"

  @45281    @hideCellJsonfieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Hiding specific cell value of child flex table at enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                                | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideCellJsonForChildFlexTableAtEnhancedGrid | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-11516                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    When I perform quick search for "BP01" in "---program:-:EnhanceAppBudCateGrantorTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "*****" shown inside enhanced grid table for specified record "BP01"

  @45284    @readOnlyCellJSONFieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Changing specific cell value to read only for child flex table of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                    | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Read Only Cell JSON | govgrants_config:ReadOnlyCellJsonForChildFlexTableAtEnhancedGrid | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11520                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP01" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    And I pause execution for "5" seconds
    When I click on "Edit" icon for "Construction" inside table
    Then I see input box is not displayed for ID inside child Flex table

  @45285    @hideColumnJSONfieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Hiding specific column value for child flex table of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                  | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:HideColumnJsonForChildFlexTableAtEnhancedGrid | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11458                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP01" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "Focus Area" not displayed in enhanced grid table column title

  @45287    @readOnlyColumnJSONFieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Changing specific cell value to read only for child flex table of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                                      | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Read Only Column JSON | govgrants_config:ReadOnlyColumnJsonForChildFlexTableAtEnhancedGrid | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11520                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP01" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    When I click on "Edit" icon for "Construction" inside table
    Then I see input box is not displayed for ID inside child Flex table

  @45290    @iconCssFieldForChildFlexTableAtEnhancedGridActionItem-gPlanning
  Scenario: Setup icon css of child flex table for enhanced grid table edit action from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                                  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionDefaultIconCss | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionNewIconCss | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP01" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    And I pause execution for "5" seconds
    Then I see external link icon as "Personnel" for "Edit" inside enhanced grid table action

  @35436    @changeOfParentFlexTableTitleForEnhancedGrid-gPlanning
  Scenario: validate after changing name of enhanced flex grid title inside planning-program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Label     | Budget Periods    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue            | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Label     | Automation Enhanced Grid | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "Automation Enhanced Grid" shown as inside "---program:-:appBudgetPeriodTableId---"

  @35438    @disablingPDFExportFileForEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of PDF download from menu option in enhanced flex grid planning- Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (PDF) | false         | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppGrantorBudgetPeriodsFlexToggle"
    Then I see "Download as PDF" options inside "Budget Periods" disabled

  @62810    @disablingXLSExportFileForEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of Excel download from menu option in enhanced flex grid planning- Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | false         | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppGrantorBudgetPeriodsFlexToggle"
    Then I see "Download as XLS" options inside "Budget Periods" disabled

  @35439    @disblingQuickSearchForEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of quick search in enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | false         | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see quick search option disabled from enhanced grid

  @35437    @disablingEnableTotalRecordCountFieldForParentFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: validate disbaling of total row count in enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Total Records Count | false         | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    And I pause execution for "5" seconds
    Then I do not see "Total Records" count in enhanced grid "---program:-:EnhanceAppBudCateGrantorTableId---"

  @35434    @enableAutoIndexForEnhancedGrid-gPlanning
  Scenario: validate enable auto index for details inside enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Auto Index | true          | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "#" in enhanced flex grid header "---program:-:appBudgetPeriodTableId---"

  @35442    @enableRecordSelectionForFlexForEnhancedGrid-gPlanning
  Scenario: validate enabling of record selection check boxes in enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Record Selection | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Record Selection | true          | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see select check box enabled in enhanced flex grid

  @35441    @editActionOpensInSameWindowForEnhancedGrid-gPlanning @smoke
  Scenario Outline: validate enhanced flex grid action field Edit opens in same window planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
      | Flex Table Action     | Editable Rows            | SingleRow         | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior          | EditRecord        | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
      | Flex Table Action     | Action URL Long          |                   | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ?          |                   | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue        | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | OpenURL              | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
      | Flex Table Action     | Action URL Long | <actionUrlLongValue> | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | SameWindow           | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
  #  When I perform quick search for "BP01" in "---program:-:flexGridEnhancedTableId---" panel
   # When I click on "Edit" icon for "BP01" inside table
    And I expand nested table containing column value "BP01"
    And I click on "Edit" icon for "Travel" inside flex table with id "---program:-:EnhanceAppBudCateGrantorTableId---"
    Then I see no new tab is opened for action item in enhanced flex grid

    Examples:
      | actionUrlLongValue          |
      | /apex/GrantEdit?id={!rowId} |

  @35440    @editActionOpensInOverLayWindowForEnhancedGrid-gPlanning
  Scenario Outline: validate flex table action field- Edit opens in overlay window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
      | Flex Table Action     | Editable Rows            | SingleRow         | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior          | EditRecord        | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
      | Flex Table Action     | Action URL Long          |                   | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ?          |                   | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue        | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | OpenURL              | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
      | Flex Table Action     | Action URL Long | <actionUrlLongValue> | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | Modal                | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    And I click on "Edit" icon for "Travel" inside flex table with id "---program:-:EnhanceAppBudCateGrantorTableId---"
    Then I see "EnhanceAppBudCateGrantorFlexTable" opens in overLay window

    Examples:
      | actionUrlLongValue          |
      | /apex/GrantEdit?id={!rowId} |

  @35435    @addingfieldNamesOfDifferentDataTypesForEnhancedGrid-gPlanning @smoke
  Scenario Outline: validate adding field names for different data types in enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #Then I see "<newFieldsApi>" in enhanced flex grid header "---program:-:appBudgetPeriodTableId---"
    Then I see columnName "Budget Period #" is Displayed on "Budget Periods" table
    Then I see columnName "Start Date" is Displayed on "Budget Periods" table
    Then I see columnName "End Date" is Displayed on "Budget Periods" table
    Then I see columnName "Fee Fund Requested" is Displayed on "Budget Periods" table
    Then I see columnName "Budget Period" is Displayed on "Budget Periods" table
    Then I see columnName "Sequence Number" is Displayed on "Budget Periods" table
    Then I see columnName "Modified" is Displayed on "Budget Periods" table
    Then I see columnName "Application" is Displayed on "Budget Periods" table

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |
#      | fieldDisplayNames | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
#      | Current Budget Period End Date | BudgetPeriodEndDate__c,Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
#      | External Organization          | ExternalOrganization__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
#      | Internal Organization          | InternalOrganization__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
#      | Project Period                 | CurrentProjectPeriod__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
#      | Number of Awards               | NumberofAwards__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
#      | Fee Fund Requested   | TotalAwardObligatedAmount__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
#      | Status                         | Status__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
#      | CFDA Number                    | CFDANumber__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
#      | isClosedOut                    | isClosedOut__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
#      | Program Contact Address        | AddressProgramContact__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @41297    @headerHelpTextFieldForParentFlexTableAtEnhancedGrid-gPlanning @skipOnJenkins
  Scenario Outline: Changing content of help text field at parent flex table of enhanced grid from config and validating it at enhanced grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Grid             | Header Help Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Header Help Text | <new_helpText> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I hovering mouse on help text icon inside "Budget Periods" for enhanced grid
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText                                                                                                                                                              |
      | Help Text for Automation | The following table is a comprehensive list of all active grants.Ã‚ to view or edit a specific grant select the grant id hyperlink for the grant you would like to access |

  @41299    @enablePageSizeFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enabling of page size dropdown at bottom inside enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Page Size | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Page Size | true          | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    And I pause execution for "5" seconds
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:appBudgetPeriodTableId---"

  @41304    @defaultPageSizeFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate change of default page size inside dropdown at bottom enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid:General     | Default Page Size | 5                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Default Page Size | 10            | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    Then I see "10" records inside enhanced grid id "---program:-:appBudgetPeriodTableId---"

  @41308    @enableHelpFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enabling of help inside menu option in enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Help | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Help | true          | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppGrantorBudgetPeriodsFlexToggle"
    Then I see "Help" options inside "Budget Periods" enabled

  @41311    @helpTextFieldAtEnhancedGridColumnHeader-gPlanning @skipOnJenkins
  Scenario Outline: Changing content of help text field at enhanced grid column header from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Help Text | <new_helpText> | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1486                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I hovering mouse on help text icon inside "Internal Organization" for enhanced grid table column
    And I pause execution for "3" seconds
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText         |
      | Automation Help Text |

  @41316    @fieldLabelOverrideFieldAtEnhancedGridColumnHeader-gPlanning
  Scenario: Changing specific column name of enhanced grid column header from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Field Label Override |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue   | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field Label Override | Test Automation | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-11516                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # And I expand nested table containing column value "BP01"
    Then I see "Test Automation" shown inside flex table with id "---program:-:appBudgetPeriodTableId---"

  @41319    @hideCellJsonfieldAtEnhancedGrid-gPlanning @smoke
  Scenario: Hiding specific cell value of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideCellJsonForEnhancedGrid | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-11516                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    Then I see "*****" shown inside enhanced grid table for specified record "BP01"

  @41370    @readOnlyCellJSONFieldAtEnhancedGrid-gPlanning @smoke
  Scenario: Changing specific cell value to read only of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                    | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Read Only Cell JSON | govgrants_config:ReadOnlyCellJsonForEnhancedGrid | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11520                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    And I click on "Edit" icon for "Travel" inside flex table with id "---program:-:EnhanceAppBudCateGrantorTableId---"
    Then I see input box is not displayed for budget period end date

  @41375    @hideColumnJSONfieldAtEnhancedGrid-gPlanning @smoke
  Scenario: Hiding specific column value of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:HideColumnJsonForEnhancedGrid | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "Fee Fund Requested" not displayed in enhanced grid table column title

  @41376    @readOnlyColumnJSONFieldAtEnhancedGrid-gPlanning @smoke
  Scenario: Changing specific cell value to read only of enhanced grid from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                      | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Read Only Column JSON | govgrants_config:ReadOnlyColumnJsonForEnhancedGrid | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-11521                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    Then I see input box is not displayed for budget period end date

  @41465    @iconCssFieldAtEnhancedGridActionItem-gPlanning
  Scenario: Setup icon for enhanced grid table edit action from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                                  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionDefaultIconCss | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Icon CSS  | govgrants_config:FlexTableEditActionNewIconCss | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    And I pause execution for "5" seconds
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    Then I see external link icon as "BP01" for "Edit" inside enhanced grid table action

  @41466    @ConfirmationMessageFieldAtEnhancedGridActionItem-gPlanning
  Scenario: Setup confirmation message for enhanced grid table edit action from configuration and validating it inside enhanced grid of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
      | Flex Table Action     | Confirmation Message  |                   | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Confirmation Message  | Automation    | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
      | Flex Table Action     | Show Confirmation Box | true          | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    And I pause execution for "5" seconds
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    Then I see confirmation box with body "Automation" is displayed

  @41468    @locationFieldAtEnhancedGridActionItemFromRowToTop-gPlanning
  Scenario: Changing location of Monitoring Schedule For All Active Grants enhanced grid table view action from row to top from config anf validating it inside enhanced of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row               | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type |                   | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top           | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type | Button        | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "View" button inside "Budget Periods" enhanced grid

  @41385    @formulaFieldAtEnhancedGrid-gPlanning
  Scenario: Validating subtotal of cell value of total obligated amount by entering formula at config validating it inside enhanced of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see cell subtotal as expected as given formula at "FeeFundRequested__c" field

  @42027    @headerHelpTextFieldForChildFlexTableAtEnhancedGrid-gPlanning @skipOnJenkins
  Scenario Outline: Changing content of help text field at child flex table of enhanced grid from config and validating it at enhanced grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Grid             | Header Help Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Header Help Text | <new_helpText> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "BP01"
    When I hovering mouse on help text icon inside "Active Awards" for enhanced grid
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             | old_helpText  |
      | Help Text for Automation | Active Awards |

  @42030    @enableHelpFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enabling of help inside menu option inside child table of enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Help | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Help | true          | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
   # When I expand nested table containing column value "BP01"
    When I click on parallel lines menu bar with data target value "#EnhanceAppGrantorBudgetPeriodsFlexToggle"
    Then I see "Help" options inside "Budget Periods" enabled

  @42024    @helpTextFieldAtChildTableEnhancedGridColumnHeader-gPlanning @skipOnJenkins
  Scenario Outline: Changing content of help text field at enhanced grid column header from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Help Text | <new_helpText> | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1492                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "BP01"
    When I hovering mouse on help text icon inside "ID" for enhanced grid table column
    Then I see "<new_helpText>" shown as help text
    Examples:
      | new_helpText             |
      | Help Text for Automation |

  @42021    @fieldLabelOverrideFieldAtEnhancedGridChildColumnHeader-gPlanning
  Scenario: Changing specific column name of enhanced grid child column header from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Field Label Override |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue   | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field Label Override | Test Automation | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11519                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP01" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "Test Automation" shown inside flex table with id "---program:-:EnhanceAppBudCateGrantorTableId---"

  @44533    @orderBySortByFieldAtParentDataTableEnhancedGridForAscendingOrder-gPlanning @smoke
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | EnhanceAppGrantorBudgetPeriods |                           |                            |
     # | Page Block:Page Block Detail | Is Active      | true              | Grantee State Program          | GNT__PageBlockTitle__c    | Enhanced data table        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue       | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | FeeFundRequested__c | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC                 | EnhanceAppGrantorBudgetPeriods |                           |                            |
     # | Page Block:Page Block Detail | Is Active      | false           | Grantee State Program          | GNT__PageBlockTitle__c    | Enhanced data table        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see column "Fee Fund Requested" value is in "Ascending" order

  @44534    @orderBySortByFieldAtParentDataTableEnhancedGridForDescendingOrder-gPlanning
  Scenario: Changing specific column value in descending order with order by and sort by field from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | EnhanceAppGrantorBudgetPeriods |                           |                            |
    #  | Page Block:Page Block Detail | Is Active      | true              | Grantee State Program          | GNT__PageBlockTitle__c    | Enhanced data table        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue       | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | FeeFundRequested__c | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC                | EnhanceAppGrantorBudgetPeriods |                           |                            |
    #  | Page Block:Page Block Detail | Is Active      | false           | Grantee State Program          | GNT__PageBlockTitle__c    | Enhanced data table        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see column "Fee Fund Requested" value is in "Descending" order

  @44535    @orderBySortByFieldAtChildDataTableEnhancedGridForAscendingOrder-gPlanning @smoke
  Scenario: Changing specific column value in ascending order with order by and sort by field from config at child table and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | EnhanceAppBudCateGrantorFlexTable |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | Name          | EnhanceAppBudCateGrantorFlexTable |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC           | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "GT-VT-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see column "Category Name" value is in "Ascending" order

  @44536    @orderBySortByFieldAtChildDataTableEnhancedGridForDescendingOrder-gPlanning
  Scenario: Changing specific column value in Descending order with order by and sort by field from config at child table and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | EnhanceAppGrantorBudgetPeriods |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | Name          | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC          | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   #When I perform quick search for "GT-VT-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see column "Category Name" value is in "Descending" order

  @44628    @filterClauseFieldOfParentFlexTableAtEnhancedGrid-gPlanning @smoke @Doubted
  Scenario Outline: validate removing draft status category from flex table of planning-program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table List       | Filter Clause | <oldSoqlFilter>   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue   | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Filter Clause | <newSoqlFilter> | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "Draft" value in flex table id "---program:-:appBudgetPeriodTableId---"

    Examples:
      | newSoqlFilter                                   | oldSoqlFilter                                    |
      | RecordType.Name='Grantor' and status__c='Draft' | RecordType.Name='Grantor' and status__c='Active' |

  @44728    @sequenceFieldAtParentflexTableActionForEnhancedGrid-gPlanning @smoke
  Scenario: Changing sequence of edit row level action item at enhanced grid parent table from config and validating it inside enhanced grid table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table Action     | Sequence  | 1                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Sequence  | 3             | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "Edit" icon for "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" is at position "1" inside flex table

  @44731    @buttonHelpTextFieldAtParentFlexTableActionForEnhancedGrid-gPlanning @Doubted
  Scenario: Changing content of button help text field at enhanced grid parent table action from config and validating it inside enhanced grid table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Button Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text | Test Automation | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    Then I see "Test Automation" as title for "Demo_Title" inside flex table action

  @44993    @disableFilterForChildFlexTableAtEnhancedGrid-gPlanning
  Scenario: Disabling the Advance Filter at child flex table of enhanced grid from config and validating it at enhanced grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Filter | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Filter | false         | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    #When I expand nested table containing column value "BP01"
    Then I see Advance Filter is disabled from table "---program:-:appBudgetPeriodTableId---" with data target value "#advfEnhanceAppGrantorBudgetPeriods"

  @44994    @disableMenuFieldForChildFlexTableAtEnhancedGrid-gPlanning @smoke
  Scenario: Disabling the Menu Field at child flex table of enhanced grid from config and validating it at enhanced grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Grid             | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Disable Menu | true          | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "BP01"
    Then Then I see Menu icon is disabled from planning child flex table "Budget Categories" under Monitoring Schedule For All Active Grants table

  @44995    @disablingPDFExportFileForChildFlextTableEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of PDF download from menu option in enhanced flex grid planning- Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (PDF) | false         | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "BP01"
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCateGrantorFlexTableFlexToggle"
    Then I see "Download as PDF" options inside "Budget Categories" disabled

  @62814    @disablingXLSExportFileForChildFlextTableEnhancedGrid-gPlanning @smoke
  Scenario: validate disabling of XLS download from menu option in enhanced flex grid planning- Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | false         | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "BP01"
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCateGrantorFlexTableFlexToggle"
    Then I see "Download as XLS" options inside "Budget Categories" disabled

  @44996    @disablingQuickSearchForChildFlextTableEnhancedGrid-gPlanning
  Scenario: validate disabling of Quick Search field at Child Flex Table for Enhanced Grid - Planning phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Quick Search | false         | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see quick search option disabled from enhanced grid for child flex table "---program:-:EnhanceAppBudCateGrantorTableId---"

  @44997    @enableTotalRecordCountForChildFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario: validate total row count in child flex table for enhanced grid.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "Total Records" for Child Flex table "---program:-:EnhanceAppBudCateGrantorTableId---" count in enhanced grid

  @44998    @enableAutoIndexForChildFlexTableOnEnhancedGrid-gPlanning
  Scenario: validate auto index for details inside child flex table for enhanced grid.
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "#" in enhanced flex grid header "---program:-:EnhanceAppBudCateGrantorTableId---"

  @45001    @enableRecordSelectionForChildFlexForEnhancedGrid-gPlanning
  Scenario: validate enabling of record selection check boxes in enhanced flex grid planning-Program enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Record Selection | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Record Selection | true          | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see select check box enabled for child flex table in enhanced flex grid

  @45096    @OpenNewTabAtParentFlexTableForViewAction-gPlanning
  Scenario: validate open new tab for view at parent flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow        | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewTab        | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "View" icon for "BP01" inside table
    Then I see new tab is opened

  @45097    @viewActionOpenInNewWindowAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enhanced grid view action open in new window for parent flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow        | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewWindow     | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "View" icon for "BP01" inside table
    Then I see new tab is opened

  @45098    @viewActionOpenInNewTabAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enhanced grid view action open in new tab for child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow        | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewTab        | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    And I pause execution for "2" seconds
    When I click on "View" icon for "Equipment" inside table
    Then I see new tab is opened

  @45099    @viewActionOpenInNewWindowAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: validate enhanced grid view action open in new window for child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow        | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewWindow     | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
  #  #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    And I pause execution for "2" seconds
    When I click on "View" icon for "Equipment" inside table
    Then I see new tab is opened

  @45275    @viewActionOpenInSameWindowAtChildFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario: validate enhanced grid view action open in same window for child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow        | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow    | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    And I pause execution for "2" seconds
    When I click on "View" icon for "Equipment" inside table
    Then I see no new tab is opened

  @45276    @addingfieldNamesOfDifferentDataTypesForChildFlexTableOfEnhancedGrid-gPlanning @smoke
  Scenario: validate adding field names for different data types for child flex table of enhanced flex grid planning-Program enhanced flex grid
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
   # Then I see "<fieldDisplayNames>" in enhanced flex grid header "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I see columnName "Category Name" is Displayed on "Budget Categories" table
    Then I see columnName "Budget" is Displayed on "Budget Categories" table
    Then I see columnName "Cash Match" is Displayed on "Budget Categories" table
    Then I see columnName "Non-Cash Match" is Displayed on "Budget Categories" table


  @45293    @ConfirmationMessageFieldForChildFlexTableAtEnhancedGridActionItem-gPlanning
  Scenario: Setup confirmation message for child flex table action item at enhanced grid table view action from configuration and validating it inside enhanced grid of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Show Confirmation Box | false             | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
      | Flex Table Action     | Confirmation Message  |                   | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue   | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Confirmation Message  | Test Automation | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
      | Flex Table Action     | Show Confirmation Box | true            | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    And I pause execution for "2" seconds
    When I click on "View" icon for "Fringe Benefits" inside table with table id "---program:-:EnhanceAppBudCateGrantorTableId---" without processing
    Then I see confirmation box with body "Test Automation" is displayed

  @45297    @locationFieldForChildFlexTableAtEnhancedGridActionItem-gPlanning
  Scenario: Verify Location field at child flex table action
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row               | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type |                   | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top           | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
      | Flex Table Action     | Header Action Display Type | Button        | EnhanceAppBudCateGrantorFlexTable | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    ##When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "View" button inside "Budget Categories" enhanced grid

  @45300    @locationFieldAtEnhancedGridActionItemFromTopToRow-gPlanning @smoke
  Scenario: row from config anf validating it inside enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top               | EnhanceAppGrantorBudgetPeriods | Name                      | Test New                   |
      | Flex Table Action     | Header Action Display Type | Button            | EnhanceAppGrantorBudgetPeriods | Name                      | Test New                   |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location  | Row           | EnhanceAppGrantorBudgetPeriods | Name                      | Test New                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    ##When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see "Test New" icon for "Budget Periods" is displayed inside flex table

  @45304    @locationFieldForChildFlexTableAtEnhancedGridActionItemFromTopToRow-gPlanning @smoke
  Scenario:  Verify Location field = row at child flex table action
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Top               | EnhanceAppBudCateGrantorFlexTable | Name                      | Test New                   |
      | Flex Table Action     | Header Action Display Type | Button            | EnhanceAppBudCateGrantorFlexTable | Name                      | Test New                   |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location  | Row           | EnhanceAppBudCateGrantorFlexTable | Name                      | Test New                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "Test New" icon for "Personnel" is displayed inside flex table

  @45308    @sequenceFieldAtChildflexTableActionForEnhancedGrid-gPlanning @smoke
  Scenario: Verify  Sequence field at child flex table action
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table Action     | Sequence  | 1                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Sequence  | 3             | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "Edit" icon for "---program:-:EnhanceAppBudCateGrantorTableId---" is at position "3" inside flex table

  @45309    @buttonHelpTextFieldAtChildFlexTableActionForEnhancedGrid-gPlanning
  Scenario: Verify  Button Help Text field at child flex table action
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Button Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue   | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text | Test Automation | EnhanceAppBudCateGrantorFlexTable | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
  #  #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "Test Automation" as title for "Personnel" inside flex table action

  @45310    @changeOfChildFlexTableTitleForEnhancedGrid-gPlanning
  Scenario: Verify Label field at child flex table config
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Label     | Budget Categories | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName | fieldNewValue            | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Label     | Automation Enhanced Grid | EnhanceAppBudCateGrantorFlexTable | Name                      | FLV-3202                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    And I pause execution for "5" seconds
    Then I see "Automation Enhanced Grid" shown as inside "---program:-:EnhanceAppBudCateGrantorTableId---"

  @49243    @enableGroupingFieldAtParentFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario: Verify Enable Grouping field at parent flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-11516                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "Budget Period" inside rows of enhanced grid id "---program:-:appBudgetPeriodTableId---"

  @49244    @hideGroupingColumnFieldAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario:  Verify Hide Grouping column field at parent flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Grouping Column | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping  | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Grouping Column | true          | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-11516                  |
      | Flex Table List       | Enable Row Grouping  | true          | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-11516                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "Budget Period" not displayed in enhanced grid table column title

  @49250    @enableSubTotalFieldAtParentFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario: Verify Enable Sub Total at parent flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total    | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
      | Flex Table List       | Enable Sub Total    | true          | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see cell subtotal for "Fee Fund Requested" at enhanced grid

  @49251    @isMasterViewFieldUncheckedForAllFlexListViewAtParentFlexTable-gPlanning @Doubted
  Scenario:  To Verify Warning message if no list view is marked as Master View (Parent).
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
      | Flex Grid:Flex Table List | Is Master View | false         | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-2545                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "Atleast one list view should be marked as a Master List View" error is displayed at enhanced grid

  @49264    @isMasterViewFieldcheckedForAtleastOneFlexListViewAtParentFlexTable-gPlanning @Doubted
  Scenario:To verify warning message if one list view is marked as a Master List View (Parent)
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
      | Flex Grid:Flex Table List | Is Master View | false         | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-2545                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "Atleast one list view should be marked as a Master List View" error is not displayed at enhanced grid

  @49270    @styleAttributeFieldAtParentFlexTableForEnhancedGrid-gPlanning @wip
  Scenario Outline: validate color change of total adjusted amount cloumn content after making changes at style attribute from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Style Attribute     |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue         | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Style Attribute     | <styleAttributeValue> | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1500                   |
      | Flex Grid:General     | Display Field Names | <newFieldsApi>        | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "($1.00)" inside enhanced grid table id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" in "Red" colour

    Examples:
      | styleAttributeValue | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | color: 'red'        | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @49271    @styleClassFieldAtParentFlexTableForEnhancedGrid-gPlanning @doubted
  Scenario Outline: validate color change of number of awards cells content after making changes at style class from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Flex Table List       | StyleClass |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue     | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | StyleClass | <styleClassValue> | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1502                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "Road Construction Annoumsment" inside enhanced grid table id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" in "Red" colour

    Examples:
      | styleClassValue                                             |
      | {negativeValue:row[column]='Road Construction Annoumsment'} |

  @49352    @enableGroupingFieldAtChildFlexTableForEnhancedGrid-gPlanning @smoke
  Scenario:  Verifying Enable Row Grouping (Child Flex Table )
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11520                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    And I pause execution for "5" seconds
    Then I see "Non-Cash Match :" inside rows of enhanced grid id "---program:-:EnhanceAppBudCateGrantorTableId---"

  @49353    @hideGroupingColumnFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: Verifying Hide Grouping Column - column will get hide from UI  (Child Flex Table )
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Grouping Column | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping  | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Grouping Column | true          | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11520                  |
      | Flex Table List       | Enable Row Grouping  | true          | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11520                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "Non-Cash Match" not displayed in enhanced grid table column title

  @49358    @styleClassFieldAtChildFlexTableForEnhancedGrid-gPlanning @doubted
  Scenario Outline: validate color change of number of awards cells content after making changes at style class at chile flex table from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Flex Table List       | StyleClass |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue     | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | StyleClass | <styleClassValue> | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1499                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-12132-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "GT-12132-001"
    Then I see "Activated" inside enhanced grid table id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" in "Red" colour

    Examples:
      | styleClassValue                         |
      | {negativeValue:row[column]='Activated'} |

  @49359    @styleAttributeFieldAtChildFlexTableForEnhancedGrid-gPlanning @doubted
  Scenario Outline: validate color change of total adjusted amount cloumn content after making changes at style attribute from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Flex Table List       | Style Attribute |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue         | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Style Attribute | <styleAttributeValue> | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1494                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-12132-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "GT-12132-001"
    Then I see "($1.00)" inside enhanced grid table id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" in "Red" colour

    Examples:
      | styleAttributeValue |
      | color: 'red'        |

  @49240    @isMasterViewFieldUncheckedForAllFlexListViewAtChildFlexTable-gPlanning @doubted
  Scenario: validate error message at enhanced grid after Unchecking check box of Is Master View Field for both list view for child flex table at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-2541                   |
      | Flex Grid:Flex Table List | Is Master View | false         | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-2544                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-12132-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "GT-12132-001"
    Then I see "Atleast one list view should be marked as a Master List View" error is displayed at enhanced grid

  @49241    @isMasterViewFieldcheckedForAtleastOneFlexListViewAtChildFlexTable-gPlanning @doubted
  Scenario: validate error message at enhanced grid after Unchecking check box of Is Master View Field for both list view at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF    | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | false         | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-2541                   |
      | Flex Grid:Flex Table List | Is Master View | false         | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-2544                   |
      | Flex Grid:Flex Table List | Show in PDF    | true          | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-2541                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-12132-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "GT-12132-001"
    Then I see "Atleast one list view should be marked as a Master List View" error is displayed at enhanced grid

  @49249    @enableOverallTotalFieldAtParentFlexTableForEnhancedGrid-gPlanning @doubted
  Scenario Outline:  Verify Enable Over All Total at parent flex table.
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue               | filterId         |
      | Flex Table List           | Enable Over All Total | false                           | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Is Master View        | true                            | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Filter Clause         | <defaultFilterClauseForFLV2539> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName             | fieldNewValue               | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Enable Over All Total | true                        | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1497                   |
      | Flex Grid:Flex Table List | Is Master View        | true                        | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
      | Flex Grid:Flex Table List | Filter Clause         | <newFilterClauseForFLV2539> | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see over all total for "NumberofAwards__c" field at enhanced grid

    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @49354     @enableOverallTotalFieldAtChildFlexTableForEnhancedGrid-gPlanning
  Scenario: Verifying Enable Over All Total (Child Flex Table )
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping   | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Over All Total | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping   | true          | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11521                  |
      | Flex Table List       | Enable Over All Total | true          | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11521                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "GT-VT-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    And I pause execution for "2" seconds
    Then I see field "EnhanceAppGrantorBudgetPeriodsresizable" inside page block

  @49361      @verifyEditSelectedAtParentFlexTableForEnhancedGrid-gPlanning @doubted
  Scenario Outline: validate Edit selected functionality for parent flex table at enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName               | fieldOrignalValue               | filterId         |
      | Flex Grid:Flex Table List | Is Master View          | true                            | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Filter Clause           | <defaultFilterClauseForFLV2539> | ApiGeneratedId:1 |
      | Flex Table                | Enable Record Selection | false                           | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName               | fieldNewValue               | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View          | true                        | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
      | Flex Grid:Flex Table List | Filter Clause           | <newFilterClauseForFLV2539> | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
      | Flex Table:General        | Enable Record Selection | true                        | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I check "Road Construction Annoumsment" boxes in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I click on top right button "Edit Selected" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I enter value "Test Automation" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I see edited value inside textarea is "Test Automation" for column value "Road Construction Annoumsment" of table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @49364      @verifyEditSelectedAtChildFlexTableForEnhancedGrid-gPlanning @doubted
  Scenario: Verify Edit Selected works for Enhanced grid (Child)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table:General    | Enable Record Selection | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Record Selection | true          | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "GT-FIN.1-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    When I check "AD-FIN.1-BP01-00" boxes in flex table with id "---program:-:appBudgetPeriodTableId---"
    When I click on top right button "Edit Selected" in flex table with id "---program:-:appBudgetPeriodTableId---"
    When I enter value "10" into field "AmountDirectAssistance__c"
    When I click on top right button "Save" in flex table with id "---program:-:appBudgetPeriodTableId---"
    When I perform quick search for "GT-FIN.1-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see edited value inside textarea is "$390,800.00" for column value "AD-FIN.1-BP01-00" of table "---program:-:appBudgetPeriodTableId---"

  @49360      @verifyEditAllAtParentFlexTableForEnhancedGrid-gPlanning @doubted
  Scenario Outline: validate Edit selected functionality for parent flex table at enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue               | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true                            | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Filter Clause  | <defaultFilterClauseForFLV2539> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue               | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true                        | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
      | Flex Grid:Flex Table List | Filter Clause  | <newFilterClauseForFLV2539> | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I click on top right button "Edit All" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I enter values "Test Automation" into textarea for table id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I click on top right button "Save" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I see value "Test Automation" for multiple cells at column "AddressProgramContact__c"
    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @49362      @verifyEditAllAtChildFlexTableForEnhancedGrid-gPlanning @doubted
  Scenario Outline: validate Edit selected functionality for parent flex table at enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-CMAQ-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "GT-CMAQ-001"
    When I click on top right button "Edit All" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodstABLEiD1---"
    When I enter values "Test Automation" into textarea for table id "Agreement1__c"
    When I click on top right button "Save" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I perform quick search for "GT-CMAQ-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I pause execution for "10" seconds
    Then I see value "Test Automation" for multiple cells at column "Agreement1__c"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @48901    @orderByFieldAtParentDataTableEnhancedGridForAscendingOrderForMultipleField-gPlanning
  Scenario Outline: Verify order by multiple field at parent Enhanced flex grid for ascending order
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By  |                   | EnhanceAppGrantorBudgetPeriods |                           |                            |
     # | Page Block:Page Block Detail | Is Active | true              | Grantee State Program          | GNT__PageBlockTitle__c    | Enhanced data table        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By  | <fieldNewValue> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    #  | Page Block:Page Block Detail | Is Active | false           | Grantee State Program          | GNT__PageBlockTitle__c    | Enhanced data table        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "BudgetPeriodTitle__c" and "FeeFundRequested__c" in "Ascending" order

    Examples:
      | fieldNewValue                                    |
      | BudgetPeriodTitle__c ASC,FeeFundRequested__c ASC |

  @48902    @orderByFieldAtParentDataTableEnhancedGridForDescendingOrderForMultipleField-gPlanning
  Scenario Outline: Changing specific columns values in descending order with order by field from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By  |                   | EnhanceAppGrantorBudgetPeriods |                           |                            |
      #| Page Block:Page Block Detail | Is Active | true              | Grantee State Program          | GNT__PageBlockTitle__c    | Enhanced data table        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By  | <fieldNewValue> | EnhanceAppGrantorBudgetPeriods |                           |                            |
      #| Page Block:Page Block Detail | Is Active | false           | Grantee State Program          | GNT__PageBlockTitle__c    | Enhanced data table        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "BudgetPeriodTitle__c" and "FeeFundRequested__c" in "Descending" order

    Examples:
      | fieldNewValue                                      |
      | BudgetPeriodTitle__c DESC,FeeFundRequested__c DESC |

  @48903    @orderByFieldAtChildDataTableEnhancedGridForAscendingOrderForMultipleField-gPlanning @Smoke
  Scenario Outline: Verify Sort by multiple field at Child Enhanced flex grid for ascending order
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
   #   | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | EnhanceAppBudCateGrantorFlexTable |                           |                            |
      | Flex Grid:General     | Order By  |                   | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
     # | Flex Grid:General     | Display Field Names | <newFieldsApi>  | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General     | Order By  | <fieldNewValue> | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I expand nested table containing column value "BP01"
    When I pause execution for "5" seconds
    #Then I see column "Award Title" value is in "Active Budget Year" order for table id "EnhanceAppGrantorBudgetPeriodsFlexToggle"
    Then I see "TotalMatch__c" and "CashMatch__c" in "Ascending" order

    Examples:
      | fieldNewValue                      |
      | TotalMatch__c ASC,CashMatch__c ASC |

  @48905    @orderByFieldAtChildDataTableEnhancedGridDescendingOrderForMultipleField-gPlanning @Smoke
  Scenario Outline: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By  |                   | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By  | <fieldNewValue> | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # When I perform quick search for "Financials 1" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    When I pause execution for "6" seconds
    #Then I see column "Award Title" value is in "Active Budget Year" order for table id "EnhanceAppGrantorBudgetPeriodsFlexToggle"
    Then I see "TotalMatch__c" and "CashMatch__c" in "Descending" order

    Examples:
      | fieldNewValue                        |
      | TotalMatch__c DESC,CashMatch__c DESC |

  @45312    @filterClauseFieldOfChildFlexTableAtEnhancedGrid-gPlanning @smoke @doubted
  Scenario Outline:  Verify Filter Clause field at child flex table config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table List       | Filter Clause | <oldSoqlFilter>   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue   | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Filter Clause | <newSoqlFilter> | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-2541                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "Created" value in flex table id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"

    Examples:
      | newSoqlFilter                                       | oldSoqlFilter                                                                                       |
      | RecordType.Name='Grantor' and Status__c = 'Created' | Grant__c='{!parentId}' and RecordType.Name='Grantor' and Status__c IN ('Being Amended','Activated') |

  @66954 @verifyRequiredFieldsAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: Verify Required Fields works for Enhanced grid at parent flex table.
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName       | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View  | true              | ApiGeneratedId:0 |
      | Flex Grid                 | Required Fields |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName       | fieldNewValue     | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View  | true              | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
      | Flex Grid:General         | Required Fields | SequenceNumber__c | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I click on "Edit" icon for "BP01" inside table
    When I enter value "" into field "SequenceNumber__c"
    When I click on top right button "Save" in flex table with id "---program:-:appBudgetPeriodTableId---"
#    When I perform quick search for "GT-12132-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
#    Then I see value "Test Automation" for multiple cells at column "AddressProgramContact__c"
    Then I see the following message in the page details :
      | Required Field Missing |

  @78091    @verifyByClickOnLookupValueItShouldRedirectedToRespectiveRecordPageAtEnhancedGrid-gPlanning
  Scenario: Verify by click on lookup value in Table , it is redirecting to the respective page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Grid             | Display Field |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field |               | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1487                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "AP-A11-00" icon for "BP01" inside table
    Then I see "Application" shown as over view header

  @79675    @verifyByClickOnUserValueItShouldRedirectedToRespectiveUserPageAtEnhancedGrid-gPlanning @BugId=144971
  Scenario Outline: validate by click on user value in table , respective user page should get opens at EnhancedGrid - gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Automation SPI" icon for "BP01" inside table
    Then I see "Automation SPI" shown as over view header

    Examples:
      | newFieldsApi                                                                                                                                                                                                  | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Status__c,CreatedBy | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @79737  @verifyIfNoneIsSelectedInPicklistFieldThenAfterSaveABlankValueIsShownAtUIAtEnhancedGrid-gPlanning @doubted @wip
  Scenario Outline: Verify a blank value is shown if user select "None" value in pick-list field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "test Program for automation DND" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "test Program for automation DND" inside table
    When I enter value "--None--" into field "GrantType__c"
    When I click on top right button "Save" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I perform quick search for "test Program for automation DND" in "flexGridEnhancedDivId" panel
    Then I see value "" for multiple cells at column "GrantType__c"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @80046    @verifyModalTitleFieldForEnhancedGridRowLevelPreviewAction-gPlanning
  Scenario: Setup modal title for enhanced grid preview action from configuration and validating it at e-grid-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Modal Title |                   | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue    | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Modal Title | Automation Title | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
  #  When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I click on "View" icon for "BP01" inside table
    Then I see "Automation Title" opens in overLay window

  @80047    @verifyModalTitleFieldForEnhancedGridTopLevelPreviewAction-gPlanning
  Scenario: Setup modal title for enhanced grid preview action from configuration and validating it at e-grid-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Modal Title |                   | EnhanceAppGrantorBudgetPeriods | Name                      | Test New                   |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue    | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Modal Title | Automation Title | EnhanceAppGrantorBudgetPeriods | Name                      | Test New                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I click on top right button "Test New" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I see "Automation Title" opens in overLay window

  @80071    @verifyDisplayFieldValueAtInternalOrganizationAtEnhancedGrid-gPlanning @doubted
  Scenario: Verify a 'Display field' field at parent flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table List       | Display Field |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field | County__c     | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-11516                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    ##When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see value "USA" for multiple cells at column "InternalOrganization__c"

  @80183    @defaultOverallTotalForCurrencyFieldIsNotDisplayedAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: Verify default Total is not displayed at currency field at parent flex table at E-Grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total | false             | ApiGeneratedId:0 |
     # | Flex Table            | Enable Total Row      | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total | false         | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
     # | Flex Table:General    | Enable Total Row      | false         | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see over all total sum is not displayed for "FeeFundRequested__c" inside "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" table

  @80067   @verifyLookupFieldShouldBeInViewModeIfEnableEditDisplayFieldCheckboxIsUnchecked-gPlanning @doubted @wip
  Scenario: validate lookup field is in view mode after unchecking the Enable Edit Display Field from config at e-grid - gplanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table List       | Display Field             |                   | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             | County__c     | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1486                   |
      | Flex Table List       | Enable Edit Display Field | false         | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1486                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "BP01" inside table
    Then I do not see "InternalOrganization__c" field is editable inside enhanced grid

  @80068   @verifyLookupFieldShouldBeInViewModeIfEnableEditDisplayFieldCheckboxIsChecked-gPlanning @doubted @wip
  Scenario: validate lookup field is in view mode after checking the Enable Edit Display Field from config at e-grid - gplanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table List       | Display Field             |                   | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             | County__c     | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1486                   |
      | Flex Table List       | Enable Edit Display Field | true          | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1486                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I see "InternalOrganization__c" field is editable inside enhanced grid

  @80502   @verifyHyperlinkShouldNotBePresentAtColumnValueIfEnableHyperlinkAsTextFieldCheckboxIsChecked-gPlanning @doubted
  Scenario: Verify a 'Show Link as Text' field at parent flex table by setting checkbox to true
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Show Link as Text | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Show Link as Text | true          | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I do not see hyperlink at column value "Department of Transportation" inside "---program:-:appBudgetPeriodTableId---" table

  @80506   @verifyHyperlinkShouldBePresentAtColumnValueIfEnableHyperlinkAsTextFieldCheckboxIsUnchecked-gPlanning @doubted
  Scenario: validate hyperlink is present at column value after unchecking the Show Link as Text Field from config at e-grid - gplanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Show Link as Text | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Show Link as Text | false         | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see hyperlink at column value "Department of Transportation" inside "---program:-:appBudgetPeriodTableId---" table

  @82800    @validateQuickSearchBoxIsDisabledIfAnyRecordIsInInlineModeUnderEnhancedGrid-gPlanning
  Scenario: To verify Quick Search disables on inline edit action-e grid
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    ##When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "BP01" inside table
    Then I see quick search box is disabled in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"

  @86421  @verifyDateFieldFormatForLocalAsESTUnderEnhancedGridParentTable
  Scenario Outline: validate the date field format under enhanced grid flex table with respective to EST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see "11/08/2022" shown inside enhanced grid table for specified record "BP01"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @86427  @verifyDateFieldFormatForLocalAsEDTUnderEnhancedGridParentTable
  Scenario Outline: validate the date field format under enhanced grid flex table with respective to EDT Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see "11/08/2022" shown inside enhanced grid table for specified record "BP01"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @86430  @verifyDateFieldFormatForLocalAsISTUnderEnhancedGridParentTable
  Scenario Outline: validate the date field format under enhanced grid flex table with respective to IST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see "11/8/2022" shown inside enhanced grid table for specified record "BP01"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @86302  @verifyDateAndTimeFieldFormatForLocalAsESTUnderEnhancedGridParentTable
  Scenario Outline: validate the date and time field format under enhanced grid flex table with respective to EST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    ##When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see "07/27/2023 6:38 PM" shown inside enhanced grid table for specified record "BP01"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @86303  @verifyDateAndTimeFieldFormatForLocalAsEDTUnderEnhancedGridParentTable
  Scenario Outline: validate the date and time field format under enhanced grid flex table with respective to EDT Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    ##When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    And I save the value from row "1" for column name "Date and Time" as "SaveDate" from flex table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I see "{SavedValue:SaveDate}" shown inside enhanced grid table for specified record "BP01"

    Examples:
      | newFieldsApi                                                                                                                                                                                                                             | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c,Date_and_Time__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @86304  @verifyDateAndTimeFieldFormatForLocalAsISTUnderEnhancedGridParentTable
  Scenario Outline: validate the date and time field format under enhanced grid flex table with respective to IST Local
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    ##When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see "7/5/2020 2:30 AM" shown inside enhanced grid table for specified record "BP01"

    Examples:
      | newFieldsApi                                                                                                                                                                                                                             | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c,Date_and_Time__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @87307   @verifyHyperlinkShouldBePresentAtColumnValueIfEnableHyperlinkAsTextFieldCheckboxIsCheckedAtChildTable-gPlanning @doubted
  Scenario Outline: Verify a 'Show Link as Text' field at child table by setting checkbox to false e-grid child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Show Link as Text   | false              | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Show Link as Text   | false          | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see hyperlink at column value "AP-755-213" inside "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" table

    Examples:
      | newFieldsApi                                                                                                                                                                                                                                                 | defaultFieldsApi                                                                                                                                                                                                        |
      | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @87314   @verifyHyperlinkShouldNotBePresentAtColumnValueIfEnableHyperlinkAsTextFieldCheckboxIsCheckedAtChildTable-gPlanning @doubted
  Scenario Outline: validate hyperlink is not present at column value after checking the Show Link as Text Field from config at e-grid child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Show Link as Text   | false              | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Show Link as Text   | true           | EnhanceAppBudCateGrantorFlexTable |                           |                            |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    ##When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I do not see hyperlink at column value "AP-755-213" inside "---program:-:EnhanceAppBudCateGrantorTableId---" table

    Examples:
      | newFieldsApi                                                                                                                                                                                                                                                 | defaultFieldsApi                                                                                                                                                                                                                                             |
      | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c |

  @87839    @VerifyTheDecimalValueShownForCurrencyFieldAtEnhancedGridParentFlexTable
  Scenario Outline: E-Grid :To verify the Decimal values are shown for the currency field on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see "$100.50" shown inside enhanced grid table for specified record "BP01"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @88090    @VerifyTheDecimalValueShownForNumberFieldAtEnhancedGridChildFlexTable
  Scenario Outline: verify decimal places at Number field value of child flex table at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "35.35" shown inside enhanced grid table for specified record "Personnel"

    Examples:
      | newFieldsApi                                                                                                                                                                                                                                                 | defaultFieldsApi                                                                                                                                                                                                                                             |
      | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c |

  @87565    @VerifyThatTheLookupFieldValueIsOverridesAsPerGivenDisplayFieldAtEnhancedGridParentFlexTable @doubted @wip
  Scenario Outline: E-Grid: To verify the lookup field is overrides as per Display Field when Enable Edit Display Field is False
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table List       | Display Field       |                    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Table List       | Display Field       |                | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-11516                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see "755" shown inside enhanced grid table for specified record "BP01"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @87573   @verifyLookupFieldShouldBeInViewModeIfEnableEditDisplayFieldCheckboxIsUncheckedAtChildTable-gPlanning @doubted @wip
  Scenario Outline: validate lookup field is in view mode after unchecking the Enable Edit Display Field from config at e-grid child table - gplanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table List       | Display Field             |                    | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | false              | ApiGeneratedId:1 |
      | Flex Table List       | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             |                | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11520                  |
      | Flex Table List       | Enable Edit Display Field | false          | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11520                  |
      | Flex Grid:General     | Display Field Names       | <newFieldsApi> | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
   # #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    When I click on "Edit" icon for "Personnel" inside table
    Then I do not see "Account__c" field is editable inside enhanced grid

    Examples:
      | newFieldsApi                                                                                                                                                                                                                                                 | defaultFieldsApi                                                                                                                                                                                                                                             |
      | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c |

  @87763   @verifyLookupFieldShouldBeInViewModeIfEnableEditDisplayFieldCheckboxIsCheckedAtChildTable-gPlanning @doubted @wip
  Scenario Outline: validate lookup field is in view mode after checking the Enable Edit Display Field from config at e-grid child table- gplanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table List       | Display Field             |                    | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | false              | ApiGeneratedId:1 |
      | Flex Table List       | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             |                | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11520                  |
      | Flex Table List       | Enable Edit Display Field | true           | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11520                  |
      | Flex Grid:General     | Display Field Names       | <newFieldsApi> | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    ##When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    When I click on "Edit" icon for "Personnel" inside table
    Then I see "NonCashMatch__c" field is editable inside enhanced grid

    Examples:
      | newFieldsApi                                                                                                                                                                                                                                                 | defaultFieldsApi                                                                                                                                                                                                                                             |
      | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c |

  @88292  @VerifyThatTheLookupFieldValueIsOverridesAsPerGivenDisplayFieldAtEnhancedGridChildFlexTable @doubted @wip
  Scenario Outline: verify that the lookup field value is overrided as per given display field at child flex table at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table List       | Display Field             |                    | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | false              | ApiGeneratedId:1 |
      | Flex Table List       | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             |                | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11520                  |
      | Flex Table List       | Enable Edit Display Field | false          | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11520                  |
      | Flex Grid:General     | Display Field Names       | <newFieldsApi> | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    ##When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "343" shown inside enhanced grid table for specified record "AD-GG PJ--00"

    Examples:
      | newFieldsApi                                                                                                                                                                                                                                                 | defaultFieldsApi                                                                                                                                                                                                                                             |
      | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c |

  @87762  @VerifyThatTheLookupFieldValueIsOverridesIfEnableEditDisplayFieldIsCheckedAtEnhancedGridChildFlexTable @doubted @wip
  Scenario Outline: verify that the lookup field value is override if enable edit display field checkbox is checked at child tabl- enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table List       | Display Field             |                    | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | false              | ApiGeneratedId:1 |
      | Flex Table List       | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             | Code__c        | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11519                  |
      | Flex Table List       | Enable Edit Display Field | true           | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11519                  |
      | Flex Grid:General     | Display Field Names       | <newFieldsApi> | EnhanceAppBudCateGrantorFlexTable |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    When I click on "Edit" icon for "AD-GG PJ--00" inside table
    Then I see "343" shown inside enhanced grid table for specified record "AD-GG PJ--00"

    Examples:
      | newFieldsApi                                                                                                                                                                                                                                                 | defaultFieldsApi                                                                                                                                                                                                                                             |
      | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c |

  @104863  @VerifySortingLabelInsideEnhancedGridTable
  Scenario: verify that sorting label displayed inside enhanced grid table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I softly see sorting label as "* Records are sorted by " inside "---program:-:appBudgetPeriodTableId---" table
    Then I softly see sorting label as "Last Modified Date ascending order" inside "---program:-:appBudgetPeriodTableId---" table

  @104864  @VerifySortingLabelInsideEnhancedGridChildTable
  Scenario: verify that sorting label displayed inside enhanced grid child table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I softly see sorting label as "* Records are sorted by " inside "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" table
    Then I softly see sorting label as "Last Modified Date ascending order" inside "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" table

  @106419   @validateAdvanceFilterValueForDateFieldWithOperatorStartWithAtEnhancedGrid
  Scenario Outline: validate Advance filter search for date field with start with operator At enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I enter advance filter values inside id "advfEnhanceAppGrantorBudgetPeriods"
      | Project Period | starts with | 10/1/2016 |
    Then I softly see value "10/1/2016--12/31/2022" for title "Project Period" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    #Then I softly do not see value "12/31/2022--10/1/2016" for title "Project Period" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                                                                                                 | defaultFieldsApi                                                                                                                                                                                                                                             |
      | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c |

  @106421   @validateAdvanceFilterValueForDateFieldWithOperatorEndWithAtEnhancedGrid
  Scenario Outline: validate Advance filter search for date field with end with operator At enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I enter advance filter values inside id "advfEnhanceAppGrantorBudgetPeriods"
      | Project Period | ends with | 1/4/2020 |
    Then I softly see value " 1/4/2018--1/4/2020" for title "Project Period" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I softly do not see value "2/15/2018--2/15/2022" for title "Project Period" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                                                                                                 | defaultFieldsApi                                                                                                                                                                                                                   |
      | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @111923  @validateToolTipDisplayedAtHoverOnColumnValueInsideEnhancedGrid @SkipOnJenkins
  Scenario Outline: validate tool tip displayed at hover on column value inside Flex grid Enhanced
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "Road Construction Annoumsment" in "---program:-:appBudgetPeriodTableId---" panel
    When I hovering mouse on table id "---program:-:appBudgetPeriodTableId---" with table row level icon "<new_helpText>" for column value "GT-12132-001"
    Then I see "<new_helpText>" shown at mouse hover inside "---program:-:appBudgetPeriodTableId---" table

    Examples:
      | new_helpText                  |
      | Road Construction Annoumsment |

  @111921  @validateToolTipDisplayedAtHoverOnColumnValueInsideEnhancedGridChildTable
  Scenario: validate tool tip displayed at hover on column value inside Flex grid Enhanced child table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "USAID/Burundi TUBITEHO Health Activity" in "---program:-:appBudgetPeriodTableId---" panel
    When I expand nested table containing column value "USAID/Burundi TUBITEHO Health Activity"
    When I hovering mouse on table id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" with table row level icon "USAID/Burundi TUBITEHO Health Activity" for column value "AD-Grant--10"
    Then I see "USAID/Burundi TUBITEHO Health Activity" shown at mouse hover inside "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" table

  @116731    @verifyLoadingIconNotDisplayedWhenAllValuesFromCurrencyFieldAreHiddenUsingHideLogic-EGrid
  Scenario Outline: Validate loading icon not displayed if all currency field values are hidden using hide logic
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue               | filterId         |
      | Flex Table List           | Formula             |                                 | ApiGeneratedId:0 |
      | Flex Table List           | Hide Cell JSON      |                                 | ApiGeneratedId:1 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi>              | ApiGeneratedId:2 |
      | Flex Grid:Flex Table List | Filter Clause       | <defaultFilterClauseForFLV2539> | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue                                                        | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Formula             | govgrants_config:FormulaFieldToDisplayFormulaAtLastRowAtEnhancedGrid | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1491                   |
      | Flex Table List           | Hide Cell JSON      | govgrants_config:HideCellJsonForEnhancedGridNumberField              | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1491                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>                                                       | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:Flex Table List | Filter Clause       | <newFilterClauseForFLV2539>                                          | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    Then I donot see navigation logo on page

    Examples:
      | newFieldsApi                                                                                                                                                                                                                                                 | defaultFieldsApi                                                                                                                                                                                                                                             |
      | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c | ServiceAreaTitle__c,CatName__c,BudgetRequest__c,CashMatch__c,NonCashMatch__c,TotalMatch__c,OtherLeverageOptional__c,TotalProjectCost__c,IsFirstBudgetPeriodRelated__c,Name,RequestedAmount__c,Description__c,ApplicationStatus__c,AppBudgetCategoryStatus__c |

  @120976  @VerifyCrossIconIsDisplayedAtEnhancedGridQuickSearchBox
  Scenario: validate that cross icon is displayed at enhanced Grid quick search box
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    ##When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see cross icon is displayed at search box at "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"

  @121593    @verifyThatBorderIsDisplayedAtEnhancedGridForFirefoxBrowser @firefox @skipOnJenkins
  Scenario: validate that border box is displayed at enhanced grid when opens in firefox browser
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I pause execution for "2" seconds
    Then I see border box is displayed at "EnhanceAppGrantorBudgetPeriodsFlexToggle" table

  @130539    @helpTextDisplayedAtBottomOfHelpIconAtEnhancedGridInPageViewMode
  Scenario: validate help text displayed at bottom of hekp icon at enhanced grid in page layout view mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I hovering mouse on help text icon inside "Budget Periods" for enhanced grid
    Then I see help text is displayed at bottom

  @130541    @helpTextDisplayedAtBottomOfHelpIconAtEnhancedGridInPageEditMode
  Scenario: validate help text displayed at bottom of hekp icon at enhanced grid in page layout edit mode
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "Edit" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I hovering mouse on help text icon inside "Budget Periods" for enhanced grid
    Then I see help text is displayed at bottom

  @130097    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtEnhancedGrid
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at enhanced grid
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    ##When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I hover mouse on lookup link "AP-A11-006" at table
    And I pause execution for "4" seconds
    Then I softly see "Application Title" as "New Application For Testing Only" inside mini page layout

  @82799    @validateLoadingIconIsDisplayedAtEnhanceAppGrantorBudgetPeriodsModalWindowAtEnhancedGridTopLevelAction
  Scenario: validate loading icon is displayed at EnhanceAppGrantorBudgetPeriods modal window at enhancedGrid top level action
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I click on top right button "New" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I see loading icon at "EnhanceAppGrantorBudgetPeriods" modal

  @146545    @verifyPaginationDisplayedAtBothTopAndBottomAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate pagination at top and bottom inside enhanced flex grid planning-Program enhanced flex grid
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see "Page" with pagination arrow at "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" at "Top"
    Then I see "Page" with pagination arrow at "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" at "Bottom"

  @146571 @verifyPaginationDisplayedAtBothTopAndBottomAtParentFlexTableForEnhancedGrid-gPlanning
  Scenario: validate pagination at top and bottom inside enhanced flex grid planning-Program enhanced flex grid
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I expand nested table containing column value "BP01"
    Then I see "Page" with pagination arrow at "AwardBudgetCategoryFlexGridgrid" at "Top"
    Then I see "Page" with pagination arrow at "AwardBudgetCategoryFlexGridgrid" at "Bottom"

  @148349    @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtEnhancedGridParentTable
  Scenario Outline: verify number field is displayed with 4 decimal places at enhanced grid of parent table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    ##When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see value "12,345.0000" for title "NumberDecimal" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @148362    @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtEnhancedGridParentTable
  Scenario Outline: verify number field is displayed with 4 decimal places at enhanced grid of parent table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see the text :
      | 12,345.0000 |

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @148507  @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtEnhancedGridChidTable
  Scenario Outline: verify number field is displayed with 4 decimal places at enhanced grid of child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "GT-FD123-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    When I pause execution for "5" seconds
    Then I see "2,323.0000" shown inside enhanced grid table for specified record "Personnel"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @146709 @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClickOnBrowserRefreshButtonWithUnsavedDataInEnhancedGrid
  Scenario: validate that users should be warned when they click on browser refresh button with unsaved data in enhanced grid
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "Edit" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "BP01" inside table
    When I enter value "Draft" into field "Status__c"
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @149148 @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClickOnCancelButtonWithUnsavedDataInEnhancedGrid
  Scenario: validate that users should be warned when they click on cancel button with unsaved data in enhanced grid
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "Edit" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "BP01" inside table
    When I enter value "Draft" into field "Status__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @150691 @verifyThatReferenceDateFieldValueIsDisplayedAsExpectedOnUiAtEnhancedGrid @BugLogged=154733
  Scenario Outline: validate that reference date field value is displayed as expected in enhanced grid
    Given I have "default" configuration as below:
      | configurationCategoryd | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid              | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "Edit" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    Then I see value "03/26/2023" for title "Start Date" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @145510   @verifyPositionOfPaginationDisplayedAtTopAndBottomRightCornerOfEnhancedGrid
  Scenario: verify position of pagination bar displayed at top and bottom right corner of enhanced grid
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see pagination is displayed at the top and bottom right of table "EnhanceAppGrantorBudgetPeriodsFlexToggle"

  @150171    @verifyWidthEnhancedGridColumnIfFieldWidthEnhancedIsConfiguredAs50Percent
  Scenario Outline: verify width of enhanced grid column if Field width enhanced is configured as 50 %
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue  | filterId         |
      | Flex Table List       | Field width Enhanced |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names  | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field width Enhanced | 50%            | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1486                   |
      | Flex Grid:General     | Display Field Names  | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see "Internal Organization" column inside Enhanced grid id "---program:-:flexGridEnhancedTableId---" of width "50%"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @150251    @verifyWidthEnhancedGridChildTableColumnIfFieldWidthEnhancedIsConfiguredAs50Percent
  Scenario: verify width of enhanced grid child table column if Field width enhanced is configured as 50 %
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Field width Enhanced |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Field width Enhanced | 50%           | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1499                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see "Fee Fund Requested" column inside Enhanced grid id "EnhanceAppGrantorBudgetPeriodsFlexToggle" of width "50%"

  @151174 @verifyEnhanceAppGrantorBudgetPeriodsValueDoNotDisapperWhenUserEditRecordAndSaveAgainOnFormLayout
  Scenario:validate that enhanced data table values do not disappear when the user edit a record on forms
    Given I delete the record "{Framework_recordUsed:GrantTempRecordInActiveState}" from the object "Grant__c" with field "ProjectTitle__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    When I click on top right button "New" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I enter value "{Framework_recordUsed:GrantTempRecordInActiveState}" into field "ProjectTitle__c"
    When I enter value "Active" into field "Status__c"
    When I click on top right button "Save" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I perform quick search for "{Framework_recordUsed:GrantTempRecordInActiveState}" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "{Framework_recordUsed:GrantTempRecordInActiveState}" inside table
    When I enter value "temp data" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I perform quick search for "{Framework_recordUsed:GrantTempRecordInActiveState}" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I softly see value "temp data" for title "Program Contact Address" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I softly see the following messages in the page details :
      | Saved Successfully! |

  @151183 @verifyEnhanceAppGrantorBudgetPeriodsValueDoNotDisapperWhenUserEditPicklistFieldValueRecordAndSaveAgainOnFormLayout
  Scenario Outline:validate that enhanced data table values do not disappear when the user edit picklist field value from record on forms
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    Given I delete the record "{Framework_recordUsed:GrantTempRecordInActiveState}" from the object "Grant__c" with field "ProjectTitle__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    When I click on top right button "New" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I enter value "{Framework_recordUsed:GrantTempRecordInActiveState}" into field "ProjectTitle__c"
    When I enter value "Active" into field "Status__c"
    When I click on top right button "Save" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I perform quick search for "{Framework_recordUsed:GrantTempRecordInActiveState}" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "{Framework_recordUsed:GrantTempRecordInActiveState}" inside table
    When I enter value "Project Grants" into field "GrantType__c"
    When I click on top right button "Save" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I perform quick search for "{Framework_recordUsed:GrantTempRecordInActiveState}" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I softly see value "Project Grants" for title "Grant Type" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I softly see the following messages in the page details :
      | Saved Successfully! |

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @151610 @verifyThatParentPageDoesNotRefreshAfterClickingOnSaveActionInEnhancedGrid
  Scenario: validate that Parent page does not refresh after clicking on Save action in enhanced grid
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "Edit" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    When I enter value "Test Automation123" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see value "Test Automation123" for multiple cells at column "AddressProgramContact__c"

  @146002 @verifyThatUserEditingTheExistingRecordAndClickOnSaveThenDataGettingSavedSuccessFullyInEnhancedGrid
  Scenario: validate that PUser editing the existing record & click on save  button then data will be saved in enhanced grid
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "Edit" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    When I enter value "Test Automation updated record" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I softly see value "Test Automation updated record" for title "Program Contact Address" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I softly see the following messages in the page details :
      | Saved Successfully! |

  @145997  @verifyPositionOfPaginationDisplayedAtTopAndBottomRightCornerOfEnhancedGridChildTable
  Scenario: verify position of pagination bar displayed at top and bottom right corner of enhanced grid child table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I expand nested table containing column value "BP01"
    Then I see pagination is displayed at the top and bottom right of table "AwardBudgetCategoryFlexTableFlexToggle"

  @153948    @validateTotalRecordCountAndShowingRecordIfPerformedQuickSearchAtEnhancedGrid
  Scenario: validate total row count and showing record is displayed if performed quick search at enhanced flex grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Total Records Count | true          | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "Demo_Title" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I softly see the text :
      | Showing 1 to 1 of 1 records |

  @100210    @verifyCurrencyValuesAreEditableAtASameTimeAtParentFlexTableAtEnhancedGrid-gPlanning
  Scenario Outline: verify that if multiple records are edited and enter value at urreny field then records are getting saved successfully at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    Given I delete the record "Temp Grant 1" from the object "Grant__c" with field "ProjectTitle__c"
    Given I delete the record "Temp Grant 2" from the object "Grant__c" with field "ProjectTitle__c"
    Given I delete the record "Temp Grant 3" from the object "Grant__c" with field "ProjectTitle__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I enter the following values into flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" by clicking "New" :
      | Project Title | Status |
      | Temp Grant 1  | Active |
      | Temp Grant 2  | Active |
      | Temp Grant 3  | Active |
    When I perform quick search for "Temp Grant" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    And I edit the following rows inline in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" by clicking "Edit" :
      | Project Title | Total Adjusted Amount |
      | Temp Grant 1  | 10000                 |
      | Temp Grant 2  | 10000                 |
      | Temp Grant 3  | 10000                 |
    When I perform quick search for "Temp Grant" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I softly see value "$10,000.00" for title "Total Adjusted Amount" against the value "Temp Grant 1" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I softly see value "$10,000.00" for title "Total Adjusted Amount" against the value "Temp Grant 2" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I softly see value "$10,000.00" for title "Total Adjusted Amount" against the value "Temp Grant 3" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @159529 @VerifyInAdvanceFilterOnEgridWhenWeSelectAnyPickListDataTypeFieldSelectPickListValueThenValueReturnedByLoginAsAAdminUser @vaibhavC
  Scenario: Verify In Advance Filter On E Grid When We Select Any Pick List Data Type Field Select Pick List Value Then Value Returned
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:appBudgetPeriodTableId---"
    When I enter advance filter values inside id "advfEnhanceAppGrantorBudgetPeriods"
      | Status | equals to | Active |
    Then I see value "Active" for title "Fee Fund Requested" inside table "---program:-:appBudgetPeriodTableId---"

  @160641 @VerifytopLevelActionNewAreHideByUsingMultipleHideLogic @vaibhavC
  Scenario: Verify top Level Action New Are Hide By Using Multiple Hide Logic
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | EnhanceAppGrantorBudgetPeriods | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                               | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideNewFieldAtEnhancedGrid | EnhanceAppGrantorBudgetPeriods | Name                      | New                        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see no "New" button inside "Budget Periods" enhanced grid

  @160797    @verifyEGridTopLevelActionNewAreHideByUsingMultipleAND/ORLogic @abhishekS
  Scenario: validate E-grid-To,top-level action 'New' are hide by using multiple AND/OR hide logic
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | EnhanceAppGrantorBudgetPeriods | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                 | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideNewFieldAtEnhancedGridTopLevelANDORLogic | EnhanceAppGrantorBudgetPeriods | Name                      | New                        |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    Then I see no "New" button inside "Budget Periods" enhanced grid

  @160801    @verifyEGridTopLevelActionPreviewAreHideByUsingMultipleAND/ORLogic @abhishekS
  Scenario: validate E-grid-To,top-level action 'Preview' are hide by using multiple AND/OR hide logic
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                     | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HidePreviewFieldAtEnhancedGridRowLevelANDORLogic | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    Then I see no "View" button inside "Budget Periods" enhanced grid

  @159809    @verifyEGridRowLevelActionRefreshBehaviourAsRefreshTheEntirePage
  Scenario: validate E-grid refresh behaviour "Refresh the entire page" at Edit action
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue           | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action                   | Refresh Behavior  | Refresh the entire page | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    #  | Page Tabs Config:Page Layout Action | Highlights Panel? | false                   | Grantee State Program          | Name                      | TAB-409                    |
    Given I delete the record "Grant Created for default value testing" from the object "Grant__c" with field "ProjectTitle__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    When I perform quick search for "Grant Created for default value testing" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "Grant Created for default value testing" inside table
    When I enter value "Test Automation updated record" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I see entire page is refreshing

  @159823    @verifyEGridRowLevelActionRefreshBehaviourAsRefreshTheEntirePage
  Scenario: validate E-grid refresh behaviour "Refresh the grid" at Edit action
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Refresh Behavior |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue    | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action                   | Refresh Behavior  | Refresh the grid | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
     # | Page Tabs Config:Page Layout Action | Highlights Panel? | false            | Grantee State Program          | Name                      | TAB-409                    |
    Given I delete the record "Grant Created for default value testing" from the object "Grant__c" with field "ProjectTitle__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    When I perform quick search for "Grant Created for default value testing" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "Grant Created for default value testing" inside table
    When I enter value "Test Automation address" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I perform quick search for "Grant Created for default value testing" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I see value "Test Automation address" for title "Program Contact Address" inside table "---program:-:appBudgetPeriodTableId---"

  @164810   @verifyThatPercentageCalculationForPercentTypeFieldWhenCalculateValueNegative
  Scenario Outline: To verify Percentage change calculation for percent type field when the CalCulated value is negative.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                                | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Row Grouping                      | false              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:1 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:2 |
      | Flex Table List       | Column Subtotal Percentage JSON          |                    | ApiGeneratedId:3 |
      | Flex Table List       | Enable Column Subtotal Percentage Change | false              | ApiGeneratedId:4 |
      | Flex Grid             | Display Field Names                      | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                                | fieldNewValue                                                         | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping                      | true                                                                  | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1502                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                  | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1552                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                  | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1550                   |
      | Flex Table List       | Column Subtotal Percentage JSON          | govgrants_config:PercenatageForPercentTypeWhenValueNegativeOrPositive | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1551                   |
      | Flex Table List       | Enable Column Subtotal Percentage Change | true                                                                  | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1551                   |
      | Flex Grid:General     | Display Field Names                      | <newFieldsApi>                                                        | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    When I perform quick search for "GT-GGREI-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "GT-GGREI-001" inside table
    When I enter value "1999" into field "PercentTest__c"
    When I enter value "10" into field "Test_Percentage2__c"
    When I click on top right button "Save" in flex table with id "---program:-:appBudgetPeriodTableId---"
    When I perform quick search for "GT-GGREI-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I softly see value "-99.50%" for title "Test Percentage Result" inside table "---program:-:appBudgetPeriodTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @164811   @verifyThatPercentageCalculationForPercentTypeFieldWhenCalculateValuePositive
  Scenario Outline: To verify Percentage change calculation for percent type field when the CalCulated value is positive.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                                | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Row Grouping                      | false              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:1 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:2 |
      | Flex Table List       | Column Subtotal Percentage JSON          |                    | ApiGeneratedId:3 |
      | Flex Table List       | Enable Column Subtotal Percentage Change | false              | ApiGeneratedId:4 |
      | Flex Grid             | Display Field Names                      | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                                | fieldNewValue                                                         | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping                      | true                                                                  | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1502                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                  | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1552                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                  | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1550                   |
      | Flex Table List       | Column Subtotal Percentage JSON          | govgrants_config:PercenatageForPercentTypeWhenValueNegativeOrPositive | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1551                   |
      | Flex Table List       | Enable Column Subtotal Percentage Change | true                                                                  | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1551                   |
      | Flex Grid:General     | Display Field Names                      | <newFieldsApi>                                                        | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    When I perform quick search for "GT-GGREI-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "GT-GGREI-001" inside table
    When I enter value "25" into field "PercentTest__c"
    When I enter value "55" into field "Test_Percentage2__c"
    When I click on top right button "Save" in flex table with id "---program:-:appBudgetPeriodTableId---"
    When I perform quick search for "GT-GGREI-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I softly see value "120.00%" for title "Test Percentage Result" inside table "---program:-:appBudgetPeriodTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @163536   @verifyThatPercentageCalculationForNumbertypeFeildWhenCalculateValueNegative
  Scenario Outline: To verify Percentage change calculation for Numbertype field when the CalCulated value is negative.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                                | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Row Grouping                      | false              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:1 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:2 |
      | Flex Table List       | Column Subtotal Percentage JSON          |                    | ApiGeneratedId:3 |
      | Flex Table List       | Enable Column Subtotal Percentage Change | false              | ApiGeneratedId:4 |
      | Flex Grid             | Display Field Names                      | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                                | fieldNewValue                                                        | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping                      | true                                                                 | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1502                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                 | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1497                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                 | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1548                   |
      | Flex Table List       | Column Subtotal Percentage JSON          | govgrants_config:PercenatageForNumberTypeWhenValueNegativeOrPositive | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1549                   |
      | Flex Table List       | Enable Column Subtotal Percentage Change | true                                                                 | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1549                   |
      | Flex Grid:General     | Display Field Names                      | <newFieldsApi>                                                       | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I pause execution for "10" seconds
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    When I perform quick search for "GT-GT007-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "GT-GT007-001" inside table
    When I enter value "0" into field "Test_Number__c"
    When I click on top right button "Save" in flex table with id "---program:-:appBudgetPeriodTableId---"
    When I perform quick search for "GT-GT007-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I softly see value "0.00" for title "Test Number" inside table "---program:-:appBudgetPeriodTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @164795   @verifyThatPercentageCalculationForCurrencyTypeFeildWhenCalculateValueNegative
  Scenario Outline: To verify Percentage change calculation for currency type field when the CalCulated value is negative.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                                | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Row Grouping                      | false              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:1 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:2 |
      | Flex Table List       | Column Subtotal Percentage JSON          |                    | ApiGeneratedId:3 |
      | Flex Table List       | Enable Column Subtotal Percentage Change | false              | ApiGeneratedId:4 |
      | Flex Grid             | Display Field Names                      | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                                | fieldNewValue                                                          | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping                      | true                                                                   | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1502                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                   | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1545                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                   | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1491                   |
      | Flex Table List       | Column Subtotal Percentage JSON          | govgrants_config:PercenatageForCurrencyTypeWhenValueNegativeOrPositive | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1547                   |
      | Flex Table List       | Enable Column Subtotal Percentage Change | true                                                                   | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1547                   |
      | Flex Grid:General     | Display Field Names                      | <newFieldsApi>                                                         | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    When I perform quick search for "GT-GGREI-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "GT-GGREI-001" inside table
    When I enter value "0" into field "Test_Currency__c"
    When I click on top right button "Save" in flex table with id "---program:-:appBudgetPeriodTableId---"
    When I perform quick search for "GT-GGREI-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I softly see value "($100.00)" for title "testtotalcurrency" inside table "---program:-:appBudgetPeriodTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |


  @164808   @verifyThatPercentageCalculationForCurrencytypeFeildWhenCalculateValuePositive
  Scenario Outline: To verify Percentage change calculation for Curency field when the CalCulated value is positive.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                                | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Row Grouping                      | false              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:1 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:2 |
      | Flex Table List       | Column Subtotal Percentage JSON          |                    | ApiGeneratedId:3 |
      | Flex Table List       | Enable Column Subtotal Percentage Change | false              | ApiGeneratedId:4 |
      | Flex Grid             | Display Field Names                      | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                                | fieldNewValue                                                          | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping                      | true                                                                   | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1502                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                   | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1546                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                   | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1491                   |
      | Flex Table List       | Column Subtotal Percentage JSON          | govgrants_config:PercenatageForCurrencyTypeWhenValueNegativeOrPositive | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1547                   |
      | Flex Table List       | Enable Column Subtotal Percentage Change | true                                                                   | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1547                   |
      | Flex Grid:General     | Display Field Names                      | <newFieldsApi>                                                         | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    When I perform quick search for "GT-GGREI-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "GT-GGREI-001" inside table
    Then I softly see value "$20,000.00" for title "testtotalcurrency" inside table "---program:-:appBudgetPeriodTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |


  @164809   @verifyThatPercentageCalculationForNumbertypeFeildWhenCalculateValuePositive
  Scenario Outline: To verify Percentage change calculation for Numbertype field when the CalCulated value is positive.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                                | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Row Grouping                      | false              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:1 |
      | Flex Table List       | Enable Sub Total                         | false              | ApiGeneratedId:2 |
      | Flex Table List       | Column Subtotal Percentage JSON          |                    | ApiGeneratedId:3 |
      | Flex Table List       | Enable Column Subtotal Percentage Change | false              | ApiGeneratedId:4 |
      | Flex Grid             | Display Field Names                      | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                                | fieldNewValue                                                        | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping                      | true                                                                 | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1502                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                 | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1497                   |
      | Flex Table List       | Enable Sub Total                         | true                                                                 | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1548                   |
      | Flex Table List       | Column Subtotal Percentage JSON          | govgrants_config:PercenatageForNumberTypeWhenValueNegativeOrPositive | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1549                   |
      | Flex Table List       | Enable Column Subtotal Percentage Change | true                                                                 | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1549                   |
      | Flex Grid:General     | Display Field Names                      | <newFieldsApi>                                                       | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    When I perform quick search for "GT-GT007-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I click on "Edit" icon for "GT-GT007-001" inside table
    When I enter value "100" into field "Test_Number__c"
    When I click on top right button "Save" in flex table with id "---program:-:appBudgetPeriodTableId---"
    When I perform quick search for "GT-GT007-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    Then I softly see value "9,900.00" for title "Test Number Result" inside table "---program:-:appBudgetPeriodTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @166740   @verifyThatEGridToVerifyInAdvancedFilterWhenUserSelectThePicklistDataTypeFieldThenCorrectResultIsDisplayEqualToOprator
  Scenario:  E-grid-To verify in advanced filter when user select the picklist data type field then correct result display with equal to operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I enter advance filter values inside id "advfEnhanceAppGrantorBudgetPeriods"
      | Status | equals to | Active |
    Then I see value "Active" for multiple cells at column "Status__c"

  @166743   @verifyThatEGridToVerifyInAdvancedFilterWhenUserSelectThePicklistDataTypeFieldThenCorrectResultIsDisplayEqualNotToOprator
  Scenario:  E-grid-o verify in advanced filter when user select the picklist data type field then correct result display with not equal to operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Monitoring Schedule For All  Draft Grants"
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    When I enter advance filter values inside id "advfEnhanceAppGrantorBudgetPeriods"
      | Status | not equals to | Active |
    And I pause execution for "5" seconds
    Then I see value "Draft" for multiple cells at column "Status__c"

  @168723 @VerifyIfCurruncyReferenceFeildIsAvailableOnTheTableItDispalyDollerSignForEditLayout
  Scenario Outline: E-grid-To verify,  if a currency reference field is available on the table it displays a dollar sign for the Edit layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "Edit" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    Then I see value "$0.00" for title "testcurrency" inside table "---program:-:appBudgetPeriodTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @168722 @VerifyIfCurruncyReferenceFeildIsAvailableOnTheTableItDispalyDollerSignForViewLayout
  Scenario Outline: E-grid-To verify,  if a currency reference field is available on the table it displays a dollar sign for the View layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I click toggle button to select "Budget Periods"
    Then I see value "$0.00" for title "testcurrency" inside table "---program:-:appBudgetPeriodTableId---"

    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @170496 @tejal
  Scenario: Verify if a currency reference field is available on the page layout it displays a dollar sign for the View layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grant              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grant              | Name                      | PBD-9138                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Active Grants"
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentGrant}"
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentGrant}" inside table
    Then I softly see field "Show Link as Text" as "$1,200,000.00"

  @170497 @tejal
  Scenario: Verify if a currency reference field is available on the page layout it displays a dollar sign for the Edit layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grant              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grant              | Name                      | PBD-9138                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Active Grants"
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentGrant}"
    When I click on "Edit" icon for "{Framework_recordUsed:AutomationPermanentGrant}" inside table
    Then I softly see field "Show Link as Text" as "$1,200,000.00"

  @171798 @tejal
  Scenario: Verify if User edits a existing Id  row level lookup field (Required to Save) then mandatory icon should display for lookup field
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName       | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View  | true              | ApiGeneratedId:0 |
      | Flex Grid:General         | Required Fields |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName       | fieldNewValue           | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View  | true                    | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
      | Flex Grid:General         | Required Fields | ExternalOrganization__c | EnhanceAppGrantorBudgetPeriods |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-FIN.1-001" in "---program:-:appBudgetPeriodTableId---" panel
    When I click on "Edit" icon for "GT-FIN.1-001" inside table
    Then I softly see "ExternalOrganization__c" field is required

  @171801 @tejal
  Scenario: Verify if User remove the data fromlookup field(Required to Save) then mandatory icon should display for lookup field
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName       | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View  | true              | ApiGeneratedId:0 |
      | Flex Grid:General         | Required Fields |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName       | fieldNewValue           | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View  | true                    | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
      | Flex Grid:General         | Required Fields | ExternalOrganization__c | EnhanceAppGrantorBudgetPeriods |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-FIN.1-001" in "---program:-:appBudgetPeriodTableId---" panel
    When I click on "Edit" icon for "GT-FIN.1-001" inside table
    And I enter value "biological technologies office" into field "ExternalOrganization__c"
    Then I softly see "ExternalOrganization__c" field is required

  @171800 @tejal
  Scenario: Verify if User create a new  record on table  for  lookup field (Required to Save) then mandatory icon should display for lookup field
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName       | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View  | true              | ApiGeneratedId:0 |
      | Flex Grid:General         | Required Fields |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName       | fieldNewValue           | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View  | true                    | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
      | Flex Grid:General         | Required Fields | ExternalOrganization__c | EnhanceAppGrantorBudgetPeriods |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    And I click on top right button "New" in flex table with id "---program:-:appBudgetPeriodTableId---"
    Then I softly see "ExternalOrganization__c" field is required

  @171870 @tejal
  Scenario Outline: Verify if User edits a row level lookup field on child table  (Required to Save) then mandatory icon should display
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Required Fields     |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Required Fields     | Account__c     | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:appBudgetPeriodTableId---" panel
    When I expand nested table containing column value "GT-ITSGT-001"
    When I click on "Edit" icon for "AD-ITSGT--00" inside table
    Then I softly see "Account__c" field is required
    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @171871 @tejal
  Scenario Outline: Verify if User create a new user/record  lookup field on child table  (Required to Save) then mandatory icon should display
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Required Fields     |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Required Fields     | Account__c     | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-FIN.1-001" in "---program:-:appBudgetPeriodTableId---" panel
    When I expand nested table containing column value "GT-FIN.1-001"
    And I click on top right button "test" in flex table with id "EnhanceAppGrantorBudgetPeriodsFlexToggle"
    Then I softly see "Account__c" field is required
    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @172133 @172143 @tejal
  Scenario Outline: Verify if User create edit  lookup field on child &parent  table  (Required to Save) then mandatory icon should display
  |Verify if User edits the record  and simultaneously added new record  for  lookup field on child table (Required to Save) then mandatory icon should display for lookup field
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:Flex Table List | Is Master View      | true               | ApiGeneratedId:0 |
      | Flex Grid:General         | Required Fields     |                    | ApiGeneratedId:1 |
      | Flex Grid:General         | Required Fields     |                    | ApiGeneratedId:2 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue           | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View      | true                    | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
      | Flex Grid:General         | Required Fields     | ExternalOrganization__c | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General         | Required Fields     | Account__c              | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>          | EnhanceAppGrantorBudgetPeriods |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:appBudgetPeriodTableId---" panel
    When I expand nested table containing column value "GT-ITSGT-001"
    And I click on "Edit" icon for "GT-ITSGT-001" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I click on "Edit" icon for "AD-ITSGT--00" inside flex table with id "EnhanceAppGrantorBudgetPeriodsFlexToggle"
    Then I softly see "Account__c" field is required
    Then I softly see "ExternalOrganization__c" field is required
    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @172150 @tejal
  Scenario: Verify If User edits a Row level lookup field on parent table  (field is not Required to Save) then mandatory icon should not  display for lookup field
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:appBudgetPeriodTableId---" panel
    When I click on "Edit" icon for "GT-ITSGT-001" inside table
    Then I softly do not see "ExternalOrganization__c" field is required

  @172148 @tejal
  Scenario: Verify If User edits a Row level lookup field on child  table  (field is not Required to Save) then mandatory icon should not  display for lookup field
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:appBudgetPeriodTableId---" panel
    And I pause execution for "2" seconds
    When I expand nested table containing column value "GT-ITSGT-001"
    And I click on "Edit" icon for "AD-ITSGT--00" inside flex table with id "EnhanceAppGrantorBudgetPeriodsFlexToggle"
    Then I softly do not see "Account__c" field is required

  @171805 @tejal
  Scenario Outline: Verify if User remove the data from child table lookup field(Required to Save) then mandatory icon should display for lookup field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Required Fields     |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Required Fields     | Account__c     | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:appBudgetPeriodTableId---" panel
    When I expand nested table containing column value "GT-ITSGT-001"
    When I click on "Edit" icon for "AD-ITSGT--00" inside table
    And I clear the value from field "Account__c"
    When I click on top right button "Save" in flex table with id "---program:-:appBudgetPeriodTableId---"
    When I click on "Edit" icon for "AD-ITSGT--00" inside table
    Then I softly see "Account__c" field is required
    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @172144 @tejal
  Scenario Outline: Verify If User new record on child & parent  table  lookup fieldon child table  (Required to Save) then mandatory icon should display for lookup field
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:Flex Table List | Is Master View      | true               | ApiGeneratedId:0 |
      | Flex Grid:General         | Required Fields     |                    | ApiGeneratedId:1 |
      | Flex Grid:General         | Required Fields     |                    | ApiGeneratedId:2 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue           | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View      | true                    | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
      | Flex Grid:General         | Required Fields     | ExternalOrganization__c | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General         | Required Fields     | Account__c              | EnhanceAppGrantorBudgetPeriods |                           |                            |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>          | EnhanceAppGrantorBudgetPeriods |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on top right button "New" in flex table with id "---program:-:appBudgetPeriodTableId---"
    When I expand nested table containing column value "GT-ITSGT-001"
    And I click on "Edit" icon for "AD-ITSGT--00" inside flex table with id "EnhanceAppGrantorBudgetPeriodsFlexToggle"
    And I click on top right button "test" in flex table with id "EnhanceAppGrantorBudgetPeriodsFlexToggle"
    Then I softly see "Account__c" field is required
    Then I softly see "ExternalOrganization__c" field is required
    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @181124 @sprint20
  Scenario Outline: To verify, Hover over multiselect picklist in view mode then Value should be shown  on child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I pause execution for "10" seconds
    When I navigate to "Budget" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I softly see value "test2" for title "multiselecttest" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @181122 @sprint20
  Scenario Outline: E-grid - To verify, Hover over multiselect picklist in Edit  mode then Value should be shown  on child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I save the field labeled "ID" as "id"
    And I pause execution for "10" seconds
    When I navigate to "Budget" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I softly see value "test2" for title "multiselecttest" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @181115 @sprint20
  Scenario Outline: E-grid - To verify, Hover over multiselect picklist in Edit  mode then Value should be shown on child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" tab
    #When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I softly see value "test2" for title "multiselecttest" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @181112 @sprint20
  Scenario Outline: E-grid - To verify, Hover over multiselect picklist in view mode then Value should be shown
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I pause execution for "10" seconds
    When I navigate to "Budget" sub tab
    When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I softly see value "test2" for title "multiselecttest" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Examples:
      | newFieldsApi                                                                                                                                                                                                            | defaultFieldsApi                                                                                                                                                                                                        |
      | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c | SupportYear__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c,BudgetPeriod__c,SequenceNumber__c,Modified__c,Application__c,FundingOpportunity__c,BudgetPeriodCloseoutRequired__c,Award__c,Program__c,Status__c |

  @181116 @sprint20 @wip
  Scenario:E-grid - To verify, Hover over multiselect picklist  Value should be shown if user edit and save the multiselect picklist value
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I pause execution for "10" seconds
    When I navigate to "Budget" sub tab
   # When I perform quick search for "{Framework_recordUsed:MoniotoringScheduleForAllActiveGrantsRecordCreated}" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"
    Then I softly see value "test2" for title "multiselecttest" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---"

  @181527 @sprint23 @userstoryid_171888
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date field with 'Equal to ' operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I pause execution for "10" seconds
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
    When I enter advance filter values inside id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
      | End Date | equals to | 12/31/2024 |
    Then I softly see value "12/31/2024" for title "End Date" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @181632 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date field with 'greater than ' operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I pause execution for "10" seconds
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
    When I enter advance filter values inside id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
      | End Date | greater than | 12/31/2021 |
    Then I softly see value "12/31/2024" for title "End Date" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @185935 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date  field with 'less  than or equal to  ' operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I pause execution for "10" seconds
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
    When I enter advance filter values inside id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
      | End Date | less than or equal to | 12/31/2024 |
    Then I softly see value "12/31/2024" for title "End Date" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @181634 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date  field with 'greater than or equal to  ' operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I pause execution for "10" seconds
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
    When I enter advance filter values inside id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
      | End Date | greater than or equal to | 12/31/2024 |
    Then I softly see value "12/31/2024" for title "End Date" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @181633 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date  field with 'less than  ' operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I pause execution for "10" seconds
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I pause execution for "10" seconds
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
    When I enter advance filter values inside id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
      | End Date | less than | 12/31/2025 |
    Then I softly see value "12/31/2024" for title "End Date" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @185938 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date field with 'Equal to ' operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I pause execution for "10" seconds
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
    When I enter advance filter values inside id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
      | End Date | equals to | 12/31/2024 |
    Then I softly see value "12/31/2024" for title "End Date" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @185945 @sprint23
  Scenario:Data table Enhanced-To verify,  advanced filter should work for the date time   field with 'less  than or equal to  ' operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I pause execution for "15" seconds
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
    When I enter advance filter values inside id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
      | End Date | less than or equal to | 12/31/2024 |
    Then I softly see value "12/31/2024" for title "End Date" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
    #Then I softly see value "05/15/2020" for title "Current Budget Period End Date" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @185944 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date  time  field with 'greater than or equal to  ' operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I pause execution for "15" seconds
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
    When I enter advance filter values inside id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
      | End Date | greater than or equal to | 12/31/2024 |
    Then I softly see value "12/31/2024" for title "End Date" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
   #Then I softly see value "12/14/2021" for title "Current Budget Period End Date" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @185942 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date  time  field with 'less than ' operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
#    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
#    When I enter "Creation" values from "Program_Field_Values.xlsx"
#    And I click on "Save and Close Modal" in the page details
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I pause execution for "10" seconds
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
    When I enter advance filter values inside id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
      | End Date | less than | 12/31/2025 |
    Then I softly see value "12/31/2024" for title "End Date" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @185940 @sprint23
  Scenario: Data table Enhanced-To verify,  advanced filter should work for the date time  field with 'greater than ' operator
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
#    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
#    When I enter "Creation" values from "Program_Field_Values.xlsx"
#    And I click on "Save and Close Modal" in the page details
    And I pause execution for "15" seconds
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfEnhanceAppGrantorBudgetPeriods" of table id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
    When I enter advance filter values inside id "---program:-:EnhanceAppGrantorBudgetPeriodsId---"
      | End Date | greater than | 10/31/2024 |
    Then I softly see value "12/31/2024" for title "End Date" inside table "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @181526 @sprint24 @userstory_179175 @skipOnJenkins
  Scenario: Data table Enhanced-To verify, Downloaded XLS  picklist column should not displayWhen Hide column at picklist field   with user type , profile & context operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonTotalAwardObligatedAmount | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @181517 @sprint24 @userstory_179175 @skipOnJenkins
  Scenario: Data table Enhanced-To verify, In Downloaded XLS  Number column should not display  When Hide column at Number  field   with    user type &  profile  operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonTotalAwardObligatedAmount | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @181514 @sprint24 @userstory_179175 @skipOnJenkins
  Scenario: Data table Enhanced-To verify, Downloaded XLS  picklist column should not displayWhen Hide column at picklist field   with user type , profile & context operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonTotalAwardObligatedAmount | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1560                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @181519 @sprint24 @userstory_179175 @skipOnJenkins
  Scenario: Data table Enhanced-To verify,  In Downloaded xls  date  column should not display When Hide column at Date field with not   equal to  operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonTotalAwardObligatedAmount | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @181513 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, Downloaded XLS picklist column should not displayWhen Hide column at picklist field   with user type  and profile  operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                             | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonStatusColoumFieldUsingLogicalOprator | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1560                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @185950 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, Downloaded XLS picklist column should not displayWhen Hide column at picklist field   with user type  and profile  operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                             | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonStatusColoumFieldUsingLogicalOprator | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-1560                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @181511 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, Downloaded PDF rendering properly when Hide column with two operand   at Data table Enhanced  with   user type  & profile operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                      | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @181525 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, Downloaded PDF   rendering properly when Hide column with two field  at Data table Enhanced  with    user type  & profile operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                      | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:appBudgetPeriodTableId---"

  @181510 @sprint24 @userstory_179175
  Scenario: Data table Enhanced- To verify, In Downloaded PDF Currency column should not display When Hide column at currency field  with profile operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                   | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_NOTIN_SystemAdministrator | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:appBudgetPeriodTableId---"

  @181522 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, In Downloaded PDF picklist column should not displayWhen Hide column at picklist field   with user type operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                     | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_EnhancedGrid_TopAction_With_UserType_IN_Internal | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:appBudgetPeriodTableId---"

  @181518 @sprint24 @userstory_179175
  Scenario: Data table Enhanced-To verify, In Downloaded pdf  picklist column should not displayWhen Hide column at picklist field   with user type , profile & context operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:HideJsonDownloadPdfAtColoumShouldNotDisplay | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:appBudgetPeriodTableId---"

  @1813587 @sprint24  @userstory_179175
  Scenario: Data table Enhanced- To verify, In Downloaded XLS  Currency column should not display When Hide column at currency field  with profile operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_EnhancedGrid_ChildTable_TopAction_With_UserType_IN_Internal | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:appBudgetPeriodTableId---"

  @181523 @sprint24  @userstory_179175
  Scenario: Data table Enhanced-To verify, In Downloaded XLS Currency column should not display   When Hide column JSON  at currency field with  'user type ' operand  at currency field  operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_EnhancedGrid_ChildTable_TopAction_With_UserType_IN_Internal | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:appBudgetPeriodTableId---"

  @185946 @sprint24  @userstory_179175
  Scenario: Data table Enhanced-To verify, In Downloaded XLS  picklist column should not displayWhen Hide column at picklist field   with user type operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_EnhancedGrid_ChildTable_TopAction_With_UserType_IN_Internal | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:appBudgetPeriodTableId---"

  @181512 @sprint24  @userstory_179175
  Scenario: Data table Enhanced-To verify, Downloaded PDF rendering properly  When Hide column with three field  at Data table Enhanced  with  user type, profile & context  operans
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:JsonTotalAwardObligatedAmount | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:appBudgetPeriodTableId---"

  @181521 @sprint24  @userstory_179175
  Scenario: Data table Enhanced-To verify, In Downloaded pdf Number column should not display  When Hide column at Number  field   with user type operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                      | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:appBudgetPeriodTableId---"

  @181520 @sprint24  @userstory_179175 @skipOnJenkins
  Scenario: Data table Enhanced-To verify, Downloaded xls   Number column should not display  When Hide column at Number  field   with user type operand
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                      | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    When I pause execution for "5" seconds
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as XLS" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:appBudgetPeriodTableId---"

  @181508 @sprint24  @userstory_179175 @skipOnJenkins
  Scenario: Data table Enhanced-To verify, In Downloaded PDF Currency column should not display When Hide column JSON  with 'user type ' operand  at currency field  operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                      | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCatGrantorFlexGridgrid"
    And I select "Download as PDF" from dropdown
    When I click alert button "Yes"
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:appBudgetPeriodTableId---"

  @190157 @sprint25
  Scenario: To verify, if the users 'Edit' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: None), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | --None--      | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal         | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
  #  When I perform quick search for "BP01" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I refresh the page
    And I save the total record from flex table id "---program:-:appBudgetPeriodTableId---" as "totalRecord"
    And I navigate to "Budget" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | {SavedValue:totalRecord} |

  @190159 @sprint25
  Scenario: To verify, if the users 'Edit' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh the grid), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue    | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh the grid | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal            | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    #When I perform quick search for "BP01" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I refresh the page
    And I save the total record from flex table id "---program:-:appBudgetPeriodTableId---" as "totalRecord"
    And I navigate to "Budget" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | {SavedValue:totalRecord} |

  @190165 @sprint25
  Scenario: To verify, if the users 'Edit' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Close modal and refresh grid), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue                | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Close modal and refresh grid | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal                        | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
   # When I perform quick search for "BP01" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I refresh the page
    And I save the total record from flex table id "---program:-:appBudgetPeriodTableId---" as "totalRecord"
    And I navigate to "Budget" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | {SavedValue:totalRecord} |

  @190166 @sprint25
  Scenario: To verify, if the users 'Edit' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh the entire page), the entire page gets refreshed and the table navigates to its first page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue           | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh the entire page | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal                   | EnhanceAppGrantorBudgetPeriods | Name                      | Edit                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
   # When I perform quick search for "BP01" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I refresh the page
    And I save the total record from flex table id "---program:-:appBudgetPeriodTableId---" as "totalRecord"
    And I navigate to "Budget" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | {SavedValue:totalRecord} |

  @190155 @sprint25
  Scenario: To verify, if the users 'View' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: None), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | --None--      | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal         | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
   # When I perform quick search for "BP01" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I refresh the page
    And I save the total record from flex table id "---program:-:appBudgetPeriodTableId---" as "totalRecord"
    And I navigate to "Budget" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | {SavedValue:totalRecord} |

  @190158 @sprint25
  Scenario: To verify, if the users 'View' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh the grid), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue    | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh the Grid | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal            | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
   # When I perform quick search for "BP01" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I refresh the page
    And I save the total record from flex table id "---program:-:appBudgetPeriodTableId---" as "totalRecord"
    And I navigate to "Budget" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | {SavedValue:totalRecord} |

  @190161 @sprint25
  Scenario: To verify, if the users 'Edit' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh all Flextables), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue          | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh all flextables | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal                  | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    #When I perform quick search for "BP01" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I refresh the page
    And I save the total record from flex table id "---program:-:appBudgetPeriodTableId---" as "totalRecord"
    And I navigate to "Budget" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | {SavedValue:totalRecord} |

  @190162 @sprint25
  Scenario: To verify, if the users 'Edit' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh parent page), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue       | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh parent page | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal               | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
   # When I perform quick search for "BP01" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I refresh the page
    And I save the total record from flex table id "---program:-:appBudgetPeriodTableId---" as "totalRecord"
    And I navigate to "Budget" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | {SavedValue:totalRecord} |

  @190163 @sprint25
  Scenario: To verify, if the users 'View' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh parent page), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue       | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh parent page | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal               | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    #When I perform quick search for "BP01" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I refresh the page
    And I save the total record from flex table id "---program:-:appBudgetPeriodTableId---" as "totalRecord"
    And I navigate to "Budget" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | {SavedValue:totalRecord} |

  @190164 @sprint25
  Scenario: To verify, if the users 'View' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour:Close modal and refresh grid), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue                | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Close modal and refresh grid | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal                        | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
   #When I perform quick search for "BP01" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I refresh the page
    And I save the total record from flex table id "---program:-:appBudgetPeriodTableId---" as "totalRecord"
    And I navigate to "Budget" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | {SavedValue:totalRecord} |

  @190168 @sprint25
  Scenario: To verify, if the users 'View' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh the entire page), the entire page gets refreshed and the table navigates to its first page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue           | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh the entire page | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal                   | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
   # When I perform quick search for "BP01" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I refresh the page
    And I save the total record from flex table id "---program:-:appBudgetPeriodTableId---" as "totalRecord"
    And I navigate to "Budget" sub tab
    Then I see entire page is refreshing
    Then I see the text containing :
      | {SavedValue:totalRecord} |

  @192567 @sprint1 @userstory_184938 @skipOnJenkins
  Scenario: E-grid To verify,Hide column using "Profile"operand  then that column is not displayed in the pdf  as well as in the UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppGrantorBudgetPeriodsFlexToggle"
    And I select "Download as PDF" from dropdown
    And I pause execution for "5" seconds
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @192569 @sprint1 @userstory_184938 @skipOnJenkins
  Scenario: E-grid To verify,Hide column using "Profile"operand  then that column is not displayed in the page layout PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppGrantorBudgetPeriodsFlexToggle"
    And I select "Download as PDF" from dropdown
    And I pause execution for "5" seconds
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @192570 @sprint1 @userstory_184938  @skipOnJenkins
  Scenario:E-grid To verify,Hide column using "Userapp"operand  then that column is not displayed in the page layout PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                           | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_EditAction_With_UserApp_IN_StateAsGrantor | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppGrantorBudgetPeriodsFlexToggle"
    And I select "Download as PDF" from dropdown
    And I pause execution for "5" seconds
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @192572 @sprint1 @userstory_184938  @skipOnJenkins
  Scenario: E-grid To verify,Hide column using "Userapp"operand  then that column is not displayed in the page layout PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                           | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_Enhancedgrid_EditAction_With_UserApp_IN_StateAsGrantor | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppGrantorBudgetPeriodsFlexToggle"
    And I select "Download as PDF" from dropdown
    And I pause execution for "5" seconds
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @192573 @sprint1 @userstory_184938  @skipOnJenkins
  Scenario: E-grid To verify,Hide column using "User Type" operand  then that column is not displayed in the PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                     | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_EnhancedGrid_TopAction_With_UserType_IN_Internal | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppGrantorBudgetPeriodsFlexToggle"
    And I select "Download as PDF" from dropdown
    And I pause execution for "5" seconds
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @192575 @@sprint1 @userstory_184938  @skipOnJenkins
  Scenario: E-grid To verify,Hide column using "User Type" operand  then that column is not displayed in the page layout PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Column JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                                                                                | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON | govgrants_config:Hide_Expression_EnhancedGrid_ChildTable_TopAction_With_UserType_IN_Internal | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppGrantorBudgetPeriodsFlexToggle"
    And I select "Download as PDF" from dropdown
    And I pause execution for "5" seconds
    Then I softly do not see "Fee Fund Requested" in flex table header "---program:-:EnhanceAppGrantorBudgetPeriodsId---"

  @192950 @sprint1 @userstory_176992
  Scenario: E-grid- To verify , Number  field should restrict the field limit
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Budget" sub tab
    And I pause execution for "5" seconds
    #When I perform quick search for "BP01" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I enter value "-913045545747433278" into field "Test_num__c"
    And I click on top right button "Save" in flex table with id "---program:-:appBudgetPeriodTableId---"
    Then I see the following message in the page details contains:
      | Saved Successfully! |
#    Examples:
#      | newFieldsApi                                                                                                                                                                                                                                   | defaultFieldsApi                                                                                                                                                                                                                   |
#      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c,Test_num__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @190160 @sprint25
  Scenario: To verify, if the users 'View' and close the record's modal on 2nd page of an E-Grid (Refresh Behaviour: Refresh all Flextables), they remain on the same page after Modal closing
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         |                   | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline            | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue          | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior         | Refresh all flextables | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
      | Flex Table Action     | Single Row Edit Behavior | Modal                  | EnhanceAppGrantorBudgetPeriods | Name                      | View                       |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "BP01" in "---program:-:appBudgetPeriodTableId---" panel
    And I click on "Edit" icon for "BP01" inside flex table with id "---program:-:appBudgetPeriodTableId---"
    And I enter value "12345678901234" into field "FeeFundRequested__c"
    And I click on top right button "Save" in flex table with id "---program:-:appBudgetPeriodTableId---"
    Then I see the following message in the page details contains:
      | Saved Successfully! |
#    Examples:
#      | newFieldsApi                                                                                                                                                                                                                                        | defaultFieldsApi                                                                                                                                                                                                                   |
#      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,Test_Currency__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |
#
  @192958 @sprint1
  Scenario: E-grid- To verify , Number  field should accept the negative value
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I pause execution for "5" seconds
    When I perform quick search for "Construction" in "---program:-:EnhanceAppBudCateGrantorTableId---" panel
    And I pause execution for "5" seconds
    And I click on "Edit" icon for "Construction" inside flex table with id "---program:-:EnhanceAppBudCateGrantorTableId---"
    And I enter value "-91304" into field "NonCashMatch__c"
    #And I click on top right button "Save" in flex table with id "---program:-:EnhanceAppBudCateGrantorTableId---"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Saved Successfully! |
#    Examples:
#      | newFieldsApi                                                                                                                                                                                                                                   | defaultFieldsApi                                                                                                                                                                                                                   |
#      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c,Test_num__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @192952 @sprint1
  Scenario: Data table Enhanced-To verify , currency field should accept the negative value
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
#      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Flex Grid:General     | Display Field Names | <newFieldsApi> | EnhanceAppGrantorBudgetPeriods  |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    And I pause execution for "10" seconds
    When I perform quick search for "Construction" in "---program:-:EnhanceAppBudCateGrantorTableId---" panel
    And I pause execution for "5" seconds
    And I click on "Edit" icon for "Construction" inside flex table with id "---program:-:EnhanceAppBudCateGrantorTableId---"
    And I enter value "-91304" into field "NonCashMatch__c"
    #And I click on top right button "Save" in flex table with id "---program:-:EnhanceAppBudCateGrantorTableId---"
    And I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Saved Successfully! |

  @54704      @verifyPicklistFieldShouldBeInViewModeAfterEditingMultipleRecords @enhancedGrid @doubted
  Scenario Outline: validate picklist should visible in only view mode after Edit status field for multiple records
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName     | fieldOrignalValue               | filterId         |
      | Flex Grid:Flex Table List | Filter Clause | <defaultFilterClauseForFLV2539> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName     | fieldNewValue               | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Filter Clause | <newFilterClauseForFLV2539> | EnhanceAppGrantorBudgetPeriods | Name                      | FLV-3203                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    And I edit the following rows inline in flex table with id "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" by clicking "Edit" :
      | Project Title                 | Status |
      | Road COnst. Ann.              | Active |
      | Road Construction Annoumsment | Active |
    Then I see select box for picklist is not displayed for status inside table
    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @77285    @enableFormulaFieldAtFlexTableForEnhanced-gPlanning
  Scenario: Verify Formula field at flex table enhanced
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid | EnhanceAppGrantorBudgetPeriods | Name                      | FTC-13587                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see cell subtotal as expected as given formula at "FeeFundRequested__c" field

  @49355    @enableSubTotalFieldAtChildFlexTableForEnhancedGrid-gPlanning @enhancedGrid
  Scenario: Verifying Enable Sub  Total (Child Flex Table )
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total    | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11521                  |
      | Flex Table List       | Enable Sub Total    | true          | EnhanceAppBudCateGrantorFlexTable | Name                      | FTC-11521                  |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    #When I perform quick search for "GT-VT-001" in "---program:-:EnhanceAppGrantorBudgetPeriodsTableId---" panel
    When I expand nested table containing column value "BP01"
    Then I see field "Cash Match" inside page block