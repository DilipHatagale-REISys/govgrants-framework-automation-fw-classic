@CreateProgram-PATCHcomponent @regression-PATCH
Business Need: Step Progress Bar Component Scenarios

  @flextableprocreate
  Scenario Outline: Create flextable records
#    And I enter value "128291 testing program" into field "ProgramName__c"
#    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "<programname>" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "1" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "<programname>" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "1" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "<programname>" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "1" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "<programname>" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "1" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "<programname>" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "1" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "<programname>" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "1" seconds
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "<programname>" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Examples:
      | Users | programname        |
      | Admin | Automation Program |
      | PM    | Automation Program |


  @closeoutScript
  Scenario: take active program and till closeout
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---Announcement:-:competitiveAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Announcement_Field_Values.xlsx"
    And I enter value "Send Email Component active program" into field "fieldProgram__c"
    And I click modal button "Continue"
    And I enter value "No" into field "fieldIsMatchRequired__c"
    And I enter value "Construction" into field "fieldBudget_Category_Package__c"
    And I enter value "No" into field "fieldIsProgramIncomeAnticipated__c"
    And I enter value "No" into field "fieldAllowSchoolUserToStartPreApp__c"
    And I enter value "No" into field "fieldPreApplicationNeeded__c"
    And I enter value "Yes" into field "fieldFocusAreaRequired__c"
    And I enter value "No" into field "fieldRiskAssessment_Required__c"
    And I enter value "Formula" into field "fieldAnnouncementType__c"
