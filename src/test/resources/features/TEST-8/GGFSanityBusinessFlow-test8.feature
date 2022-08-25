@GGFSanityBusinessFlow-test8 @regression-test8
Business Need: Sanity check for all Component Scenarios
  Test all component scenarios for sanity

  @verifyAnnouncementInApprovedModeHappyPath @test1
  Scenario: validate announcement in approved state
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    When I enter "EditionProgram" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Add" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I close "Contacts" modal by clicking the top right x button
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverTableId---" by clicking "Edit" :
      | Responsibility     | Name          | Description                 |
      | Program Approver   | Admin         | Automation Test Description |
      | Executive Approver | Automation PM | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    When I click "Yes" on modal confirmation box
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Continue"
    When I enter "Creation Second Modal" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "EditionAnn" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Add" after selection of "Automation Permanent Funding Account" in the table "---program:-:fundingAccTableId---"
    When I close "Associate" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approversTableId---" by clicking "Edit" :
      | Role               | Name           | Description                 |
      | Program Approver   | Admin          | Automation Test Description |
      | Executive Approver | Automation EXE | Automation Test Description |
      | Fiscal Approver    | Automation FO  | Automation Test Description |
    And I pause execution for "5" seconds
    When I navigate to "Setup" sub tab
    #Pre-screen review
    When I expand nested table containing column value "Pre-Screen Review"
    When I enter the following values into flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" by clicking "New" :
      | Form Name | Form Weight (%) | Minimum Number of Reviews per Application | Required? |
      | Test      | 100             | 1                                         | Checked   |
    And I click on "Review Form" icon for "Test" inside flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" with wait for record
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsresizableTableId---" by clicking "New" :
      | Section Order | Section Header    | Section Weight (%) |
      | 1             | Automation Test 1 | 100                |
    When I expand nested table containing column value "1"
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsFlexCollapseTableId---" by clicking "New" :
      | Question Order | Question               | Type    | Max Score |
      | 1              | Automation Description | Written | 100       |
    When I close modal by clicking the top right x button
    And I collapse nested table containing column value "Pre-Screen Review"
    #SME
    When I expand nested table containing column value "SME Review"
    When I enter the following values into flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" by clicking "New" :
      | Form Name | Form Weight (%) | Minimum Number of Reviews per Application | Required? |
      | Test 1    | 100             | 1                                         | Checked   |
    And I click on "Review Form" icon for "Test 1" inside flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" with wait for record
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsresizableTableId---" by clicking "New" :
      | Section Order | Section Header    | Section Weight (%) |
      | 2             | Automation Test 2 | 100                |
    When I expand nested table containing column value "2"
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsFlexCollapseTableId---" by clicking "New" :
      | Question Order | Question                 | Type     | Max Score |
      | 2              | Automation Description 1 | Currency | 100       |
    When I close modal by clicking the top right x button
    And I collapse nested table containing column value "SME Review"
    #Management
    When I expand nested table containing column value "Management Review"
    When I enter the following values into flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" by clicking "New" :
      | Form Name | Form Weight (%) | Minimum Number of Reviews per Application | Required? |
      | Test 2    | 100             | 1                                         | Checked   |
    And I click on "Review Form" icon for "Test 2" inside flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" with wait for record
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsresizableTableId---" by clicking "New" :
      | Section Order | Section Header    | Section Weight (%) |
      | 3             | Automation Test 3 | 100                |
    When I expand nested table containing column value "3"
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsFlexCollapseTableId---" by clicking "New" :
      | Question Order | Question                 | Type   | Max Score |
      | 3              | Automation Description 2 | Number | 100       |
    When I close modal by clicking the top right x button
    And I collapse nested table containing column value "Management Review"
    And I click on "Submit For Approval" in the page details
    When I click "Yes" on modal confirmation box
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
  # @110210 - Program Approver
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Announcements" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    # @110210 - Executive Approver
    When I re-login to "As a Grantor" app as "EXE" user on "test8" portal
    And I navigate to "Announcements" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    # @110210 - Fiscal Approver
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    And I navigate to "Announcements" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"

  @110257   @verifyGrantCreatedAndActivateByPMUser @test2
  Scenario Outline: validate grant created ad activated by PM user
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Internal Program for flow" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "8" seconds
   # And I get the "EGMS ID"
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    When I enter "EditionProgram" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Add" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I close "Contacts" modal by clicking the top right x button
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverTableId---" by clicking "Edit" :
      | Responsibility     | Name          | Description                 |
      | Program Approver   | Admin         | Automation Test Description |
      | Executive Approver | Automation PM | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
  #110257 Create announcement and publish
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Continue"
    When I enter "Creation Second Modal" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
   # And I get the "EGMS ID"
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "EditionAnn" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Add" after selection of "Automation Permanent Funding Account" in the table "---program:-:fundingAccTableId---"
    When I close "Associate" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    And I pause execution for "5" seconds
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approversTableId---" by clicking "Edit" :
      | Role               | Name           | Description                 |
      | Program Approver   | Admin          | Automation Test Description |
      | Executive Approver | Automation EXE | Automation Test Description |
      | Fiscal Approver    | Automation FO  | Automation Test Description |
    And I pause execution for "5" seconds
    When I navigate to "Setup" sub tab
    #Pre-screen review
    When I expand nested table containing column value "Pre-Screen Review"
    When I enter the following values into flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" by clicking "New" :
      | Form Name         | Form Weight (%) | Minimum Number of Reviews per Application | Required? |
      | Pre-Screen Review | 100             | 1                                         | Checked   |
    And I click on "Review Form" icon for "Test" inside flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" with wait for record
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsresizableTableId---" by clicking "New" :
      | Section Order | Section Header    | Section Weight (%) |
      | 1             | Automation Test 1 | 100                |
    When I expand nested table containing column value "1"
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsFlexCollapseTableId---" by clicking "New" :
      | Question Order | Question               | Type    | Max Score |
      | 1              | Automation Description | Written | 100       |
    When I close modal by clicking the top right x button
    And I collapse nested table containing column value "Pre-Screen Review"
    #SME
    When I expand nested table containing column value "SME Review"
    When I enter the following values into flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" by clicking "New" :
      | Form Name  | Form Weight (%) | Minimum Number of Reviews per Application | Required? |
      | SME Review | 100             | 1                                         | Checked   |
    And I click on "Review Form" icon for "Test 1" inside flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" with wait for record
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsresizableTableId---" by clicking "New" :
      | Section Order | Section Header    | Section Weight (%) |
      | 2             | Automation Test 2 | 100                |
    When I expand nested table containing column value "2"
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsFlexCollapseTableId---" by clicking "New" :
      | Question Order | Question                 | Type     | Max Score |
      | 2              | Automation Description 1 | Currency | 100       |
    When I close modal by clicking the top right x button
    And I collapse nested table containing column value "SME Review"
    #Management
    When I expand nested table containing column value "Management Review"
    When I enter the following values into flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" by clicking "New" :
      | Form Name         | Form Weight (%) | Minimum Number of Reviews per Application | Required? |
      | Management Review | 100             | 1                                         | Checked   |
    And I click on "Review Form" icon for "Test 2" inside flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" with wait for record
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsresizableTableId---" by clicking "New" :
      | Section Order | Section Header    | Section Weight (%) |
      | 3             | Automation Test 3 | 100                |
    When I expand nested table containing column value "3"
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsFlexCollapseTableId---" by clicking "New" :
      | Question Order | Question                 | Type   | Max Score |
      | 3              | Automation Description 2 | Number | 100       |
    When I close modal by clicking the top right x button
    And I collapse nested table containing column value "Management Review"
    And I click on "Submit For Approval" in the page details
    When I click "Yes" on modal confirmation box
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Announcements" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    When I re-login to "As a Grantor" app as "EXE" user on "test8" portal
    And I navigate to "Announcements" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    And I navigate to "Announcements" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:allAnnouncementTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:allAnnouncementTableId---"
    And I click on "Publish" in the page details
    Then I softly see status in Progress-bar is "Published" and is "green"

  #110257 create Application and submit
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:reviewsTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    When I enter value "Automation Application" into field "Title__c"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I pause execution for "3" seconds
    When I click on "Edit" in the page details
    And I enter "AppEdition" values from "Program_Field_Values_Test8.xlsx"
    When I click on "Save" in the page details
    And I get the "EGMS ID"
    And I navigate to "Budget" sub tab
    Given I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---program:-:appBudgetPeriodTableId---" by clicking "Edit" :
      | Category Name | Budget |
      | Construction  | 1000   |
    And I navigate to "Attachments" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "Form Fields 1" values from "Program_Field_Values_Test8.xlsx"
    And I pause execution for "3" seconds
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "Form Fields 2" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    When I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "flexGridAppContact" by clicking "Edit" :
      | Name | Project Role             | Is Key Contact |
      |      | Project Director/Manager | Checked        |
    When I click on "Submit Application" in the page details
    Then I softly see status in Progress-bar is "Submitted" and is "Green"
  #@110257 initiate review process
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "<Announcement Name>" in "---program:-:announcementListTableId---" panel
    When I click on "Initiate Review Process" icon for "<Announcement Name>" inside flex table with id "---program:-:announcementListTableId---" with wait for record
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "Pre-Screen Review" inside table "---program:-:reviewStepsTableId---"
  #@110257 initiated pre-screen review
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I edit the following rows inline in flex table with id "---program:-:formTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Pre-Screen Review | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "<Application Name>" in "---program:-:assignApplicationsTableId---" panel
    And I check "<Application Name>" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I check "<Application Name>" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
  #@110257 pre-screen review completed
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "Record ID" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record ID" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I pause execution for "2" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
  #@110257 initiated sme review
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "<Announcement Name>" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "<Announcement Name>" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "SME Review" inside table "---program:-:reviewStepsTableId---"
  #@110257 submit for sme review
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---" with wait for record
    When I check "<Application Name>" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to Next Step" in flex table with id "---program:-:appTableId---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---program:-:formTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer       |
      | Automation EXE |
      | Automation FO  |
      | Automation PM  |
    When I expand nested table containing column value "<Application Name>"
    And I click on "Assign" icon for "Program Review" inside flex table with id "---program:-:reviewFormsTableId---" with wait for record
    And I perform quick search for "Automation PM" in "---program:-:panelAppTableId---" panel
    And I check "Automation PM" boxes in flex table with id "---program:-:panelAppTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:panelAppTableId---"
    When I close "Assign Reviewers" modal by clicking the top right x button
    When I expand nested table containing column value "<Application Name>"
    And I click on "Assign" icon for "Fiscal Review" inside flex table with id "---program:-:reviewFormsTableId---" with wait for record
    And I perform quick search for "Automation FO" in "---program:-:panelAppTableId---" panel
    And I check "Automation FO" boxes in flex table with id "---program:-:panelAppTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:panelAppTableId---"
   # When I close "Assign Reviewers" modal by clicking the top right x button
    When I expand nested table containing column value "<Application Name>"
    And I click on "Assign" icon for "Compliance Review" inside flex table with id "---program:-:reviewFormsTableId---" with wait for record
    And I perform quick search for "Automation EXE" in "---program:-:panelAppTableId---" panel
    And I check "Automation EXE" boxes in flex table with id "---program:-:panelAppTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:panelAppTableId---"
    #When I close "Assign Reviewers" modal by clicking the top right x button
    And I check "All" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
  #@110257 sme review completed
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "Record ID" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record ID" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "EXE" user on "test8" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "Record ID" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record ID" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "Record ID" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record ID" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
  #@110257 management review initiated
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "<Announcement Name>" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "<Announcement Name>" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "Management Review" inside table "---program:-:reviewStepsTableId---"
  #@110257 submitted for management review
    When I click on "View" icon for "SME Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I check "<Application Name>" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to Next Step" in flex table with id "---program:-:appTableId---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---program:-:formTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Management Review | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "<Application Name>" in "---program:-:assignApplicationsTableId---" panel
    And I check "<Application Name>" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I close "Assign Applications" modal by clicking the top right x button
    When I check "<Application Name>" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
  #@110257 management review completed
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "Record ID" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record ID" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
  #@110257 create FDM
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "<Announcement Name>" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "<Announcement Name>" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    When I click on "View" icon for "Management Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I check "<Application Name>" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to FDM" in flex table with id "---program:-:appTableId---"
    When I click on "Funding Decision Memo" in the page details
    Then I softly see field "Status" as "Created"
    When I click on "Funding Decision Memo" in the page details
    Then I softly see field "Status" as "Created"
    And I click on "Edit" in the page details
    When I enter values into fields
      | Value                       | Field                 |
      | REI1                        | GrantCode__c          |
      | Automation Test Description | fieldJustification__c |
    And I click on "Save" in the page details
    Then I softly see field "Status" as "Created"
    And I edit the following rows inline in flex table with id "flexGridFundingDecisionMemoApplications" by clicking "Edit" :
      | Application Title      | Recommended Budget | Recommend for Funding | Comments    |
      | Automation Application | 500                | Yes                   | Recommended |
    Then I softly see that "Recommended" has been added in flextable with Id "flexGridFundingDecisionMemoApplications"
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "flexGridGrantorReviewStepRolesandResponsibilities" by clicking "Edit" :
      | Responsibility     | Name           | Description                 |
      | Executive Approver | Automation EXE | Automation Test Description |
    Then I softly see that "Automation EXE" has been added in flextable with Id "flexGridGrantorReviewStepRolesandResponsibilities"
  #@110257 submit FDM for approval
    And I click on "Submit for Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    And I get the "EGMS ID"
    When I re-login to "As a Grantor" app as "EXE" user on "test8" portal
    When I navigate to "Applications" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "green"
  #@110257 create Sub-Award
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Applications" tab
    When I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    And I click toggle button to select "Approved Funding Decision Memos (FDM)"
    And I perform quick search for "<Announcement Name>" in "---program:-:fdmTableId---" panel
    And I click on "View" icon for "<Announcement Name>" inside flex table with id "---program:-:fdmTableId---" without waiting for record
    And I click on "Create Subaward" icon for "<Announcement Name>" inside flex table with id "---program:-:recommendedAppTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Created" and is "green"
  #@110257 Sub-Award submitted for approval
    And I enter value "Automation Test Description" into field "fieldGrantAwardDescription__c"
    And I click on "Save" in the page details
    And I get the "EGMS ID"
    And I navigate to "Budget" sub tab
    When I edit the following rows inline in flex table with id "---program:-:awardFundingAccountsTableId---" by clicking "Edit" :
      | Funding Account | Encumbrance |
      | FA-ST-02        | 1000        |
    And I edit the following rows inline in flex table with id "---program:-:subAwardBudgetTableId---" by clicking "Edit" :
      | Budget Category | Awarded Budget |
      | Construction    | 1000           |
    When I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "---program:-:associateContactTableId---" by clicking "Edit" :
      | Name           | Project Role             | Is Key Personnel |
      | Automation SPI | Project Director/Manager | Checked          |
    And I navigate to "Terms" sub tab
    And I click on "Edit" icon for "Payment Request" inside flex table with id "---program:-:paymentRequestSchedulesTableId---" without waiting for record
    And I enter in modal "Payment Request Schedule_FDM" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Save"
    When I close "Edit Payment Request Schedule" modal by clicking the top right x button
    And I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:awardApproverTableId---" by clicking "Edit" :
      | Responsibility     | Name           | Description                 |
      | Program Approver   | Automation PM  | Automation Test Description |
      | Executive Approver | Automation EXE | Automation Test Description |
      | Fiscal Approver    | Automation FO  | Automation Test Description |
    And I click on "Submit for Approval" in the page details
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
  #@110257 Sub-Award approval by program approval
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
  #@110257 Sub-Award approval by fiscal approval
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

  #@110257 Sub-Award approval by executive approval
    When I re-login to "As a Grantor" app as "EXE" user on "test8" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Approved"
    Then I softly see status in Progress-bar is "Approved" and is "green"

  #@110257 Sub-Award sent to sub-recepient
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "<Grant Name>" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "<Grant Name>" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "<Award Name>" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    When I click on "Send to Subrecipient" in the page details
    Then I softly see field "Status" as "Sent to Subrecipient after Approval"

  #@110257 Sub-Award accpted by sub-recepient
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Grants" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "Record Id" inside table
    And I click on "Accept after Approval" in the page details
    Then I softly see field "Status" as "Accepted after Approval"

  #@110257 Sub-Award activation by owner
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "<Grant Name>" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "<Grant Name>" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "<Award Name>" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Activated" and is "green"

  #@110257 Grant activation by owner
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "<Grant Name>" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "<Grant Name>" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Active" and is "green"

    Examples:
      | Announcement Name                         | Application Name       | Award Name             | Grant Name             |
      | Automation Internal Announcement for flow | Automation Application | Automation Application | Automation Application |

  @110500  @VerifyDirectGrantCreationAndSubAwardActivation  @test3
  Scenario Outline: Verify grant creation and grant, sub-award activation
    Given I delete the record "Automation Direct Grant" from the object "Grant__c" with field "ProjectTitle__c"
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Grants" tab
    And I click on top right button "New" in flex table with id "---program:-:activeGrantsTableId---"
    And I enter "Grant_Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Continue"
    And I enter "Grant_Edition" values from "Program_Field_Values_Test8.xlsx"
    When I click modal button "Save and Continue"
    When I enter value "Project Grant" into field "fieldGrantType__c"
    When I enter value "Automation Testing" into field "fieldGrantDescription__c"
    And I click on "Save" in the page details
    Then I softly see status in Progress-bar is "Draft" and is "green"

  #@110500 sub-award created
    And I navigate to "Subawards" sub tab
    And I click on "View" icon for "Created" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    And I get the "EGMS ID"
    And I click on "Edit" in the page details
    When I enter "Edition_StandAlone" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    Then I softly see status in Progress-bar is "Created" and is "green"

  #@110500 sub-award send for approval
    When I navigate to "Budget" sub tab
    When I click on top right button "Associate" in flex table with id "---program:-:grantFundingAccountsTableId---"
    And I perform quick search for "Automation Permanent Funding Account" in "---program:-:selectAwardFundingAccountsTableId---" panel
    When I click "Add" after selection of "Automation Permanent Funding Account" in the table "---program:-:selectAwardFundingAccountsTableId---"
    When I close "Associate Funding Accounts" modal by clicking the top right x button
    And I refresh the page
    When I edit the following rows inline in flex table with id "---program:-:awardFundingAccountsTableId---" by clicking "Edit" :
      | Funding Account | Encumbrance |
      | FA-ST-01        | 1000        |
    And I edit the following rows inline in flex table with id "---program:-:subAwardBudgetTableId---" by clicking "Edit" :
      | Budget Category | Awarded Budget |
      | Construction    | 1000           |
    When I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "---program:-:associateContactTableId---" by clicking "Edit" :
      | Name           | Project Role             | Is Key Personnel |
      | Automation SPI | Project Director/Manager | Checked          |
    And I navigate to "Terms" sub tab
    And I click on "Edit" icon for "Payment Request" inside flex table with id "---program:-:paymentRequestSchedulesTableId---" without waiting for record
    When I enter in modal "Payment Request Schedule" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Save"
    And I pause execution for "3" seconds
    And I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:awardApproverTableId---" by clicking "Edit" :
      | Responsibility     | Name           | Description                 |
      | Program Approver   | Automation PM  | Automation Test Description |
      | Executive Approver | Automation EXE | Automation Test Description |
      | Fiscal Approver    | Automation FO  | Automation Test Description |
    And I click on "Submit for Approval" in the page details
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

  #@110500 Sub-Award approval by program approval
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

  #@110500 Sub-Award approval by fiscal approval
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

  #@110500 Sub-Award approval by executive approval
    When I re-login to "As a Grantor" app as "EXE" user on "test8" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Approved"
    Then I softly see status in Progress-bar is "Approved" and is "green"

  #@110500 Sub-Award sent to sub-recepient
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "<Grant Name>" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "<Grant Name>" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "<Award Name>" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    When I click on "Send to Subrecipient" in the page details
    Then I softly see field "Status" as "Sent to Subrecipient after Approval"

  #@110500 Sub-Award accepted by sub-recepient
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Grants" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "Record Id" inside table
    And I click on "Accept after Approval" in the page details
    Then I softly see field "Status" as "Accepted after Approval"

  #@110500 Sub-Award activation by owner
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "<Grant Name>" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "<Grant Name>" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "<Award Name>" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    And I click on "Activate" in the page details
    And I pause execution for "5" seconds
  #@110500 Grant activation by owner
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "<Grant Name>" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "<Grant Name>" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Active" and is "green"

    Examples:
      | Award Name              | Grant Name              |
      | Automation Direct Grant | Automation Direct Grant |

  @111198   @verifyAmendmentRequestAndPaymentRequestAndSiteVisitCreationByPMUser @test4
  Scenario Outline: validate AmendmentRequest, Payment request and site visit closure by PM user
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Internal Program for flow" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "8" seconds
    And I get the "EGMS ID"
    And I click on "Edit" in the page details
    When I enter "EditionProgram" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Add" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I close "Contacts" modal by clicking the top right x button
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverTableId---" by clicking "Edit" :
      | Responsibility     | Name          | Description                 |
      | Program Approver   | Admin         | Automation Test Description |
      | Executive Approver | Automation PM | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Continue"
    When I enter "Creation Second Modal" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I get the "EGMS ID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "EditionAnn" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Add" after selection of "Automation Permanent Funding Account" in the table "---program:-:fundingAccTableId---"
    When I close "Associate" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    And I pause execution for "5" seconds
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approversTableId---" by clicking "Edit" :
      | Role               | Name           | Description                 |
      | Program Approver   | Admin          | Automation Test Description |
      | Executive Approver | Automation EXE | Automation Test Description |
      | Fiscal Approver    | Automation FO  | Automation Test Description |
    And I pause execution for "5" seconds
    When I navigate to "Setup" sub tab
    #Pre-screen review
    When I expand nested table containing column value "Pre-Screen Review"
    When I enter the following values into flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" by clicking "New" :
      | Form Name | Form Weight (%) | Minimum Number of Reviews per Application | Required? |
      | Test      | 100             | 1                                         | Checked   |
    And I click on "Review Form" icon for "Test" inside flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" with wait for record
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsresizableTableId---" by clicking "New" :
      | Section Order | Section Header    | Section Weight (%) |
      | 1             | Automation Test 1 | 100                |
    When I expand nested table containing column value "1"
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsFlexCollapseTableId---" by clicking "New" :
      | Question Order | Question               | Type    | Max Score |
      | 1              | Automation Description | Written | 100       |
    When I close modal by clicking the top right x button
    And I collapse nested table containing column value "Pre-Screen Review"
    #SME
    When I expand nested table containing column value "SME Review"
    When I enter the following values into flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" by clicking "New" :
      | Form Name | Form Weight (%) | Minimum Number of Reviews per Application | Required? |
      | Test 1    | 100             | 1                                         | Checked   |
    And I click on "Review Form" icon for "Test 1" inside flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" with wait for record
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsresizableTableId---" by clicking "New" :
      | Section Order | Section Header    | Section Weight (%) |
      | 2             | Automation Test 2 | 100                |
    When I expand nested table containing column value "2"
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsFlexCollapseTableId---" by clicking "New" :
      | Question Order | Question                 | Type     | Max Score |
      | 2              | Automation Description 1 | Currency | 100       |
    When I close modal by clicking the top right x button
    And I collapse nested table containing column value "SME Review"
    #Management
    When I expand nested table containing column value "Management Review"
    When I enter the following values into flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" by clicking "New" :
      | Form Name | Form Weight (%) | Minimum Number of Reviews per Application | Required? |
      | Test 2    | 100             | 1                                         | Checked   |
    And I click on "Review Form" icon for "Test 2" inside flex table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---" with wait for record
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsresizableTableId---" by clicking "New" :
      | Section Order | Section Header    | Section Weight (%) |
      | 3             | Automation Test 3 | 100                |
    When I expand nested table containing column value "3"
    When I enter the following values into flex table with id "---program:-:RelatedReviewPanelQuestionsFlexCollapseTableId---" by clicking "New" :
      | Question Order | Question                 | Type   | Max Score |
      | 3              | Automation Description 2 | Number | 100       |
    When I close modal by clicking the top right x button
    And I collapse nested table containing column value "Management Review"
    And I click on "Submit For Approval" in the page details
    When I click "Yes" on modal confirmation box
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Announcements" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    And I navigate to "Announcements" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    When I re-login to "As a Grantor" app as "EXE" user on "test8" portal
    And I navigate to "Announcements" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Record Id" in "---program:-:allAnnouncementTableId---" panel
    And I click on "View" icon for "Record Id" inside flex table with id "---program:-:allAnnouncementTableId---"
    And I click on "Publish" in the page details
    Then I softly see status in Progress-bar is "Published" and is "green"
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:reviewsTableId---" panel
    And I click on "View" icon for "Record Id" inside flex table with id "---program:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    When I enter value "Automation Application" into field "Title__c"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I pause execution for "3" seconds
    When I click on "Edit" in the page details
    And I enter "AppEdition" values from "Program_Field_Values_Test8.xlsx"
    When I click on "Save" in the page details
    And I get the "EGMS ID"
    And I navigate to "Budget" sub tab
    Given I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---program:-:appBudgetPeriodTableId---" by clicking "Edit" :
      | Category Name | Budget |
      | Construction  | 1000   |
    And I navigate to "Attachments" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "Form Fields 1" values from "Program_Field_Values_Test8.xlsx"
    And I pause execution for "3" seconds
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "Form Fields 2" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    When I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "flexGridAppContact" by clicking "Edit" :
      | Name | Project Role             | Is Key Contact |
      |      | Project Director/Manager | Checked        |
    When I click on "Submit Application" in the page details
    Then I softly see status in Progress-bar is "Submitted" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "<Announcement Name>" in "---program:-:announcementListTableId---" panel
    When I click on "Initiate Review Process" icon for "<Announcement Name>" inside flex table with id "---program:-:announcementListTableId---" with wait for record
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "Pre-Screen Review" inside table "---program:-:reviewStepsTableId---"
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I edit the following rows inline in flex table with id "---program:-:formTableId---" by clicking "Edit" :
      | Form Name  | Due in Days |
      | Pre-Screen | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "<Application Name>" in "---program:-:assignApplicationsTableId---" panel
    And I check "<Application Name>" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I close "Assign Applications" modal by clicking the top right x button
    When I check "<Application Name>" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "Record ID" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record ID" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I pause execution for "2" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "<Announcement Name>" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "<Announcement Name>" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "SME Review" inside table "---program:-:reviewStepsTableId---"
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---" with wait for record
    When I check "<Application Name>" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to Next Step" in flex table with id "---program:-:appTableId---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---program:-:formTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer       |
      | Automation EXE |
      | Automation FO  |
      | Automation PM  |
    When I expand nested table containing column value "<Application Name>"
    And I click on "Assign" icon for "Program Review" inside flex table with id "---program:-:reviewFormsTableId---" with wait for record
    And I perform quick search for "Automation PM" in "---program:-:panelAppTableId---" panel
    And I check "Automation PM" boxes in flex table with id "---program:-:panelAppTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:panelAppTableId---"
    When I close "Assign Reviewers" modal by clicking the top right x button
    When I expand nested table containing column value "<Application Name>"
    And I click on "Assign" icon for "Fiscal Review" inside flex table with id "---program:-:reviewFormsTableId---" with wait for record
    And I perform quick search for "Automation FO" in "---program:-:panelAppTableId---" panel
    And I check "Automation FO" boxes in flex table with id "---program:-:panelAppTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:panelAppTableId---"
    When I close "Assign Reviewers" modal by clicking the top right x button
    When I expand nested table containing column value "<Application Name>"
    And I click on "Assign" icon for "Compliance Review" inside flex table with id "---program:-:reviewFormsTableId---" with wait for record
    And I perform quick search for "Automation EXE" in "---program:-:panelAppTableId---" panel
    And I check "Automation EXE" boxes in flex table with id "---program:-:panelAppTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:panelAppTableId---"
    When I close "Assign Reviewers" modal by clicking the top right x button
    And I check "All" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "Record ID" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record ID" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "EXE" user on "test8" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "Record ID" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record ID" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "Record ID" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record ID" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "<Announcement Name>" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "<Announcement Name>" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "Management Review" inside table "---program:-:reviewStepsTableId---"
    When I click on "View" icon for "SME Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I check "<Application Name>" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to Next Step" in flex table with id "---program:-:appTableId---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---program:-:formTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Management Review | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "<Application Name>" in "---program:-:assignApplicationsTableId---" panel
    And I check "<Application Name>" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I close "Assign Applications" modal by clicking the top right x button
    When I check "<Application Name>" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "Record ID" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record ID" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"

  #@111198 create FDM and approve
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "<Announcement Name>" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "<Announcement Name>" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    When I click on "View" icon for "Management Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I check "<Application Name>" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to FDM" in flex table with id "---program:-:appTableId---"
    When I click on "Funding Decision Memo" in the page details
    Then I softly see field "Status" as "Created"
    When I click on "Funding Decision Memo" in the page details
    Then I softly see field "Status" as "Created"
    And I click on "Edit" in the page details
    When I enter values into fields
      | Value                       | Field                 |
      | REI1                        | GrantCode__c          |
      | Automation Test Description | fieldJustification__c |
    And I click on "Save" in the page details
    Then I softly see field "Status" as "Created"
    And I edit the following rows inline in flex table with id "flexGridFundingDecisionMemoApplications" by clicking "Edit" :
      | Application Title      | Recommended Budget | Recommend for Funding | Comments    |
      | Automation Application | 500                | Yes                   | Recommended |
    Then I softly see that "Recommended" has been added in flextable with Id "flexGridFundingDecisionMemoApplications"
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "flexGridGrantorReviewStepRolesandResponsibilities" by clicking "Edit" :
      | Responsibility     | Name           | Description                 |
      | Executive Approver | Automation EXE | Automation Test Description |
    And I click on "Submit for Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    And I get the "EGMS ID"
    When I re-login to "As a Grantor" app as "EXE" user on "test8" portal
    When I navigate to "Applications" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "green"

  #@111198 create Sub-Award and activate
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Applications" tab
    When I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    And I click toggle button to select "Approved Funding Decision Memos (FDM)"
    And I perform quick search for "<Announcement Name>" in "---program:-:fdmTableId---" panel
    And I click on "View" icon for "<Announcement Name>" inside flex table with id "---program:-:fdmTableId---" without waiting for record
    And I click on "Create Subaward" icon for "<Announcement Name>" inside flex table with id "---program:-:recommendedAppTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Created" and is "green"
    And I enter value "Automation Test Description" into field "fieldGrantAwardDescription__c"
    And I click on "Save" in the page details
    And I get the "EGMS ID"
    And I navigate to "Budget" sub tab
    When I edit the following rows inline in flex table with id "---program:-:awardFundingAccountsTableId---" by clicking "Edit" :
      | Funding Account | Encumbrance |
      | FA-ST-02        | 1000        |
    And I edit the following rows inline in flex table with id "---program:-:subAwardBudgetTableId---" by clicking "Edit" :
      | Budget Category | Awarded Budget |
      | Construction    | 1000           |
    When I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "---program:-:associateContactTableId---" by clicking "Edit" :
      | Name           | Project Role             | Is Key Personnel |
      | Automation SPI | Project Director/Manager | Checked          |
    And I navigate to "Terms" sub tab
    And I click on "Edit" icon for "Payment Request" inside flex table with id "---program:-:paymentRequestSchedulesTableId---" without waiting for record
    And I enter in modal "Payment Request Schedule_FDM" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Save"
    When I close "Edit Payment Request Schedule" modal by clicking the top right x button
    And I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:awardApproverTableId---" by clicking "Edit" :
      | Responsibility     | Name           | Description                 |
      | Program Approver   | Automation PM  | Automation Test Description |
      | Executive Approver | Automation EXE | Automation Test Description |
      | Fiscal Approver    | Automation FO  | Automation Test Description |
    And I click on "Submit for Approval" in the page details
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
    When I re-login to "As a Grantor" app as "EXE" user on "test8" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Approved"
    Then I softly see status in Progress-bar is "Approved" and is "green"

  #@111198 Sub-Award accepted by sub-recepient
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "<Grant Name>" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "<Grant Name>" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "<Award Name>" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    When I click on "Send to Subrecipient" in the page details
    Then I softly see field "Status" as "Sent to Subrecipient after Approval"
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Grants" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "Record Id" inside table
    And I click on "Accept after Approval" in the page details
    Then I softly see field "Status" as "Accepted after Approval"

  #@111198 Sub-Award and grant activation by owner
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "<Grant Name>" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "<Grant Name>" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "<Award Name>" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Activated" and is "green"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "<Grant Name>" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "<Grant Name>" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Active" and is "green"

  #@111198 create site visit
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "<Grant Name>" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "<Grant Name>" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "<Award Name>" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    When I navigate to "Management" sub tab
    When I click on top right button "Initiate Site Visit" in flex table with id "GrantorSiteVisitsAward"
    And I enter "Site Visit" values from "Program_Field_Values_Test8.xlsx"
    When I click modal button "Save and Continue"
    And I enter "Edition_Site_Visit" values from "Program_Field_Values_Test8.xlsx"
    When I click on "Save" in the page details
    And I get the "EGMS ID"
    Given I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverSiteVisitTableId---" by clicking "Edit" :
      | Role             | Name           | Description                 |
      | Program Approver | Automation EXE | Automation Test Description |
      | Fiscal Approver  | Automation FO  | Automation Test Description |
    Then I softly see status in Progress-bar is "Created" and is "green"

  #@111198 site visit in progress
    Given I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:participantsTableId---"
    When I click "Associate" after selection of "Automation EXE" in the table "---program:-:siteVisitContactsTableId---"
    And I refresh the page
    And I click on "Notify" in the page details
    And I save the field labeled "EGMS ID" as "SiteVisitId"
    Then I softly see field "Status" as "Notified"
    Then I softly see status in Progress-bar is "Notified" and is "green"
    When I click on "Conduct" in the page details
    Then I softly see status in Progress-bar is "In Progress" and is "green"
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:SiteVisitId}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"

  #@111198 submit site visit for approval
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:manageSiteVisitTableId---" panel
    And I click on "View" icon for "Record Id" inside flex table with id "---program:-:manageSiteVisitTableId---"
    And I navigate to "Reports and Outcomes" sub tab
    When I click on "Edit" icon for "General Review Form" inside flex table with id "---program:-:reportsTableId---"
    And I enter "Form Fields" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I click on "Back" in the page details
    When I enter the following values into flex table with id "---program:-:correctiveTableId---" by clicking "New" :
      | Title                  | Description            | Type        |
      | Automation Finding     | Automation Description | Finding     |
      | Automation Concern     | Automation Description | Concern     |
      | Automation Observation | Automation Description | Observation |
    When I click on "Submit for Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

  #@111198 site visit approved by program approval
    When I re-login to "As a Grantor" app as "EXE" user on "test8" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    And I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

  #@111198 site visit approved by fiscal approval
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    And I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "green"

  #@111198 site visit sent to sub-recipient
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:manageSiteVisitTableId---" panel
    And I click on "View" icon for "Record Id" inside flex table with id "---program:-:manageSiteVisitTableId---"
    Given I click on "Send to Subrecipient" in the page details
    Then I softly see status in Progress-bar is "Sent to Subrecipient" and is "green"

  #@111198 site visit submitted to grantor
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:monitoringTabPhasePendingTasks---" panel
    When I click on "Start" icon for "Record Id" inside flex table with id "---program:-:monitoringTabPhasePendingTasks---"
    When I navigate to "Reports and Outcomes" sub tab
    And I expand nested table containing column value "Automation Observation"
    When I enter the following values into flex table with id "---program:-:correctiveTableId---" by clicking "New" :
      | Title                               | Description            | Status      | Due Date | Assigned To    |
      | Automation Observation Subrecipient | Automation Description | In-Progress | 30       | Automation SPI |
    When I collapse nested table containing column value "Automation Observation"
    And I expand nested table containing column value "Automation Concern"
    When I enter the following values into flex table with id "---program:-:correctiveTableId---" by clicking "New" :
      | Title                           | Description            | Status      | Due Date | Assigned To    |
      | Automation Concern Subrecipient | Automation Description | In-Progress | 30       | Automation SPI |
    When I collapse nested table containing column value "Automation Concern"
    And I expand nested table containing column value "Automation Finding"
    When I enter the following values into flex table with id "---program:-:correctiveTableId---" by clicking "New" :
      | Title                           | Description            | Status      | Due Date | Assigned To    |
      | Automation Finding Subrecipient | Automation Description | In-Progress | 30       | Automation SPI |
    And I collapse nested table containing column value "Automation Finding"
    When I click on "Submit to Grantor" in the page details
    Then I softly see status in Progress-bar is "Submitted to Grantor" and is "green"

  #@111198 site visit closure
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:manageSiteVisitTableId---" panel
    And I click on "View" icon for "Record Id" inside flex table with id "---program:-:manageSiteVisitTableId---"
    And I click on "Accept And Close" in the page details
    Then I softly see status in Progress-bar is "Closed" and is "green"

    Examples:
      | Announcement Name                         | Application Name       | Award Name             | Grant Name             |
      | Automation Internal Announcement for flow | Automation Application | Automation Application | Automation Application |
