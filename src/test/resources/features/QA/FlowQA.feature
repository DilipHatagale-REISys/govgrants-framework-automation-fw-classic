@FlowQA-component @regression-QA @FlowQA
Business Need: security review Scenarios
  Test all FlowQA related scenarios
  As a configuration manager i make different configurational changes in FlowQA component and will validate them.

  @ProgramActivation
  Scenario: ProgramActivation
    When I login as "PM" user
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
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"

  @AnnouncementPublish
  Scenario: Announcement Publish
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "NewOrgAnnCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Continue"
    When I enter "NewOrg2ndModal_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "NewOrgAnnEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "6" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Associate" after selection of "FA-ST-04" in the table "---program:-:fundingAccTableId---"
    When I close "Associate Funding Accounts" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I pause execution for "5" seconds
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    #1st Approval process for announcement
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
        #2nd Approval process for announcement
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    #Announcement Publish
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:allAnnouncementTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:allAnnouncementTableId---"
    And I click on "Publish" in the page details
    Then I softly see status in Progress-bar is "Published" and is "green"

  @CreateApplication
  Scenario: Create Application and submitted for approval
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I perform quick search for "{StaticRecordsForQAFlow:PublishedAnnouncement}" in "---program:-:toggleFlexTablenyqaeTableId---" panel
    And I click on "View" icon for "{StaticRecordsForQAFlow:PublishedAnnouncement}" inside flex table with id "---program:-:toggleFlexTablenyqaeTableId---"
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

  @ReviewProcess
  Scenario: Review Process
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I perform quick search for "{StaticRecordsForQAFlow:PublishedAnnouncement}" in "---program:-:toggleFlexTablenyqaeTableId---" panel
    And I click on "View" icon for "{StaticRecordsForQAFlow:PublishedAnnouncement}" inside flex table with id "---program:-:toggleFlexTablenyqaeTableId---"
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
    # initiate review process
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "Initiate Review Process" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---" with wait for record
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "Pre-Screen Review" inside table "---program:-:reviewStepsTableId---"
  # initiated pre-screen review
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name  | Due in Days |
      | Pre-Screen | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
  # pre-screen review completed
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I pause execution for "2" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
# initiated sme review
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    #Then I softly see value "In Progress" for title "SME Review" inside table "---program:-:reviewStepsTableId---"
  # submit for sme review
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---" with wait for record
    And I pause execution for "5" seconds
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer       |
      | Automation EXE |
      | Automation FO  |
      | Automation PM  |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Program Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I pause execution for "5" seconds
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Fiscal Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I pause execution for "5" seconds
    And I click on "Assign" icon for "Automation EXE" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Compliance Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I check "All" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    And I click on "Next Review Step" in the page details
    Then I softly see field "Status" as "In Progress"
  #sme review completed
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
  # management review initiated
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "SME Review" inside table "---program:-:reviewStepsTableId---"
  # submitted for management review
    When I click on "View" icon for "SME Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to Next Step" in flex table with id "---program:-:appTableId---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Management Review | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
  # management review completed
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"