#    And I enter value "By Sub-categories" into field "fieldDetailedBudgetingOption__c"
#    And I enter value "By Applicant and Focus Area" into field "fieldOSPI_AllocationLevel__c"
    And I click modal button "Save and Continue"
    When I enter value "No" into field "fieldOSPI_FederalGrantforResearch__c"
    When I enter value "No" into field "fieldOSPI_SchoolBoardApprovalReq__c"
    When I enter value "ESD" into field "fieldEligibleApplicantTypes__c"
    When I enter value "College/University" into field "fieldEligibleApplicantTypes__c"
    When I enter value "375" into field "fieldOSPI_GrantCloseoutDate__c"
    When I enter value "2021" into field "FiscalYear__c"
    When I enter value "30" into field "fieldApplicationDueDate__c"
    When I enter value "Test" into field "fieldAnnouncementDescription__c"
    When I enter value "Federal grant" into field "fieldOSPI_Form_Package_Type__c"
    When I enter value "Test" into field "fieldOSPI_FederalAwardIdentificationNumber__c"
    When I enter value "Test" into field "fieldOSPI_AwardingAgency__c"
    When I navigate to "Financials" sub tab
    When I enter value "10000" into field "fieldAwardFloor__c"
    When I enter value "20000" into field "fieldAwardCeiling__c"
    When I enter value "15000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldIndirect_Rate_Type__c"
    When I enter value "No" into field "fieldFunding_Verified_by_Budget_Analyst__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---Announcement:-:AnnouncementBudgetPeriodDetails---"
    And I pause execution for "6" seconds
    And I refresh the page
    And I pause execution for "6" seconds
    And I edit the following rows inline in flex table with id "---Announcement:-:AnnouncementBudgetPeriodDetails---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 40         | 365      |
    And  I navigate to "Overview" sub tab
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---Announcement:-:AnnouncementContacts---"
    When I enter value "Program Contact" into field "ProjectRole__c"
    And I click on top right button "Save" in flex table with id "---Announcement:-:AnnouncementContacts---"
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---Announcement:-:RelatedFederalNGOProgram---"
    And I perform quick search for "Education and Human Resources" in "---Announcement:-:RelatedFederalNGOProgramModalSearch---" panel
    And I check "Education and Human Resources" boxes in flex table with id "---Announcement:-:Modal---"
    And I click on top right button "Associate" in flex table with id "---Announcement:-:Modal---"
    And I pause execution for "4" seconds
    When I navigate to "Files" sub tab
    And I pause execution for "4" seconds
    And I click on top right button "Add Files" in flex table with id "---Announcement:-:AnnouncementAttachmentFiles---"
    And I pause execution for "4" seconds
    When I upload file with classification type "Form Package Instructions" present in the flex table "---Announcement:-:AnnouncementAttachmentModal---" from library
    And I pause execution for "4" seconds
    When I navigate to "Financials" sub tab
    And I click on "Edit" in the page details
    When I enter value "Insufficient Fund" into field "fieldJustification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate Focus Areas" in flex table with id "---Announcement:-:RelatedFocusAreaAndActivities---"
    And I perform quick search for "---static:-:focusArea02---" in "---Announcement:-:FocusAreasModal---" panel
    And I check "---static:-:focusArea02---" boxes in flex table with id "---Announcement:-:Modal---"
    And I perform quick search for "---static:-:focusArea01---" in "---Announcement:-:FocusAreasModal---" panel
    And I check "---static:-:focusArea01---" boxes in flex table with id "---Announcement:-:Modal---"
    And I click on top right button "Add" in flex table with id "---Announcement:-:Modal---"
    And I close modal by clicking the top right x button
    And I click on "Edit" in the page details
    When I enter value "Insufficient Fund" into field "fieldJustification__c"
    And I click on "Save" in the page details
    And I save the value from row "1" for column name "EGMS ID" as "EGMSID" from flex table "---Announcement:-:RelatedFocusAreaAndActivities---"
    And I expand nested table containing column value "{SavedValue:EGMSID}"
    And I click on top right button "Associate Activities" in flex table with id "---Announcement:-:BudgetActivities---"
    And I perform quick search for "15 Human Resources" in "---Announcement:-:Modal---" panel
    And I check "15 Human Resources" boxes in flex table with id "---Announcement:-:Modal---"
    And I click on top right button "Add" in flex table with id "---Announcement:-:Modal---"
    And I close modal by clicking the top right x button
    And I refresh the page
    And I save the value from row "4" for column name "EGMS ID" as "EGMSID1" from flex table "---Announcement:-:RelatedFocusAreaAndActivities---"
    And I expand nested table containing column value "{SavedValue:EGMSID1}"
    And I click on top right button "Associate Activities" in flex table with id "---Announcement:-:BudgetActivities---"
    And I perform quick search for "14 Financial Services" in "---Announcement:-:Modal---" panel
    And I check "14 Financial Services" boxes in flex table with id "---Announcement:-:Modal---"
    And I click on top right button "Add" in flex table with id "---Announcement:-:Modal---"
    And I close modal by clicking the top right x button
    And I pause execution for "6" seconds
    When I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---Announcement:-:InvitedApplicantsAndAllocations---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "InviteApplicantWithAllocationAmount.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    When I click on "Submit For Approval" in the page details
    And I refresh the page
    When I "Approve" in the approval decision
    And I refresh the page
    When I click on "Publish" in the page details
    And I refresh the page
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI3" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---Announcement:-:competitiveAnnouncementTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Competitive Announcement}" inside flex table with id "---Announcement:-:competitiveAnnouncementTableId---"
    When I click on "Qualify" in the page details
    Then I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    And I validate forms for application
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    When I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "flexTableDivId" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Competitive Announcement}" inside flex table with id "flexTableDivId"
    And I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "---Application:-:APPContacts---" by clicking "Edit" :
      | Name      | Project Role   | Is Key Contact |
      | Alester R | Fiscal Contact | Checked        |
    And I navigate to "Budget" sub tab
    And I refresh the page
    And I save the value from row "1" for column name "Allowed Budgeted Direct Expenditure" as "ASD" from flex table "AllocationsAndIndirectCostsFlexGridgrid"
    And I save the value from row "2" for column name "Allowed Budgeted Direct Expenditure" as "ASD1" from flex table "AllocationsAndIndirectCostsFlexGridgrid"
    When I click on "Update" icon for "15 Human Resources" inside flex table with id "---Application:-:ApplicationBudgetPeriod---"
    When I enter the following values into flex table with id "AppLineItemsBySubCategorygrid" by clicking "Add Rows" :
      | Subcategory            | Debit Transfer    |
      | Well Rounded Education | {SavedValue:ASD1} |
    And I close modal by clicking the top right x button
    And I refresh the page
    And I pause execution for "4" seconds
    When I click on "Update" icon for "14 Financial Services" inside flex table with id "---Application:-:ApplicationBudgetPeriod---"
    When I enter the following values into flex table with id "AppLineItemsBySubCategorygrid" by clicking "Add Rows" :
      | Subcategory            | Debit Transfer   |
      | Well Rounded Education | {SavedValue:ASD} |
    And I click on "Edit" in the page details
    And I navigate to "Budget" sub tab
    And I pause execution for "3" seconds
    And I enter value "Automation Test" into field "fieldJustification__c"
    And I click on "Save" in the page details
    And I pause execution for "4" seconds
    And I click on "Submit Application" in the page details
    And I save the field containing "EGMS ID" as "APPID"
    And I pause execution for "4" seconds
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    When I navigate to "Application Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---Application:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Competitive Announcement}" inside flex table with id "---Application:-:ApplicationReviews---"
    And I pause execution for "4" seconds
    And I navigate to "Related Log" sub tab
    And I save the field containing "EGMS ID" as "ANNID"
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---Application:-:ApplicationReviewSteps---"
    And I pause execution for "3" seconds
    And I complete application review
    And I navigate to "Applications" tab
    When I navigate to "Application Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---Application:-:ApplicationReviews---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Competitive Announcement}" inside flex table with id "---Application:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I pause execution for "3" seconds
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---Application:-:ApplicationReviewSteps---"
    And I check "{SavedValue:APPID}" boxes in flex table with id "---Application:-:ApplicationPromoteTONextStep---"
    And I pause execution for "3" seconds
    When I click on top right button "Promote to Next Step" in flex table with id "---Application:-:ApplicationPromoteTONextStep---"
    And I pause execution for "3" seconds
    And I click on "Next Review Step" in the page details
    And I pause execution for "5" seconds
    And I complete application review
    And I navigate to "Applications" tab
    When I navigate to "Application Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---Application:-:ApplicationReviews---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Competitive Announcement}" inside flex table with id "---Application:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I pause execution for "3" seconds
    And I click on "View" icon for "SME Review" inside flex table with id "---Application:-:ApplicationReviewSteps---"
    And I check "{SavedValue:APPID}" boxes in flex table with id "---Application:-:ApplicationPromoteTONextStep---"
    And I pause execution for "3" seconds
    When I click on top right button "Promote to Next Step" in flex table with id "---Application:-:ApplicationPromoteTONextStep---"
    And I pause execution for "3" seconds
    And I click on "Next Review Step" in the page details
    And I pause execution for "5" seconds
    And I complete application review
    And I navigate to "Applications" tab
    When I navigate to "Application Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---Application:-:ApplicationReviews---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Competitive Announcement}" inside flex table with id "---Application:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I pause execution for "3" seconds
    And I click on "View" icon for "Management Review" inside flex table with id "---Application:-:ApplicationReviewSteps---"
    And I check "{SavedValue:APPID}" boxes in flex table with id "---Application:-:ApplicationPromoteTONextStep---"
    And I pause execution for "3" seconds
    When I click on top right button "Complete Reviews" in flex table with id "---Application:-:ApplicationPromoteTONextStep---"
    And I pause execution for "3" seconds
    When I re-login to "As a Grantor" app as "FO" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    When I navigate to "Application Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---Application:-:ApplicationReviews---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Competitive Announcement}" inside flex table with id "---Application:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I pause execution for "3" seconds
    And I click on "View" icon for "Management Review" inside flex table with id "---Application:-:ApplicationReviewSteps---"
    And I click on "Create Subaward" icon for "{SavedValue:Automation Runtime Competitive Announcement}" inside flex table with id "---Application:-:ApplicationPromoteTONextStep---"
    And I pause execution for "5" seconds
    Then I see the field labeled "Status" as "Created"
    And I save the field labeled "EGMS ID" as "SAID"
    And I navigate to "Overview" sub tab
    And I enter value "15" into field "fieldOSPI_Award_Date__c"
    And I navigate to "Budget" sub tab
    And I click on "Save" in the page details
    And I save the field containing "Budget Period Start Date" as "BPSD"
    And I save the field containing "Budget Period End Date" as "BPED"
    When I click on top right button "Associate" in flex table with id "---Application:-:subawardFundingAccount---"
    When I click "Associate" after selection of "FA-ST-175" in the table "---Application:-:selectAwardFund---"
    When I click "Associate" after selection of "FA-ST-162" in the table "---Application:-:selectAwardFund---"
    When I close "Associate Funding Accounts" modal by clicking the top right x button
    And I refresh the page
    And I edit the following rows inline in flex table with id "---Application:-:subawardFundingAccount---" by clicking "Edit" :
      | Funding Account | Encumbrance | Allocation |
      | FA-ST-175       | 4000        | 4000       |
      | FA-ST-162       | 6000        | 6000       |
    And I pause execution for "3" seconds
    When I click on "Submit For Approval" in the page details
    And I pause execution for "3" seconds
    When I "Approve" in the approval decision
    And I pause execution for "3" seconds
    When I click on "Activate" in the page details
    And I pause execution for "3" seconds
    When I re-login to "As a Grantor" app as "PO" user on "INTERNAL" portal
    And I navigate to "Grants" tab
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "ActiveGrants" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Competitive Announcement}" inside flex table with id "ActiveGrants"
    And I navigate to "Requests" sub tab
    And I click on top right button "New" in flex table with id "---closeout:-:GrantorCloseouttablegrid---"
    And I enter in modal value "Early Completion" into field "fieldType__c"
    And I enter in modal value "Automation Reason" into field "fieldReason__c"
    And I click modal button "Save and Continue"
    And I enter value "Automation Test" into field "fieldJustification__c"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Override" in the page details
    And I pause execution for "3" seconds
    Then I see the field labeled "Status" as "Overridden"
    And I click on "Complete Closeout" in the page details
    And I pause execution for "3" seconds
    Then I softly see field "Status" as "Completed"

  @active
  Scenario: wer
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    #And I clear the value from field "ProgramName__c"
    And I enter value "Active Internal Program For Announcement Record" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name             | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation ADMIN | Step 3  | Step 3       | Step 3 | Step 3 | Step 3                  | Step 3   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    When I navigate to "History" sub tab
    Then I see "Approval History" page block displayed
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I re-login to "As a Grantor" app as "EXE" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I re-login to "As a Grantor" app as "ADMIN" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I refresh the page
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"