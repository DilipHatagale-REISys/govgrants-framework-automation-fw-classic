@History-component @regression-QA @history
Business Need: history Component Scenarios
  Test all history Component based scenarios
  As a configuration manager i make different changes related to flow and will validate them in history component.

  @69537   @VerifyDisplayOfRecordsInHistoryTableAsPerSelectedObjectFromDropDown
  Scenario: Validate all program records are shown in Field History table if Program object is selected in dropdown
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "fa fa-eye" icon in flex table for first draft record
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "5" seconds
    When I navigate to "History" sub tab
    When I select "Program" from dropdown inside page block
    Then I softly see "{SavedValue:PEGMSID}" value in flex table id "---program:-:historyTableId---"

  @69578    @VerifyActualApproverAndAssignedToNameIsDisplayedInApprovalHistoryAfterRecordReassignToUser
  Scenario: Validate Actual Approver name and Assigned To Name inside Approval history table after Reassigning of record to user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
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
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reassign" to user "Automation PM" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Assigned To" inside row "1" at position "2" and column at position "2" contains text "Automation EXE"
    Then I softly see column "Actual Approver" inside row "1" at position "3" and column at position "3" contains text "Automation PM"

  @69836    @VerifyExpectedStatusIsDisplayedInApprovalHistoryAfterRecordApproval
  Scenario: Validating status as APPROVED inside Approval history table after approval of record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
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
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"

  @69943    @VerifyExpectedStatusIsDisplayedInApprovalHistoryAfterRecordRejection
  Scenario: Validating status as REJECTED inside Approval history table after approval of record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
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
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Disapprove" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Rejected"

  @69944    @VerifyExpectedStatusIsDisplayedInApprovalHistoryAfterRecordReassign
  Scenario: Validating status as REASSIGNED inside Approval history table after approval of record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
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
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reassign" to user "Automation PM" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Pending"
    And I softly see column "Status" inside row "1" at position "3" and column at position "5" contains text "Reassigned"

  @69945    @VerifyExpectedStatusIsDisplayedInApprovalHistoryAfterRecordSentBack
  Scenario: Validating status as SENT BACK inside Approval history table after approval of record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
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
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Send to Owner" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Sent Back"

  @69958   @VerifyExpectedOverAllStatusIsDisplayedInApprovalHistoryAfterRecordSubmission
  Scenario: Validating Over all status as Pending inside Approval history table after record submission as submit for apprval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
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
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    Then I softly see column "Overall Status" inside row "1" at position "1" and column at position "2" contains text "Pending"

  @69540   @VerifyDownloadAsPDFForFieldHistoryTable @wip
  Scenario: Validate by click on Download As PDF option a PDF is getting downloaded in history table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "fa fa-eye" icon in flex table for first draft record
    When I navigate to "History" sub tab
    When I select "Program" from dropdown inside page block
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    Then I see "Entity Name" on page "1" of "govgrants" pdf file

  @69546   @snapshotLinkShouldBeShownUnderHistoryTableByClickOnTakeASnapshotOption @checkwithDev @wip
  Scenario: validate by click on Take a Snapshot option a snapshot PDF is getting downloaded
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_US  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test Program specific for History"
    When I click on "View" icon for "Test Program specific for History" inside table
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Todays Date"

  @69959   @VerifyActualApproverIsDisplayedInApprovalHistoryAfterRecordReassignToUser
  Scenario: Validating Over all status as Pending inside Approval history table after record submission as submit for apprval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reassign" to user "Automation PM" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Actual Approver" inside row "1" at position "2" and column at position "3" contains text "Automation PM"

  @84566  @verifyDateAndTimeFieldFormatForLocalAsESTUnderHistoryTable
  Scenario: validate the date and time field format under field history table with respective to EST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:ProgramForLocalTestingAtHistory}"
    When I click on "View" icon for "{Framework_recordUsed:ProgramForLocalTestingAtHistory}" inside table
    When I navigate to "History" sub tab
    Then I softly see "05/30/2023" shown inside "New Value" column in history table
    Then I softly see "05/22/2023" shown inside "Old Value" column in history table

  @84568  @verifyDateAndTimeFieldFormatForLocalAsEDTUnderHistoryTable
  Scenario: validate the date and time field format under field history table with respective to EDT Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "History" sub tab
    Then I softly see "05/30/2023" shown inside "New Value" column in history table
    Then I softly see "05/22/2023" shown inside "Old Value" column in history table

  @84570  @verifyDateAndTimeFieldFormatForLocalAsISTUnderHistoryTable
  Scenario: validate the date and time field format under field history table with respective to IST Local
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "ADMIN" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "History" sub tab
    Then I softly see "05/30/2023" shown inside "New Value" column in history table
    Then I softly see "05/22/2023" shown inside "Old Value" column in history table

  @114727 @205598 @205599 @205604 @205605 @verifyCurrencyFieldFormatForNewValueUnderHistoryTable
  Scenario Outline: validate the currency field format under field history table inside new value column
  History Field : Admin User -To verify, User change the currency field from backend then it should display changed and previous value in the new and old value column
  Field History -PM user - To verify, User change the currency field value from backend then it should display only one time in the field history table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "Edit" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "Overview" sub tab
    And I enter value "0" into field "fieldFundedAmount__c"
    And I enter value "0" into field "fieldStartDate__c"
    And I enter value "730" into field "fieldEndDate__c"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    And I enter value "400000" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    Then I see "$400,000" shown inside "New Value" column in history table

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @114729  @verifyDecimalCurrencyFieldFormatForNewValueUnderHistoryTable
  Scenario: validate the decimal currency field format under field history table inside new value column
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    And I enter value "$200,000.50" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    And I enter value "$300,000.00" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    When I navigate to "History" sub tab
    And I refresh the page
    Then I softly see "$200,000.50" shown inside "Old Value" column in history table
    Then I softly see "$300,000.00" shown inside "New Value" column in history table

  @120103  @verifyCurrencyFieldFormatForNewValueUnderHistoryTable
  Scenario: validate the currency field format under field history table inside new value column
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "History" sub tab
    When I click on advance filter "#advfHistory" of table id "---program:-:historyTableId---"
    When I enter advance filter values inside id "advfHistory"
      | Changed Field | Equals to | Status |
    Then I see value "Status" for title "Changed Field" inside table "---program:-:historyTableId---"

  @120539    @verifyThatApprovalHistoryTableIsDisplayedAtHistoryTabInPageViewMode
  Scenario: validate approval history table is displayed at history tab when page is in view mode
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "History" sub tab
    Then I see expected table with id "---program:-:ApprovalTableId---"

  @121042    @verifyThatApprovalHistoryTableIsDisplayedAtHistoryTabInPageEditMode
  Scenario: validate approval history table is displayed at history tab when page is in edit mode
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "Edit" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "History" sub tab
    Then I see expected table with id "---program:-:ApprovalTableId---"

  @121152  @verifyFieldHistoryApprovalHistorySnapshotHistoryIsDisplayedAtNewlyRecordCreated
  Scenario: validate that approval history table , field history table and snapshot history is displayed a newly created record
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "10" seconds
    And I click on "Edit" in the page details
    And I enter value "3000" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I refresh the page
    When I navigate to "History" sub tab
    And I pause execution for "10" seconds
    Then I softly see expected table with id "---program:-:ApprovalTableId---"
    Then I softly see expected table with id "---program:-:historyTableId---"
    Then I softly see expected table with id "---program:-:snapshotHistoryTableId---"

  @120545  @verifyFieldHistoryApprovalHistorySnapshotHistoryIsDisplayedInRecordEditMode
  Scenario: validate that approval history table and snapshot history is displayed in record edit mode
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "Edit" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "History" sub tab
    Then I softly see expected table with id "---program:-:snapshotHistoryTableId---"
    Then I softly see the text containing :
      | Snapshot History |

  @91687  @verifyAdvanceFilterAtFieldHistoryTableInRecordViewMode
  Scenario: validate advance filter at field history table in record view mode
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "History" sub tab
    When I click on advance filter "#advfHistory" of table id "---program:-:historyTableId---"
    When I enter advance filter values inside id "advfHistory"
      | Changed Field | Equals to | Primary Applicant Name |
    Then I see value "Primary Applicant Name" for title "Changed Field" inside table "---program:-:historyTableId---"

  @132112    @verifyHistoryTableIsDisplayedAtAccountStandardObject
  Scenario: verify history table is present on account standard object
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to url "https://test8-internal--fwautomat.sandbox.my.salesforce.com/001"
    And I click on lookup link "ACC-APG-Belvoir"
    When I navigate to "History" sub tab
    Then I see expected table with id "---program:-:historyTableId---"

  @151866  @verifyCustomFieldsOnStandardObjectsAreDisplayedUnderHistoryTable
  Scenario: validate custom fields on standard object are display inside field history table
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal" content inside "Organization" subheader on left panel
    When I click on "View" icon for "Test Automation Organization" inside table
    When I navigate to "Files" sub tab
    Then I see the text :
      | Email Address |

  @205040 @205041
  Scenario Outline: Field History - PM user- User should be able to see the header help text on mouse pointer of help icon besides quick search.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "History" sub tab
    When I hovering mouse on page block help text icon inside table "---program:-:historyTableId---" with tooltip id "textAreaHistorytooltip"
    Then I softly see "Quick Search is not supported for following columns : New Value,Old Value" shown as help text

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205057 @205058 @205061 @205063
  Scenario Outline: Field History - PM user - User should be able search the field history by quick search
  Field History - PM user- User should be able to search by entering text in quick search filter.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    And I click on "View" icon in flex table for first draft record
    And I save the field labeled "Created By" as "Changed By"
    When I navigate to "History" sub tab
    When I perform quick search for "{SavedValue:Changed By}" in "---program:-:historyTableId---" panel
    Then I see value "{SavedValue:Changed By}" for title "Changed By" inside table "---program:-:historyTableId---"

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205059 @205060
  Scenario Outline: Field History - PM user - User should be able search field history by applying advance filter.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "History" sub tab
    When I click on advance filter "#advfHistory" of table id "---program:-:historyTableId---"
    When I enter advance filter values inside id "advfHistory"
      | Changed By | Equals to | Automation FO |
    Then I see value "Automation FO" for title "Changed By" inside table "---program:-:historyTableId---"

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205064 @205067 @205068 @205070 @205090 @205092 @205095 @205097 @205213 @205214
  Scenario Outline: Field History - PM user - User should be able to see the 'New Value' for selected record.
  Field History - PM user - User should be able to see the 'Old Value' for selected record.
  Field History - PM user - User should be able to see the 'Changed Field'  for selected record.
  Field History -PM user- User should be able to see the 'Changed By' value for selected record.
  Field History -PM user- User should be able to see the 'EGMS ID' value for selected record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Created By" as "Changed By"
    When I navigate to "History" sub tab
    Then I see value "Active" for title "New Value" inside table "---program:-:historyTableId---"
    Then I see value "Approved" for title "Old Value" inside table "---program:-:historyTableId---"
    Then I see value "Status" for title "Changed Field" inside table "---program:-:historyTableId---"
    Then I see value "{SavedValue:Changed By}" for title "Changed By" inside table "---program:-:historyTableId---"
    Then I see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "---program:-:historyTableId---"

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205098 @205099
  Scenario Outline:Field History- PM user - User should be able to perform export functionality 'Download as PDF' for selected record.
  Field History- Admin user - User should be able to perform export functionality 'Download as PDF' for selected record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "History" sub tab
    #When I select "Program" from dropdown inside page block
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    #And I download the file
    Then I see "EGMS ID" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205100 @205101
  Scenario Outline: Field History- PM user - User should be able to perform export functionality 'Download as CSV' for selected record.
  Field History- Admin user - User should be able to perform export functionality 'Download as CSV' for selected record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as CSV" from parallel lines dropdown of "Field History"
    And I download the file
    Then I see "Field History" in downloaded xls or csv file "govgrants"

    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @205102 @205103
  Scenario Outline: Field History- PM user - User should be able to refresh the field history block using Refresh option from burger icon option.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Refresh" from parallel lines dropdown of "Field History"
    Then I see parent page is refreshing

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @204898
  Scenario Outline: Field History-Admin User- To verify, user should be able to see field history for selected filter as program.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "History" sub tab
    When I select "Program" from dropdown inside page block
    Then I see "Program" option is getting displayed inside page block

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @204899
  Scenario Outline: Field History- Admin user-To verify, user should be able to see field history by applying filter for review steps.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "History" sub tab
    When I select "Review Step" from dropdown inside page block
    Then I see "Review Step" option is getting displayed inside page block

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205601
  Scenario: History Field : ADMIN User -To verify, User change the negative currency field value from backend then it should display in the new value column
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Time Zone Testing For Admin"
    When I click on "Edit" icon for "Automation Internal Program for Time Zone Testing For Admin" inside table
    When I navigate to "Overview" sub tab
    And I enter value "10" into field "fieldFundedAmount__c"
    And I enter value "0" into field "fieldStartDate__c"
    And I enter value "730" into field "fieldEndDate__c"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    And I enter value "-400000" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    And I save the field labeled "Funded Amount" as "FundedAmount"
    When I navigate to "History" sub tab
    Then I see "{SavedValue:FundedAmount}" shown inside "New Value" column in history table

  @205603
  Scenario:  History Field : PM User -To verify, User change the negative currency field value from backend then it should display in the new value column
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreationFlow_v" values from "Field_Values_For_Flow.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramFlowEdition_v" values from "Field_Values_For_Flow.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "-400000" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    And I save the field labeled "Funded Amount" as "FundedAmount"
    When I navigate to "History" sub tab
    Then I see "{SavedValue:FundedAmount}" shown inside "New Value" column in history table

  @205606 @205607
  Scenario Outline: Field History - ADMIN user - To verify, User change the date field from edit layout then it should display changed and previous value in the new and old value column.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreationFlow_v" values from "Field_Values_For_Flow.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramFlowEdition_v" values from "Field_Values_For_Flow.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "Project Period End Date" as "OldEndDate"
    And I click on "Edit" in the page details
    And I enter value "370" into field "fieldEndDate__c"
    And I click on "Save" in the page details
    And I save the field labeled "Project Period End Date" as "NewEndDate"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "{SavedValue:OldEndDate}" shown inside "Old Value" column in history table
    Then I see "{SavedValue:NewEndDate}" shown inside "New Value" column in history table

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205783 @205784
  Scenario Outline: Field History : PM user - To verify, User change the text area field value from edit layout then it should display changed and previous value in the new and old value column.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "Testing OK" into field "fieldAuthorization__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Authorization" as "OldText"
    And I click on "Edit" in the page details
    And I enter value "Testing Done" into field "fieldAuthorization__c"
    And I click on "Save" in the page details
    And I save the field labeled "Authorization" as "NewText"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "{SavedValue:OldText}" shown inside "Old Value" column in history table
    Then I see "{SavedValue:NewText}" shown inside "New Value" column in history table

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205776 @205777
  Scenario Outline: Field History : PM user - To verify, User change the lookup field value from backend then it should display changed and previous value in the new and old value column.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "Automation Admin" into field "fieldAuthorizedSignatory__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Authorized Signatory" as "AuthorizedSignatory_OldText"
    And I click on "Edit" in the page details
    And I enter value "Automation PM" into field "fieldAuthorizedSignatory__c"
    And I click on "Save" in the page details
    And I save the field labeled "Authorized Signatory" as "AuthorizedSignatory_NewText"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "{SavedValue:AuthorizedSignatory_OldText}" shown inside "Old Value" column in history table
    Then I see "{SavedValue:AuthorizedSignatory_NewText}" shown inside "New Value" column in history table

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205766 @205767
  Scenario Outline:Field History : PM user - To verify, User change the phone field value from backend then it should display changed and previous value in the new and old value column.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "8456321479" into field "fieldPhone_Field__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Phone Number" as "OldPhoneNumber"
    And I click on "Edit" in the page details
    And I enter value "9845632147" into field "fieldPhone_Field__c"
    And I click on "Save" in the page details
    And I save the field labeled "Phone Number" as "NewPhoneNumber"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "{SavedValue:NewPhoneNumber}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldPhoneNumber}" shown inside "Old Value" column in history table
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205770 @205771
  Scenario Outline: Field History : PM user - To verify, User change the checkbox field value from edit layout then it should display changed and previous value in the new and old value column.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "Checked" into field "CFDA_Data__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "CFDA" as "OldCFDA"
    And I click on "Edit" in the page details
    And I enter value "Unchecked" into field "CFDA_Data__c"
    And I click on "Save" in the page details
    And I save the field labeled "CFDA" as "NewCFDA"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "false" shown inside "New Value" column in history table
    Then I see "true" shown inside "Old Value" column in history table
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205572 @205584
  Scenario Outline: Field History -PM user -To verify, User change the text field value from backend then it should display changed and previous value in the new and old value column.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "State" into field "InternalOrganization__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Internal Organization" as "OldInternalOrganization"
    And I click on "Edit" in the page details
    And I enter value "Nation" into field "InternalOrganization__c"
    And I click on "Save" in the page details
    And I save the field labeled "Internal Organization" as "NewInternalOrganization"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "{SavedValue:NewInternalOrganization}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldInternalOrganization}" shown inside "Old Value" column in history table
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205760 @205762
  Scenario Outline: Field History : PM user - To verify, User change the date time field from backend then it should display changed and previous value in the new and old value column
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "09/27/2023 07:37 PM" into field "DateandTime__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Date and Time" as "OldDateAndTime"
    And I click on "Edit" in the page details
    And I enter value "08/27/2027 10:00 PM" into field "DateandTime__c"
    And I click on "Save" in the page details
    And I save the field labeled "Date and Time" as "NewDateAndTime"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "{SavedValue:NewDateAndTime}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldDateAndTime}" shown inside "Old Value" column in history table
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205477 @205478
  Scenario Outline: Field History : PM User -To verify, User change the negative value number field as a from backend then it should display in the new value column.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "-20" into field "Number__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Number" as "OldNumber"
    And I click on "Edit" in the page details
    And I enter value "-75" into field "Number__c"
    And I click on "Save" in the page details
    And I save the field labeled "Number" as "NewNegativeNumber"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "{SavedValue:NewNegativeNumber}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldNumber}" shown inside "Old Value" column in history table
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205637 @205636
  Scenario Outline: Field History - PM user -To verify, User change the URL field from backend then it should display changed and previous value in the new and old value column.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "www.google.com" into field "URL__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "URL" as "OldURL"
    And I click on "Edit" in the page details
    And I enter value "www.facebook.com" into field "URL__c"
    And I click on "Save" in the page details
    And I save the field labeled "URL" as "NewURL"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "{SavedValue:NewURL}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldURL}" shown inside "Old Value" column in history table
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205546 @205547
  Scenario Outline: Field History - PM user- To verify, User change the negative value for percent field from backend then it should display value inside bracket in the new value column.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "-78" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Percent" as "OldNegativePercent"
    And I click on "Edit" in the page details
    And I enter value "-45" into field "Percent__c"
    And I click on "Save" in the page details
    And I save the field labeled "Percent" as "NewNegativePercent"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "{SavedValue:NewNegativePercent}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldNegativePercent}" shown inside "Old Value" column in history table
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205506 @205507
  Scenario Outline: Field history: PM user-To verify, User change the percent field from backend then it should display changed and previous value in the new and old value column.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "74" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Percent" as "OldPercent"
    And I click on "Edit" in the page details
    And I enter value "95" into field "Percent__c"
    And I click on "Save" in the page details
    And I save the field labeled "Percent" as "NewPercent"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "{SavedValue:NewPercent}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldPercent}" shown inside "Old Value" column in history table
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @205561 @205552
  Scenario Outline: Field History - Admin user -To verify, User change the picklist field value from backend then it should display changed and previous value in the new and old value column.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "Project Grants" into field "Type__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Type" as "OldType"
    And I click on "Edit" in the page details
    And I enter value "Formula Grants" into field "Type__c"
    And I click on "Save" in the page details
    And I save the field labeled "Type" as "NewType"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "{SavedValue:NewType}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldType}" shown inside "Old Value" column in history table
    Examples:
      | User  |
      | ADMIN |
      | PM    |

    @205445 @205468
    Scenario Outline: Field history: PM user-To verify, User change the number field from backend then it should display changed and previous value in the new and old value column
      When I login to "As a Grantor" app as "<User>" user
      When I setup my app as "As a Grantor"
      And I navigate to "Planning" tab
      And I click toggle button to select "Internal Programs - Draft"
      When I perform quick search for "Demo Testing Program For Field History"
      When I click on "View" icon for "Demo Testing Program For Field History" inside table
      When I navigate to "Overview" sub tab
      And I click on "Edit" in the page details
      And I enter value "12" into field "fieldNumber__c"
      And I click on "Save" in the page details
      And I pause execution for "5" seconds
      And I save the field labeled "Number" as "OldNumber"
      And I click on "Edit" in the page details
      And I enter value "20" into field "fieldNumber__c"
      And I click on "Save" in the page details
      And I save the field labeled "Number" as "NewNumber"
      And I refresh the page
      When I navigate to "History" sub tab
      Then I see "{SavedValue:NewNumber}" shown inside "New Value" column in history table
      Then I see "{SavedValue:OldNumber}" shown inside "Old Value" column in history table

      Examples:
        | User  |
        | ADMIN |
       # | PM    |

  @205477 @205478
  Scenario Outline: Field History : PM User -To verify, User change the negative value number field as a from backend then it should display in the new value column.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Demo Testing Program For Field History"
    When I click on "View" icon for "Demo Testing Program For Field History" inside table
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "-12" into field "fieldNumber__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Number" as "OldNumber"
    And I click on "Edit" in the page details
    And I enter value "-50" into field "fieldNumber__c"
    And I click on "Save" in the page details
    And I save the field labeled "Number" as "NewNumber"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "{SavedValue:NewNumber}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldNumber}" shown inside "Old Value" column in history table

    Examples:
      | User  |
      | ADMIN |
       # | PM    |
