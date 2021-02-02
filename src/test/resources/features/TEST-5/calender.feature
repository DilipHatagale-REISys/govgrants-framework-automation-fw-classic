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
    And I click on "Save" in the page details
    And I save the field labeled "ID" as "savedValue"
    And I pause execution for "3" seconds
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I click on lookup link contains "{SavedValue:savedValue}"
    Then I see the header is "Program" in the page details

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
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "ID" as "savedValue"
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
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    And I "Approve" in the approval decision
    When I re-login to "As a Grantor" app as "Automation" user on "default" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{SavedValue:savedValue}"
    When I click on "View Program Details" icon for "{SavedValue:savedValue}" inside table
    When I click on "Activate" in the page details
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "{SavedValue:savedValue}" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
    And I click modal button "Continue"
    When I enter value "Announcement created for calendar test" into field "AnnouncementName__c"
    When I enter value "Announcement test" into field "AnnouncementDescription__c"
    When I enter value "0" into field "FOAPublicationDate__c"
    When I enter value "3" into field "EstimatedProjectPeriodStartDate__c"
    When I enter value "State government" into field "EligibleApplicantTypes__c"
    And I navigate to "Financials" sub tab
    When I enter value "2000" into field "AwardCeiling__c"
    When I enter value "1000" into field "AwardFloor__c"
    When I enter value "2" into field "EstimatedAverageSizeOfAward__c"
    When I enter value "5" into field "EstimatedNumberOfAwards__c"
    When I enter value "1500" into field "ObligatedAmount__c"
    And I click on "Save" in the page details
    And I save the field labeled "ID" as "savedValue1"
    And I pause execution for "3" seconds
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    And I click on lookup link contains "{SavedValue:savedValue1}"
    Then I see the header is "Funding Opportunity" in the page details
    Given I delete the record "{SavedValue:savedValue1}" from the object "Announcement__c" with field "Name"
    Given I delete the record "{SavedValue:savedValue}" from the object "Program__c" with field "Name"

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
    And I click on "Save" in the page details
    And I save the field labeled "ID" as "savedValue"
    And I pause execution for "3" seconds
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    When I hover mouse on lookup link "{SavedValue:savedValue} (Start Date)"
    Then I see the text :
      | Department of Community Health                                  |
      | {SavedValue:savedValue}                                         |
      | Automation Internal Program for Approval and Snapshot scenarios |
      | Created                                                         |

  @127071    @verifyByMouseHoverOnRecordIdAMini-PageLayoutDisplayedAtCalendarItShouldRedirectToRespectiveRecordDetailPageForSPIUser
  Scenario: validate that mini page layout is displayed to SPI user by hover on record id at calendar layout
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active         | true              | ApiGeneratedId:0 |
      | Page Tabs Config                         | Highlights Panel? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active         | false         | Annoucement Profile-FOA | Name                      | PBD-3057                   |
      | Page Tabs Config:Page Layout Action      | Highlights Panel? | true          | Grantee State Program   | Name                      | TAB-409                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "ID" as "savedValue"
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
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    And I "Approve" in the approval decision
    When I re-login to "As a Grantor" app as "Automation" user on "default" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{SavedValue:savedValue}"
    When I click on "View Program Details" icon for "{SavedValue:savedValue}" inside table
    When I click on "Activate" in the page details
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "{SavedValue:savedValue}" into field "Program__c"
    When I enter value "Competitive" into field "AnnouncementType__c"
    And I click modal button "Continue"
    When I enter value "Announcement created for calendar test" into field "AnnouncementName__c"
    When I enter value "Announcement test" into field "AnnouncementDescription__c"
    When I enter value "0" into field "FOAPublicationDate__c"
    When I enter value "3" into field "EstimatedProjectPeriodStartDate__c"
    When I enter value "State government" into field "EligibleApplicantTypes__c"
    And I navigate to "Financials" sub tab
    When I enter value "2000" into field "AwardCeiling__c"
    When I enter value "1000" into field "AwardFloor__c"
    When I enter value "2" into field "EstimatedAverageSizeOfAward__c"
    When I enter value "5" into field "EstimatedNumberOfAwards__c"
    When I enter value "1500" into field "ObligatedAmount__c"
    And I click on "Save" in the page details
    And I save the field labeled "ID" as "savedValue1"
    And I pause execution for "3" seconds
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    And I click on "Month" Button at calendar
    When I hover mouse on lookup link "{SavedValue:savedValue1} (FOA Publish Date)"
    Then I see the text :
      | Announcement                           |
      | {SavedValue:savedValue1}               |
      | Announcement created for calendar test |
      | Created                                |
    Given I delete the record "{SavedValue:savedValue1}" from the object "Announcement__c" with field "Name"
    Given I delete the record "{SavedValue:savedValue}" from the object "Program__c" with field "Name"

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
    When I perform quick search for "{SavedValue:savedValue}"
    Then I see value "{SavedValue:savedValue}" for title "Case#" inside table "CaseList"