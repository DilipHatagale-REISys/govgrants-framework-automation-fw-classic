@SnapshotHistory-Component @regression-LWC @SnapshotHistoryLWC
Business Need: SnapshotHistory Component Scenarios
  Test all SnapshotHistoryLWC component based scenarios
  As a configuration manager i make different configurational changes in SnapshotHistoryLWC component and will validate them.

  @223111 @223116 @223117 @223118 @223119 @223120 @ManuallygeneratedsnapshotisdisplayedonLWCcomponent  @Vrushali @LWC-SnapshotHistoryTestSuit
  Scenario: To verify, manually generated snapshot is displayed on the LWC component
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see generated snapshot "SnapShot" is displayed with "File Name"
    Then I see generated snapshot "Automation Admin" is displayed with "Created By"

  @223112 @223113 @223114 @223115 @224128 @224131 @224130 @Vrushali @LWC-SnapshotHistoryTestSuit
  Scenario Outline:user click on submit for approval button snapshot getting generated then refresh the Aura then generated snapshot name display as expected
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    And I refresh the page
    #224128
    Then I see generated snapshot "Submitted for Approval.pdf" is displayed with "File Name"
    Then I see generated snapshot "{SavedValue:OWNER}" is displayed with "Created By"
    #224130
    Then I see generated snapshot "28-12-2022" is displayed with "Created Date"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @223121 @223122 @whenuserclicksonpageblockshrinkactionbuttonthenthecomponentgetsshrunk @Vrushali @LWC-SnapshotHistoryTestSuit
  Scenario Outline:when the user clicks on page block shrink action button then the component gets shrunk
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    And I click on "up" arrow in "Snapshot History" table
    Then I do not see "Snapshot History" table
    And I pause execution for "5" seconds
    And I click on "down" arrow in "Snapshot History" table
    #223122
    Then I softly see column "File Name" in table name "Snapshot History"
    Then I softly see column "Created Date" in table name "Snapshot History"
    Then I softly see column "Created By" in table name "Snapshot History"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @223123 @TotalrecorddisplayasexpectedasontheUI @Vrushali @LWC-SnapshotHistoryTestSuit
  Scenario Outline:Total record display as expected as on the UI
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see Total Records count "Total Records : 2" in table name "Snapshot History"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @223125 @223126 @Whenuserlickongenaredsnapshotfileitwillbeopeninthenewtab @Vrushali @LWC-SnapshotHistoryTestSuit
  Scenario Outline:When user click on genared snapshot file it will be open in the new tab
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see take snap shot getting saved with "Snapshot History"
    #223126
    And I click on saved snap shot "SnapShot"
    Then I see new tab is opened
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @278532 @278538 @278540 @278541 @278542 @223129 @278543 @278544 @278554 @Toverify,manuallygeneratedsnapshotisdisplayedonLWCcomponent-SPI
  Scenario:To verify, manually generated snapshot is displayed on the LWC component - SPI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    #278532
    Then I see take snap shot getting saved with "Snapshot History"
    #278538 #278541 #278543 #223129 #278554
    Then I see generated snapshot "28-12-2022" is displayed with "Created Date"
    #278540 #278544
    Then I see generated snapshot "Automation Admin" is displayed with "Created By"
    #278542
    Then I see generated snapshot "SnapShot" is displayed with "File Name"

  @278534 @278535 @278536 @278552 @278537
  Scenario:  user click on submit for approval button snapshot getting generated then refresh the Aura then generated snapshot name display as expected
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter value "New Announcement" into field "fieldAnnouncementName__c"
    And I enter value "Automation Internal Program for Testing" into field "fieldProgram__c"
    And I enter value "Non-Construction" into field "fieldBudget_Category_Package__c"
    And I click modal button "Continue"
    When I enter "NewOrg2ndModal_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "NewOrgAnnEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Associate" after selection of "FA-ST-04" in the table "---program:-:fundingAccTableId---"
    When I close "Associate Funding Accounts" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    #1st Approval process for announcement
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
        #2nd Approval process for announcement
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    #Announcement Publish
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:allAnnouncementTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:allAnnouncementTableId---"
    And I click on "Publish" in the page details
    Then I softly see status in Progress-bar is "Published" and is "green"
    #Create Application
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:toggleFlexTablenyqaeTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:toggleFlexTablenyqaeTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    When I enter value "Automation Application" into field "fieldTitle__c"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I pause execution for "3" seconds
    When I click on "Edit" in the page details
    And I enter "NewOrgAppEddition_v" values from "Program_Field_Values_QA_org.xlsx"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    And I navigate to "Budget" sub tab
    And I pause execution for "5" seconds
    And I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---program:-:appBudgetPeriodTableId---" by clicking "Edit" :
      | Category Name | Budget |
      | Construction  | 1000   |
    And I pause execution for "5" seconds
    And I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "StandardAssurancesForm_v" values from "Program_Field_Values_QA_org.xlsx"
    And I pause execution for "3" seconds
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "ProgramApplicationForm_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    When I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "flexGridAppContact" by clicking "Edit" :
      | Name | Project Role             | Is Key Contact |
      |      | Project Director/Manager | Checked        |
    When I click on "Submit Application" in the page details
    Then I softly see status in Progress-bar is "Submitted" and is "Green"
      #278534 #278552
    Then I see generated snapshot "Submitted for Approval.pdf" is displayed with "File Name"
      #278535
    Then I see generated snapshot "{SavedValue:OWNER}" is displayed with "Created By"
    #278536
    Then I see generated snapshot "28-12-2022" is displayed with "Created Date"
    #278537
    Then I see generated snapshot "SnapShot" is displayed with "File Name"
    Then I see generated snapshot "Automation Admin" is displayed with "Created By"

  @278545 @278546 @whenuserclicksonpageblockshrinkactionbuttonthencomponentgetsshrunk
  Scenario:when the user clicks on page block shrink action button then the component gets shrunk
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
      #278545
    And I click on "up" arrow in "Snapshot History" table
    Then I do not see "Snapshot History" table
    And I pause execution for "5" seconds
      #278546
    And I click on "down" arrow in "Snapshot History" table
    Then I softly see column "File Name" in table name "Snapshot History"
    Then I softly see column "Created Date" in table name "Snapshot History"
    Then I softly see column "Created By" in table name "Snapshot History"

  @278547 @TotalrecorddisplayasexpectedasontheUI
  Scenario: Total record display as expected as on the UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see Total Records count "Total Records : 2" in table name "Attachments"

  @278548 @278550 @278556 @Whenuserclickongeneratedsnapshotileitwillbeopeninnewtab
  Scenario: When user click on generated snapshot file it will be open in the new tab
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    #278556
    Then I see take snap shot getting saved with "Snapshot History"
      #278550
    And I click on saved snap shot "SnapShot"
      #278548
    Then I see new tab is opened

  @278551 @Whenusergeneratesnapshotmanuallyinthefilenamedateisincluded
  Scenario: When user generate snapshot manually  in the file name date is included
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    When I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
    And I refresh the page
    Then I see take snap shot getting saved with date and time

