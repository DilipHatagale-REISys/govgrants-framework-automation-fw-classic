@GGFSanityBusinessFlow @regression-test5
Business Need: Sanity check for all Component Scenarios
  Test all component scenarios for sanity

  @34666    @validateTitleField-gplanning @enhancedCharts
  Scenario: Changing chart title for 'AnnouncementByAdminBureauUnit' chart in configuration and validating inside planning-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue             | filterId         |
      | Charts Config         | Title     | AnnouncementByAdminBureauUnit | ApiGeneratedId:0 |
      | Charts Config         | Active    | false                         | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue    |
      | Charts Config         | Title     | Funding Opportunities for Automation | GrantorPlanning    | Name                      | AnnouncementByAdminBureauUnit |
      | Charts Config         | Active    | true                                 | GrantorPlanning    | Name                      | AnnouncementByAdminBureauUnit |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Funding Opportunities for Automation" displayed as chart title

  @37667    @notifyAdditionalPeopleThroughEmailWithApproveTemplateToProgramOwner-Programs @approvalProcess
  Scenario: Setup email setting in configuration and validate that program owner receiving email for program approval
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Notify Additional People | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                | fieldNewValue | coreComponentField                                            |
      | Program                              | Status                   | Created       | Test program for automation -  SA mode only - Can be Approved |
      | Approval Process Steps Cache:General | Notify Additional People | true          | Program_Manager_Approver                                      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInSAModeCanBeApproved}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInSAModeCanBeApproved}" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programInSAModeCanBeApproved}"
    When I click on "Start" icon for "{Framework_recordUsed:programInSAModeCanBeApproved}" inside table
    And I "Approve" in the approval decision
    When I re-login to "As an Administrator" app as "Automation" user on "default" portal
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    And I click toggle button to select "Queued Emails"
    Then I see email is generated with template "Program_Approved_Email_Template"

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

  @54704      @verifyPicklistFieldShouldBeInViewModeAfterEditingMultipleRecords @enhancedGrid
  Scenario Outline: validate picklist should visible in only view mode after Edit status field for multiple records
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName     | fieldOrignalValue               | filterId         |
      | Flex Grid:Flex Table List | Filter Clause | <defaultFilterClauseForFLV2539> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName     | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Filter Clause | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I edit the following rows inline in flex table with id "---program:-:flexGridEnhancedID---" by clicking "Edit" :
      | Project Title                 | Status |
      | Road COnst. Ann.              | Active |
      | Road Construction Annoumsment | Active |
    Then I see select box for picklist is not displayed for status inside table
    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @52895    @defaultFieldNameFieldAtCustomAppConfig @customAppConfig
  Scenario: Removing contrast content at default field name field from custom app confiuration and validating the changed label at custom app dropdown
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue     | filterId         |
      | Custom App Config     | Default Theme Name | ColorContrast_Grantor | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName          | fieldNewValue | coreComponentField |
      | Custom App Config:General | Default Theme Name |               | StateasGrantor     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I see "ColorContrast_Grantor" on complete page for custom App as a Grantor

  @49355    @enableSubTotalFieldAtChildFlexTableForEnhancedGrid-gPlanning @enhancedGrid
  Scenario: validate total of number of awards after checking checkbox true of Enable Sub Total field at child flex table from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Sub Total    | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | TmpGrantorActiveAwardsGrid | Name                      | FTC-1498                   |
      | Flex Table List       | Enable Sub Total    | true          | TmpGrantorActiveAwardsGrid | Name                      | FTC-1498                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-VT-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-VT-001"
    Then I see field "Total Obligated Amount : 300" inside page block

  @48668    @hide_Expression_ApprovalDecisionAction_Approve_With_Profile_NOTIN_SystemAdministrator_OR_UserType_IN_Internal @expressionBuilder
  Scenario: Setup configuration to hide Approve option from configuration for approval decision using Profile NOT IN System Administrator OR UserType IN Internal and validating its content in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                                                  | coreComponentField |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Approve_With_Profile_NOTIN_SystemAdministrator_OR_UserType_IN_Internal | ADAC-0009          |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:ProgramContactsNewTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "BP-01" inside flex table with id "---program:-:budgetPeriodDetailsTableId---"
    And I switch to iframe with id "ProgramBudgetPeriodiframeContentId"
    And I enter value "Active" into field "fieldStatus__c"
    And I click modal button "Save"
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
    When I re-login as "Automation-PM" user on "default" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    Then I see only the following radio buttons in the approval decision :
      | Reject | Forward | Send Back |

  @51323    @sequenceFieldAtApplicationBudgetCategoryFlexTableChild-gApplications @flexGrid
  Scenario: Changing sequence of view row level action item at Application Budget child flex table from config and validating it inside Application Budget child flex table of programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table Action     | Sequence  | 1                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Sequence  | 0             | ApplicationBudgetCategoryFlexTable | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "View" icon for "---program:-:applicationBudgetCategoryFlexGridTableId---" is at position "0" inside flex table

  @34034    @addingfieldNamesOfDifferentDataTypes-gPlanning @flexTable
  Scenario Outline: validate adding field names for different data types in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see "<fieldDisplayNames>" in flex table header "toggleFlexTablePrograms"

    Examples:
      | fieldDisplayNames      | newFieldsApi                                                                                                                           | defaultFieldsApi                                                                                                 |
      | CFDA Number            | FederalProgramCFDA__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Program Approver       | ProgramApprover__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById    | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Expected Funding       | ExpectedFunding__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById    | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | End Date               | EndDate__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById            | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Federal Program CFDA # | ProgramCFDA__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById        | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Program Type           | ProgramType__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById        | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Website Address        | WebsiteAddress__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById     | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Is Federal Program     | IsFederalProgram__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById   | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
      | Number                 | Number__c,Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById             | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @69951   @expectedTargetURLShouldGetsOpenByClickOnFooterLinks @footerLinks
  Scenario Outline: validate given target URL opens by click on 508 Compliance link from footer
    Given I have "customAppFooter" configuration as below:
      | id                 | Name | DisplayText    | TargetURL                            | Sequence | booleanValue                                         | customSettingApiName          |
      | a0E1500000VP7l5EAD | F3   | 508 Compliance | /apex/GNT__Help?uniqueName=Help-0113 | 3        | GNT__Active__c:true,GNT__TermsAndConditions__c:false | GNT__CustomAppFooterConfig__c |
    And I update custom app footer setting changes:
      | id                 | Name | DisplayText    | TargetURL                            | Sequence | booleanValue                                         | customSettingApiName          |
      | a0E1500000VP7l5EAD | F3   | 508 Compliance | /apex/GNT__Help?uniqueName=Help-0094 | 3        | GNT__Active__c:true,GNT__TermsAndConditions__c:false | GNT__CustomAppFooterConfig__c |
    When I login as "Automation" user
    When I navigate to "Planning" tab
    When I click on footer links "508 Compliance"
    When I switch to tab number "1"
    When I pause execution for "3" seconds
    Then I see "Complete" "<Logout_URL>" page is displayed
    Examples:
      | Logout_URL                                                                         |
      | https://ggptest5-dev-ed--gnt.na164.visual.force.com/apex/Help?uniqueName=Help-0094 |

  @37857    @versionFieldAtFormConfig-gApplication
  Scenario: Changing text for version field at form config for general application form from config and validating it at particular form detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Forms                 | Version   | 1.0               | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Version   | 2.0           | General Application Form |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    Then I see "Form Version 2.0" inside Form Version

  @69960   @VerifyAssignedApproverUserInsideChevron @approvalProcess
  Scenario: Validating chevron contain Approver user and Initial submitter after submission of record to submit for approval
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:ProgramContactsNewTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "BP-01" inside flex table with id "---program:-:budgetPeriodDetailsTableId---"
    And I switch to iframe with id "ProgramBudgetPeriodiframeContentId"
    And I enter value "Active" into field "fieldStatus__c"
    And I click modal button "Save"
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
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see for "Program Manager Approver" value is "Automation PM" in chevron diagram

  @70432 @validateThatSpacesInFolderNameIsNotAcceptedWhileCreatingFolderUnderLibrary-AtHomePhase @libraryFiles
  Scenario: Verify that if user enter spaces in folder name then an alert message is displayed - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Add New Folder" option at library/folder/file "Department of Community Health"
    When I enter value as "  " in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    Then I see the following messages in the page details contains:
      | The Content Folder null isn't valid. Use a unique name that doesn't start or end with a space and doesn't contain the character /. |

  @35816    @hideApprovalDecisionFieldAtPageLayout-gPlanning @approvalProcess
  Scenario: Hiding approval decision box at page layout from config and validating it inside pending task approval decision
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                   | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Approval Decision comp | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                   | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Approval Decision comp | true          | Grantee State Program |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:ProgramContactsNewTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "BP-01" inside flex table with id "---program:-:budgetPeriodDetailsTableId---"
    And I switch to iframe with id "ProgramBudgetPeriodiframeContentId"
    And I enter value "Active" into field "fieldStatus__c"
    And I click modal button "Save"
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
    When I re-login as "Automation-PM" user on "default" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    Then I cannot see the radio button "Approve" in the approval decision

  @34485    @validateNumberOfCharts-gplanning  @enhancedCharts
  Scenario: Setup number of charts as "2" from config. and validate only two charts are displayed inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Phase Config          | Total Charts Allowed | 3                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField |
      | Phase Config:General  | Total Charts Allowed | 1             | GrantorPlanning    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" charts are displayed

  @69217 @validateIfGroupCheckboxCheckedAtCCFieldThenOnlyUserGroupsIsShownInAutoSuggestionBox @sendEmail
  Scenario: Validate If Group checkbox is checked At CC Field then only Group is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "3" seconds
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "test group" into field "{testData:CcField}" on send email modal
    Then I see iconName "fa fa-users" with user "test group 1" is displayed on send email modal
    Then I see iconName "fa fa-users" with user "test group 2" is displayed on send email modal

  @70869    @validateY-axisLabel-gAnnouncement-EnhancedCharts @enhancedCharts @SkipOnJenkins
  Scenario Outline: Change chart y-axis label for 'EnhancedPiechartId' enhanced chart from configuration and validating inside Announcement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Y-Axis Label | Count             | ApiGeneratedId:0 |
      | Charts Config         | Active       | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y-Axis Label | <EchartY-Axix_Text> | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active       | true                | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I hovering mouse on enhanced charts id "---program:-:EnhancedPiechartID---" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see "<EchartY-Axix_Text>" shown inside enhanced charts on hover

    Examples:
      | EchartY-Axix_Text             |
      | Automation Announcement count |

  @70876    @validateEditDataTableQueryforAllDataFieldFromBurgerIcon-gAnnouncement-EnhancedCharts @enhancedCharts
  Scenario Outline: Validate all data from 'EnhancedPiechartId'
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Enhanced Pie" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Pie"
    Then I see the following rows under the following columns in table with id "---program:-:EnhancedPiechartModalID---" :
      | Announcement Title | Status    |
      | Announcement171001 | Published |

    Examples:
      | default_Data_Table_Query                                                                                           | new_Data_Table_Query                                                                                                                         |
      | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' AND Status__c='Published' |

  @70877    @validateEditDataTableQueryforAllDataFieldFromEnhancedViewIcon-gAnnouncement-EnhancedCharts @enhancedCharts
  Scenario Outline: Validate expected status from enhanced chart modal(show all data from enhanced view icon)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Enhanced Pie" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I see the following rows under the following columns in table with id "---program:-:EnhancedPiechartModalID---" :
      | Announcement Title | Status    |
      | Announcement171001 | Published |

    Examples:
      | default_Data_Table_Query                                                                                           | new_Data_Table_Query                                                                                                                         |
      | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' AND Status__c='Published' |

  @70982    @validateDisableLegendsFieldsWithTrue-gHOME-EnhancedDualAxesCharts @enhancedCharts
  Scenario: validate disable legends fields of 'EnhancedDualAxesId' is working or not while checking checkbox of Disable Legend Field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Disable Legend | true          | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I do not see chart legends are displayed for chart/enhanced Charts "EnhancedDualAxes"


  @69577    @VerifyActualApproverNameIsDisplayedInApprovalHistoryAfterRecordSubmission @history
  Scenario: Validate actual approver name inside Approval history table after submission of record to Submit for Approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-027                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:ProgramContactsNewTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "BP-01" inside flex table with id "---program:-:budgetPeriodDetailsTableId---"
    And I switch to iframe with id "ProgramBudgetPeriodiframeContentId"
    And I enter value "Active" into field "fieldStatus__c"
    And I click modal button "Save"
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
    And I refresh the page
    When I navigate to "History" sub tab
    Then I softly see column "Assigned To" inside row "1" at position "2" and column at position "2" contains text "Automation PM"

  @69095 @validateIfInternal+ExternalCheckboxCheckedAtToFieldThenBothUserIsShownInAutoSuggestionBox @sendEmail @needToUpdate
  Scenario: Validate If Internal+ External checkbox is checked At To Field then only Group is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName                      |
      | Automation PM                 |
      | Automation-Applicant GGPTEST5 |
      | Automation PO                 |
      | Automation EXE                |
      | Automation-Reviewer GGPTEST5  |

  @70742 @validateThatFileUploadedFromRecordDetailIsDisplayedUnderHomePhaseLibraryFilesTabUnderRespectiveFolder-RecordLevel @NeedDeleteAPI @libraryFiles
  Scenario: Verify that file added from record level is displayed under respective folder under home phase library files tab - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.csv" into library with sharing
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "TestAutomationFile.csv" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I softly see library/folder/file "TestAutomationFile.csv" is displayed under files library
#    And I navigate to "Planning" tab
#    And I click toggle button to select "Draft Programs"
#    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
#    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
#    When I navigate to "Attachments" sub tab
#    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
#    When I click on "Delete" icon for "TestAutomationFile.csv" inside table
#    When I click "Yes" on modal confirmation box
#    When I pause execution for "3" seconds
#    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
#    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @77285    @enableFormulaFieldAtFlexTableForEnhanced-gPlanning
  Scenario: Validating subtotal of cell value of total obligated amount by entering formula at config validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid | EnhancedDataTable  | Name                      | FTC-1511                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see cell subtotal as expected as given formula at "NumberofProjectAreas__c" field

  @70104    @verifyUploadOfSheetJSFileWithFieldEGMSId @SheetJS
  Scenario Outline: Validate sheet JS file is getting uploaded and content of sheet getting loaded inside flex table with EGMS ID.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Data Import/Export | false              | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
      | Page Tabs Config      | Highlights Panel?         | false              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                 | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General                  | Enable Data Import/Export | true           | Programs              |                           |                            |
      | Flex Table:General                  | Display Field Names       | <newFieldsApi> | Programs              |                           |                            |
      | Page Tabs Config:Page Layout Action | Highlights Panel?         | true           | Grantee State Program | Name                      | TAB-409                    |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "ID" as "EGMSID"
    And I navigate to "Planning" tab
    When I perform quick search for "Automation Internal Program for Approval and Snapshot scenarios"
    When I click on "View Program Details" icon for "Automation Internal Program for Approval and Snapshot scenarios" inside table
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Automation Internal Program for Approval and Snapshot scenarios"
    Then I softly see value "{SavedValue:EGMSID}" for title "ID" inside table "---program:-:programTableDivId---"

    Examples:
      | newFieldsApi                                                                                                        | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @77698    @enableFormulaFieldAtParentFlexTableForEnhancedGridAtSideBar-gHOME @sidebar
  Scenario: validate subtotal of cell value of total obligated amount by entering formula at config  and validating it inside enhanced grid at sidebar - home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula   | govgrants_config:FormulaFieldAtEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    Then I see cell subtotal as expected as given formula at "TotalAwardObligatedAmount__c" field

  @69445 @validateOrgNameIsNotShownInStickyBottomForPMProfileUsers @stickyBottom
  Scenario: Disabling Enable Org Name custom setting and validating display of org name Option in sticky bottom
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1C00000KyBBdUAN | 0051C000007cehzQAA | GNT__EnableOrgName__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1C00000KyBBdUAN | 0051C000007cehzQAA | GNT__EnableOrgName__c:false | GNT__GlobalConfig__c |
    When I re-login as "Automation-PM" user on "default" portal
    When I setup my app as "As a Grantor"
    And I click on botton menu "sticky_bottom_Menu"
    Then I softly do not see "GGPTEST5" inside bottom menu