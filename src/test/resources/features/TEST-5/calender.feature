@calenderConfig-component @regression-test5 @calenderConfig
Business Need: Calender Config Component Scenarios
  Test all calender config component based scenarios
  As a configuration manager i make different configurational changes in calender component and will validate them.

  @35124    @activeFieldAtCalenderConfig
  Scenario: Disabling program from calender after changing confiuration and validating calender grantor-Home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Calender Config       | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName | fieldNewValue | coreComponentField   |
      | Calender Config:General | Active    | false         | Grantor_Home_Program |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    Then I see all programs inside calender is not displayed

  @114993    @validateCalendarTabIsDisplayedAtHomePhase
  Scenario: validate calendar tab is displayed at grantor-Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "My_Workspace_Calendar" tab is displayed at Home

  @127018    @verifyByClickOnMonthButtonAtCalendarItIsRenderingInMonthFormatForAdminUser
  Scenario: validate that calender is displayed in month format if user click on 'Month' button at calendar
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    Then I see calender displayed in "Month" format

  @127020    @verifyByClickOnWeekButtonAtCalendarItIsRenderingInWeekFormatForAdminUser
  Scenario: validate that calender is displayed in Week format if user click on 'Week' button at calendar
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Week" Button at calendar
    Then I see calender displayed in "Week" format

  @127021    @verifyByClickOnDayButtonAtCalendarItIsRenderingInDayFormatForAdminUser
  Scenario: validate that calender is displayed in Day format if user click on 'Day' button at calendar
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Day" Button at calendar
    Then I see calender displayed in "Day" format

  @127051    @verifyByClickOnMonthButtonAtCalendarItIsRenderingInMonthFormatForSPIUser
  Scenario: validate that calender is displayed in month format if user click on 'Month' button at calendar for SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    Then I see calender displayed in "Month" format

  @127054    @verifyByClickOnWeekButtonAtCalendarItIsRenderingInWeekFormatForSPIUser
  Scenario: validate that calender is displayed in Week format if user click on 'Week' button at calendar for SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Week" Button at calendar
    Then I see calender displayed in "Week" format

  @127056    @verifyByClickOnDayButtonAtCalendarItIsRenderingInDayFormatForSPIUser
  Scenario: validate that calender is displayed in Day format if user click on 'Day' button at calendar for SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Day" Button at calendar
    Then I see calender displayed in "Day" format

  @127031    @verifyByClickOnRecordIdDisplayedAtCalendarItShouldRedirectToRespectiveRecordDetailPageForAdminUser
  Scenario: validate that admin user is redirected to respective record detail page by click on record id at calendar layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I pause execution for "10" seconds
    When I navigate to "Overview" sub tab
    And I save the field labeled "ID" as "savedValue"
    And I pause execution for "3" seconds
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I click on lookup link contains "{SavedValue:savedValue}"
    And I wait for "5" seconds
    Then I softly see field "ID" as "{SavedValue:savedValue}"

  @127066    @verifyByClickOnRecordIdDisplayedAtCalendarItShouldRedirectToRespectiveRecordDetailPageForSPIUser
  Scenario: validate that SPI user is redirected to respective record detail page by click on record id at calendar layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | ApiGeneratedId:0 |
      | Page Tabs Config                         | Highlights Panel? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active         | false         | Annoucement Profile-FOA | Name                      | PBD-3057                   |
      | Page Tabs Config:Page Layout Action      | Highlights Panel? | true          | Grantee State Program   | Name                      | TAB-409                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation_v" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:ProgramContactsNewTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "BP-01" inside flex table with id "---program:-:budgetPeriodDetailsTableId---"
    And I switch to iframe with id "ProgramBudgetPeriodiframeContentId"
    And I enter value "Active" into field "fieldStatus__c"
    And I click modal button "Save"
    And I save the field labeled "ID" as "PEGMSID"
    And I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    And I enter value "Automation PM" into field "fieldName__c"
    And I enter value "Program Approver" into field "fieldBusinessRole__c"
    And I click modal button "Save"
    And I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    And I enter value "Allen PM" into field "fieldName__c"
    And I enter value "Key POC" into field "fieldBusinessRole__c"
    And I click modal button "Save"
    And I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountInformationTableId---"
    When I click "Add" after selection of "FA-17-03" in the table "---program:-:fundingAccountSelectionTableId---"
    And I navigate to "Financials" sub tab
    And I pause execution for "10" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:budgetCategoryTableId---"
    When I click "Add" after selection of "SBC-A-209" in the table "---program:-:budgetCategorySelectionTableId---"
    And I navigate to "Log" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:relatedFederalProgramTableId---"
    When I click "Add" after selection of "90.404" in the table "---program:-:relatedFederalProgramSelectionTableId---"
    And I navigate to "Log" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programServiceAreaTableId---"
    When I click "Save" after selection of "PSA-0005" in the table "---program:-:programServiceAreaSelectionTableId---"
    And I refresh the page
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Start" icon for "{SavedValue:PEGMSID}" inside table
    And I "Approve" in the approval decision
    When I re-login to "As a Grantor" app as "Automation" user on "default" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View Program Details" icon for "{SavedValue:PEGMSID}" inside table
    When I click on "Activate" in the page details
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "{SavedValue:PEGMSID}" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
    And I click modal button "Continue"
    When I enter "AnnouncementCreation_v" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "ID" as "AnnEGMSID"
    And I pause execution for "3" seconds
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I click on lookup link contains "{SavedValue:AnnEGMSID}"
    Then I see the header is "Funding Opportunity" in the page details
    Given I delete the record "{SavedValue:AnnEGMSID}" from the object "Announcement__c" with field "Name"
    Given I delete the record "{SavedValue:PEGMSID}" from the object "Program__c" with field "Name"

  @127042  @verifyByMouseHoverOnRecordIdAMini-PageLayoutDisplayedAtCalendarItShouldRedirectToRespectiveRecordDetailPageForAdminUser
  Scenario: validate that mini page layout is displayed to admin user by hover on record id at calendar layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    And I save the field labeled "Title" as "TITLE"
    And I save the field labeled "Program Type" as "PT"
    And I pause execution for "3" seconds
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I hover mouse on lookup link "{SavedValue:savedValue} (Start Date)"
    Then I see the text :
      | {SavedValue:savedValue} |
      | Department of Community Health     |
      | {SavedValue:PT}                    |

  @127071    @verifyByMouseHoverOnRecordIdAMini-PageLayoutDisplayedAtCalendarItShouldRedirectToRespectiveRecordDetailPageForSPIUser @SkipOnJenkins
  Scenario: validate that mini page layout is displayed to SPI user by hover on record id at calendar layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | ApiGeneratedId:0 |
      | Page Tabs Config                         | Highlights Panel? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active         | false         | Annoucement Profile-FOA | Name                      | PBD-3057                   |
      | Page Tabs Config:Page Layout Action      | Highlights Panel? | true          | Grantee State Program   | Name                      | TAB-409                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation_v" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:ProgramContactsNewTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "BP-01" inside flex table with id "---program:-:budgetPeriodDetailsTableId---"
    And I switch to iframe with id "ProgramBudgetPeriodiframeContentId"
    And I enter value "Active" into field "fieldStatus__c"
    And I click modal button "Save"
    And I save the field labeled "ID" as "PEGMSID"
    And I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    And I enter value "Automation PM" into field "fieldName__c"
    And I enter value "Program Approver" into field "fieldBusinessRole__c"
    And I click modal button "Save"
    And I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    And I enter value "Allen PM" into field "fieldName__c"
    And I enter value "Key POC" into field "fieldBusinessRole__c"
    And I click modal button "Save"
    And I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountInformationTableId---"
    When I click "Add" after selection of "FA-17-03" in the table "---program:-:fundingAccountSelectionTableId---"
    And I navigate to "Financials" sub tab
    And I pause execution for "10" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:budgetCategoryTableId---"
    When I click "Add" after selection of "SBC-A-209" in the table "---program:-:budgetCategorySelectionTableId---"
    And I navigate to "Log" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:relatedFederalProgramTableId---"
    When I click "Add" after selection of "90.404" in the table "---program:-:relatedFederalProgramSelectionTableId---"
    And I navigate to "Log" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programServiceAreaTableId---"
    When I click "Save" after selection of "PSA-0005" in the table "---program:-:programServiceAreaSelectionTableId---"
    And I refresh the page
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Start" icon for "{SavedValue:PEGMSID}" inside table
    And I "Approve" in the approval decision
    When I re-login to "As a Grantor" app as "Automation" user on "default" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View Program Details" icon for "{SavedValue:PEGMSID}" inside table
    When I click on "Activate" in the page details
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "{SavedValue:PEGMSID}" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
    And I click modal button "Continue"
    When I enter "AnnouncementCreation_v" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "ID" as "AnnEGMSID"
    And I pause execution for "3" seconds
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    When I hover mouse on lookup link "{SavedValue:AnnEGMSID} (FOA Publish Date)"
    Then I see the text :
      | Announcement                           |
      | {SavedValue:AnnEGMSID}                 |
      | Announcement created for calendar test |
      | Created                                |
    Given I delete the record "{SavedValue:AnnEGMSID}" from the object "Announcement__c" with field "Name"
    Given I delete the record "{SavedValue:PEGMSID}" from the object "Program__c" with field "Name"

  @127323    @verifyByClickOnMonthButtonAtCalendarItIsRenderingInMonthFormatForPMUser
  Scenario: validate that calender is displayed in month format if user click on 'Month' button at calendar for PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    Then I see calender displayed in "Month" format

  @127325    @verifyByClickOnWeekButtonAtCalendarItIsRenderingInWeekFormatForInternalUser
  Scenario: validate that calender is displayed in Week format if user click on 'Week' button at calendar for PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Week" Button at calendar
    Then I see calender displayed in "Week" format

  @127324   @verifyByClickOnDayButtonAtCalendarItIsRenderingInDayFormatForPMUser
  Scenario: validate that calender is displayed in Day format if user click on 'Day' button at calendar for PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I pause execution for "6" seconds
    When I click on "My_Workspace_Calendar"
    And I click on "Day" Button at calendar
    Then I see calender displayed in "Day" format

  @127034  @verifyByClickOnTodayButtonToday'sDateDisplayedInsideCalendarWithLightPinkBackgroundColorForAdminUser
  Scenario: validate that by click on 'Today' button at calendar, today's date displayed with light pink background color for admin user
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I click on "Next" navigation button at calendar
    And I click on "Today" Button at calendar
    Then I see today's Date is displayed with light pink background at calendar

  @127069 @verifyByClickOnTodayButtonToday'sDateDisplayedInsideCalendarWithLightPinkBackgroundColorForSPIUser
  Scenario: validate that by click on 'Today' button at calendar, today's date displayed with light pink background color for SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I click on "Next" navigation button at calendar
    And I click on "Today" Button at calendar
    Then I see today's Date is displayed with light pink background at calendar

  @126950  @verifydminUserIsAbleToCreateCaseAndItIsDisplayedInsideCasesTableAtHomePhase
  Scenario: validate that admin user can create case and it is displayed inside 'Cases table' at home phase
    Given I delete the record "Automation_Script_Record" from the object "Case__c" with field "Subject__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click on top right button "New" in flex table with id "CaseList"
    When I enter "Creation" values from "Create_Case.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "Case #" as "savedValue"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click toggle button to select "Open Cases"
    When I perform quick search for "{SavedValue:savedValue}"
    Then I see value "{SavedValue:savedValue}" for title "Case#" inside table "CaseList"

  @127458  @verifydminUserIsAbleToCreateCaseWithMediumPriorityAndItIsDisplayedInsideCasesTableAtHomePhase
  Scenario: validate that admin user can create case with medium priority and it is displayed inside 'Cases table' at home phase
    Given I delete the record "Automation_Script_Record" from the object "Case__c" with field "Subject__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click on top right button "New" in flex table with id "CaseList"
    When I enter "Creation1" values from "Create_Case.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "Case #" as "savedValue"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click toggle button to select "Open Cases"
    When I perform quick search for "{SavedValue:savedValue}"
    Then I softly see value "{SavedValue:savedValue}" for title "Case#" inside table "CaseList"

  @127464  @verifydminUserIsAbleToOpenCasesInEditModeInsideCasesTableAtHomePhase
  Scenario: validate that edit action opend in edit mode inside 'Cases table' at home phase
    Given I delete the record "Automation_Script_Record" from the object "Case__c" with field "Subject__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click on top right button "New" in flex table with id "CaseList"
    When I enter "Creation1" values from "Create_Case.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "Case #" as "savedValue"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click toggle button to select "Open Cases"
    When I perform quick search for "{SavedValue:savedValue}"
    Then I softly see value "{SavedValue:savedValue}" for title "Case#" inside table "CaseList"
    When I click on "Edit" icon for "{SavedValue:savedValue}" inside table
    Then I see edit opens with "/apex/CaseEdit?Id="

  @127465  @verifydminUserIsAbleToEditAndUpdateExistingCaseInEditModeInsideCasesTableAtHomePhase
  Scenario: validate that admin user is able to edit and update existing case inside 'Cases table' at home phase
    Given I delete the record "Automation_Script_Record" from the object "Case__c" with field "Subject__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click on top right button "New" in flex table with id "CaseList"
    When I enter "Creation1" values from "Create_Case.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "Case #" as "savedValue"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click toggle button to select "Open Cases"
    When I perform quick search for "{SavedValue:savedValue}"
    Then I softly see value "{SavedValue:savedValue}" for title "Case#" inside table "CaseList"
    When I click on "Edit" icon for "{SavedValue:savedValue}" inside table
    When I enter value "Feature Request" into field "Type__c"
    And I click on "Save" in the page details
    Then I see field "Type" as "Feature Request"

  @127466  @verifyAdvanceFilterInsideCasesTableAtHomePhase
  Scenario: validate advance filter inside 'Cases table' at home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I pause execution for "20" seconds
    When I click on advance filter "#advfCaseList" of table id "CaseList"
    When I enter advance filter values inside id "advfCaseList"
      | Subject | Starts with | Test Automation |
    Then I see value "Test Automation Data DND" for title "Subject" inside table "CaseList"

  @127471  @verifyAssignedToFieldWithValueIsDisplayedAtCasesDetailPage
  Scenario: validate assigned to field with value is displayed at cases detail page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click toggle button to select "Open Cases"
    When I perform quick search for "Test Automation Data DND"
    When I click on "View" icon for "Test Automation Data DND" inside table
    Then I softly see field "Assigned To" as "Nauman Shahid"
    When I click "Nauman Shahid" lookup link
    Then I see the header is "User" in the page details

  @127473  @verifyAssignToUserFunctionalityInsideCasesDetailPage
  Scenario: validate Assign To User functionality at cases detail page
    Given I delete the record "Automation_Script_Record" from the object "Case__c" with field "Subject__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click on top right button "New" in flex table with id "CaseList"
    When I enter "Creation" values from "Create_Case.xlsx"
    And I click on "Save" in the page details
    When I click on "Assign to User" in the page details
    When I check "Swati" boxes in flex table with id "toggleFlexTableUserListForQueue"
    And I click on top right button "Assign Case" in flex table with id "UserListForQueue"
    And I save the field containing "Assigned To" as "AssignedTo"
    Then I softly see field "Assigned To" as "{SavedValue:AssignedTo}"

  @127646  @verifyCasesShoulGetClosedByClickOnCloseCaseButtonAtDetailPage
  Scenario: validate by click on close case action at detail pages case should get closed
    Given I delete the record "Automation_Script_Record" from the object "Case__c" with field "Subject__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click on top right button "New" in flex table with id "CaseList"
    When I enter "Creation" values from "Create_Case.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "Case #" as "savedValue"
    And I click on "Close Case" in the page details
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click toggle button to select "Open Cases"
    When I perform quick search for "{SavedValue:savedValue}"
    Then I see "No Records Found" inside flex table with id "CaseList"

  @127647  @verifyClosedCasesShoulGetDisplayedInsideCloseCasesTableAtHomePhase
  Scenario: validate that close case should be displayed inside closed cases table at home phase
    Given I delete the record "Automation_Script_Record" from the object "Case__c" with field "Subject__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click on top right button "New" in flex table with id "CaseList"
    When I enter "Creation" values from "Create_Case.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "Case #" as "savedValue"
    And I click on "Close Case" in the page details
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click toggle button to select "Closed Cases"
    When I perform quick search for "{SavedValue:savedValue}"
    Then I softly see value "{SavedValue:savedValue}" for title "Case#" inside table "CaseList"
    When I click on "View" icon for "{SavedValue:savedValue}" inside table
    Then I softly see field "Status" as "Closed"

  @127648  @verifyClosedCasesShouldBeEditableInsideCloseCasesTableAtHomePhase
  Scenario: validate that close case should be editable inside closed cases table at home phase
    Given I delete the record "Automation_Script_Record" from the object "Case__c" with field "Subject__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click on top right button "New" in flex table with id "CaseList"
    When I enter "Creation" values from "Create_Case.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "Case #" as "savedValue"
    And I click on "Close Case" in the page details
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click toggle button to select "Closed Cases"
    When I perform quick search for "{SavedValue:savedValue}"
    When I click on "Edit" icon for "{SavedValue:savedValue}" inside table
    When I enter value "Question" into field "Type__c"
    And I click on "Save" in the page details
    Then I softly see field "Type" as "Question"

  @127653  @verifyassignedToTier2FunctionalityAtCasesInsidePageDetail
  Scenario: validate by click at 'assigned toTier2' action, case status changes to Tier2 support
    Given I delete the record "Automation_Script_Record" from the object "Case__c" with field "Subject__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click on top right button "New" in flex table with id "CaseList"
    When I enter "Creation" values from "Create_Case.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "Case #" as "savedValue"
    And I click on "Assign To Me" in the page details
    And I click on "Assign To Tier2" in the page details
    And I navigate to "HOME" tab
    When I click on "tmpcase1FlexTable"
    And I click toggle button to select "Open Cases"
    When I perform quick search for "{SavedValue:savedValue}"
    When I click on "View" icon for "{SavedValue:savedValue}" inside table
    Then I see field "Status" as "Tier2 Support"

  @127474    @verifyByClickOnMonthButtonAtCalendarItIsRenderingInMonthFormatForAdminUserAtRecordLevel
  Scenario: validate that calender is displayed in month format if admin click on 'Month' button at record level calendar
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Menu" in the page details
    And I select "Calendar" from dropdown
    And I click on "Month" Button at calendar
    Then I see calender displayed in "Month" format

  @127475    @verifyByClickOnWeekButtonAtCalendarItIsRenderingInWeekFormatForAdminUserAtRecordLevel
  Scenario: validate that calender is displayed in week format if admin click on 'Week' button at record level calendar
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Menu" in the page details
    And I select "Calendar" from dropdown
    And I click on "Week" Button at calendar
    Then I see calender displayed in "Week" format

  @127476    @verifyByClickOnDayButtonAtCalendarItIsRenderingInDayFormatForAdminUserAtRecordLevel
  Scenario: validate that calender is displayed in Day format if admin click on 'Day' button at record level calendar
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Menu" in the page details
    And I select "Calendar" from dropdown
    And I click on "Day" Button at calendar
    Then I see calender displayed in "Day" format

  @127482  @verifyProgramIDDisplayedAtMonthWiseCalendarInsideRespectiveRecordDetailPageForAdminUser
  Scenario: validate that program ID is displayed at month wise calendar inside respective record detail page for admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    When I click on "Menu" in the page details
    And I select "Calendar" from dropdown
    And I click on "Month" Button at calendar
    Then I see the text :
      | {SavedValue:savedValue} (Start Date) |

  @127487   @verifyProgramIDDisplayedAtDayWiseCalendarInsideRespectiveRecordDetailPageForAdminUser
  Scenario: validate that program ID is displayed at day wise calendar inside respective record detail page for admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    When I click on "Menu" in the page details
    And I select "Calendar" from dropdown
    And I click on "Day" Button at calendar
    Then I see the text :
      | {SavedValue:savedValue} (Start Date) |

  @127485   @verifyProgramIDDisplayedAtWeekWiseCalendarInsideRespectiveRecordDetailPageForAdminUser
  Scenario: validate that program ID is displayed at week wise calendar inside respective record detail page for admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    When I click on "Menu" in the page details
    And I select "Calendar" from dropdown
    And I click on "Week" Button at calendar
    Then I see the text :
      | {SavedValue:savedValue} (Start Date) |

  @127489    @verifyByClickOnRecordIdDisplayedAtCalendarItShouldRedirectToRespectiveRecordDetailPageForInternalUser
  Scenario: validate that Internal user is redirected to respective record detail page by click on record id at calendar layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    And I pause execution for "3" seconds
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I click on lookup link contains "{SavedValue:savedValue}"
    Then I see the header is "Program" in the page details

  @127488    @verifyByClickOnRecordIdDisplayedAtRecordLevelCalendarCalendarItShouldRedirectToRespectiveRecordDetailPageForInternalUser
  Scenario: validate that Internal user is redirected to respective record detail page by click on record id at record detail
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    And I pause execution for "3" seconds
    When I click on "Menu" in the page details
    And I select "Calendar" from dropdown
    And I click on "Month" Button at calendar
    And I click on lookup link contains "{SavedValue:savedValue}"
    Then I see the header is "Program" in the page details

  @127491    @verifyByMouseHoverOnRecordIdAMini-PageLayoutDisplayedAtCalendarAtRecordDetailPageForAdminUser
  Scenario: validate that mini page layout is displayed to admin user by hover on record id at page detail layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    And I save the field labeled "Title" as "TITLE"
    And I pause execution for "3" seconds
    When I click on "Menu" in the page details
    And I select "Calendar" from dropdown
    And I click on "Month" Button at calendar
    When I hover mouse on lookup link "{SavedValue:savedValue} (Start Date)"
    Then I see the text :
      | {SavedValue:savedValue}        |
      | Department of Community Health |
      | {SavedValue:TITLE}             |

  @127655    @verifyProgramIDIsDisplayedAtDayWiseCalendarForAdminUserAtHomePhase
  Scenario: validate that program ID is displayed at day wise calendar at home phase to admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    And I pause execution for "3" seconds
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Day" Button at calendar
    Then I see the text :
      | {SavedValue:savedValue} (Start Date) |

  @127654    @verifyProgramIDIsDisplayedAtWeekWiseCalendarForAdminUserAtHomePhase
  Scenario: validate that program ID is displayed at week wise calendar at home phase to admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    And I pause execution for "3" seconds
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Week" Button at calendar
    Then I see the text :
      | {SavedValue:savedValue} (Start Date) |

  @127490  @verifyByClickOnTodayButtonToday'sDateDisplayedInsideCalendarWithLightPinkBackgroundColorForAdminUserAtRecordLevel
  Scenario: validate that by click on 'Today' button at calendar, today's date displayed with light pink background color for admin user at record level
    When I login as "Automation" user
    When I pause execution for "8" seconds
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Menu" in the page details
    And I select "Calendar" from dropdown
    And I click on "Month" Button at calendar
    And I click on "Next" navigation button at calendar
    And I click on "Today" Button at calendar
    Then I see today's Date is displayed with light pink background at calendar

  @127657    @verifyAdminUserCanSeeProgramIdInAquaBlueColorAtMonthWiseCalendar-HomePhase
  Scenario: validate admin User is able to see program ID in aqua blue color at month wise calendar-HomePhase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue                                      | filterId         |
      | Calender Config       | Date Fields | govgrants_config:DefaultDateFieldsJsonAtCalendarConfig | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName   | fieldNewValue                                      | coreComponentField   |
      | Calender Config:General | Date Fields | govgrants_config:NewDateFieldsJsonAtCalendarConfig | Grantor_Home_Program |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "0" into field "fieldStartDate__c"
    When I enter value "365" into field "fieldEndDate__c"
    When I enter value "0" into field "fieldDateandTime__c"
    When I click on "Save" in the page details
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I pause execution for "5" seconds
    Then I see "PG-343-179 (DateandTime)" record is displayed in "aqua blue" color inside calendar

  @127658    @verifyAdminUserCanSeeAnnouncementIdInTealGreenColorAtMonthWiseCalendar-HomePhase
  Scenario Outline: validate admin User is able to see announcement ID in teal green color at month wise calendar-HomePhase
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName     | fieldOrignalValue                                                  | coreComponentField              | filterId         |
      | Calender Config                          | Date Fields   | govgrants_config:DefaultDateFieldsJsonAtAnnouncementCalendarConfig | Grantor_Home_Announcement       | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active     | false                                                              | Annoucement Profile-Sole Source | ApiGeneratedId:1 |
      | Calender Config                          | Filter Clause | <filterClause>                                                     | Grantor_Home_Announcement       | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName     | fieldNewValue                                                  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Calender Config:General                  | Date Fields   | govgrants_config:NewDateFieldsJsonAtAnnouncementCalendarConfig | Grantor_Home_Announcement       |                           |                            |
      | Page Block Config:Page Block Rule Detail | Is Active     | true                                                           | Annoucement Profile-Sole Source | Name                      | PBD-9244                   |
      | Calender Config:General                  | Filter Clause |                                                                | Grantor_Home_Announcement       |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Test"
    When I click on "Edit" icon for "Test" inside table
    When I pause execution for "10" seconds
    When I enter value "0" into field "fieldApplicationDeadlineWithDateTime__c"
    When I click on "Save" in the page details
    When I pause execution for "10" seconds
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I pause execution for "10" seconds
    Then I see "AN-343-035" record is displayed in "teal green" color inside calendar
    Examples:
      | filterClause                                                                                                                                                                                                                                                                                                                                                                            |
      | ((CreatedDate = LAST_N_DAYS:60) OR (FOAPublicationDate__c = LAST_N_DAYS:60 or FOAPublicationDate__c = NEXT_N_DAYS:90) or (EstimatedBudgetPeriodStartDate__c = LAST_N_DAYS:60 or EstimatedBudgetPeriodStartDate__c = NEXT_N_DAYS:90) or (EstimatedBudgetPeriodEndDate__c = LAST_N_DAYS:60 or EstimatedBudgetPeriodEndDate__c = NEXT_N_DAYS:90)) and recordType.DeveloperName = 'Grantor' |

  @127667    @verifySPIUserCanSeeGrantIdInAquaBlueColorAtMonthWiseCalendar-HomePhase
  Scenario: validate SPI User is able to see grant ID in turquoise color at month wise calendar-HomePhase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue                                             | coreComponentField | filterId         |
      | Calender Config       | Date Fields | govgrants_config:DefaultDateFieldsJsonAtGrantorCalendarConfig |                    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName   | fieldNewValue                                             | coreComponentField   | CoreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Calender Config:General | Date Fields | govgrants_config:NewDateFieldsJsonAtGrantorCalendarConfig | Recipient_Home_Grant |                           |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Grants" content inside "Manage Grants, Awards, Amendments" subheader on left panel
    And I click toggle button to select "Draft Grants"
    When I perform quick search for "test"
    When I click on "Edit" icon for "test" inside table
    When I enter value "0" into field "ProjectPeriodStartDate__c"
    When I enter value "365" into field "ProjectPeriodEndDate__c"
    When I click on "Save" in the page details
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I pause execution for "10" seconds
    Then I see "GT-final-001 (Budget Period End Date)" record is displayed in "turquoise" color inside calendar

  @127666    @verifySPIUserCanSeeGrantIdInWhiteColorAtMonthWiseCalendarIfChangedColorCodeFromConfig-HomePhase
  Scenario: validate SPI User is able to see grant ID in white color at month wise calendar if color code changed from config -HomePhase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue                                             | filterId         |
      | Calender Config       | Date Fields | govgrants_config:DefaultDateFieldsJsonAtGrantorCalendarConfig | ApiGeneratedId:0 |
      | Calender Config       | Color Code  | #a7f4f3                                                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName   | fieldNewValue                                             | coreComponentField   |
      | Calender Config:General | Date Fields | govgrants_config:NewDateFieldsJsonAtGrantorCalendarConfig | Recipient_Home_Grant |
      | Calender Config:General | Color Code  | #FFFFFF                                                   | Recipient_Home_Grant |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Grants" content inside "Manage Grants, Awards, Amendments" subheader on left panel
    And I click toggle button to select "Draft Grants"
    When I perform quick search for "test"
    When I click on "Edit" icon for "test" inside table
    When I enter value "0" into field "ProjectPeriodStartDate__c"
    When I enter value "365" into field "ProjectPeriodEndDate__c"
    When I click on "Save" in the page details
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I pause execution for "10" seconds
    Then I see "GT-final-001 (Budget Period End Date)" record is displayed in "white" color inside calendar

  @89805  @verifyByClickAtMoreOptionAllProgramRecordsDisplayedAtMonthlyCalendar
  Scenario: validate by click at more option, all program records are displayed in month wise calendar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "{Framework_recordUsed:programForCalendar2}" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "{Framework_recordUsed:programForCalendar3}" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "{Framework_recordUsed:programForCalendar4}" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "{Framework_recordUsed:programForCalendar5}" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "{Framework_recordUsed:programForCalendar6}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation_v" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "ID" as "savedValue1"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation_v" values from "Program_Field_Values.xlsx"
    When I enter value "Program created for calendar2" into field "ProgramName__c"
    And I click on "Save and Close Modal" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "ID" as "savedValue2"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation_v" values from "Program_Field_Values.xlsx"
    When I enter value "Program created for calendar3" into field "ProgramName__c"
    And I click on "Save and Close Modal" in the page details
    And I pause execution for "3" seconds
    And I save the field labeled "ID" as "savedValue3"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation_v" values from "Program_Field_Values.xlsx"
    When I enter value "Program created for calendar4" into field "ProgramName__c"
    And I click on "Save and Close Modal" in the page details
    And I pause execution for "3" seconds
    And I save the field labeled "ID" as "savedValue4"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation_v" values from "Program_Field_Values.xlsx"
    When I enter value "Program created for calendar5" into field "ProgramName__c"
    And I click on "Save and Close Modal" in the page details
    And I pause execution for "3" seconds
    And I save the field labeled "ID" as "savedValue5"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation_v" values from "Program_Field_Values.xlsx"
    When I enter value "Program created for calendar6" into field "ProgramName__c"
    And I click on "Save and Close Modal" in the page details
    And I pause execution for "3" seconds
    And I save the field labeled "ID" as "savedValue6"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I pause execution for "10" seconds
    And I click on "+6 more" Button at calendar
    Then I see the text :
      | {SavedValue:savedValue1} (Start Date) |
      | {SavedValue:savedValue2} (Start Date) |
      | {SavedValue:savedValue3} (Start Date) |
      | {SavedValue:savedValue4} (Start Date) |
      | {SavedValue:savedValue5} (Start Date) |
      | {SavedValue:savedValue6} (Start Date) |

  @127478  @verifyByClickAtPreviousArrowPreviousMonthIsDisplayedInMonthWiseCalendar
  Scenario: validate by click at previous arrow, previous month is displayed in month wise calendar
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I click on "Previous" navigation button at calendar
    Then I see "Previous" month is displayed

  @127028  @verifyByClickAtPreviousArrowNextMonthIsDisplayedInMonthWiseCalendar
  Scenario: validate by click at previous arrow, next month is displayed in month wise calendar
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I click on "Next" navigation button at calendar
    Then I see "Next" month is displayed

  @127059  @verifyByClickAtPreviousArrowPreviousMonthIsDisplayedInMonthWiseCalendarForSPIUser
  Scenario: validate by click at previous arrow, previous month is displayed in month wise calendar at spi user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I click on "Previous" navigation button at calendar
    Then I see "Previous" month is displayed

  @134965  @verifyByClickAtPreviousArrowNextMonthIsDisplayedInMonthWiseCalendarForSPIUser
  Scenario: validate by click at previous arrow, Next month is displayed in month wise calendar at spi user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I click on "Next" navigation button at calendar
    Then I see "Next" month is displayed

  @158243 @Calendar-VerifyUserClickOnProgramIDFromHomePhaseCalendarThenOpenOwnerRecordPpageOfRespectiveProgramIfModalPageURLIsProvided @vaibhavC @skipOnJenkins
  Scenario: verify user click on program ID from home phase calendar then open owner record page if Modal Page Url is provided
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Calender Config       | Modal Page Url    |                   | ApiGeneratedId:0 |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Calender Config:General             | Modal Page Url    | /{!OwnerId}   | Grantor_Home_Program  |                           |                            |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    And I pause execution for "3" seconds
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I click on lookup link contains "{SavedValue:savedValue}"
    Then I see the text containing :
      | Nauman Shahid |

  @158247 @VerifyUserClickOnProgramIDFromHomePhaseCalendarThenOpenRecordPage @vaibhavC @skipOnJenkins
  Scenario: verify user click on program ID from home phase calendar then open record page
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "savedValue"
    And I pause execution for "3" seconds
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I click on lookup link contains "{SavedValue:savedValue}"
    Then I see the text :
      | {SavedValue:savedValue} |

  @35121    @colorCodeFieldAtCalenderConfig @calenderConfig
  Scenario: Changing color code at calender confiuration and validating the changed color at calender grantor-Home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Calender Config       | Color Code | #B0CEE1           | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName  | fieldNewValue | coreComponentField   |
      | Calender Config:General | Color Code | #FF0000       | Grantor_Home_Program |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    Then I see Program record in "Red" color inside my workspace