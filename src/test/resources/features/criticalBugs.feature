@loggedIssueScenarios @regression
Feature: Logged Issues Scenarios
  Test all logged issues based scenarios
  As a configuration manager i make different configurational changes and will validate them.

  @54723    @validateIsFlexTableIsRefreshingOrNot
  Scenario: validate flex table is refreshing or not from menu option Refresh in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           |                           |                            |
      | Flex Table:General    | Disable Menu      | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Refresh" from parallel lines dropdown of "Draft Programs"
    Then I see parent page is refreshing

  @54706    @validateFlexTableQuickSearchReturnExpectedTextAsEntered
  Scenario: validate flex table quick search return records/text as expected in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "hild"
    Then I see record with text "hild" in "flexTableDivId"

  @54846    @validateAttachmentEditActionWorkingOrNot
  Scenario: validate Attachment edit action working correctly while entering text inside description field of programs-planning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "Program Artifacts" inside table
    When I enter values "Test Automation" into textarea description field for Edit Attachment
    When I close modal by clicking the top right x button
    Then I see "Test Automation" has been added in "Attachments" flex table

  @54847    @validateAttachmentDeleteActionWorkingOrNot
  Scenario: validate Attachment Delete action working correctly while deleting attachment records of programs-planning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I upload attachment "Automation-Letter.pdf" of type "Program Artifacts"
    When I click on "Delete" icon for "Automation-Letter.pdf" inside table
    When I pause execution for "3" seconds
    Then I see confirmation box with body "Record deleted successfully." is displayed

  @54860    @validateNotesDeleteActionWorkingOrNot
  Scenario: validate Notes Delete action working correctly while deleting notes records of programs-planning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I add notes records
    When I click on "Delete" icon for "Notes Record" inside table
    Then I see confirmation box with body "Record deleted successfully." is displayed

  @54857    @validateNotesEditActionWorkingOrNot
  Scenario: validate Notes edit action working correctly while entering text inside description field of programs-planning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "Check Edit Behaviour" inside table
    When I enter values "Checked" into textarea description field for Edit Attachment
    When I close modal by clicking the top right x button
    Then I see "Checked" has been added in "Notes" flex table

  @54855    @validateNotesAddActionActionWorkingOrNot
  Scenario: validate Notes Add top level action working correctly while adding notes records of programs-planning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Delete" icon for "Notes Record" inside table
    When I close alertbox
    When I add notes records
    Then I see the text containing :
      | Note saved Successfully. |

  @54898    @validateAttachmentEditActionWithFileUploadWorkingOrNot
  Scenario: validate Attachment edit action with upload file working correctly
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" attachment to upload attachment "supporting document.pdf" of type "Other Artifacts"
    Then I see the following messages in the page details contains:
      | Attachement edited successfully. |

  @54841    @validateAttachmentAddSuccessMessageComingForBothTabOrNot
  Scenario: validate Attachment Delete action working correctly while deleting attachment records of programs-planning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Delete" icon for "Success message on second tab" inside table
    When I close alertbox
    When I upload attachment "AttachmentTesting.pdf" of type "Program Artifacts" and move on second tab
    Then I cannot see the following messages is not displayed in the page details contains:
      | Attachment added Successfully. |

  @54836    @disablingMenuIconShouldNotDisableListView
  Scenario: validate after disabling of menu icon from Program flex table List view should not gets disabled
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table            | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Disable Menu | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I see Menu icon is disabled from planning flex table "Draft Programs"
    When I click toggle button for "Draft Programs"
    Then I see toggle button is displayed for "Draft Programs"

  @56271  @inlineEditShouldWorkProperlyAtParentTableOfEnhancedGrid
  Scenario: validate inline edit is working properly with Editable Row as SingleEdit and Single Row Edit Behavior as inline at parent table of enhanced grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-test-003" in "flexGridEnhancedDivId" panel
    When I click on "Edit" icon for "GT-test-003" inside table
    When I enter values "Test Automation" into textarea for table id "flexGridEnhanced1"
    When I click on top right button "Save" in flex table with id "flexGridEnhanced1"
    When I perform quick search for "GT-test-003" in "flexGridEnhancedDivId" panel
    Then I see value "Test Automation" for multiple cells at column "AddressProgramContact__c"

  @56273  @inlineEditShouldWorkProperlyAtChildTableOfEnhancedGrid
  Scenario Outline: validate inline edit is working properly with Editable Row as SingleEdit and Single Row Edit Behavior as inline at child table of enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-FIN.2-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-FIN.2-001"
    When I click on "Edit" icon for "AD-FIN.2--00" inside table
    When I enter values "Test Automation" into textarea for table id "TmpGrantorActiveAwardsGridFlexToggle"
    When I click on top right button "Save" in flex table with id "flexGridEnhanced1"
    Then I see value "Test Automation" for multiple cells at column "Agreement1__c"

    Examples:
      | newFieldsApi                         | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Agreement1__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @56282  @errorMessageShouldComeUPForTitleFieldAfterSubmittingWithDescriptionOnly-gHome
  Scenario Outline: validate error message is coming up after submitting it with description field value only at gHome
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Notes"
    When I click on user notes content with icon name "plus"
    When I pause execution for "3" seconds
    When I enter details as "<titleValue>""<descriptionValue>" on Add New Notes Modal for "onlyDescription"
    When I click modal button "Save and Close"
    Then I see the following messages in the page details contains:
      | Please enter title |

    Examples:
      | descriptionValue |
      | Value            |

  @56294    @viewActionShouldGetHideWithMentionedExpressionJSONFieldAtProgramFlexTable-gPlanning
  Scenario: Hide View row level action for program flex table from json configuration and validating it under program flex table-gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName            | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON |                   | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName            | fieldNewValue                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON | govgrants_config:ProgramFlexTableExpressionJsonForViewAction | Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see "View" icon for "Test program for automation - Created mode only" is not displayed inside flex table

  @56306    @onlyViewActionShouldhideWithMentionedExpressioJsonAtProgramFundingAccountFlexTable
  Scenario: validate disabling of create button for context view with operator IN -gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName            | fieldNewValue                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON | govgrants_config:ProgramFundingAccountFlexTableExpressionJsonForViewAction | ProgramFundingAccount | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForFundedAmountAndNumber}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForFundedAmountAndNumber}" inside table
    When I navigate to "Financials" sub tab
    Then I see "View" icon for "FA-22-56" is not displayed inside flex table

  @56317    @formsPreviewShouldOpensProperly-gApplication
  Scenario: Validate application preview sholud be opened properly inside Application view
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Preview" icon for "General Application Form" inside table
    Then I see the text containing :
      | PROGRAM INFORMATION                      |
      | APPLICANTS ORGANIZATION INFORMATION      |
      | APPLICANTS PRIMARY SECONDARY INFORMATION |
      | PROJECT INFORMATION                      |
      | PROJECT DESCRIPTION                      |
      | ADDITIONAL PROJECT INFORMATION           |
      | FINANCIAL SUMMARY                        |
      | ACKNOWLEDGEMENT                          |

  @56318     @verifyDependentPickListOnProgramEditPageWorkingAsExpected
  Scenario: validate Budget preference should be disabled after selecting Multiple Service Area as NO
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    And I enter value "No" into field "fieldIsProjectServiceAreaneeded__c"
    Then I see field "fieldBudgetingPreference__c" is disabled

  @56322     @verifyFederalOrExternalProgramShouldOpenInDetailViewModeOnGranteePortal
  Scenario Outline: validate External and Federal program opens in proper detailed view page on grantee portal
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "HOME" tab
    When I navigate to "Federal Organizations" content inside "Activities" subheader on left panel
    When I click on "View" icon for "Energy Cluster Program" inside table
    Then I see "<Page title>" in new tab
    Examples:
      | Page title                  |
      | Account View ~ As a Grantee |

  @56394     @verifyActionsButtonNotDisplayedUnderFormsAttachmentBlockAtPreviewPage
  Scenario: validate Add button should be displayed on at attachment page block at forms preview page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Forms" content inside "Activities" subheader on left panel
    When I perform quick search for "General Application Education Form"
    When I click on "Preview" icon for "General Application Education Form" inside table
    Then I see "Add" button inside "Attachments" flex table not displayed

  @56398    @givenUrlShouldOpensProperlyOnProgramEditPage
  Scenario Outline: validate entered url to website field is opened properly at program detail page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    And I enter value "www.google.com" into field "fieldWebsiteAddress__c"
    When I click on "Save" in the page details
    When I click "www.google.com" lookup link
    Then I see "<Page title>" in new tab
    Examples:
      | Page title |
      | Google     |

  @56399    @helpOptionShouldOpensProperlyAtProgarmDetailPage
  Scenario: validate help option should opened properly on program detail page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Menu" in the page details
    And I select "Help" from dropdown
    When I switch to tab number "1"
    Then I see the text containing :
      | Program Help |

  @56405    @expectedRolesShouldDisplayUnderRolesPicklist
  Scenario: validate expected roles should displayed inside roles picklist only during roles addition at program detail page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I click on top right button "New" in flex table with id "flexTableDivId"
    When I click dropdown field "fieldBusinessRole__c"
    When I pause execution for "3" seconds
    Then I see "Program Approver:Key POC:Owner" inside selectbox field "fieldBusinessRole__c"

  @56537    @submitForApprovalButtonInsideMenuOptionAtGrantDetailPage
  Scenario: validate submit for approval button is not displayed inside menu option
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Grants" tab
    And I click toggle button to select "Active Grants"
    When I perform quick search for "FGT-gt786-001"
    When I click on "View" icon for "FGT-gt786-001" inside table
    When I navigate to "Awards" sub tab
    When I click on "View" icon for "FAD-gt786-BP-01-01" inside table
    When I click on "Menu" in the page details
    Then I see "Submit For Approval" options disabled from menu dropdown

  @56611    @granteeFormsPreviewShouldOpensProperly
  Scenario: Validate grantee form list sholud be opened properly inside Application view
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "HOME" tab
    When I navigate to "Forms" content inside "Activities" subheader on left panel
    When I perform quick search for "PHS 398 Research Plan"
    When I click on "Preview" icon for "PHS 398 Research Plan" inside table
    Then I see the text containing :
      | Introduction                |
      | Research Plan Section       |
      | Human Subjects Section      |
      | Other Research Plan Section |
      | Appendix                    |

  @56618    @granteeRequestedAmountShouldDisplayInsteadOfAPINAmeOnApplicationByRequestedAmountChart
  Scenario: Change chart x-axis suffix as $ for 'Funding Sources by Total Amount' chart in configuratin and validating inside planning
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Applications" tab
    Then I see "Grantee Requested Amount" for chart "Applicationsbyrequestedamount1"

  @56623    @hideForContextFieldAtRolesAndResponsibilitiesFlexTableTopLevelAction-gPlanning
  Scenario: Hide New top level action for from configuration and validating it at under roles and responibilities flex table- gPlanning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName            | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON |                   | ProgramRolesAndResponsibilities | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName            | fieldNewValue                                           | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTableTop_NewAction | ProgramRolesAndResponsibilities | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    Then I see "New" button inside "Roles And Responsibilities " flex table not displayed

  @56624    @recordShouldOpensProperlyFoePendingTasksAssignedByMeSection
  Scenario: validate record of pending tasks assigned by me section should opens properly while logging as PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I click on "View" icon for "PG-343-0056" inside table
    Then I see the text containing :
      | Description        |
      | Attachment         |
      | System Information |

  @56625    @footerLinksShouldOpensProperlyAtGranteeHomePage
  Scenario: validate Terms and conditions footer links opens properly at grantee home page
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "HOME" tab
    When I click on footer links "Terms and Conditions"
    When I switch to tab number "1"
    Then I see the text containing :
      | Terms and Conditions |

  @56754    @textCountOnActiveKPIChartShouldBeOnlyOne
  Scenario: validate text COUNT coming only once at Active KPI chart on grantee planning page
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Planning" tab
    Then I see "Count" for chart "KPI" comes only once

  @56757  @multipleTextShouldBeEnteredInsideDescription @check
  Scenario Outline: validate long text should displayed with scrll bar in sticky notes
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Notes"
    When I delete specific Sticky Notes with title "Notes Title" on clicking "x"
    When I pause execution for "3" seconds
    When I click on user notes content with icon name "plus"
    When I enter details as "<titleValue>""<descriptionValue>" on Add New Notes Modal for ""
    When I click modal button "Save and Close"
    Then I see sticky Notes "Notes Title" contains text as "<descriptionValue>"

    Examples:
      | descriptionValue                                                                                                                                                                                    | titleValue  |
      | Testing purpose Notes 123 243&^%   Testing purpose Notes 123 243&^%Testing purpose Notes 123 243&^%Testing purpose Notes 123 243&^%Testing purpose Notes 123 243&^%Testing purpose Notes 123 243&^% | Notes Title |

  @56759    @closeOutRecordShouldOpensProperlyAtGtanteePage
  Scenario: Validate close out record should opens properly at grantee page
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Closeout" tab
    When I perform quick search for "CL-0045"
    When I click on "View" icon for "CL-0045" inside table
    Then I see the text containing :
      | Closeout Request Details    |
      | Recipient Information       |
      | Grantor Contact Information |
      | System Information          |

  @56763    @columnNameShouldComeForOnceInsideActiveGrantsGrid
  Scenario: validate adding field names for different data types in enhanced flex grid planning-Program enhanced flex grid
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Monitoring" tab
    Then I see "Grantor Organization" in Monitoring Schedule For All Active Grant flex table header with id "toggleFGridMonitoringGranteeGridView" comes only once

  @56767    @errorMessageShouldComeWhileSavingWithoutEnteringAnyDetails
  Scenario: validate error message on saving roles and responisibilities modal without adding any information
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I click on top right button "New" in flex table with id "flexTableDivId"
    When I click modal button "Save"
    Then I see the text containing :
      | is Required to save. |
      | Assigned to User     |

  @56773    @programRecordsSholdOpensProperlyInsidePlanTab
  Scenario: validate program record should opens properly inside plan sub tab At view deta9il page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I see the text containing :
      | Goals Objectives |
      | Key Outcomes     |

  @56779    @allChartsShouldDisplayProperlyOnPlanningPhase
  Scenario: validate charts are displaying properly on planning phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "3" charts displayed

  @56407    @associateButtonShouldDisplayForBudgetCategoryInFinancialTab
  Scenario: validate Associate button is displayed on budget category
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Budget Category" flex table

  @56408    @associateButtonShouldDisplayForProgramContactBlockInOverviewTab
  Scenario: validate Associate button is displayed on program contact page block
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    Then I see "Associate" button inside "Program Contacts" flex table

  @56410    @activeProgramsListViewBehaviourShouldBeAsEcpected
  Scenario: validate edit button should not be displayed for Active Program list view
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Active Programs"
    When I perform quick search for "Data visibility program"
    When I click on "View Program Details" icon for "Data visibility program" inside table
    Then I see "Edit" icon for "Data visibility program" is not displayed inside flex table

  @56416    @snapShotErrorMessageShouldPopulateProperlyAtGranteePage
  Scenario Outline: validate confirmation message for take snapshot is coming properly.
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Opportunities" tab
    And I click toggle button to select "Open Funding Opportunities"
    When I perform quick search for "FOA--114"
    When I click on "View" icon for "FOA--114" inside table
    When I click on "Menu" in the page details
    And I select without accepting alert "Take Snapshot" from dropdown
    Then I see alert message "<message>"

    Examples:
      | message                                                                                                                            |
      | You are attempting to take a snapshot of the current record. The PDF will be attached in Snapshot History. Do you want to proceed? |

  @56421    @dropdownValuesShouldDisplayProperlyForAnnouncementTypeField
  Scenario: validate values coming properly for Announcement Type DropDown At Opportunities Edit page details
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Opportunities" tab
    And I click toggle button to select "Open Funding Opportunities"
    When I perform quick search for "FOA--114"
    When I click on "Edit" icon for "FOA--114" inside table
    When I click dropdown field "fieldAnnouncementType__c"
    Then I see "Competitive:Sole Source/Directed" inside selectbox field "fieldAnnouncementType__c"

  @56414    @globalSearchPopUpMessageShouldDisplayedProperly @check @wip
  Scenario Outline: validate global search alert pop up box display message properly on UI
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    When I perform quick search inside global search "e"
    And I see alert message "<message>"
    When I click on textbox for global search
    When I click on search button for global search
    Then I see alert popup box

    Examples:
      | message                                       |
      | Please enter at least 2 characters to search. |

  @56397    @formsContentShouldNotBeMessedUp
  Scenario: Validate application form content should not displayed messed content on UI
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Preview" icon for "General Application Form" inside table
    Then I see the text :
      | PROGRAM INFORMATION                      |
      | APPLICANTS ORGANIZATION INFORMATION      |
      | APPLICANTS PRIMARY SECONDARY INFORMATION |
      | PROJECT INFORMATION                      |
      | PROJECT DESCRIPTION                      |
      | ADDITIONAL PROJECT INFORMATION           |
      | FINANCIAL SUMMARY                        |
      | ACKNOWLEDGEMENT                          |

  @56291    @qualifiedOpportunitiesShouldOpenProperlyOnViewActionClick
  Scenario: Validate qualified opportunities record should opened properly on View action click on external portal
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Opportunities" tab
    When I navigate to "Qualified Opportunities" content inside "Activities" subheader on left panel
    When I perform quick search for "FOA-State-004" in "flexTableDivId" panel
    When I click on "View" icon for "FOA-State-004" inside table
    Then I see the text :
      | General Information    |
      | Eligibility            |
      | Important Dates        |
      | Additional Information |

  @56615    @valuesShouldDisplayedUnderfieldDetailedBudgetingRequiredPicklist
  Scenario: validate expected values should displayed inside fieldDetailedBudgetingRequired picklist at announcement edit page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Test Announcement For Automation"
    When I click on "Edit" icon for "Test Announcement For Automation" inside table
    When I navigate to "Financials" sub tab
    When I click dropdown field "fieldDetailedBudgetingRequired__c"
    Then I see "Yes:No" inside selectbox field "fieldDetailedBudgetingRequired__c"

  @56581    @editButtonShouldNotDisplayedForAwardInSubmitForApprovalStatus
  Scenario: validate edit button should not displayed on Page detail for award which is in submit for approval state
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Grants" tab
    And I click toggle button to select "Draft Grants"
    When I perform quick search for "Silvio O. Conte Centers for Basic Neuroscience or Translational Mental Health Research (P50 Clinical Trial Optional)"
    When I click on "View" icon for "Silvio O. Conte Centers for Basic Neuroscience or Translational Mental Health Research (P50 Clinical Trial Optional)" inside table
    When I navigate to "Awards" sub tab
    When I perform quick search for "FAD-GHHS-BP-01-00" in "flexTableDivId" panel
    When I click on "View" icon for "FAD-GHHS-BP-01-00" inside table
    Then I see "Edit" button is not displayed

  @57265  @dateShouldDisplayeOnStickyNotesUnderMyWorkSpaceNotes
  Scenario Outline: validate current date is displayed on sticky notes
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Notes"
    When I delete specific Sticky Notes with title "Notes Title" on clicking "x"
    When I pause execution for "3" seconds
    When I click on user notes content with icon name "plus"
    When I enter details as "<titleValue>""<descriptionValue>" on Add New Notes Modal for ""
    When I click modal button "Save and Close"
    Then I see current date on sticky Notes

    Examples:
      | descriptionValue                                                                                                                                                                                    | titleValue  |
      | Testing purpose Notes 123 243&^%   Testing purpose Notes 123 243&^%Testing purpose Notes 123 243&^%Testing purpose Notes 123 243&^%Testing purpose Notes 123 243&^%Testing purpose Notes 123 243&^% | Notes Title |

  @57249    @PlanningPhaseShouldBeDisplayedInHighlightedMode
  Scenario: validate planning phase is displayed in highlighted Mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
    When I click "program__c" lookup link
    Then I see "Planning" tab is highlighted for particular program

  @57156    @validateColorOfChevronBarForRejectedStatus
  Scenario: Validating rejected program status is in salmon color inside chevron staus bar
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField                                                               | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program               | Status    | Created       | Test program for automation - SA mode only - Not approved - History Tab Scenario |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Edit" icon for "Test program for automation - SA mode only - Not approved - History Tab Scenario" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I re-login as "Automation-PM" user on "default" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programForHistoryTabScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programForHistoryTabScenarios}" inside table
    When I "Disapprove" in the approval decision
    When I navigate to "History" sub tab
    Then I see chevron bar is in "Red" color for "rejected" status

  @57148    @validateGoveGrantLogoAndNameDisplayedProperly
  Scenario: validate govgrants logo and name is displayed properly on UI
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see govgrants logo "GovGrants Logo expanded" is displayed with name "Enterprise Grants Management System"

  @56840    @budgetCategoryShouldGetAddedProperly
  Scenario: validate budget category getting added properly
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on "Delete" icon for "SBC-A-209" inside table
    When I click on top right button "Associate" in flex table with id "ProgramBudgetCategory"
    When I click "Add" after selection of "SBC-A-209" in the table "SelectBudgetCategory"
    When I navigate to "Financials" sub tab
    Then I see that "SBC-A-209" has been added in flextable with Id "ProgramBudgetCategory"

  @56836    @programServiceAreaModalShouldGetClosesProperly
  Scenario: validate program service area modal getting closed after clicking on close icon on modal
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Log" sub tab
    When I click on top right button "Associate" in flex table with id "RelatedProgramServiceAreas"
    When I close modal by clicking the top right x button
    Then I donot see navigation logo on page

  @56853    @lookupShouldWorkProperlyForPrimaryFundingOrganization
  Scenario: Validate lookup field is working properly at primary funding organization field
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Test Announcement For Automation"
    When I click on "Edit" icon for "Test Announcement For Automation" inside table
    When I click search icon for "Awarding Federal Agency Lookup (New Window)" lookup modal and swithing to frame "iframeCustomLookupModalId"
    Then I see "ty" status in lookup modal table

  @56945  @NotesShouldGetDeletedAfterClinkOnAcceptingDeleteConfirmation
  Scenario Outline: validate Sticky Notes should get deleted properly after accepting action from delete confirmation popup
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Notes"
    When I click on user notes content with icon name "plus"
    When I enter details as "<titleValue>""<descriptionValue>" on Add New Notes Modal for ""
    When I click modal button "Save and Close"
    When I refresh the page
    When I click on "My_Workspace_Notes"
    When I delete specific Sticky Notes with title "Sticky Notes Title" on clicking "x"
    Then I donot see sticky Notes "Sticky Notes Title" contains text as "<descriptionValue>"

    Examples:
      | descriptionValue   | titleValue         |
      | Automation Testing | Sticky Notes Title |

  @56849  @tableContainsOnlyProgramRelatedRecordsInsidePendingTasks
  Scenario: validate table inside pending tasks contains only program related records
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Planning" content inside "Task Summary By Phase" charts
    Then I see "PG" records are present in pending task table

  @56944  @pendingTaskContainSameNoOfRecordAsDisplayedInTaskSummaryByPhase
  Scenario: validate table inside pending tasks contains only program related records
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see task count for "Announcements" phase with the total records of flex table id "PhasePendingTasks"

  @56403    @queueLookUpModalShouldContainsExpectedUserList
  Scenario: Validate queue lookup modal contains expected queued related record at roles and responsibilities flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I click on top right button "New" in flex table with id "ProgramRolesAndResponsibilities"
    When I enter value "Queue" into field "fieldUserType__c"
    When I click search icon for "User Lookup (New Window)" lookup modal and swithing to frame "iframeCustomLookupModalId"
    Then I see "TmpQueue" status in lookup modal table

  @56550    @remainingGrantsAmountShouldDisplayInCorrectFormat
  Scenario: Validate remaining grants amount coming with correct format not with minus sign
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Grants" tab
    And I click toggle button to select "Active Grants"
    When I perform quick search for "FGT-gt786-001"
    When I click on "View" icon for "FGT-gt786-001" inside table
    When I navigate to "Financials" sub tab
    Then I see field "Remaining Grant Amount" as "($100,000.00)"

  @57519    @attachmentPageBlockShouldRenderedProperly
  Scenario: Validate page blocks of attachment should rendered properly on UI on grantee portal
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "App2-FO for DCP" in "flexTableDivId" panel
    When I click on "View" icon for "App2-FO for DCP" inside table
    When I navigate to "Attachments" sub tab
    Then I see the text :
      | Business Forms |
      | Attachments    |
      | Notes          |
      | All Forms      |

  @57513    @miniPageLayoutShouldDisplayProperlyOnMouseHoverForSPIUser
  Scenario Outline: Validate mini page layout is displayed properly on mouse hovering at SPI portal
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "App2-FO for DCP" in "flexTableDivId" panel
    When I click on "View" icon for "App2-FO for DCP" inside table
    When I hover mouse on lookup link "AN-603-051"
    When I pause execution for "2" seconds
    Then I see "<miniPageLayout_Text>" shown inside mini page layout on hover

    Examples:
      | miniPageLayout_Text |
      | Announcement        |

  @57511    @validateMultipleAttachmentGettingAddedProperly
  Scenario: validate user is able to add multiple attachment from workspace to attachment page block.
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Delete" icon for "ContactUs.png" inside table
    When I close alertbox
    When I click on "Delete" icon for "DynamicLayoutExport.pdf" inside table
    When I close alertbox
    And I upload attachment "ContactUs.png,DynamicLayoutExport.pdf" from workspace
    Then I see table with header "Attachments" contains records "DynamicLayoutExport.pdf,ContactUs.png"

  @56762    @validateChartDisplayedProperlyAtCorrectPhaseForUserAppAsGrantee
  Scenario: Financial report by grant due in 90 days chart should displayed or rendered properly on monitoring phase for user app as grantee
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Monitoring" tab
    Then I see "Financial Report By Grants Due In 90 Days" displayed as chart title

  @56482    @viewActionShouldWorkProperlyAtApplicationBudgetCategoryFlexTableChild
  Scenario: validating view action is working while checking page block and its details coming for view action at Application Budget child flex table child
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Shambhavi Application"
    When I click on "View" icon for "Shambhavi Application" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "toggleFGridApplicationBudgetCategoryFlexGrid" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "View" icon for "Maintenance And Repair Costs" inside table
    Then I see the text containing :
      | Narrative          |
      | Service Area Title |
      | Budget Category    |

  @54705      @verifyCurrencyFieldGetEditedProperlyForMultipleRecord
  Scenario Outline: validate currency field showing Edited value properly for multiple records
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue               | filterId         |
      | Flex Grid:Flex Table List | Filter Clause       | <defaultFilterClauseForFLV2539> | ApiGeneratedId:0 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi>              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Filter Clause       | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>              | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I edit the following rows inline in flex table with id "flexGridEnhanced1" by clicking "Edit" :
      | Project Title                 | Cumulative Awarded Amount |
      | Road COnst. Ann.              | 1234                      |
      | Road Construction Annoumsment | 1234                      |
    Then I see value "$1,234.00" for multiple cells at column "CumulativeAwardedAmount__c"
    Examples:
      | defaultFieldsApi                                                                                                                                                                                                                                          | newFieldsApi                                    | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,CumulativeAwardedAmount__c | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @54714    @historyPageBlockShouleRenderedProperlyInEditMode
  Scenario: Validate page blocks of history sub tab should rendered properly on UI
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "History" sub tab
    Then I see the text :
      | Approval History |
      | Snapshot History |

  @54742    @hide_Expression_ApprovalDecisionAction_Reject
  Scenario: Setup configuration to hide Reject option from configuration for approval decision and validating its content in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                  | coreComponentField                                         |
      | Program                          | Status               | Created                                                        | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Reject | ADAC-0010                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInSAModeOnlyNotApproved}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInSAModeOnlyNotApproved}" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I re-login as "Automation-PM" user on "default" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programInSAModeOnlyNotApproved}"
    When I click on "Start" icon for "{Framework_recordUsed:programInSAModeOnlyNotApproved}" inside table
    Then I cannot see the radio button "Disapprove" in the approval decision
    And I collect all the soft asserts

  @58840    @subRecipientPortalShouldRenderedWithColour
  Scenario: Validate page blocks of history sub tab should rendered properly on UI
    When I login as "Automation" user
    When I setup my app as "As a Sub-Recipient"
    Then I see page is in "Light Blue" color

  @58872    @hideExpressioJsonForEditTopLevelActionAtProgramDetailPage @smoke
  Scenario: Hide edit button for Profile and System Admin using hide expression Json -gPlanning
    Given I have "default" configuration as below:
      | configurationCategory      | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action Sobject | Hide Expression JSON |                   | Grantee State Program | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action Sobject | Hide Expression JSON | govgrants_config:HideExpressionJsonForPageTab | Grantee State Program | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Edit" button is not displayed

  @59302    @viewActionShouldWorkProperlyAtMonitoringPhase-gMonitoring
  Scenario: validate Monitoring Schedule For All Active Grant flex table action field- View opens in new window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action Behavior | Open in same window | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in new window | ActiveGrantsGrid   | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I perform quick search for "App 786" in "inlineEditGridMonitoringGridView" panel
    When I click on "View" icon for "App 786" inside table
    Then I see new tab is opened

  @59292    @newActionButtonSholdWorkProperlyAtMassEditableGridForApplicationBudgetPeriod
  Scenario: validate New action is working correctly at mass editable grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on "Delete" icon for "BP-00" inside table
    When I enter the following values into flex table with id "inlineEditGridApplicationBudgetCategoryFlexGrid" by clicking "New" :
      | Support Year |
      | BP-00        |
    Then I see that "BP-00" has been added in flextable with Id "inlineEditGridApplicationBudgetCategoryFlexGrid"

  @59287    @enablePaginationShouldWorkAtApplicationBudgetPeriods-gApplications
  Scenario: validate page navigation is working fine after enabling auto index and row grouping at ApplicationBudgetCategoryFlexTable
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index   | true              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index   | true          | ApplicationBudgetPeriods |                           |                            |
      | Flex Table List       | Enable Row Grouping | true          | ApplicationBudgetPeriods | Name                      | FTC-1101                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-214"
    When I click on "View" icon for "AP-755-214" inside table
    When I navigate to "Budget" sub tab
    And I pause execution for "2" seconds
    And I click on page navigation arrow "inlineEditGridApplicationBudgetCategoryFlexGrid" for table id "Next"
    Then I see that "BP-05" has been added in flextable with Id "inlineEditGridApplicationBudgetCategoryFlexGrid"

  @59130    @parentLevelLookupfieldOfApplicationBudgetPeriodsShouldBeInViewMode-gApplications
  Scenario: validate page navigation is working fine after enabling auto index and row grouping at ApplicationBudgetCategoryFlexTable
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-214"
    When I click on "View" icon for "AP-755-214" inside table
    When I navigate to "Budget" sub tab
    When I click on "Edit" icon for "BP-01" inside table
    Then I see lookup field "AP-755-214" is in view mode

  @58960    @expandCollapseShouldWorkAtAssociateInternalUsers
  Scenario: validate expand collapse of Associate internal review panel users at modal table is working correctly
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    And I click on "Edit" icon for "Pre-Screen Review" inside flex table with id "ProgramRelatedAppReviewStepTemplatesNew" with wait for record
    When I click on "View" icon for "Pre-Screen Review Panel" inside table
    And I click on top right button "Associate Internal user" in flex table with id "RelatedTemplateReviewers"
    And I click on expand collapse icon for panel heading "Internal Review Panel Users"
    Then I see expand collapse is working as expected

  @58956    @formsPrevievLinkShouldOpensFormsCorrectly
  Scenario: validate preview lookup link is working correctly on click at forms modal
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "ProgramRelatedAppReviewStepTemplatesNew" with wait for record
    When I click on lookup link "Preview"
    Then I see the text :
      | Applicant Information |
      | Technical Screening   |
      | Budget Screening      |
      | Eligibility Screening |
      | Attachments           |
      | Additional Details    |
      | Recommendation        |
      | Acknowledgement       |

  @58955    @programLinksShouldOpensInNewWindow
  Scenario: validate program link at forms modal opens in new window
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "ProgramRelatedAppReviewStepTemplatesNew" with wait for record
    When I click on lookup link "PG-343-0058"
    Then I see new tab is opened

  @54744    @lookupShouldWorkProperlyAtMOdalWindow
  Scenario: validate lookup should display expected text as user entered in text field on modal window
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "ProgramRolesAndResponsibilities"
    When I click search icon for "Assigned to User Lookup (New Window),enter" lookup modal and swithing to frame "iframeCustomLookupModalId"
    Then I see "Allen PM" status in lookup modal table

  @59145    @orderBySortByFieldAtParentDataTable
  Scenario: Changing specific column value in ascending order with order by and sort by field from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       |                   | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction |                   | TmpActiveGrantsGrid |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue          | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | TotalAdjustedAmount__c | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC                   | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see currency column "TotalAdjustedAmount__c" value is in "Descending" order

  @59362    @withColumnSortingNewRecordShouldNotGetAddedAtApplicationBudgetCategoryFlexGrid
  Scenario: validate new record should not get added in case of column sorting at application budget category flex grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-214"
    When I click on "View" icon for "AP-755-214" inside table
    When I navigate to "Budget" sub tab
    And I click on top right button "New" in flex table with id "inlineEditGridApplicationBudgetCategoryFlexGrid"
    When I click on "Start Date" column header inside table with id "inlineEditGridApplicationBudgetCategoryFlexGrid"
    Then I see confirmation box with body "Please save the record before sorting." is displayed

  @54719    @normalHideExpressionShouldNotWorkWithSobjectHideExpressionChanges
  Scenario: validate normal hide Expression should not work if Sobject Hide Expression available for program flex table action
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName            | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action         | Hide Expression JSON |                   | Programs           | Name                      | New                        |
      | Flex Table Action Sobject | Hide Expression JSON |                   | Programs           | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName            | fieldNewValue                                                    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action         | Hide Expression JSON | govgrants_config:HideExpressionJsonForPageTab                    | Programs           | Name                      | New                        |
      | Flex Table Action Sobject | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForProfilePM | Programs           | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see "New" button inside "Draft Programs" flex table
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    Then I see "New" button inside "Draft Programs" flex table not displayed

  @58750    @sidebarContactsViewPageShouldOpenedProperly
  Scenario: validate sidebar contacts should opened properly in view page without any popup messages.
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    When I navigate to "Contacts" content inside "Activities" subheader on left panel
    When I click on "View" icon for "Emily PO" inside table
    And I see the text :
      | Contact Information  |
      | Personal Information |
      | Address Information  |
      | System Information   |
    When I navigate to "Attachments" sub tab
    Then I see the text :
      | Attachments |
      | Notes       |

  @58754    @businessFormsCompleteInformationShouldDisplayOnPreviewPage
  Scenario: validate business forms information displayed properly on view page
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Opportunities" tab
    And I click toggle button to select "Open Funding Opportunities"
    When I perform quick search for "FOA--114"
    When I click on "View" icon for "ROSES 2018: Rapid Response and Novel Research in Earth Science" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Delete" icon for "application1" inside table
    When I click "Yes" on modal confirmation box
    And I click on top right button "New" in flex table with id "AnnoucementPackages"
    When I select package type from Package selection for business forms
    When I check "application1" boxes in flex table with id "ApplicationPackage"
    When I click modal button "Save"
    When I click on "View" icon for "application1" inside table
    Then I see the text :
      | Forms |

  @59561    @recordsShouldGetSortedWithEnableRowGrouping
  Scenario: Row level records at enhanced grid should get sorted in ascending order while enabling row grouping column fiels
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid:General     | Order By            |                   | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue           | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By            | InternalOrganization__c | TmpActiveGrantsGrid |                           |                            |
      | Flex Table List       | Enable Row Grouping | true                    | TmpActiveGrantsGrid | Name                      | FTC-1486                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see grouped row value is in "Ascending" order

  @59651    @messageShouldDisplayedWhileWorkingWithBothTopAndRowLevelAction
  Scenario: Validate message should displayed while working with both top and row level action and selecting any list view
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-FIN.1-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-FIN.1-001"
    When I click on top right button "New" in flex table with id "flexGridEnhanced1"
    And I click toggle button to select "Monitoring Schedule For All  Draft Grants"
    Then I see confirmation box with body "Please save record before performing any action" is displayed

  @59586      @verifyBudgetPeriodEndDateFieldShouldSaveProperDateForMultipleRecord
  Scenario Outline: validate budget period end date field should save entered date correctly for multiple record at enhanced grid
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue               | filterId         |
      | Flex Grid:Flex Table List | Filter Clause       | <defaultFilterClauseForFLV2539> | ApiGeneratedId:0 |
      | Flex Grid:General         | Display Field Names | <defaultFieldsApi>              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Filter Clause       | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>              | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I edit the following rows inline in flex table with id "flexGridEnhanced1" by clicking "Edit" :
      | Project Title                 | Current Budget Period End Date |
      | Road COnst. Ann.              | 0                              |
      | Road Construction Annoumsment | 0                              |
    And I save the value from row "1" for column name "Current Budget Period End Date" as "BPdate1" from flex table "flexGridEnhanced1"
    Then I see the Budget Period End Date field contains todays date
    Examples:
      | defaultFieldsApi                                                                                                                                                                                                                                          | newFieldsApi                                | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @59654      @duplicateRecordShouldNotGetAddedAtProgramBudgetCategoryFlexTable
  Scenario: validate duplicate record should not get added to program budget category flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on "Delete" icon for "SBC-A-217" inside table
    When I click "Yes" on modal confirmation box
    And I click on top right button "Associate" in flex table with id "ProgramBudgetCategory"
    When I check "SBC-A-217" boxes in flex table with id "SelectBudgetCategory"
    When I click on top right button "Add" in flex table with id "SelectBudgetCategory"
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "ProgramBudgetCategory"
    Then I do not see value "SBC-A-217" for title "Company Code" inside table "SelectBudgetCategory"

  @59821    @hideExpressioJsonForRightOperandForContextEditAtParentLevelEnhancedGrid
  Scenario: validate disabling of edit action for context edit at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | TmpActiveGrantsGrid | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                              | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Context_Edit | TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "Edit" icon for "Demo_Title" is not displayed inside flex table

  @59822  @hideExpressioJsonForRightOperandForContextViewAtParentLevelEnhancedGrid
  Scenario: validate disabling of view action for context edit at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | TmpActiveGrantsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                              | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Context_View | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "View" icon for "Demo_Title" is not displayed inside flex table

  @59825    @hideExpressioJsonForRightOperandForContextViewAtChildLevelEnhancedGrid
  Scenario: validate disabling of view action for context edit at child table of enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | TmpGrantorActiveAwardsGrid | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                         | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ChildTable_ViewAction_With_Context_View | TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "View" icon for "AD-GG PJ--00" is not displayed inside flex table

  @59826    @hideExpressioJsonForRightOperandForContextEditAtChildLevelEnhancedGrid
  Scenario: validate disabling of edit action for context edit at child table of enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | TmpGrantorActiveAwardsGrid | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                         | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ChildTable_ViewAction_With_Context_Edit | TmpGrantorActiveAwardsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "Edit" icon for "AD-GG PJ--00" is not displayed inside flex table

  @59827    @numberFieldValueShouldDisplayProperlyWithEnteredMinusValue
  Scenario: Validate entered negative value inside Number field at page block detail should displayed properly at program detail page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I enter value "-123" into field "Number__c"
    And I click on "Save" in the page details
    Then I see field "Number" as "(123.00)"

  @59893    @standardFieldShouldShowUserNameAtEnhancedGridParentColumn
  Scenario Outline: validate standard field of enhanced grid column should show User Name instead of ID
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "LastModifiedById" and "LastModifiedBy.Id" contains user names as "Nauman Shahid"

    Examples:
      | newFieldsApi                                            | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,LastModifiedById,LastModifiedBy.Id | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @59909    @advanceFilterValueForNegativeValueShouldWorkProperly
  Scenario Outline: validate Advance filter search should work correctly for negative value at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "flexGridEnhanced1"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Total Adjusted Amount | equals to | -1 |
    Then I see value "($1.00)" for title "Total Adjusted Amount" inside table "flexGridEnhanced1"

    Examples:
      | newFieldsApi                           | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,TotalAdjustedAmount__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @59987    @formulaTotalShouldShowZeroValueForNullValuesRecordAtEnhanceGrid
  Scenario Outline: Validate formula field should show zero value at expected row for Total adjusted amount having null values at records
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Formula             |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                    | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula             | govgrants_config:FormulaFieldAtEnhancedGridForTotalAdjustedAount | TmpActiveGrantsGrid | Name                      | FTC-1500                   |
      | Flex Grid:General     | Display Field Names | <newFieldsApi>                                                   | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see subtotal value "0.00" for null record values

    Examples:
      | newFieldsApi                           | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,TotalAdjustedAmount__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @56523    @takeSnapshotLinkShouldWorkProperlyOnGranteeApplication
  Scenario: validate take snapshot links at grantee application should work properly without throwing any error
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Applications" tab
    When I perform quick search for "APP-HHS-082"
    When I click on "View" icon for "APP-HHS-082" inside table
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Todays Date"

  @59357    @historySnapShotActionEnableFieldAtPageLayoutAction
  Scenario: validate snapshot should work properly for submit for approval action
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                       | fieldNewValue | coreComponentField                                         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | History Snapshot-Action Enable? | true          | Grantee State Program                                      | Name                      | Submit For Approval        |
      | Program               | Status                          | Created       | Test program for automation -  SA mode only - Not approved |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInSAModeOnlyNotApproved}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInSAModeOnlyNotApproved}" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Submit for approval snapshot.pdf"

  @60535    @afterEditValueShouldSaveCorrectlyInCurrencyFieldAtEnhancedGrid
  Scenario Outline: validate value is getting save for currency field correctly at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I pause execution for "2" seconds
    And I edit the following rows inline in flex table with id "flexGridEnhanced1" by clicking "Edit" :
      | Project Title | Total Adjusted Amount |
      | Demo_Title    | 20                    |
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    Then I see value "$20.00" for title "Total Adjusted Amount" inside table "flexGridEnhanced1"

    Examples:
      | newFieldsApi                                                       | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Name,BudgetPeriodEndDate__c,TotalAdjustedAmount__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |


  @60541    @addLineItemTableShouldDisplayedAtChildTableApplicationBudgetGrid
  Scenario: validating add line item table is displayed or not at chile table of application budget grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "toggleFGridApplicationBudgetCategoryFlexGrid" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "Add Line Items" icon for "Indirect Cost Rate" inside table
    Then I see expected table with id "toggleFGridAppLineItem"

  @60565    @valueShouldBeSavedCorrectlyForNumberFieldAtEnhancedGrid
  Scenario Outline: validate value is getting save for Number field correctly at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    And I edit the following rows inline in flex table with id "flexGridEnhanced1" by clicking "Edit" :
      | Total Adjusted Amount | NUMBER |
      | Demo_Title            | -1234  |
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    Then I see value "(1,234)" for title "NUMBER" inside table "flexGridEnhanced1"

    Examples:
      | newFieldsApi                             | defaultFieldsApi                                                                                                                                                                                                                                          |
      | Status__c,Name,ProjectTitle__c,NUMBER__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @60557    @NothingShouldBeDisplayedWithNoRecordsAtProgramFlexTable
  Scenario Outline: validate removing Created status category from flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table List       | Enable Total        | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
      | Flex Table List       | Enable Total        | true           | Programs           | Name                      | FTC-1505                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Closed Programs"
    Then I do not see value "NaN%" for title "Percent" inside table "toggleFlexTablePrograms"

    Examples:
      | newFieldsApi                                                                                                                | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,Percent__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @59367    @draftProgramsShouldDisplayedAsDefaultWithIsMasterView
  Scenario: Validate only draft programs is displayed or selected if Is Master View is checked currently for FLV 1387
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Default ? | false             | ApiGeneratedId:0 |
      | Flex Table List       | Default ? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Default ? | true          | Programs           | Name                      | FLV-1835                   |
      | Flex Table List       | Default ? | true          | Programs           | Name                      | FLV-1837                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Draft Programs" is selected at program flex table

  @60559    @numericFieldvalueShouldBeBlankAtEnhancedGrid
  Scenario Outline: validate Number field is displaying blank after clearing the existing value at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    And I edit the following rows inline in flex table with id "flexGridEnhanced1" by clicking "Edit" :
      | Project Title | NUMBER |
      | Demo_Title    | 2      |
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    And I edit the following rows inline in flex table with id "flexGridEnhanced1" by clicking "Edit" :
      | Project Title | NUMBER |
      | Demo_Title    |        |
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    Then I see field value is blank for "NUMBER__c" at enhanced grid
    Examples:
      | newFieldsApi                             | defaultFieldsApi                                                                                                                                                                                                                                          |
      | Status__c,Name,ProjectTitle__c,NUMBER__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @59740    @dateAndDateTimeFieldvalueShouldSavedProperlyAtEnhancedGrid
  Scenario Outline: validate Date and Date Time field value getting saved properly At enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    And I edit the following rows inline in flex table with id "flexGridEnhanced1" by clicking "Edit" :
      | Project Title | Current Budget Period End Date |
      | Demo_Title    | 0                              |
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    Then I see field value is current date for "BudgetPeriodEndDate__c" at enhanced grid

    Examples:
      | newFieldsApi                                          | defaultFieldsApi                                                                                                                                                                                                                                          |
      | Status__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @61303    @validateIsPlanningShouldNotDisplayedInTaskSummary-gplanning
  Scenario: Check IsPhase for planning in config. and validate Planning is displayed in Task Summary on home page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Phase Config          | Is Phase  | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField |
      | Phase Config:General  | Is Phase  | true          | GrantorPlanning    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "Planning" in task summary by phase

  @61307  @phaseLinkShouldOpensWithExpectedPendingTaskTable
  Scenario: validate pending tasks table is coming up on click of phase link on home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Planning" content inside "Task Summary By Phase" charts
    Then I see "PG" records are present in pending task table

  @61102    @searchByDateShouldWorkProperlyOnAdvanceFilter
  Scenario Outline: validate Advance filter search should work correctly for date values at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "flexGridEnhanced1"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Project Period | contains | 10/1/2016 |
    Then I see value "10/1/2016--12/31/2022" for title "Project Period" inside table "flexGridEnhanced1"

    Examples:
      | newFieldsApi                            | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,CurrentProjectPeriod__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @61103    @startWithOperatorShouldWorkForAdvanceFilter
  Scenario Outline: validate Advance filter search should work correctly with operator Start With at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "flexGridEnhanced1"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Project Title | starts with | Health |
    Then I see value "Health Program Announcement" for title "Project Title" inside table "flexGridEnhanced1"

    Examples:
      | newFieldsApi                            | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,CurrentProjectPeriod__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @61104    @endstWithOperatorShouldWorkForAdvanceFilter
  Scenario Outline: validate Advance filter search should work correctly with ends with at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "flexGridEnhanced1"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Project Title | ends with | 11 |
    Then I see value "Health Awaerness 11" for title "Project Title" inside table "flexGridEnhanced1"

    Examples:
      | newFieldsApi                            | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,CurrentProjectPeriod__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @61086    @quickSearchShouldWorkProperlyAtApplicationBudgetGrid
  Scenario: validating quick search box is working properly at application budget period table - MEGrid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "toggleFGridApplicationBudgetCategoryFlexGrid" panel
    Then I see value "BP-01" for title "Support Year" inside table "toggleFGridApplicationBudgetCategoryFlexGrid"

  @61082    @formulaAndFormulaJsonFieldAtEnhancedGridQuickSearch
  Scenario: Validating subtotal of cell value of total obligated amount by entering formula and formula json field at config validating it inside enhanced grid with particular value of program-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Flex Table List       | Formula   |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue                                                               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Formula      | govgrants_config:FormulaFieldAtEnhancedGridForTotalAwardObligatedAmount     | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
      | Flex Table List       | Formula Json | govgrants_config:FormulaJsonFieldAtEnhancedGridForTotalAwardObligatedAmount | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "test" in "flexGridEnhancedDivId" panel
    Then I see cell subtotal as expected as given formula

  @61083    @onEditOfRecordEnableOverallTotalFieldAtParentFlexTableForEnhancedGridShouldWork-gPlanning
  Scenario Outline: validate enabling of overall total field after checking checkbox true of Enable Over All Total from config and validating it inside enhanced grid of programs with editing record value-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue               | filterId         |
      | Flex Table List           | Enable Over All Total | false                           | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Is Master View        | true                            | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Filter Clause         | <defaultFilterClauseForFLV2539> | ApiGeneratedId:2 |
      | Flex Grid                 | Display Field Names   | <defaultFieldsApi>              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName             | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Enable Over All Total | true                        | TmpActiveGrantsGrid | Name                      | FTC-1500                   |
      | Flex Grid:Flex Table List | Is Master View        | true                        | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Filter Clause         | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Display Field Names   | <newFieldsApi>              | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I edit the following rows inline in flex table with id "flexGridEnhanced1" by clicking "Edit" :
      | ID          | Total Adjusted Amount |
      | GT-bvaa-001 | 10                    |
    Then I see over all total for "TotalAdjustedAmount__c" at enhanced grid
    Examples:
      | newFieldsApi                                | defaultFieldsApi                                                                                                                                                                                                                                          | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                             |
      | Name,ProjectTitle__c,TotalAdjustedAmount__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c = 'test Program' |

  @61077    @expectedFieldShouldGetFocusedOnClickOfErrorMessage
  Scenario: Validate KPI's Required field getting focused on page after clicking on error message for the same field
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "--None--" into field "fieldKPIsRequired__c"
    When I click on "Save" in the page details
    When I click on error message "KPI"
    When I pause execution for "3" seconds
    Then I see expected field getting focused

  @59743      @verifyDateIsGettingSavedCorrectlyAsTodaysDate
  Scenario Outline: validate budget period end date field should save entered date correctly for at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-final-001" in "flexGridEnhanced1" panel
    And I edit the following rows inline in flex table with id "flexGridEnhanced1" by clicking "Edit" :
      | Project Title | Current Budget Period End Date |
      | GT-final-001  | 0                              |
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-final-001" in "flexGridEnhanced1" panel
    And I save the value from row "1" for column name "Current Budget Period End Date" as "BPdate1" from flex table "flexGridEnhanced1"
    Then I see the Budget Period End Date field contains todays date
    Examples:
      | defaultFieldsApi                                                                                                                                                                                                                                          | newFieldsApi                                |
      | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c |

  @59895    @upArrowShouldAppearWithMultipleFieldSortingInAscendingOrder
  Scenario Outline: validating up arrow is getting appear at table columns after providing multiple field sorting in Ascending order at child flex able of enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By  |                   | TmpGrantorActiveAwardsGrid |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By  | <fieldNewValue> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see upArrow for multiple field at enhanced grid

    Examples:
      | fieldNewValue                                           |
      | TotalGrantAwardAmount__c ASC,TotalObligateAmount__c ASC |

  @59317    @dateTimeFieldShouldDisplayedInViewModeAfterEditing
  Scenario: validate Date Time column field is displayed in view mode after editing the value.
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-214"
    When I click on "View" icon for "AP-755-214" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "inlineEditGridApplicationBudgetCategoryFlexGrid" panel
    And I edit the following rows inline in flex table with id "inlineEditGridApplicationBudgetCategoryFlexGrid" by clicking "Edit" :
      | Support Year | DateTime |
      | BP-01        | 0        |
    When I perform quick search for "BP-01" in "inlineEditGridApplicationBudgetCategoryFlexGrid" panel
    Then I see Date Time field is in view mode

  @61105    @enableGroupingFieldAndHideGroupingColumnFieldAtParentFlexTableOfEnhancedGrid
  Scenario: validate over all total should not displayed whiel making enabling row grouping and hide grouping column from config validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping  | false             | ApiGeneratedId:0 |
      | Flex Table List       | Hide Grouping Column | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping  | true          | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
      | Flex Table List       | Hide Grouping Column | true          | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see over all total sum is not displayed for "TotalAwardObligatedAmount__c"

  @56392    @amountShouldGetEnterAtMatchSecuredFieldOnIEBrowser
  Scenario: validate amount should get enter at match secured field of Program budget table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on "Delete" icon for "Test Automation" inside table
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I enter the following values into flex table with id "inlineEditGridProjectCostForProgram" by clicking "New" :
      | Financial Source | Match/Secured Amount |
      | Test Automation  | 1234                 |
    When I navigate to "Financials" sub tab
    Then I see value "$1,234.00" for title "Match/Secured Amount" inside table "inlineEditGridProjectCostForProgram"

  @56756    @miniPageLayoutLinkShouldBeProperForProjectServiceAreaSideBarLink @check @wip
  Scenario: validate mini page layout displayed properly for lookup field at page block detail
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Planning" tab
    When I navigate to "Proj/Service Areas" content inside "Activities" subheader on left panel
    When I perform quick search for "PSA-0147"
    When I click on "View" icon for "PSA-0147" inside table
    When I hovering mouse on page block detail of label "POC" lookup field "Henry PM"
    Then I see mini page layout displayed properly

  @61080    @verifyLabelOfNullGroupedForEnablingRowGroupingAtFlexTableForEnhancedGrid-gPlanning
  Scenario: validate null (--) is shown in header for null grouped after checking checkbox true of Enable Row Grouping from config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | TmpActiveGrantsGrid | Name                      | FTC-1500                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Total Adjusted Amount : --" inside rows of enhanced grid id "Enhanced1grid"

  @66939      @verifyEditAllAtParentFlexTableForEnhancedGridForRequiredFields-gPlanning
  Scenario Outline: validate Edit All functionality for parent flex table for required fields at enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName       | fieldOrignalValue               | filterId         |
      | Flex Grid:Flex Table List | Is Master View  | true                            | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Filter Clause   | <defaultFilterClauseForFLV2539> | ApiGeneratedId:1 |
      | Flex Grid:General         | Required Fields |                                 | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName       | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View  | true                        | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Filter Clause   | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Required Fields | AddressProgramContact__c    | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on top right button "Edit All" in flex table with id "flexGridEnhanced1"
    When I enter values "Test Automation" into textarea for table id "flexGridEnhanced1"
    When I click on top right button "Save" in flex table with id "flexGridEnhanced1"
    Then I see value "Test Automation" for multiple cells at column "AddressProgramContact__c"
    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @66949 @verifyEditSelectedAtParentFlexTableForEnhancedGridForRequiredFields-gPlanning  @checkAfterBugFixed
  Scenario Outline: validate Edit Selected functionality for parent flex table for required fields at enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName               | fieldOrignalValue               | filterId         |
      | Flex Grid:Flex Table List | Is Master View          | true                            | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Filter Clause           | <defaultFilterClauseForFLV2539> | ApiGeneratedId:1 |
      | Flex Table                | Enable Record Selection | false                           | ApiGeneratedId:2 |
      | Flex Grid:General         | Required Fields         |                                 | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName               | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View          | true                        | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Filter Clause           | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Table:General        | Enable Record Selection | true                        | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General         | Required Fields         | AddressProgramContact__c    | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I check "Road Construction Annoumsment" boxes in flex table with id "flexGridEnhanced1"
    When I click on top right button "Edit Selected" in flex table with id "flexGridEnhanced1"
    When I enter value "Test Automation" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "flexGridEnhanced1"
    Then I see edited value inside textarea is "Test Automation" for column value "Road Construction Annoumsment" of table "flexGridEnhanced1"
    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |