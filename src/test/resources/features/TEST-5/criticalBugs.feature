@loggedIssueScenarios @regression-test5
Business Need: Logged Issues Scenarios
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
    Then I see record with text "hild" in "---program:-:programTableDivId---"

  @54846    @validateAttachmentEditActionWorkingOrNot
  Scenario: validate Attachment edit action working correctly while entering text inside description field of programs-planning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    And I pause execution for "5" seconds
    When I click on "Edit" icon for "Program Artifacts" inside table
    When I enter values "Test Automation" into textarea description field for Edit Attachment and save
    And I pause execution for "10" seconds
    Then I see the following message in the page details :
      | Attachement edited successfully. |

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
    When I close modal by clicking the top right x button
    When I click on "Delete" icon for "Notes Record" inside table
    When I click "Yes" on modal confirmation box
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
    When I enter values "Checked" into textarea description field for Edit Attachment and save
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
    When I click "Yes" on modal confirmation box
    And I click modal button "Ok"
    When I add notes records
    Then I see the text :
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
    When I click on "Edit" icon for "Notes Record" inside table
    When I enter values "Success message on second tab" into textarea description field for Edit Attachment and save
    When I close modal by clicking the top right x button
    When I click on "Delete" icon for "Success message on second tab" inside table
    When I click "Yes" on modal confirmation box
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
    And I pause execution for "2" seconds
    When I perform quick search for "GT-test-003" in "flexGridEnhancedDivId" panel
    When I click on "Edit" icon for "GT-test-003" inside table
    When I enter value "Test Automation" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
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
    When I perform quick search for "GT-FIN.2-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-FIN.2-001"
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
      | Page title   |
      | Account View |

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
    When I click on top right button "New" in flex table with id "---program:-:programTableDivId---"
    When I click dropdown field "fieldBusinessRole__c"
    When I pause execution for "3" seconds
    Then I see only the following ordered options in dropdown field "BusinessRole__c" :
      | --None-- | Program Approver | Key POC | Owner |

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
  Scenario: Change chart x-axis suffix as $ for 'Funding Sources by Total Amount' chart in configuratin and validating inside Application
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Applications" tab
    Then I see "Grante" at axis "highcharts-yaxis" for chart "Applicationsbyrequestedamount1"

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
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
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
    And I pause execution for "4" seconds
    When I click "Save" after selection of "PSA-0011" in the table "---program:-:programServiceAreaSelectionTableId---"
    And I refresh the page
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programInSAModeOnlyNotApproved}"
    When I click on "Start" icon for "{Framework_recordUsed:programInSAModeOnlyNotApproved}" inside table
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
    And I pause execution for "60" seconds
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
    When I click on top right button "New" in flex table with id "---program:-:programTableDivId---"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    Then I see the text :
      | is required to save. |
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
    Then I see "1" charts displayed

  @56407    @associateButtonShouldDisplayForBudgetCategoryInFinancialTab
  Scenario: validate Associate button is displayed on budget category
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "PG-601-0066"
    When I click on "View Program Details" icon for "PG-601-0066" inside table
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
    When I navigate to "Active" content inside "Activities" subheader on left panel
    When I perform quick search for "FOA-USAID-004"
    When I click on "View" icon for "FOA-USAID-004" inside table
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
    When I navigate to "Active" content inside "Activities" subheader on left panel
    When I perform quick search for "FOA-SFC-002"
    When I click on "Edit" icon for "FOA-SFC-002" inside table
    When I click dropdown field "fieldAnnouncementType__c"
    Then I see only the following ordered options in dropdown field "AnnouncementType__c" :
      | --None-- | Competitive | Sole Source/Directed |

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
    When I perform quick search for "FOA-State-004" in "---program:-:programTableDivId---" panel
    When I click on "View" icon for "FOA-State-004" inside table
    And I pause execution for "5" seconds
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
    When I perform quick search for "{Framework_recordUsed:AnnouncementForEmailNotify1}"
    When I click on "Edit" icon for "{Framework_recordUsed:AnnouncementForEmailNotify1}" inside table
    When I navigate to "Financials" sub tab
    When I click dropdown field "fieldDetailedBudgetingRequired__c"
    Then I see only the following ordered options in dropdown field "DetailedBudgetingRequired__c" :
      | --None-- | Yes | No |

  @56581    @editButtonShouldNotDisplayedForAwardInSubmitForApprovalStatus
  Scenario: validate edit button should not displayed on Page detail for award which is in submit for approval state
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Grants" tab
    And I click toggle button to select "Draft Grants"
    When I perform quick search for "Silvio O. Conte Centers for Basic Neuroscience or Translational Mental Health Research (P50 Clinical Trial Optional)"
    When I click on "View" icon for "Silvio O. Conte Centers for Basic Neuroscience or Translational Mental Health Research (P50 Clinical Trial Optional)" inside table
    When I navigate to "Awards" sub tab
    When I perform quick search for "FAD-GHHS-BP-01-00" in "---program:-:programTableDivId---" panel
    When I click on "View" icon for "FAD-GHHS-BP-01-00" inside table
    Then I see "Edit" button is not displayed

  @57265  @dateShouldDisplayeOnStickyNotesUnderMyWorkSpaceNotes @wip
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
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "{Framework_recordUsed:AnnouncementForAdminUserInClosedState}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementForAdminUserInClosedState}" inside table
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
    Then I softly see status in Progress-bar is "Rejected" and is "Red"

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
    When I perform quick search for "{Framework_recordUsed:AnnouncementForEmailNotify1}"
    When I click on "Edit" icon for "{Framework_recordUsed:AnnouncementForEmailNotify1}" inside table
    When I click search icon for "Awarding Federal Agency Lookup (New Window)" lookup modal and swithing to frame "iframeCustomLookupModalId"
    Then I see "Active" status in lookup modal table

  @56945  @NotesShouldGetDeletedAfterClinkOnAcceptingDeleteConfirmation @wip
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
    When I perform quick search for "App2-FO for DCP" in "---program:-:programTableDivId---" panel
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
    When I perform quick search for "App2-FO for DCP" in "---program:-:programTableDivId---" panel
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
    When I click "Yes" on modal confirmation box
    When I close alertbox
    When I click on "Delete" icon for "DynamicLayoutExport.pdf" inside table
    When I click "Yes" on modal confirmation box
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
    When I perform quick search for "{Framework_recordUsed:ApplicationForValidateButtonAtBusinessForm}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationForValidateButtonAtBusinessForm}" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryFlexGridTableId---" panel
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
    And I edit the following rows inline in flex table with id "---program:-:flexGridEnhancedID---" by clicking "Edit" :
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

  @58840    @subRecipientPortalShouldRenderedWithColour
  Scenario: Validate page blocks of history sub tab should rendered properly on UI
    When I login as "Automation" user
    When I setup my app as "As a Sub-Recipient"
    Then I see page is in "VERY DARK DESATURATED CYAN" color

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
    When I perform quick search for "App 786" in "---program:-:monitoringGridTableId---" panel
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
    And I perform quick search for "BP-01" in "---program:-:inlineApplicationBudgetCategoryTableId---" panel
    When I click on "Delete" icon for "BP-01" inside table
    When I enter the following values into flex table with id "---program:-:inlineApplicationBudgetCategoryTableId---" by clicking "New" :
      | Support Year |
      | BP-01        |
    When I perform quick search for "BP-01" in "---program:-:inlineApplicationBudgetCategoryTableId---" panel
    Then I see that "BP-01" has been added in flextable with Id "---program:-:inlineApplicationBudgetCategoryTableId---"

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
    And I click on page navigation arrow "---program:-:applicationBudgetCategoryInlineEditTableId---" for table id "Next"
    Then I see the text containing :
      | Page 2 |

  @59130    @parentLevelLookupfieldOfApplicationBudgetPeriodsShouldBeInViewMode-gApplications @wip @changeInRequirement
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
    Then I see "Internal Review Panel Users" block is collapsed

  @58956    @formsPrevievLinkShouldOpensFormsCorrectly @bugLogged_160311 @wip
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
    When I click search icon for "Assigned to User Lookup (New Window)" lookup modal and swithing to frame "iframeCustomLookupModalId"
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
    And I click on top right button "New" in flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---"
    When I click on "Start Date" column header inside table with id "---program:-:applicationBudgetCategoryInlineEditTableId---"
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
    And I perform quick search for "Emily spandana garikipati"
    When I click on "View" icon for "Emily spandana garikipati" inside table
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
    When I navigate to "Active" content inside "Activities" subheader on left panel
    When I perform quick search for "FOA-USAID-004"
    When I click on "View" icon for "Family Planning and Reproductive Health Methods APS" inside table
    When I navigate to "Attachments" sub tab
    And I click on top right button "New" in flex table with id "toggleFlexTableAnnoucementPackages"
    When I select package type from Package selection for business forms
    When I check "application1" boxes in flex table with id "ApplicationPackage"
    When I click modal button "Save"
    And I click on "View" icon for "application1" inside flex table with id "---program:-:ApplicationTablIdForTestApplication---"
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
    When I perform quick search for "GT-FIN.1-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-FIN.1-001"
    When I click on top right button "New" in flex table with id "---program:-:flexGridEnhancedID---"
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
    And I edit the following rows inline in flex table with id "---program:-:flexGridEnhancedID---" by clicking "Edit" :
      | Project Title                 | Current Budget Period End Date |
      | Road COnst. Ann.              | 0                              |
      | Road Construction Annoumsment | 0                              |
    And I save the value from row "1" for column name "Current Budget Period End Date" as "BPdate1" from flex table "---program:-:flexGridEnhancedID---"
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
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
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
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
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
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
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
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
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

  @59893    @standardFieldShouldShowUserNameAtEnhancedGridParentColumn @BugId=144971
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
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
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
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:flexGridEnhancedID---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Total Adjusted Amount | equals to | -1 |
    Then I see value "($1.00)" for title "Total Adjusted Amount" inside table "---program:-:flexGridEnhancedID---"
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
    Then I see "$0.00" shown inside enhanced grid table for specified record "Total Adjusted Amount"

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
    When I click alert button "OK"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Date Taken"

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
    And I edit the following rows inline in flex table with id "---program:-:flexGridEnhancedID---" by clicking "Edit" :
      | Project Title | Total Adjusted Amount |
      | Demo_Title    | 20                    |
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    Then I see value "$20.00" for title "Total Adjusted Amount" inside table "---program:-:flexGridEnhancedID---"

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
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryFlexGridTableId---" panel
    When I expand nested table containing column value "BP-02"
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
    And I edit the following rows inline in flex table with id "---program:-:flexGridEnhancedID---" by clicking "Edit" :
      | Project Title | NUMBER |
      | Demo_Title    | -1234  |
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    Then I see value "(1,234)" for title "NUMBER" inside table "---program:-:flexGridEnhancedID---"

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
    And I click toggle button to select "Draft Programs"
    When I re-login to "As a Grantor" app as "Automation" user on "default" portal
    And I navigate to "Planning" tab
    Then I see "Draft Programs" is selected at program flex table

  @60559    @numericFieldvalueShouldBeBlankAtEnhancedGrid
  Scenario Outline: validate Number field is displaying blank after toClearing the existing value at enhanced grid
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
    And I edit the following rows inline in flex table with id "---program:-:flexGridEnhancedID---" by clicking "Edit" :
      | Project Title | NUMBER |
      | Demo_Title    | 2      |
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    And I edit the following rows inline in flex table with id "---program:-:flexGridEnhancedID---" by clicking "Edit" :
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
    And I edit the following rows inline in flex table with id "---program:-:flexGridEnhancedID---" by clicking "Edit" :
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
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:flexGridEnhancedID---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Project Period | contains | 10/1/2016 |
    Then I see value "10/1/2016--12/31/2022" for title "Project Period" inside table "---program:-:flexGridEnhancedID---"

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
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:flexGridEnhancedID---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Project Title | starts with | Health |
    Then I see value "Health Program Announcement" for title "Project Title" inside table "---program:-:flexGridEnhancedID---"

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
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:flexGridEnhancedID---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Project Title | ends with | 11 |
    Then I see value "Health Awaerness 11" for title "Project Title" inside table "---program:-:flexGridEnhancedID---"

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
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryFlexGridTableId---" panel
    Then I see value "BP-02" for title "Support Year" inside table "---program:-:applicationBudgetCategoryFlexGridTableId---"

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
    Then I see cell subtotal as expected as given formula at "TotalAwardObligatedAmount__c" field

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
    And I edit the following rows inline in flex table with id "---program:-:flexGridEnhancedID---" by clicking "Edit" :
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
    When I pause execution for "5" seconds
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
    When I perform quick search for "GT-final-001" in "---program:-:flexGridEnhancedID---" panel
    And I edit the following rows inline in flex table with id "---program:-:flexGridEnhancedID---" by clicking "Edit" :
      | Project Title | Current Budget Period End Date |
      | GT-final-001  | 0                              |
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-final-001" in "---program:-:flexGridEnhancedID---" panel
    And I save the value from row "1" for column name "Current Budget Period End Date" as "BPdate1" from flex table "---program:-:flexGridEnhancedID---"
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
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
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
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    And I edit the following rows inline in flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "Edit" :
      | Support Year | DateTime |
      | BP-01        | 0        |
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
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
    Then I see over all total sum is not displayed for "TotalAwardObligatedAmount__c" inside "---program:-:flexGridEnhancedID---" table

  @56392    @amountShouldGetEnterAtMatchSecuredFieldOnIEBrowser
  Scenario: validate amount should get enter at match secured field of Program budget table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | Grantee State Program | Name                      | PB-2591                    |
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
    Then I see "Total Adjusted Amount : --" inside rows of enhanced grid id "---program:-:enhancedGridTableId---"

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
    When I click on top right button "Edit All" in flex table with id "---program:-:flexGridEnhancedID---"
    When I enter values "Test Automation" into textarea for table id "---program:-:flexGridEnhancedID---"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    Then I see value "Test Automation" for multiple cells at column "AddressProgramContact__c"
    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @66949 @verifyEditSelectedAtParentFlexTableForEnhancedGridForRequiredFields-gPlanning
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
    Given I delete the record "{Framework_recordUsed:GrantRecordCreatedTemporary}" from the object "Grant__c" with field "ProjectTitle__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on top right button "New" in flex table with id "---program:-:flexGridEnhancedID---"
    When I enter value "{Framework_recordUsed:GrantRecordCreatedTemporary}" into field "ProjectTitle__c"
    When I enter value "Active" into field "Status__c"
    When I enter value "Test Address for Automation New" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I check "{Framework_recordUsed:GrantRecordCreatedTemporary}" boxes in flex table with id "---program:-:flexGridEnhancedID---"
    When I click on top right button "Edit Selected" in flex table with id "---program:-:flexGridEnhancedID---"
    When I enter value "Test Address for Automation" into field "AddressProgramContact__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    Then I see value "Test Address for Automation" for title "Program Contact Address" inside table "---program:-:flexGridEnhancedID---"

    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                                                      |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Test Automation Temp grant Record%' |

  @88651 @validateAllClassificationsPresentUnderSelectDropDownAtPlanningFilesTable-HomePhase-RecordLevel @libraryFiles
  Scenario: Verify all classifications present under select classification field dropdown at add file modal - Planing Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    Then I see the following classification type at upload file modal:
      | Select file classification |
      | Medical Reports            |
      | Clinical Budgets           |

  @89365  @VerifyThatTheLookupFieldValueIsOverridedByCurrencyFieldAtEnhancedGridChildFlexTable @enhancedGrid
  Scenario Outline: verify that the lookup field value is overrided by currency field at child flex table at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table List       | Display Field             |                    | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | false              | ApiGeneratedId:1 |
      | Flex Table List       | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             | AnnualRevenue  | TmpGrantorActiveAwardsGrid | Name                      | FTC-1519                   |
      | Flex Table List       | Enable Edit Display Field | true           | TmpGrantorActiveAwardsGrid | Name                      | FTC-1519                   |
      | Flex Grid:General     | Display Field Names       | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "$5,000" shown inside enhanced grid table for specified record "AD-GG PJ--00"

    Examples:
      | newFieldsApi                                | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Status__c,Account__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @89674  @verifyThatByClickOnPendingTaskCountInTaskSummaryByPhaseChartForProgramAPendingTasksTableIsDisplayed @phase
  Scenario: validate by click on pending task count for planning inside Task Summary By Phase chart , pending tasks table gets displayed
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Planning" content inside "Task Summary By Phase" charts
    Then I see "PG" records are present in pending task table
    Then I see expected table with id "---program:-:PhasePendingTasksFlexTableId---"

  @89299    @VerifyThatTheBooleanFieldValueIsOverridesAsPerGivenDisplayFieldAtEnhancedGridParentFlexTable @enhancedGrid
  Scenario Outline: verify that the boolean field value is overrided as per given display field at parent flex table at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Grid             | Display Field       |                    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue       | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi>      | TmpActiveGrantsGrid |                           |                            |
      | Flex Table List       | Display Field       | IsGrantingAgency__c | TmpActiveGrantsGrid | Name                      | FTC-1487                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I softly see "check" symbol in flex table with id "---program:-:flexGridEnhancedID---"

    Examples:
      | newFieldsApi                                           | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,Status__c,ExternalOrganization__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @89360    @VerifyThatTheCurrencyFieldValueIsOverridesAsPerGivenDisplayFieldAtEnhancedGridParentFlexTable @enhancedGrid
  Scenario Outline: verify that the currency field value is overrided as per given display field at parent flex table at enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Grid             | Display Field       |                    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
      | Flex Table List       | Display Field       | AnnualRevenue  | TmpActiveGrantsGrid | Name                      | FTC-1487                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    Then I see "$5,000" shown inside enhanced grid table for specified record "Demo_Title"

    Examples:
      | newFieldsApi                                           | defaultFieldsApi                                                                                                                                                                                                                   |
      | Name,ProjectTitle__c,Status__c,ExternalOrganization__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @89364  @VerifyThatTheBooleanFieldValueIsOverridesIfEnableEditDisplayFieldIsCheckedAtEnhancedGridChildFlexTable @enhancedGrid
  Scenario Outline: verify that the boolean field value is override if enable edit display field checkbox is checked at child tabl- enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table List       | Display Field             |                    | ApiGeneratedId:0 |
      | Flex Table List       | Enable Edit Display Field | false              | ApiGeneratedId:1 |
      | Flex Table List       | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue       | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Display Field             | IsGrantingAgency__c | TmpGrantorActiveAwardsGrid | Name                      | FTC-1519                   |
      | Flex Table List       | Enable Edit Display Field | false               | TmpGrantorActiveAwardsGrid | Name                      | FTC-1519                   |
      | Flex Grid:General     | Display Field Names       | <newFieldsApi>      | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I softly see "check" symbol in flex table with id "---program:-:tmpGrantorActiveAwardsGridTableId---"

    Examples:
      | newFieldsApi                                | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Status__c,Account__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @89610    @verifyUndoActionIsDisplayedAfterClickInlineEditActionUnderMEGridParentFlexTable
  Scenario: validate that undo action is displayed after click on edit action under ME Grid parent flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryFlexGridTableId---" panel
    When I click on "Edit" icon for "BP-02" inside table
    Then I see Undo action displayed by inline editing record under "---program:-:applicationBudgetCategoryFlexGridTableId---" table

  @89789    @mandatoryCommentsBoxAlignmentAtApproveDecisionSectionForApproveAction-Programs @approvalProcess
  Scenario: verify comments requried box alignment for approval action inside approval decision section
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName         | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Required | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName         | fieldNewValue | coreComponentField |
      | Approval Decision Action:General | Comments Required | true          | ADAC-0009          |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
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
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    When I select radio button "Approve" in the approval decision
    Then I see comment box at approval decision section is aligned properly

  @89793    @mandatoryCommentsBoxAlignmentAtApproveDecisionSectionForRejectAction-Programs @approvalProcess
  Scenario: verify comments requried box alignment for reject action inside approval decision section
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName         | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Required | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName         | fieldNewValue | coreComponentField |
      | Approval Decision Action:General | Comments Required | true          | ADAC-0010          |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
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
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    When I select radio button "Reject" in the approval decision
    Then I see comment box at approval decision section is aligned properly

  @89790    @mandatoryCommentsBoxAlignmentAtApproveDecisionSectionForForwardAction-Programs @approvalProcess
  Scenario: verify comments requried box alignment for forward action inside approval decision section
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName         | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Required | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName         | fieldNewValue | coreComponentField |
      | Approval Decision Action:General | Comments Required | true          | ADAC-0011          |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
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
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    When I select radio button "Reject" in the approval decision
    Then I see comment box at approval decision section is aligned properly

  @89835    @mandatoryCommentsBoxAlignmentAtApproveDecisionSectionForForwardAction-Programs @approvalProcess
  Scenario: verify comments requried box alignment for forward action inside approval decision section
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName         | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Required | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName         | fieldNewValue | coreComponentField |
      | Approval Decision Action:General | Comments Required | true          | ADAC-0011          |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
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
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    When I select radio button "Forward" in the approval decision
    Then I see reassigned select box at approval decision section is aligned properly

  @88799 @validateTitleOfEditFileModalWindowAtFileEditModalUnderLibraryFile-HomePhase @libraryFiles
  Scenario: Verify title of edit file modal at  home phase library
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder1"
    When I click on dropdown at library/folder/file "SendEmailAttachment.png"
    When I click on "Edit File" option at library/folder/file "SendEmailAttachment.png"
    Then I see "Edit File" modal window is displayed

  @89809    @verifyAdvanceFilterDisplayedAtEnhancedDataTable-gPlanning @flexTableEnhanced
  Scenario: validate advance filter displayed at enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Filter | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Filter | true          | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    Then I see Advance Filter box is displayed with id "advfEnhancedDataTable"

  @89811  @VerifyTheAdvanceFilterIsWorkingAtEnhancedGridFlexTable @enhancedGrid
  Scenario: validate advance search filter at enhanced grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:enhancedGridTableId---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Status | equals to | --None-- |
    Then I see "No Records Found" inside flex table with id "---program:-:enhancedGridTableId---"

  @84603    @verifyDisplayOfFooterActionsAtPageLayoutAction-gPlanning @pageLayout
  Scenario: verify action buttons are diplayed at page layout footer
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramInCreated}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:ProgramInCreated}" inside table
    Then I softly can see bottom button "Edit" in page detail
    Then I softly can see bottom button "Submit For Approval" in page detail

  @84602    @verifyDisplayOfBlueBorderAtPageBlock-gPlanning @pageLayout
  Scenario: verify page block border is displayed with blue color at page detail
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    Then I see a boarder is displayed at page block section

  @90634 @validateThatBackToPreviousButtonIsDisplayedAtSelectFolderModalOfViewFile-RecordLevel @libraryFiles
  Scenario: Verify that by click on back to previes modal button, user should get redirect to upload file modal - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I click on SelectChange Folder in add file modal
    And I pause execution for "10" seconds
    Then I see "Back to previous" button inside select folder modal

  @90635 @validateThatBackToPreviousButtonIsDisplayedAtSelectFolderModalOfEditFile-RecordLevel @libraryFiles
  Scenario: Verify that by click on back to previes modal button, user should get redirect to upload file modal - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "testAutomationFileDND.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Edit" icon for "testAutomationFileDND.png" inside table
    When I click on SelectChange Folder in add file modal
    Then I see "Back to previous" button inside select folder modal

  @90355 @validateThatGlobalSearchDisplayedRespectiveResultIfSearchAnyRecordInIt-HomePhase @sideBar
  Scenario: Verify that if file name is searched in global search-All tables then, it is displayed in files table - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "All"
    When I perform quick search inside global search "PG-343-0058"
    Then I see value "PG-343-0058" for title "ID" inside table "---program:-:programSearchFlexTableID---"

  @86985 @validateThatAlertMessageWillAppearAtModalIfUserDonnotHaveAccessToEditFileAtFileList @libraryFiles
  Scenario: Verify that user can upload file from HomePhase - FileList table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "F-product-banner" in "---program:-:workSpaceFilesFlexTableId---" panel
    When I click on "Edit" icon for "F-product-banner" inside table
    Then I see alert message inside "---program:-:workSpaceFileEditId---" modal as follows :
    """
   {LongText:FileEditModalAlertMessageLong-Text}
  """

  @91601    @numberFieldWithNoDecimalShouldDisplayedProgramFlexTable @flexTable
  Scenario Outline: validate value of Number Field should displayed correctly flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true           | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramTestSendToOwnerForNumberFieldValue}"
    Then I see value "20.0000" for title "Number Test" inside table "---program:-:programsTableId---"

    Examples:
      | newFieldsApi                                 | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,Number_Test__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @91560    @validateDisplayOfTotalRowAndTotalRowLabelIfEnableTotalFieldIsUnchedForFlexTable-gPlanning
  Scenario: validate disbaling of total amount in flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Row | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Total     | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Row | true          | Programs           |                           |                            |
      | Flex Table List       | Enable Total     | false         | Programs           | Name                      | FTC-1018                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I pause execution for "2" seconds
    Then I see total amount row in flex table is not displayed

  @91781    @validateHideColumnsFieldAtApplicationBudgetPeriodFlexTable-MEGrid @flexGrid
  Scenario Outline: validate hide columns field at application budget period flex table - me grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Hide Columns        |                    | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                         | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Hide Columns        | govgrants_config:HideColumnsAtApplicationBudgetMEGrid | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi>                                        | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    Then I see that "*****" has been added in flextable with Id "---program:-:applicationBudgetCategoryInlineEditTableId---"

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                                                  |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,Application__r.AwardCeiling__c,TestField__c |

  @81044    @VerifyDecimalPlacesInsideOverallTotalForCurrencyFieldAtMEGrid-gGrant @flexGrid
  Scenario Outline: Validating decimal places inside overall total for currency field at ME Grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Total        | false              | ApiGeneratedId:0 |
      | Flex Table:General    | Enable Total Row    | true               | ApiGeneratedId:1 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total        | true           | ApplicationBudgetPeriods | Name                      | FTC-1520                   |
      | Flex Table:General    | Enable Total Row    | true           | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    Then I see format as ".00" in "TestField" field total inside "---program:-:applicationBudgetCategoryFlexGridTableId---" me grid

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                   |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,TestField__c |

  @81043    @VerifyDecimalPlacesAreNotPresentInsideOverallTotalForCurrencyFieldAtMEGrid-gGrant @flexGrid
  Scenario Outline: Validating decimal places ar not present inside overall total for currency field at ME Grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Total        | false              | ApiGeneratedId:0 |
      | Flex Table:General    | Enable Total Row    | true               | ApiGeneratedId:1 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total        | true           | ApplicationBudgetPeriods | Name                      | FTC-1521                   |
      | Flex Table:General    | Enable Total Row    | true           | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    Then I do not see format as ".00" in "AwardCeiling" field total inside "---program:-:applicationBudgetCategoryFlexGridTableId---" me grid

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                                     |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,Application__r.AwardCeiling__c |

  @91572    @VerifyDollarSignIsPresentInsideOverallTotalForCurrencyFieldAtMEGrid-gGrant @flexGrid
  Scenario Outline: Validating dollar sign is present inside overall total for currency field at ME Grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Total        | false              | ApiGeneratedId:0 |
      | Flex Table:General    | Enable Total Row    | true               | ApiGeneratedId:1 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total        | true           | ApplicationBudgetPeriods | Name                      | FTC-1521                   |
      | Flex Table:General    | Enable Total Row    | true           | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    Then I see format as "$" in "AwardCeiling" field total inside "---program:-:applicationBudgetCategoryFlexGridTableId---" me grid

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                                     |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,Application__r.AwardCeiling__c |

  @91799    @VerifyOverallTotalIsDisplayedAtChildFlexTableInsideMEGrid-gGrant @flexGrid
  Scenario Outline: Validating overall total is displayed at child flex table under ME Grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table:General    | Enable Total Row    | true               | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Row    | true           | ApplicationBudgetCategoryFlexTable |                           |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetCategoryFlexTable |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-02"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see default total at "---program:-:applicationBudgetCategoryFlexGridTableId---" flex grid

    Examples:
      | defaultFieldsApi                                                                                     | newFieldsApi                                              |
      | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c |

  @92064    @validateCurrencyFieldWithNoDecimalValueSAtProgramFlexTable @flexTable
  Scenario Outline: validate if we enter decimal value in non-decimal currency field then non-decimal value should get saved and displayed correctly in flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true           | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    And I enter value "40000.12" into field "fieldFundedAmount__c"
    When I click on "Save" in the page details
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    Then I see value "$40,000" for title "Funded Amount" inside table "---program:-:programTableDivId---"

    Examples:
      | newFieldsApi                                  | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,FundedAmount__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @89797  @verifyPlaceHolderOfQuickSearchBoxAtLookupModalUnderCreateAnnouncementModalWindow @flexTable
  Scenario: validate a place holder of quick search box for a lookup modal displayed by click on program field under create announcement modal window
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on top right button "Create" in flex table with id "---program:-:AnnouncementTableId---"
    When I click search icon for "Program ID Lookup (New Window)" lookup modal and swithing to frame "iframeCustomLookupModalId"
    Then I see placeholder for quick search box as "Search..." inside "---program:-:programSearchFlexTableID---" table

  @87265   @verifyAProgramRecordIsGettingCreatedAndIdIsDisplayedAsPerGivenLastSequenceIfSkipAutoNumberCheckBoIsUnchecked
  Scenario: validate that a program record is getting created with program id as per given last sequence in config if skip auto number checkbox is unchecked
    Given I have "default" configuration as below:
      | configurationCategory         | fieldName     | fieldOrignalValue           | filterId         |
      | Name Template Sequence Config | Last Sequence |                             | ApiGeneratedId:0 |
      | Page Layout                   | Header        | Program - {!ProgramName__c} | ApiGeneratedId:1 |
    Given I have "customNameTemplate" configuration as below:
      | id                 | Name       | AutoNumberFormat | StartNumber | booleanValue                                          | customSettingApiName       |
      | a0e15000008FjIyAAK | Program__c | {000}            | 1           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:false | GNT__NameTemplateConfig__c |
    Given I setup test configuration as below:
      | configurationCategory                       | fieldName     | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue     |
      | Name Template Sequence Config:Name Template | Last Sequence | 2                 |                       | Internal Unique Id        | p8BKf5E0q1cd1Re8ybgBWh1jQ0Ap3D |
      | Page Layout:General                         | Header        | Program - {!Name} | Grantee State Program |                           |                                |
    And I update custom name template setting changes:
      | id                 | Name       | AutoNumberFormat | StartNumber | booleanValue                                          | customSettingApiName       |
      | a0e15000008FjIyAAK | Program__c | {000}            | 1           | GNT__Active__c:true,GNT__SkipAutoNumberReset__c:false | GNT__NameTemplateConfig__c |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "PG-343-2017"
    When I click on "Edit" icon for "PG-343-2017" inside table
    When I navigate to "Overview" sub tab
    Then I see the sub-header is "PG-343-2017" in the page details

  @93594  @verifyIfTopLevelActionOpensInNewWindowAtEnhancedGrid-gPlanning @enhancedGrid
  Scenario: validate if top level action is opened in new tab at EnhancedGrid - gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | Modal             | TmpActiveGrantsGrid | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewTab        | TmpActiveGrantsGrid | Name                      | Create                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on top right button "Create" in flex table with id "---program:-:flexGridEnhancedID---"
    Then I see new tab is opened

  @93627    @verifyOverallTotalForCurrencyFieldAtParentFlexTableForEnhancedGrid-gPlanning @enhancedGrid
  Scenario Outline: validate overall total displayed if currency field value edited and saved inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue               | filterId         |
      | Flex Table List           | Enable Over All Total | false                           | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Is Master View        | true                            | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Filter Clause         | <defaultFilterClauseForFLV2539> | ApiGeneratedId:2 |
      | Flex Grid                 | Display Field Names   | <defaultFieldsApi>              | ApiGeneratedId:3 |
      | Flex Grid:General         | Default Page Size     | 5                               | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName             | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Enable Over All Total | true                        | TmpActiveGrantsGrid | Name                      | FTC-1518                   |
      | Flex Grid:Flex Table List | Is Master View        | true                        | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Filter Clause         | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Display Field Names   | <newFieldsApi>              | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General         | Default Page Size     | 10                          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on "Edit" icon for "MDH Test Application # 1" inside table
    When I enter value "300" into field "CumulativeAwardedAmount__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "MDH Test Application # 1" in "---program:-:flexGridEnhancedTableId---" panel
    Then I see over all total for "CumulativeAwardedAmount__c" at enhanced grid

    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                                             | defaultFieldsApi                                                                                                                                                                                                                   | newFieldsApi                                              |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'MDH Test Application # 1%' | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,Status__c,CumulativeAwardedAmount__c |

  @93635    @verifyOverallTotalForNumberFieldAtParentFlexTableForEnhancedGrid-gPlanning @enhancedGrid
  Scenario Outline: validate overall total displayed if number field value edited and saved inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue               | filterId         |
      | Flex Table List           | Enable Over All Total | false                           | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Is Master View        | true                            | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Filter Clause         | <defaultFilterClauseForFLV2539> | ApiGeneratedId:2 |
      | Flex Grid                 | Display Field Names   | <defaultFieldsApi>              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName             | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Enable Over All Total | true                        | TmpActiveGrantsGrid | Name                      | FTC-1522                   |
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
    When I click on "Edit" icon for "MDH Test Application # 1" inside table
    When I enter value "300" into field "NUMBER__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "MDH Test Application # 1" in "---program:-:flexGridEnhancedTableId---" panel
    Then I see over all total for "NUMBER__c" at enhanced grid

    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                                             | defaultFieldsApi                                                                                                                                                                                                                   | newFieldsApi                             |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'MDH Test Application # 1%' | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,Status__c,NUMBER__c |

  @93678    @verifyOverallTotalForPercentFieldAtParentFlexTableForEnhancedGrid-gPlanning @enhancedGrid
  Scenario Outline: validate overall total displayed if percent field value edited and saved inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue               | filterId         |
      | Flex Table List           | Enable Over All Total | false                           | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Is Master View        | true                            | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Filter Clause         | <defaultFilterClauseForFLV2539> | ApiGeneratedId:2 |
      | Flex Grid                 | Display Field Names   | <defaultFieldsApi>              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName             | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Enable Over All Total | true                        | TmpActiveGrantsGrid | Name                      | FTC-1523                   |
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
    When I click on "Edit" icon for "MDH Test Application # 1" inside table
    When I enter value "30" into field "PercentTest__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "MDH Test Application # 1" in "---program:-:flexGridEnhancedTableId---" panel
    Then I see value "MDH Test Application # 1" for multiple cells at column "ProjectTitle__c"

    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                                             | defaultFieldsApi                                                                                                                                                                                                                   | newFieldsApi                                  |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'MDH Test Application # 1%' | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,Status__c,PercentTest__c |

  @93679  @verifyIfTopLevelActionOpensInNewWindowAtEnhancedGridChildTable-gPlanning @enhancedGrid
  Scenario: validate if top level action is opened in new tab at EnhancedGrid child table - gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | Modal             | TmpGrantorActiveAwardsGrid | Name                      | New Action                 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewTab        | TmpGrantorActiveAwardsGrid | Name                      | New Action                 |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on top right button "New Action" in flex table with id "---program:-:tmpGrantorActiveAwardsGridTableId---"
    Then I see new tab is opened

  @93709    @validateAdvanceFilterPositionIfQuickSearchIsDisabled-gPlanning
  Scenario: validate position advance filter if quick search box is disabled at-Program flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter       | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter       | true          | Programs           |                           |                            |
      | Flex Table:General    | Enable Quick Search | false         | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see advance filter with data target value "#advfPrograms" displayed at right side of table "---program:-:ProgramsFlexTableToggleId---"

  @93725    @validateQuickSearchBoxReturnSearchedResultInsideEnhancedGrid-gPlanning
  Scenario: validate quick search box return searched result only inside enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    Then I see value "Demo_Title" for title "Project Title" inside table "---program:-:flexGridEnhancedID---"

  @93824    @verifyColumnNameInsideLookupModalWindow-gPlanning @pageLayout
  Scenario: verify column name displayed inside lookup modal window by click on search icon at lookup field
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click search icon for lookup "Organization Lookup (New Window)"
    Then I see "Account Name" shown inside flex table with id "---program:-:AccountTableId---"

  @93823   @verifySearchIconDisplayedAtLookupFieldInsideModalWindow-gPlanning @pageLayout
  Scenario: verify search icon displayed at lookup field inside modal window
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I click on top right button "New" in flex table with id "---program:-:programTableDivId---"
    Then I see search icon for lookup "Assigned to User Lookup (New Window)"

  @94671  @verifyByClickOnRefreshButtonSearchBoxIsGettingClearOutAtEnhancedGrid-gPlanning @enhancedGrid
  Scenario: validate by click on refresh button, a search box is getting clearout at EnhancedGrid - gPlanning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Refresh" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:enhancedGridTableId---"

  @94672    @verifyHideForProfileFieldIfActionDisplayTypeIsMenuAtFlexTableTopLevelAction-gPlanning @flexTable
  Scenario: verify hide for profile field if action display type is Menu at flex table top level action
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Flex Table Action     | Header Action Display Type | Button            | Programs           | Name                      | View Submitted Applications |
      | Flex Table Action     | Hide For Profile           |                   | Programs           | Name                      | View Submitted Applications |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Flex Table Action     | Header Action Display Type | Menu                 | Programs           | Name                      | View Submitted Applications |
      | Flex Table Action     | Hide For Profile           | System Administrator | Programs           | Name                      | View Submitted Applications |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    Then I do not see "View Submitted Applications" options inside "Draft Programs" enabled

  @94807    @hideDecisionFieldAtApplicationBudgetCategoryFlexTableRowLevelActionAtSobjectChildTable-gApplications @flexGrid
  Scenario: Hide decision field at row level action from configuration and validating it at under Application Budget child flex table
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Decision Field | HideApplicationEditDelete__c | AppLineItems       | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Decision Field | HideApplicationEditDelete__c | AppLineItems       | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-02"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "Add Line Items" icon for "Indirect Cost Rate" inside table
    Then I see "Edit" icon for "Demo Line 1" is not displayed inside flex table

  @94813    @hideDecisionFieldAtApplicationBudgetCategoryFlexTableRowLevelActionAtChildTable-gApplications @flexGrid
  Scenario: Hide decision field at row level actions from configuration and validating it at under Application Budget child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field | HideApplicationEditDelete__c | AppLineItems       | Name                      | Test View                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Decision Field | HideApplicationEditDelete__c | AppLineItems       | Name                      | Test View                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-03" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-03"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    When I click on "Add Line Items" icon for "Indirect Cost Rate" inside table
    Then I see "Test View" icon for "Demo Line 1" is not displayed inside flex table

  @94923 @hideCellJsonfieldAtEnhancedGridUsingRollupSummaryTypeField-gPlanning @smoke
  Scenario Outline: Hiding specific cell value using rollup summary field value and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Hide Cell JSON      |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                             | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON      | govgrants_config:HideCellJsonForEnhancedGridRollUpSummary | TmpActiveGrantsGrid | Name                      | FTC-1490                   |
      | Flex Grid:General     | Display Field Names | <newFieldsApi>                                            | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "AA_Application for NIDA Announcement" in "---program:-:flexGridEnhancedTableId---" panel
    Then I see "*****" shown inside enhanced grid table for specified record "AA_Application for NIDA Announcement"

    Examples:
      | newFieldsApi                                                    | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Name,Status__c,AmountAwardedThisBudgetPeriod__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @94924 @hideCellJsonfieldAtEnhancedGridForFormulaType-gPlanning @smoke
  Scenario Outline: Hiding specific cell value using formula field value and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Hide Cell JSON      |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON      | govgrants_config:HideCellJsonForEnhancedGridFormulaFieldType | TmpActiveGrantsGrid | Name                      | FTC-1490                   |
      | Flex Grid:General     | Display Field Names | <newFieldsApi>                                               | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    Then I see "*****" shown inside enhanced grid table for specified record "Demo_Title"

    Examples:
      | newFieldsApi                                        | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Name,Status__c,BuildUpGridNeeded__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @94925 @hideCellJsonfieldAtEnhancedGridChildTableUsingRollupSummaryTypeField-gPlanning @smoke
  Scenario Outline: Hiding specific cell value using rollup summary field value and validating it inside enhanced grid child table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Hide Cell JSON      |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                       | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON      | govgrants_config:HideCellJsonForEnhancedChildTableGridRollUpSummary | TmpGrantorActiveAwardsGrid | Name                      | FTC-1499                   |
      | Flex Grid:General     | Display Field Names | <newFieldsApi>                                                      | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "*****" shown inside enhanced grid table for specified record "Demo_Title"

    Examples:
      | newFieldsApi                                                        | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Status__c,ProjectAmountofBudgetCategories__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @94929 @hideCellJsonfieldAtEnhancedGridChildTableUsingFormulaTypeField-gPlanning @smoke
  Scenario Outline: Hiding specific cell value using formula field value and validating it inside enhanced grid child table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Hide Cell JSON      |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                     | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON      | govgrants_config:HideCellJsonForEnhancedChildTableGridFormulaType | TmpGrantorActiveAwardsGrid | Name                      | FTC-1498                   |
      | Flex Grid:General     | Display Field Names | <newFieldsApi>                                                    | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    Then I see "*****" shown inside enhanced grid table for specified record "Demo_Title"

    Examples:
      | newFieldsApi                                                                         | defaultFieldsApi                                                                                                                               |
      | Name,GrantAwardName__c,Status__c,TotalObligateAmount__c,ReadGrantSupervisorFields__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @94214    @validateHelpTextFieldWithSpecialCharactersAtPageBlock-gPlanning
  Scenario Outline: verify special characters inside help text at page block inside program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Help Text | <old_helpText>    | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Help Text | <new_helpText> | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I hovering mouse on help text icon inside "Program Information"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | new_helpText            | old_helpText                                                                           |
      | This @section Submitted | The section gives program overview along with funder and funding organization details. |

  @94534    @verifyHideDecisionActionComponent-Programs
  Scenario: Hiding approve decision component from configuration and validating in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                        | fieldOrignalValue | filterId         |
      | Page Layout:General   | Hide Approval Decision Component | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                        | fieldNewValue | coreComponentField                                         |
      | Program               | Status                           | Created       | Test program for automation -  SA mode only - Not approved |
      | Page Layout:General   | Hide Approval Decision Component | true          | Grantee State Program                                      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInSAModeOnlyNotApproved}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInSAModeOnlyNotApproved}" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programInSAModeOnlyNotApproved}"
    When I click on "Start" icon for "{Framework_recordUsed:programInSAModeOnlyNotApproved}" inside table
    Then I cannot see the approval decision

  @94535    @verifyHideApprovalDecisionActionFieldIfSetAsFalse-Programs
  Scenario: displaying approve decision component from configuration and validating in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                        | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Approval Decision Component | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                        | fieldNewValue | coreComponentField                                         |
      | Program               | Status                           | Created       | Test program for automation -  SA mode only - Not approved |
      | Page Layout:General   | Hide Approval Decision Component | false         | Grantee State Program                                      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInSAModeOnlyNotApproved}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInSAModeOnlyNotApproved}" inside table
    When I click on "Save" in the page details
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programInSAModeOnlyNotApproved}"
    When I click on "Start" icon for "{Framework_recordUsed:programInSAModeOnlyNotApproved}" inside table
    Then I can see the approval decision

  @95369    @validateByClickOnAttachmentEditActionAnEditModalAppearsWithType @pageLayout
  Scenario: validate by click on Attachment edit action, an edit attachment modal appears -planning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "Program Artifacts" inside table
    Then I see "Program Artifacts:Financial Artifacts:Other Artifacts" inside Type selectbox

  @95484 @verifyWorkingOfSearchBoxWithSpecialCharactersAtLookupModalWindow @flexTable
  Scenario: verify search function with special character at lookup modal window is working properly
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click search icon for lookup "Organization Lookup (New Window)"
    When I perform quick search for "tes't" in "---program:-:AccountTableId---" panel
    Then I see "No Records Found" inside flex table with id "---program:-:AccountTableId---"

  @95445 @verifyWorkingOfSearchBoxAtLookupModalWindow @flexTable
  Scenario:  verify search function at lookup modal window is working properly
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click search icon for lookup "Organization Lookup (New Window)"
    When I perform quick search for "Child Secretary of Health Organization" in "---program:-:AccountTableId---" panel
    Then I see "Child Secretary of Health Organization" inside flex table with id "---program:-:AccountTableId---"

  @94935  @validateInlineEditShouldWorkProperlyAtChildTableOfEnhancedGrid @enhancedGrid
  Scenario Outline: validate inline edit is working properly at child table of enhanced grid
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
    When I perform quick search for "GT-test-003" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-test-003"
    When I click on "Edit" icon for "AD-test--04" inside table
    When I enter value "0" into field "ProjectPeriodEndDate__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "GT-test-003" in "---program:-:flexGridEnhancedID---" panel
    And I pause execution for "5" seconds
    When I perform quick search for "AD-test--04" in "---program:-:tmpGrantorActiveAwardsGridTableId---" panel
    Then I see field value is current date for "ProjectPeriodEndDate__c" at enhanced grid

    Examples:
      | newFieldsApi                                             | defaultFieldsApi                                                                                                                               |
      | GrantAwardName__c,Name,Status__c,ProjectPeriodEndDate__c | Name,GrantAwardName__c,Agreement1__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c,Status__c |

  @84618 @verifyThatLightGrayColorIsDisplayedAtSidebarSubMenuBackgroundForLoggedInUser-StateAsAGrantor @sidebar
  Scenario: verify that Light gray color is displayed as background for sidebar sub-menu for logged in user-StateAsAGrantor
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    Then I see sidebar sub menu has light grey background colour

  @93700   @VerifySearchResultDisplayedCorrectlyAfterChangingThePaginationAtFlexTable-gPlanning @flexTable
  Scenario Outline: validate searched result is displayed correctly after changing the pagination under flex table - Planning phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table List       | Filter Clause     | <oldSoqlFilter>   | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Filter Clause     | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
      | Flex Table:General    | Default Page Size | 5               | Programs           |                           |                            |
      | Flex Table:General    | Enable Pagination | true            | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Created"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    Then I see record with text "Created" in "---program:-:programTableDivId---"

    Examples:
      | newSoqlFilter                                                                                                      | oldSoqlFilter                                                                                                             |
      | RecordType.Name = 'Internal Program' and Status__c = 'Created' and Account__r.Name='Department of Children health' | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') |

  @93699   @VerifySearchResultDisplayedCorrectlyAfterChangingThePageSizeAtFlexTable-gPlanning @flexTable
  Scenario Outline: validate searched result is displayed correctly after changing the page size under flex table - Planning phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table List       | Filter Clause     | <oldSoqlFilter>   | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | false             | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Filter Clause     | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
      | Flex Table:General    | Default Page Size | 5               | Programs           |                           |                            |
      | Flex Table:General    | Enable Pagination | true            | Programs           |                           |                            |
      | Flex Table:General    | Enable Page Size  | true            | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Created"
    And I select value inside table "---program:-:programTableDivId---" is "10"
    Then I see record with text "Created" in "---program:-:programTableDivId---"

    Examples:
      | newSoqlFilter                                                                                                      | oldSoqlFilter                                                                                                             |
      | RecordType.Name = 'Internal Program' and Status__c = 'Created' and Account__r.Name='Department of Children health' | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') |

  @89907  @VerifyThatTheBackgroundColorAsBlueIsDisplayedAtSelectedConditionAtEnhancedFlexTable @flexTableEnhanced
  Scenario: validate background color of selected condition at advance search filter at enhanced flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfEnhancedDataTable" of table id "---program:-:EnhancedDataTableId---"
    When I enter advance filter values inside id "advfEnhancedDataTable"
      | Status | equals to | Active |
    Then I see background color of selected filter criteria is Moderate Blue

  @89908  @VerifyThatTheBackgroundColorAsBlueIsDisplayedAtSelectedConditionAtEnhancedGridFlexTable @enhancedGrid
  Scenario: validate background color of selected condition at advance search filter at enhanced grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:enhancedGridTableId---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Status | equals to | Active |
    Then I see background color of selected filter criteria is Moderate Blue

  @93586  @VerifyFlexGridSequenceByClickOnTextPageArrow-gPlanning @enhancedGrid
  Scenario: validate auto index sequence displayed properly under flex grid by click on next page arrow - Planning phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Auto Index | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click on page navigation arrow "---program:-:enhancedGridTableId---" for table id "Next"
    Then I see sequence of column "#" is in correct order inside table "---program:-:enhancedGridTableId---" with startvalue "6"

  @93727  @VerifyFlexGridSequenceAtSearchPage-gPlanning @enhancedGrid
  Scenario: validate auto index sequence displayed properly under flex grid at search page - Planning phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Auto Index | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "test" in "---program:-:flexGridEnhancedID---" panel
    And I select value inside table "---program:-:enhancedGridTableId---" is "10"
    And I pause execution for "3" seconds
    Then I see sequence of column "#" is in correct order inside table "---program:-:enhancedGridTableId---" with startvalue "1"

  @84726 @verifyThatBlueColorIsDisplayedAtSidebarScrollForLoggedInUser-StateAsAGrantor @sidebar
  Scenario: verify that blue color is displayed at sidebar scroll bar for logged in user-StateAsAGrantor
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see sidebar scroll has blue colour

  @96572 @verifyMarginIsDisplayedBetweenScrollAndPageSizeAtFlexTableBottom @flexTable
  Scenario Outline: verify that margin is displayed between scroll bar and page size at bottom of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see margin of "10px" is present between scroll-bar and page size

    Examples:
      | newFieldsApi                                                                                                                                                                                                | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById,ApplicantTypes__c,Authorization__c,AwardActivityType__c,OrganizationName__c,Obligations__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @96570  @VerifyThatPageIsGettingRefreshedByClickOnRefreshOptionFromBurgerMenuAtFlexTable @flexTable
  Scenario: validate that page is getting refreshed by click on refresh option from burger menu inside flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Refresh" from parallel lines dropdown of "Draft Programs"
    Then I see entire page is refreshing

  @96567    @enableOverallTotalFieldAndRowGroupingAtParentFlexTableForEnhancedGrid-gPlanning @enhancedGrid
  Scenario Outline: validate enabling of overall total field and row grouping inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue               | filterId         |
      | Flex Table List           | Enable Over All Total | false                           | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Is Master View        | true                            | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Filter Clause         | <defaultFilterClauseForFLV2539> | ApiGeneratedId:2 |
      | Flex Table List           | Enable Row Grouping   | false                           | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName             | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Enable Over All Total | true                        | TmpActiveGrantsGrid | Name                      | FTC-1497                   |
      | Flex Grid:Flex Table List | Is Master View        | true                        | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Filter Clause         | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Table List           | Enable Row Grouping   | true                        | TmpActiveGrantsGrid | Name                      | FTC-1497                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I softly see over all total for "NumberofAwards__c" field at enhanced grid
    Then I softly see "Number of Awards :" inside rows of enhanced grid id "---program:-:enhancedGridTableId---"

    Examples:
      | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                                         |
      | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c like 'Road%' |

  @96610     @VerifyTotalRecordCountDisplayedAtBottomOfMeGridParentTableAndIsAlignedCentrally-gPlanning @flexGrid
  Scenario: validate total record count is displayed at bottom and is centrally aligned under me grid parent flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | true          | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    Then I see total records count is centrally aligned at bottom of "---program:-:applicationBudgetCategoryInlineEditTableId---" parent table

  @96618     @VerifyTotalRecordCountDisplayedAtBottomOfMeGridChildTableAndIsAlignedCentrally-gPlanning @flexGrid
  Scenario: validate total record count is displayed at bottom and is centrally aligned under me grid child flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | true          | ApplicationBudgetCategoryFlexTable |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-02"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see total records count is centrally aligned at bottom of "---program:-:applicationBudgetCategoryInlineEditTableId---" child table

  @96971    @validateWorkingOfAdvanceFilterAtEnhancedGridForTitleContainsText
  Scenario: validate working of Advance filter search for project title contains text as test at enhanced grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:flexGridEnhancedID---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Project Title | contains | Test Demo |
    Then I see value "Test Demo" for title "Project Title" inside table "---program:-:flexGridEnhancedID---"

  @96994    @validateWorkingOfQuickSearchAtEnhancedGridParentTable
  Scenario: validate working of quick search functionality at enhanced grid parent flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "test Program for automation DND" in "flexGridEnhancedDivId" panel
    Then I see value "test Program for automation DND" for title "Project Title" inside table "---program:-:flexGridEnhancedID---"

  @97031    @validateWorkingOfSaveAndCloseButtonAtAddAttachmentModal
  Scenario: validate an attachment is getting added in attachment block by click on save and close button at add attachment modal
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                 | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Save Attachment Behaviour | Save              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                 | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Save Attachment Behaviour | Save and Close | Grantee State Program | GNT__PageBlockTitle__c    | Attachments                |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios1}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios1}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Delete" icon for "TestAutomation.txt" inside table
    When I click "Yes" on modal confirmation box
    When I close alertbox
    When I only upload attachment "TestAutomation.txt" of type "Other Artifacts" from computer
    And I click modal button "Save and Close"
    Then I see table with header "Attachments" contains records "TestAutomation.txt"

  @97039    @validateByClickOnSaveButtonAtAddAttachmentModalAModalWindowShouldRemainsDisplayedOnPage
  Scenario: validate by click on save button at add attachment modal a modal is not getting disappear
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                 | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Save Attachment Behaviour | Save              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Save Attachment Behaviour | Save          | Grantee State Program | GNT__PageBlockTitle__c    | Attachments                |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios1}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios1}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Delete" icon for "TestAutomation.txt" inside table
    When I click "Yes" on modal confirmation box
    When I close alertbox
    When I only upload attachment "TestAutomation.txt" of type "Other Artifacts" from computer
    And I click modal button "Save"
    Then I see "Add Attachments" opens in overLay window

  @96573  @VerifyMiniPageLayoutShouldDisplayedProperlyOnMouseHoverAtPageDetailInViewMode @pageLayout
  Scenario Outline: validate that mini page layout is getting displayed properly on mouse hover at page detail in view mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    When I hover mouse on lookup link "Department of Community Health"
    Then I see "<miniPageLayout_Text>" shown inside mini page layout on hover

    Examples:
      | miniPageLayout_Text            |
      | Department of Community Health |

  @97372  @VerifyDefaultValueFieldAtEnhancedGridParentTable @enhancedGrid
  Scenario: validate default value field at enhanced grid parent table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table List       | Default Value |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Default Value | 1             | TmpActiveGrantsGrid | Name                      | FTC-1525                   |
    Given I delete the record "Grant Created for default value testing" from the object "Grant__c" with field "ProjectTitle__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on top right button "New" in flex table with id "---program:-:flexGridEnhancedID---"
    When I enter value "Grant Created for default value testing" into field "ProjectTitle__c"
    When I enter value "Active" into field "Status__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "Grant Created for default value testing" in "---program:-:flexGridEnhancedID---" panel
    Then I see value "1" for multiple cells at column "AddressProgramContact__c"

  @97374  @VerifyDefaultValueFieldAtEnhancedGridChildTable @enhancedGrid
  Scenario: validate default value field at enhanced grid child table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table List       | Default Value |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Default Value | 1             | TmpGrantorActiveAwardsGrid | Name                      | FTC-1526                   |
    Given I delete the record "Award Created for default value testing" from the object "Award__c" with field "GrantAwardName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on top right button "test" in flex table with id "---program:-:tmpGrantorActiveAwardsGridTableId---"
    When I enter value "Award Created" into field "GrantAwardName__c"
    When I enter value "Created" into field "Status__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    And I click toggle button to select "All Awards"
    When I perform quick search for "Award Created" in "---program:-:tmpGrantorActiveAwardsGridTableId---" panel
    Then I see value "1" for multiple cells at column "Agreement1__c"

  @97354    @validateDownloadPDFBrowserTabTitleAtFlexTable-gPlanning @wip
  Scenario: validate by click on download as pdf and error is not shown inside pdf browser tab title at program flex table-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Show in PDF         | false             | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF         | true          | Programs           | Name                      | FLV-1835                   |
      | Flex Table:General    | Enable Export (PDF) | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on parallel lines menu bar with data target value "#toggleFlexTableActiveFundingOpportunities"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Announcements"
    Then I see page title "FlexTableExport"

  @97519    @validateAdvanceFilterValueForDateFieldAtEnhancedGridParentTable
  Scenario: validate Advance filter search  for date field at enhanced grid parent table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:flexGridEnhancedID---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Project Period | starts with | 11/1/2018 |
    Then I see value "11/1/2018--11/1/2020" for title "Project Period" inside table "---program:-:flexGridEnhancedID---"

  @97522    @validateAdvanceFilterValueForDateFieldAtEnhancedGridChildTable
  Scenario: validate Advance filter search  for date field at enhanced grid child table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Test Demo" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Test Demo"
    When I click on advance filter "#advfTmpGrantorActiveAwardsGrid" of table id "---program:-:tmpGrantorActiveAwardsGridTableId---"
    When I enter advance filter values inside id "advfTmpGrantorActiveAwardsGrid"
      | Budget Period | starts with | 11/1/2018 |
    Then I see value "11/1/2018--1/30/2020" for title "Budget Period" inside table "---program:-:tmpGrantorActiveAwardsGridTableId---"

  @97523    @validateAdvanceFilterValueForCurrencyFieldAndGreaterThanOperatorAtEnhancedGridParentTable
  Scenario: validate Advance filter search  for currency field at enhanced grid parent table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on advance filter "#advfTmpActiveGrantsGrid" of table id "---program:-:flexGridEnhancedID---"
    When I enter advance filter values inside id "advfTmpActiveGrantsGrid"
      | Total Award Obligated Amount | greater than | $690,000.00 |
    Then I see value "$700,000.00" for title "Total Award Obligated Amount" inside table "---program:-:flexGridEnhancedID---"

  @97524    @validateAdvanceFilterValueForCurrencyFieldAtEnhancedGridChildTable
  Scenario: validate Advance filter search  for currency field at enhanced grid child table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "Demo_Title"
    When I click on advance filter "#advfTmpGrantorActiveAwardsGrid" of table id "---program:-:tmpGrantorActiveAwardsGridTableId---"
    When I enter advance filter values inside id "advfTmpGrantorActiveAwardsGrid"
      | Total Awarded Amount | greater than | $50,000.00 |
    Then I see value "$52,000.00" for title "Total Awarded Amount" inside table "---program:-:tmpGrantorActiveAwardsGridTableId---"

  @97710    @validateQuickSearchBehaviourAtFlexTable-gPlanning @flexTable
  Scenario: validate quick search behaviour at flex table
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
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    Then I see record with text "{Framework_recordUsed:programForExpressionBuilderScenarios2}" in "---program:-:programTableDivId---"

  @95511    @validateIconCSSAtAccordionHeaderInsideSidebar-gPlanning @sidebar
  Scenario: validate icon is displayed as per configured at accordion header icon css field - gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Accordian Header      | Icon CSS  |                   | GrantorPlanning    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header      | Icon CSS  | govgrants_config:accordionHeaderIconCSSValue | GrantorPlanning    | Name                      | My Tasks                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "fa fa-home" icon displayed at "My Tasks" accordion header

  @97756    @enablePaginationFieldAtApplicationBudgetPeriodMEGridParentFlexTable-gApplication @flexGrid
  Scenario: validate enabling of page size dropdown at bottom in ME Grid parent flex table at application phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Pagination | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Pagination | true          | ApplicationBudgetCategoryFlexGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}" inside table
    When I navigate to "Budget" sub tab
    Then I see the text containing :
      | Page 1 of |

  @96574  @VerifyMiniPageLayoutShouldDisplayedProperlyOnMouseHoverAtPageDetailInEditMode @pageLayout
  Scenario Outline: validate that mini page layout is getting displayed properly on mouse hover at page detail in edit mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "3" seconds
    When I hover mouse on lookup link "Department of Community Health"
    Then I see "<miniPageLayout_Text>" shown inside mini page layout on hover

    Examples:
      | miniPageLayout_Text            |
      | Department of Community Health |

  @97758    @disablePaginationFieldAtApplicationBudgetPeriodMEGridParentFlexTable-gApplication @flexGrid
  Scenario: validate disable of page size dropdown at bottom in ME Grid parent flex table at application phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Pagination | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Pagination | false         | ApplicationBudgetCategoryFlexGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}" inside table
    When I navigate to "Budget" sub tab
    Then I do not see "Page" with pagination arrow at "---program:-:applicationBudgetCategoryFlexGridTableId---" at "Top"

  @97682    @enablingQuickSearchFromConfigAndFromCustomSetting-gPlanning @flexTable
  Scenario: validate enabling of quick search in flex table of programs from custom setting config-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                           | name                           |
      | true         | 0            | a0b1C00000OHGYIQA5 | to enable flex table quick search box | FlexTableEnableSearchAllFields |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           |                           |                            |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                           | name                           |
      | true         | 0            | a0b1C00000OHGYIQA5 | to enable flex table quick search box | FlexTableEnableSearchAllFields |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see quick search option is displayed

  @97688    @disableQuickSearchFromConfigAndFromCustomSetting-gPlanning @flexTable
  Scenario: validate disable of quick search in flex table of programs from custom setting config-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                           | name                           |
      | true         | 0            | a0b1C00000OHGYIQA5 | to enable flex table quick search box | FlexTableEnableSearchAllFields |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | false         | Programs           |                           |                            |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                           | name                           |
      | false        | 0            | a0b1C00000OHGYIQA5 | to enable flex table quick search box | FlexTableEnableSearchAllFields |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I do not see quick search option is displayed

  @98002    @validateThatAfterInlineAddingRecordAtMeGridARecordIsGettingSavedAndLoadingIconIsNotDisplayed @flexGrid
  Scenario: validate after inline adding new record at me grid a record is getting saved and loading icon is not displayed
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-214"
    When I click on "View" icon for "AP-755-214" inside table
    When I navigate to "Budget" sub tab
    And I perform quick search for "BP-09" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I click on "Delete" icon for "BP-09" inside table
    When I enter the following values into flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "New" :
      | Support Year |
      | BP-09        |
    Then I see the following messages in the page details :
      | Record Saved Successfully. |

  @99094    @validateQuickSearchRefreshBehaviourAtParentFlexTableForEnhancedGridAtSideBar-gHOME @sidebar
  Scenario: validate quick search refresh behaviour at enhanced grid at sidebar - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Refresh" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    Then I see "Page" with pagination arrow at "---program:-:flexGridEnhancedTableId---" at "Top"

  @98282    @validateQuickSearchRefreshBehaviourAtParentFlexTableForEnhancedGridAtSideBar-gHOME @sidebar
  Scenario: validate quick search refresh behaviour at enhanced grid at sidebar - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    Then I see expected table with id "---program:-:tmpActiveGrantsGridTableId---"

  @100014   @verifyLookupFieldSearchBoxIsDisplayedAtEnhancedGridWhileCreatingNewRecord-gPlanning @enhancedGrid
  Scenario: validate lookup field search box is displayed at enhanced grid while creating new record - gplanning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on top right button "New" in flex table with id "---program:-:flexGridEnhancedID---"
    Then I see "InternalOrganization__c" field is editable inside enhanced grid

  @99984   @verifyLookupFieldSearchBoxIsDisplayedAtEnhancedGridAtSidebar-gHome @sidebar
  Scenario: validate lookup field search box is displayed at enhanced grid at sidebar - gHome
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    When I perform quick search for "Demo_Title" in "---program:-:flexGridEnhancedTableId---" panel
    When I click on "Edit" icon for "Demo_Title" inside table
    Then I see "InternalOrganization__c" field is editable inside enhanced grid

  @97931   @verifyClickOnPageNavigationArrowAtMeGridASecondPageIsDisplayed-gApplications @flexGrid
  Scenario: validate 2nd page is displayed by click on page navigation arrow at me grid - gApplications
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}" inside table
    When I navigate to "Budget" sub tab
    And I click on page navigation arrow "---program:-:applicationBudgetCategoryInlineEditTableId---" for table id "Next"
    Then I see the text containing :
      | Page 2 of |

  @91800    @VerifyOverallTotalIsNotDisplayedAtChildFlexTableInsideMEGrid-gGrant @flexGrid
  Scenario Outline: Validating overall total is not displayed at child flex table under ME Grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table:General    | Enable Total Row    | true               | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Row    | false          | ApplicationBudgetCategoryFlexTable |                           |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetCategoryFlexTable |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-02" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I expand nested table containing column value "BP-02"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I do not see default total at "---program:-:applicationBudgetCategoryFlexGridTableId---" flex grid

    Examples:
      | defaultFieldsApi                                                                                     | newFieldsApi                                              |
      | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c |

  @98008    @validateThatAfterInlineEditingRecordAtMeGridARecordIsGettingSavedAndLoadingIconIsNotDisplayed @flexGrid
  Scenario: validate after inline editing record at me grid a record is getting saved and loading icon is not displayed
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-214"
    When I click on "View" icon for "AP-755-214" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I click on "Edit" icon for "BP-01" inside table
    When I click on top right button "Save" in flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---"
    And I pause execution for "3" seconds
    Then I see loader at "Application Budget" list view is not displayed

  @100657    @validateCurrencyFieldValueWithDollarSignIsDisplayProperlyAtPageBlockDetailInViewMode @pageLayout
  Scenario: Validate currency field value is displayed with $ sign inside page block detail in view mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I enter value "-500000" into field "ExpectedFunding__c"
    And I click on "Save" in the page details
    Then I see field "Expected Future Funding" as "($500,000)"

  @100658    @validateCurrencyFieldValueWithDollarSignIsDisplayProperlyAtPageBlockDetailInEditMode @pageLayout
  Scenario: Validate currency field value is displayed with $ sign inside page block detail in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Read Only | false             | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Read Only | true          | Grantee State Program | Name                      | PBD-688                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    Then I see field "Expected Future Funding" as "$50,000"

  @100200    @verifyThatTotalValueAndDollarSymbolIsRightAlignedInsideTable
  Scenario Outline: validate that total value and dollar symbol is right aligned inside table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ProjectCostForApplication |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-213"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-0001" in "---program:-:ProjectCostForApplicationFlexGridTableId---" panel
    Then I see currency field value at "---program:-:ProjectCostForApplicationFlexGridTableId---" table is right aligned

    Examples:
      | newFieldsApi                                                                  | defaultFieldsApi                                                                                                            |
      | Id,ProgramServiceArea__c,BudgetPeriod__c,Name,UnsecuredAmount__c,Narration__c | Id,ProgramServiceArea__c,BudgetPeriod__c,SourceType__c,Name,UnsecuredAmount__c,SecuredAmount__c,TotalAmount__c,Narration__c |

  @100501    @verifySnapshotIsGettingGeneratedAndSavedInsideHistoryTabIfPicklistValueIsChanged @wip @BugLogged_159864
  Scenario: validate if picklist value is changed and taken a snapshot then snapshot is getting generated inside history tab
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I enter value "Project Grants" into field "ProgramSubType__c"
    And I enter value "123" into field "FederalProgramCFDA__c"
    And I click on "Save and Close Modal" in the page details
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    And I pause execution for "4" seconds
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

  @103187    @validateCurrencyFieldFormattingAtTotalDisplayedUnderMeGridParentTable
  Scenario Outline: validating currency field formatting of total amount under me grid parent table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Total        | false              | ApiGeneratedId:0 |
      | Flex Table:General    | Enable Total Row    | true               | ApiGeneratedId:1 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total        | true           | ApplicationBudgetPeriods | Name                      | FTC-1520                   |
      | Flex Table:General    | Enable Total Row    | true           | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}" inside table
    When I navigate to "Budget" sub tab
    And I perform quick search for "BP-08" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I click on "Delete" icon for "BP-08" inside table
    When I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "New" :
      | Support Year | TestField |
      | BP-08        | 100000    |
    When I navigate to "Budget" sub tab
    Then I see total amount at "TestField" currency field is displayed in a correct format inside "---program:-:applicationBudgetCategoryFlexGridTableId---"

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                   |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,TestField__c |

  @103842    @validateCurrencyFieldFormattingAtValueDisplayedUnderCurrencyFieldMeGridParentTable
  Scenario Outline: validating field formatting of currency field value under me grid parent table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}" inside table
    When I navigate to "Budget" sub tab
    And I perform quick search for "BP-08" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I click on "Delete" icon for "BP-08" inside table
    When I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "New" :
      | Support Year | TestField |
      | BP-08        | 100000    |
    When I pause execution for "4" seconds
    And I perform quick search for "BP-08" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    Then I see value "$100,000.00" for title "TestField" inside table "---program:-:applicationBudgetCategoryFlexGridTableId---"

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                   |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,TestField__c |

  @103910    @validateNumberFieldFormattingWithCommasAtMeGridParentTable
  Scenario Outline: validating formatting of number field value under me grid parent table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-08" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I click on "Delete" icon for "BP-08" inside table
    When I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "New" :
      | Support Year | Sequence Number |
      | BP-08        | 100000          |
    When I pause execution for "4" seconds
    And I perform quick search for "BP-08" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    Then I see value "100,000" for title "Sequence Number" inside table "---program:-:applicationBudgetCategoryFlexGridTableId---"

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                        |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,SequenceNumber__c |

  @103906    @validateDecimalPlacesNotDisplayedUnderNumberFieldMeGridParentTable
  Scenario Outline: validating decimal places not displayed at number field value under me grid parent table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-08" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I click on "Delete" icon for "BP-08" inside table
    When I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "New" :
      | Support Year | Sequence Number |
      | BP-08        | 100000          |
    When I pause execution for "4" seconds
    And I perform quick search for "BP-08" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    Then I do not see value "100,000.00" for title "Sequence Number" inside table "---program:-:applicationBudgetCategoryFlexGridTableId---"

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                        |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,SequenceNumber__c |

  @103197    @validateNumberFieldFormattingAtTotalDisplayedUnderMeGridParentTable
  Scenario Outline: validating number field formatting of total amount under me grid parent table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Total        | false              | ApiGeneratedId:0 |
      | Flex Table:General    | Enable Total Row    | true               | ApiGeneratedId:1 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total        | true           | ApplicationBudgetPeriods | Name                      | FTC-1532                   |
      | Flex Table:General    | Enable Total Row    | true           | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}" inside table
    When I navigate to "Budget" sub tab
    And I perform quick search for "BP-10" in "---program:-:applicationBudgetCategoryInlineEditTableId---" panel
    When I click on "Delete" icon for "BP-10" inside table
    When I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "New" :
      | Support Year | Sequence Number |
      | BP-10        | 1000            |
    When I navigate to "Budget" sub tab
    Then I see total amount at "Sequence Number" number field is displayed in a correct format inside "---program:-:applicationBudgetCategoryFlexGridTableId---"

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                        |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,SequenceNumber__c |

  @112879    @verifyAutoSnapShotCapturedWithIsActiveFieldByLoginAsPMUser
  Scenario: Validate Auto Snapshot is getting captured after record submission as submit for approval for second time by login as PM user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                       | fieldOrignalValue | filterId         |
      | Auto Snapshot         | Is Active                       | false             | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active                       | true              | ApiGeneratedId:2 |
      | Page Layout Action    | History Snapshot-Action Enable? | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                       | fieldNewValue                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Auto Snapshot:Sobject Auto Snapshot | Is Active                       | true                                    | Program__c            | Name                      | SAS-0000                   |
      | Auto Snapshot:Sobject Auto Snapshot | Expression JSON                 | govgrants_config:SnapShotExpressionJSON | Program__c            | Name                      | SAS-0000                   |
      | Page Tabs Config:Page Layout Action | Is Active                       | true                                    | Grantee State Program | Name                      | TAB-027                    |
      | Page Layout Action                  | History Snapshot-Action Enable? | false                                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation_v" values from "Program_Field_Values.xlsx"
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
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "Start" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    When I "Send to Owner" in the approval decision
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" inside table
    And I click on "Submit For Approval" in the page details
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

  @116736    @validateFormulaTotalDisplayedAsOForNumberFieldIfAllTheValuesAreHiddenUsingHideLogic
  Scenario Outline: Validate formula total at number field is all cell values are hidden using hide cell json
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue               | filterId         |
      | Flex Table List           | Formula             |                                 | ApiGeneratedId:0 |
      | Flex Table List           | Hide Cell JSON      |                                 | ApiGeneratedId:1 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi>              | ApiGeneratedId:2 |
      | Flex Grid:Flex Table List | Filter Clause       | <defaultFilterClauseForFLV2539> | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue                                                        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Formula             | govgrants_config:FormulaFieldToDisplayFormulaAtLastRowAtEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1522                   |
      | Flex Table List           | Hide Cell JSON      | govgrants_config:HideCellJsonForEnhancedGridNumberField              | TmpActiveGrantsGrid | Name                      | FTC-1522                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>                                                       | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:Flex Table List | Filter Clause       | <newFilterClauseForFLV2539>                                          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    Then I see value "0" for title "NUMBER" inside table "---program:-:flexGridEnhancedID---"

    Examples:
      | newFieldsApi                             | defaultFieldsApi                                                                                                                                                                                                                                          | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                          |
      | Status__c,Name,ProjectTitle__c,NUMBER__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and NUMBER__c=100 |

  @116744    @validate%SignInFormulaTotalDisplayedAtPercentFieldIfAllTheValuesAreHiddenUsingHideLogic
  Scenario Outline: Validate % sign in formula total at percent field is all cell values are hidden using hide cell json
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue               | filterId         |
      | Flex Table List           | Formula             |                                 | ApiGeneratedId:0 |
      | Flex Table List           | Hide Cell JSON      |                                 | ApiGeneratedId:1 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi>              | ApiGeneratedId:2 |
      | Flex Grid:Flex Table List | Filter Clause       | <defaultFilterClauseForFLV2539> | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue                                                        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Formula             | govgrants_config:FormulaFieldToDisplayFormulaAtLastRowAtEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1523                   |
      | Flex Table List           | Hide Cell JSON      | govgrants_config:HideCellJsonForEnhancedGridNumberField              | TmpActiveGrantsGrid | Name                      | FTC-1523                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>                                                       | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:Flex Table List | Filter Clause       | <newFilterClauseForFLV2539>                                          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    Then I see value "0.00%" for title "PercentTest" inside table "---program:-:flexGridEnhancedID---"

    Examples:
      | newFieldsApi                                  | defaultFieldsApi                                                                                                                                                                                                                                          | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                          |
      | Status__c,Name,ProjectTitle__c,PercentTest__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and NUMBER__c=100 |

  @116741    @validateFormulaTotalDisplayedAtPercentFieldIfAllTheValuesAreHiddenUsingHideLogic
  Scenario Outline: Validate formula total at percent field is all cell values are hidden using hide cell json
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue               | filterId         |
      | Flex Table List           | Formula             |                                 | ApiGeneratedId:0 |
      | Flex Table List           | Hide Cell JSON      |                                 | ApiGeneratedId:1 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi>              | ApiGeneratedId:2 |
      | Flex Grid:Flex Table List | Filter Clause       | <defaultFilterClauseForFLV2539> | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue                                                        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Formula             | govgrants_config:FormulaFieldToDisplayFormulaAtLastRowAtEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1523                   |
      | Flex Table List           | Hide Cell JSON      | govgrants_config:HideCellJsonForEnhancedGridNumberField              | TmpActiveGrantsGrid | Name                      | FTC-1523                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>                                                       | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:Flex Table List | Filter Clause       | <newFilterClauseForFLV2539>                                          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    Then I see value "0.00%" for title "PercentTest" inside table "---program:-:flexGridEnhancedID---"

    Examples:
      | newFieldsApi                                  | defaultFieldsApi                                                                                                                                                                                                                                          | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                          |
      | Status__c,Name,ProjectTitle__c,PercentTest__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and NUMBER__c=100 |

  @116722    @validateFormulaTotalDisplayedAtCurrencyFieldIfAllTheValuesAreHiddenUsingHideLogic
  Scenario Outline: Validate formula total at currency field if all cell values are hidden using hide cell json
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue               | filterId         |
      | Flex Table List           | Formula             |                                 | ApiGeneratedId:0 |
      | Flex Table List           | Hide Cell JSON      |                                 | ApiGeneratedId:1 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi>              | ApiGeneratedId:2 |
      | Flex Grid:Flex Table List | Filter Clause       | <defaultFilterClauseForFLV2539> | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue                                                        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Formula             | govgrants_config:FormulaFieldToDisplayFormulaAtLastRowAtEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
      | Flex Table List           | Hide Cell JSON      | govgrants_config:HideCellJsonForEnhancedGridNumberField              | TmpActiveGrantsGrid | Name                      | FTC-1491                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>                                                       | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:Flex Table List | Filter Clause       | <newFilterClauseForFLV2539>                                          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    Then I see value "$0.00" for title "Total Award Obligated Amount" inside table "---program:-:flexGridEnhancedID---"

    Examples:
      | newFieldsApi                                                | defaultFieldsApi                                                                                                                                                                                                                                          | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                          |
      | Status__c,Name,ProjectTitle__c,TotalAwardObligatedAmount__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and NUMBER__c=100 |

  @116738    @validateLookupFieldIsNotEditableIfAllTheValuesAreHiddenUsingHideLogic
  Scenario Outline: Validate lookup field is not editable if all cell values are hidden using hide cell json
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue               | filterId         |
      | Flex Table List           | Formula             |                                 | ApiGeneratedId:0 |
      | Flex Table List           | Hide Cell JSON      |                                 | ApiGeneratedId:1 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi>              | ApiGeneratedId:2 |
      | Flex Grid:Flex Table List | Filter Clause       | <defaultFilterClauseForFLV2539> | ApiGeneratedId:3 |
      | Flex Table List           | Display Field       |                                 | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue                                                        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Formula             | govgrants_config:FormulaFieldToDisplayFormulaAtLastRowAtEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1487                   |
      | Flex Table List           | Hide Cell JSON      | govgrants_config:HideCellJsonForEnhancedGridNumberField              | TmpActiveGrantsGrid | Name                      | FTC-1487                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>                                                       | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:Flex Table List | Filter Clause       | <newFilterClauseForFLV2539>                                          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Table List           | Display Field       |                                                                      | TmpActiveGrantsGrid | Name                      | FTC-1486                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    When I perform quick search for "GT-MAC-1-001" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "GT-MAC-1-001" inside table
    Then I see lookup field "*****" is in view mode

    Examples:
      | newFieldsApi                                           | defaultFieldsApi                                                                                                                                                                                                                                          | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                          |
      | Status__c,Name,ProjectTitle__c,ExternalOrganization__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and NUMBER__c=100 |

  @116735    @validateAsteriskMarkDisplayedInsideCurrencyFieldColumnIfAllTheValuesAreHiddenUsingHideLogic
  Scenario Outline: Validate lookup field is not editable if all cell values are hidden using hide cell json
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue               | filterId         |
      | Flex Table List           | Formula             |                                 | ApiGeneratedId:0 |
      | Flex Table List           | Hide Cell JSON      |                                 | ApiGeneratedId:1 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi>              | ApiGeneratedId:2 |
      | Flex Grid:Flex Table List | Filter Clause       | <defaultFilterClauseForFLV2539> | ApiGeneratedId:3 |
      | Flex Table List           | Display Field       |                                 | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue                                                        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List           | Formula             | govgrants_config:FormulaFieldToDisplayFormulaAtLastRowAtEnhancedGrid | TmpActiveGrantsGrid | Name                      | FTC-1487                   |
      | Flex Table List           | Hide Cell JSON      | govgrants_config:HideCellJsonForEnhancedGridNumberField              | TmpActiveGrantsGrid | Name                      | FTC-1487                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>                                                       | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:Flex Table List | Filter Clause       | <newFilterClauseForFLV2539>                                          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Table List           | Display Field       |                                                                      | TmpActiveGrantsGrid | Name                      | FTC-1486                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    Then I see "*****" shown inside enhanced grid table for specified record "GT-MAC-1-001"

    Examples:
      | newFieldsApi                                           | defaultFieldsApi                                                                                                                                                                                                                                          | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                          |
      | Status__c,Name,ProjectTitle__c,ExternalOrganization__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and NUMBER__c=100 |

  @118821    @validateCreatedByStandardFieldValueIsDisplayProperlyAtPageBlockDetailInEditMode @pageLayout
  Scenario: Validate created by standard field value is displayed inside page block detail in edit mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see field "Created By" as "Nauman Shahid"

  @118822    @validateCreatedByStandardFieldValueIsDisplayProperlyAtPageBlockDetailInViewMode @pageLayout
  Scenario: Validate created by standard field value is displayed inside page block detail in view mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see field "Created By" as "Nauman Shahid"

  @118836    @validateQuickSearchDisplayedRelevantDataIfSearchPicklistValueAtFlexTableInsideModal  @pageLayout
  Scenario: Validate quickSearch displayed relevant data if searched picklist value at flex table inside modal
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    Then I see value "Internal" for title "Type" inside table "---program:-:contactsTableId---"

  @117577    @validateDecimalPlacesDisplayedAtPercentFieldInsideEGrid
  Scenario Outline: Validate decimal places displayed at percent field inside enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue               | filterId         |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi>              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Filter Clause       | <defaultFilterClauseForFLV2539> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>              | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:Flex Table List | Filter Clause       | <newFilterClauseForFLV2539> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    And I click toggle button to select "Monitoring Schedule For All Active Grants"
    Then I see value "0.00%" for title "PercentTest" inside table "---program:-:flexGridEnhancedID---"

    Examples:
      | newFieldsApi                                  | defaultFieldsApi                                                                                                                                                                                                                                          | defaultFilterClauseForFLV2539                    | newFilterClauseForFLV2539                                          |
      | Status__c,Name,ProjectTitle__c,PercentTest__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | RecordType.Name='Grantor' and status__c='Active' | RecordType.Name='Grantor' and status__c='Active' and NUMBER__c=100 |

  @116139    @VerifyDefaultTotalIsNotDisplayedAtCurrencyFieldAtMEGrid-gPlanning @wip
  Scenario Outline: Validating default total is not displayed for currency field inside ME Grid-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Total        | false              | ApiGeneratedId:0 |
      | Flex Table:General    | Enable Total Row    | true               | ApiGeneratedId:1 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total        | false          | ApplicationBudgetPeriods | Name                      | FTC-1520                   |
      | Flex Table:General    | Enable Total Row    | false          | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I do not see default total at "---program:-:applicationBudgetCategoryFlexGridTableId---" flex grid

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                   |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,TestField__c |

  @116140    @VerifyDefaultTotalIsNotDisplayedAtCurrencyFieldAtMEGridInPageEditMode-gPlanning @wip
  Scenario Outline: Validating default total is not displayed for currency field inside ME Grid in page edit mode-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Enable Total        | false              | ApiGeneratedId:0 |
      | Flex Table:General    | Enable Total Row    | true               | ApiGeneratedId:1 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total        | false          | ApplicationBudgetPeriods | Name                      | FTC-1520                   |
      | Flex Table:General    | Enable Total Row    | false          | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Plan" sub tab
    Then I do not see default total at "---program:-:applicationBudgetCategoryFlexGridTableId---" flex grid

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                   |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,TestField__c |

  @121156  @verifySubTabDisplayedWhileCreatingNewRecordAtProgram
  Scenario: validate that all sub tabs displayed while creating new records at program
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    Then I softly see "Overview" sub tab is displayed at view detail page
    Then I softly see "Plan" sub tab is displayed at view detail page
    Then I softly see "Roles" sub tab is displayed at view detail page
    Then I softly see "Financials" sub tab is displayed at view detail page
    Then I softly see "Terms & Conditions" sub tab is displayed at view detail page
    Then I softly see "Log" sub tab is displayed at view detail page
    Then I softly see "Attachments" sub tab is displayed at view detail page
    Then I softly see "History" sub tab is displayed at view detail page

  @121203  @verifyThatTopRightEditActionIsWorkingAtPageDetails
  Scenario: validate that if user clicks on edit action at page detail then edit page opens
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    And I click on "Edit" in the page details
    Then I see "ProgramEdit" in current url

  @121221  @verifyThatErrorMessageNotDisplayedAtProgramEditDetailPage
  Scenario: validate that if user clicks on edit action at program table then edit page opens without error message
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I cannot see the following message in the page details contains:
      | Attempt to de-reference a null object |

  @121220  @verifyThatErrorMessageNotDisplayedAtProgramViewDetailPage
  Scenario: validate that if user clicks on edit action at program table then view page opens without error message
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I cannot see the following message in the page details contains:
      | Attempt to de-reference a null object |

  @121594 @validateThatIfDataIsNotPresentThenNoRecordFoundDisplayedInsideMEGridParentTable
  Scenario: Verify that if data is not present then, no record found is displayed inside me grid parent table - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Plan" sub tab
    When I perform quick search for "Demo_Title" in "---program:-:programOutComesTableId---" panel
    Then I see "No Records Found" inside flex table with id "---program:-:programOutComesTableId---"

  @121616    @verifyThatMoreActionsDropdownDisplayedAtAttachedFileAtCommentAtCollabPhase
  Scenario: validate that more actions dropdown is displayed at attached file at comment inside collab phase
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I pause execution for "3" seconds
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I enter value as "Temp Post Automation description" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    Then I softly see "SendEmailAttachment.pdf" inside flex table with id "---program:-:myFeedTableId---"
    And I enter value "Collab Phase sharing temporary comment" in my feed section and share the comment
    And I click on "More Actions" action at "Collab Phase sharing temporary comment" comment inside my feed
    Then I see More Actions dropdown window displayed at collab
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @121615    @verifyThatMoreActionsDropdownDisplayedAtAttachedFileAtCommentAtHomePhase
  Scenario: validate that more actions dropdown is displayed at attached file at comment inside home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
      | Charts Config         | Active    | true              | ApiGeneratedId:1 |
      | Charts Config         | Active    | true              | ApiGeneratedId:2 |
      | Charts Config         | Active    | true              | ApiGeneratedId:3 |
      | Charts Config         | Active    | true              | ApiGeneratedId:4 |
      | Charts Config         | Active    | true              | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Dual Axes                    |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | GrantPerformanceScatterClsBased       |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Line                         |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Bubble                       |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Dual Axes 1                  |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I pause execution for "5" seconds
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I enter value as "Temp Post Automation description" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "× " icon at "Add Files" modal after Email Sent Successfully
    Then I softly see "SendEmailAttachment.pdf" inside flex table with id "---program:-:myFeedTableId---"
    And I enter value "Automation file upload at record post collab" in my feed section and share the comment
    And I navigate to "Collab" tab
    When I pause execution for "3" seconds
    And I click on "More Actions" action at "Automation file upload at record post collab" comment inside my feed
    Then I see More Actions dropdown window displayed at collab
    When I pause execution for "3" seconds
    And I navigate to "Collab" tab
    And I pause execution for "3" seconds
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "10" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @121379    @vverifyThatQuickSearchIsWorkProperlyForMultiPicklistAtFlexTable-gMonitoring
  Scenario Outline: validate that quick search is working for multi picklist field at flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantorAmendmentRequests |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Amendment Requests" content inside "Activities" subheader on left panel
    When I perform quick search for "Test value 1"
    And I pause execution for "3" seconds
    Then I see the text :
      | Test value 1 |

    Examples:
      | newFieldsApi                                                                | defaultFieldsApi                                |
      | Name,Award__c,RecordType__c,KeyPOC__c,Status__c,Test_multipicklist_field__c | Name,Award__c,RecordType__c,KeyPOC__c,Status__c |

  @121366    @hideExpressioJsonForRightOperandForUserType-Applicant-gAnnouncement
  Scenario: validate disabling of create button for user type Appplicant from Announcement-Program
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField            | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Announcement Create - Grantor | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                   | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HideExpressionJSONToHideReqFieldAndCreateModal | Announcement Create - Grantor | Name                      | PBD-6759                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on top right button "Create" in flex table with id "ActiveFundingOpportunities"
    When I enter value "PG-343-0034" into field "Program__c"
    And I click modal button "Continue"
    Then I cannot see the following message in the page details contains:
      | Announcement Type is required to save. |

  @121722    @VerifyAtProgramCreationModalIfWeClickOnCancelButtonThenUserIsRedirectedToDraftProgramFlexTable
  Scenario: Validate that a draft program table is displayed by click on cancel button at record creation
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click on "Cancel" in the page details
    Then I see expected table with id "toggleFlexTablePrograms"

  @121744    @verifyThatMoreActionsDropdownDisplayedAtAttachedFileAtCommentAtCollabPhase
  Scenario: validate that more actions dropdown is displayed at attached file at comment inside collab phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    And I click on "More Options" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    Then I see More Actions dropdown window displayed at collab

  @121310    @verifyThatExpandCollapsedIconsDisplayedAtSidebarForAdminUser
  Scenario: validate that expand collapsed icons are displayed at sidebar for admin user
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "HOME" tab
    Then I softly see plus icon is displayed at "Support" menu inside sidebar
    Then I softly see minus icon is displayed at "Tasks" menu inside sidebar

  @121311    @verifyThatExpandCollapsedIconsDisplayedAtSidebarForPMUser
  Scenario: validate that expand collapsed icons are displayed at sidebar for PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantee"
    And I navigate to "HOME" tab
    Then I softly see plus icon is displayed at "Useful Links" menu inside sidebar
    Then I softly see minus icon is displayed at "Tasks" menu inside sidebar

  @121312    @verifyThatExpandCollapsedIconsDisplayedAtSidebarForSPIUser
  Scenario: validate that expand collapsed icons are displayed at sidebar for SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    Then I softly see plus icon is displayed at "Recently Viewed" menu inside sidebar
    Then I softly see minus icon is displayed at "Tasks" menu inside sidebar

  @121623    @verifyThatAttachedFileIsGettingRemovedFromMyFeedSectionIfClickOnCancelButtonAfterFileUploadedFromHomePhase
  Scenario: validate that file attached to any post can be removed by click on cancel button at collab Home Phase
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I navigate to "HOME" tab
    And I pause execution for "10" seconds
    And I click on "Comment" action at "Automation Test Data - Post DND" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    When I upload file "CollabFileVanish.pdf" into library with sharing
    When I enter value as "test Automation" in field "Description" at Library Files
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I pause execution for "3" seconds
    And I click on "Cancel" button at collab
    Then I do not see attached file as "CollabFileVanish.pdf" inside collab my feed
    And I navigate to "Collab" tab
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"


  @121981    @verifyThatAttachedFileIsGettingRemovedFromMyFeedSectionIfClickOnCancelButtonAfterFileUploadedFromRecordLevel
  Scenario: validate that file attached to any post can be removed by click on cancel button at collab record level
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "CollabFileVanish.pdf" into library with sharing
    When I enter value as "test Automation" in field "Description" at Library Files
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    Then I do not see attached file as "CollabFileVanish.pdf" inside collab my feed

  @121624    @verifyThatAttachedFileIsGettingRemovedFromMyFeedSectionIfClickOnCancelButtonAfterFileUploadedFromCollabPhase
  Scenario: validate that file attached to any post can be removed by click on cancel button at collab phase
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I pause execution for "10" seconds
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "CollabFileVanish.pdf" into library with sharing
    When I enter value as "test Automation" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Cancel" button at collab
    Then I do not see attached file as "CollabFileVanish.pdf" inside collab my feed
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @121619    @verifyThatAttachedFileFromHomePhaseIsGettingDisplayedAtFilesList-HomePhase @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file attached to any post from home phase is displayed at files list tab at Home Phase
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    When I upload file "CollabFileTemp.pdf" into library
    When I enter value as "test Automation" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I enter value "Temporary Comment" in my feed section and share the comment
    Then I softly see "CollabFileTemp.pdf" inside flex table with id "---program:-:myFeedTableId---"
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "CollabFileTemp.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "CollabFileTemp.pdf" for title "Title" inside table "---program:-:workSpaceFilesFlexTableId---"
    And I refresh the page
    And I click on "Delete" action at "Temporary Comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    Then I do not see attached file as "CollabFileTemp.pdf" inside collab my feed

  @121621    @verifyThatFileAttachedFromCollabPhaseIsGettingDisplayedAtFilesList-HomePhase @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file attached to any post from collab phase is displayed at files list tab at Home Phase
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "CollabFileTemp.pdf" into library
    When I enter value as "test Automation" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I enter value "Collab Phase temporary comment" in my feed section and share the comment
    Then I softly see "CollabFileTemp.pdf" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "CollabFileTemp.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "CollabFileTemp.pdf" for title "Title" inside table "---program:-:workSpaceFilesFlexTableId---"
    And I navigate to "Collab" tab
    And I click on "Delete" action at "Collab Phase temporary comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    Then I do not see attached file as "CollabFileTemp.pdf" inside collab my feed

  @121985    @verifyThatFileAttachedFromRecordLevelIsGettingDisplayedAtFilesList-HomePhase @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file attached to any post from record level is displayed at files list tab at Home Phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "CollabFileVanish.pdf" into library
    When I enter value as "test Automation" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    And I enter value "Collab Phase temporary comment" in my feed section and share the comment
    Then I softly see "CollabFileVanish.pdf" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "CollabFileVanish.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "CollabFileVanish.pdf" for title "Title" inside table "---program:-:workSpaceFilesFlexTableId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Delete" action at "Collab Phase temporary comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    Then I do not see attached file as "CollabFileVanish.pdf" inside collab my feed

  @125731    @verifyThatFileAttachedOnGroupPostFromCollabPhaseIsGettingDisplayedAtFilesList-HomePhase @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file attached at group post from collab phase is displayed at files list tab at Home Phase
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I click on "Comment" action at "Automation Testing Group" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "CollabFileTemp.pdf" into library
    When I enter value as "test Automation" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I enter value "Collab Phase temporary comment group" in my feed section and share the comment
    Then I softly see "CollabFileTemp.pdf" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "CollabFileTemp.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "CollabFileTemp.pdf" for title "Title" inside table "---program:-:workSpaceFilesFlexTableId---"
    And I navigate to "Collab" tab
    And I click on "Delete" action at "Collab Phase temporary comment group" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    Then I do not see attached file as "CollabFileTemp.pdf" inside collab my feed

  @125735    @verifyThatFileAttachedFromRecordLevelAndDeletedFromRecordIsNotDisplayedAtFilesList-HomePhase @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file attached to any post from record level and deleted from record is not displayed at files list tab at Home Phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "CollabFileVanish.pdf" into library
    When I enter value as "test Automation" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I enter value "Collab Phase temporary comment" in my feed section and share the comment
    Then I softly see "CollabFileVanish.pdf" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Collab Phase temporary comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    Then I do not see attached file as "CollabFileVanish.pdf" inside collab my feed
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "CollabFileVanish.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:workSpaceFilesFlexTableId---"

  @125734  @verifyThatFileAttachedFromRecordLevelIsDisplayedAtRecordLevelAndHomeAndCollabPhase @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file attached to any post from record level is displayed at Home Phase, Collab Phase And record level
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "CollabFileVanish.pdf" into library
    When I enter value as "test Automation" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I enter value "Collab Phase temporary comment" in my feed section and share the comment
    Then I softly see "CollabFileVanish.pdf" inside flex table with id "---program:-:myFeedTableId---"

  #125734 - file uploaded from record level is visible at home phase files list section
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "CollabFileVanish.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see "CollabFileVanish.pdf" inside flex table with id "---program:-:workSpaceFilesFlexTableId---"

  #125734 - file uploaded from record level is visible at collab phase files list section
    And I navigate to "Collab" tab
    Then I softly see "CollabFileVanish.pdf" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Delete" action at "Collab Phase temporary comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    Then I do not see attached file as "CollabFileVanish.pdf" inside collab my feed

  @125742    @verifyThatFileAttachedFromCollabPhaseOnRecordPostAndAlsoDeletedFromCollabPhaseIsNotDisplayedAtHomeAndRecordLevel @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file uploaded and deleted from collab phase at record level post is also removed from Home Phase and respective record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "CollabFileTemp.pdf" into library
    When I enter value as "test Automation" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I enter value "Collab Phase temporary comment" in my feed section and share the comment
    Then I softly see "CollabFileTemp.pdf" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Collab Phase temporary comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    Then I do not see attached file as "CollabFileTemp.pdf" inside collab my feed

  #125742 - file uploaded and deleted from collab phase at record level post is also removed from respective record
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "CollabFileTemp.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:workSpaceFilesFlexTableId---"

  #125742 - file uploaded and deleted from collab phase at record level post is also removed from respective record
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    Then I do not see attached file as "CollabFileTemp.pdf" inside collab my feed

  @125744    @verifyThatFileAttachedFromCollabPhaseOnRecordPostAndDeletedFromRecordIsNotDisplayedAtHomeAndRecordLevel @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file uploaded from collab phase and deleted from record level is also removed from Home Phase and respective record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "CollabFileTemp.pdf" into library
    When I enter value as "test Automation" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I enter value "Collab Phase temporary comment" in my feed section and share the comment
    Then I softly see "CollabFileTemp.pdf" inside flex table with id "---program:-:myFeedTableId---"

  #125744 - file uploaded from collab phase and deleted from record level is also removed from respective record
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Delete" action at "Collab Phase temporary comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    Then I do not see attached file as "CollabFileTemp.pdf" inside collab my feed

  #125744 - file uploaded from collab phase and deleted from record level is also removed from home phase
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "CollabFileTemp.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:workSpaceFilesFlexTableId---"

  @125746    @verifyThatFileAttachedFromRecordLevelCollabTabAndDeletedFromHomePhaseFilesListIsNotDisplayedAtHomeAndRecordLevel @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file uploaded from collab tab and deleted from home files list is removed from Home Phase and respective record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "CollabFileTemp.pdf" into library
    When I enter value as "test Automation" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I enter value "Collab Phase temporary comment" in my feed section and share the comment
    Then I softly see "CollabFileTemp.pdf" inside flex table with id "---program:-:myFeedTableId---"

  #125746 - file uploaded from collab tab and deleted from home files list is removed from Home files list
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "CollabFileTemp.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "CollabFileTemp.pdf" for title "Title" inside table "---program:-:workSpaceFilesFlexTableId---"
    When I click on "Delete" icon for "CollabFileTemp.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "CollabFileTemp.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:workSpaceFilesFlexTableId---"

  #125746 - file uploaded from collab tab and deleted from home files list is also removed from record level
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    Then I do not see attached file as "CollabFileTemp.pdf" inside collab my feed

  #125746 - file uploaded from collab tab and deleted from home files list is also removed from collab phase
    And I navigate to "Collab" tab
    Then I softly do not see "CollabFileTemp.pdf" inside flex table with id "---program:-:myFeedTableId---"

  @130574    @validateThatIfSharingOptionIsNotSelectedThenUploadButtonIsDisabledAtCollabPhase @libraryFiles
  Scenario: Verify that Upload button is disabled when user has not selected sharing options at collab phase
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I pause execution for "3" seconds
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "CollabFileVanish.pdf" into library
    When I select sharing option as "Select visibility options" at upload file modal
    When I enter value as "test Automation" in field "Description" at Library Files
    Then I see "Upload" button is disabled at modal under library

  @130577    @validateThatIfSharingOptionIsNotSelectedThenUploadButtonIsDisabledAtRecordLevelCollabTabWhenCustomPermissionIsEnabled @wip @functionalityDeprecated
  Scenario: Verify that Upload button is disabled when user has not selected sharing options at record detail- collab tab when custom permission is enabled
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Custom Permission Enabled user - record level post DND" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "CollabFileVanish.pdf" into library
    When I enter value as "test Automation" in field "Description" at Library Files
    When I select sharing option as "Select visibility options" at upload file modal
    Then I see "Upload" button is disabled at modal under library

  @130577    @validateThatIfSharingOptionIsNotSelectedThenUploadButtonIsDisabledAtRecordLevelCollabTabWhenCustomPermissionIsEnabled @libraryFiles
  Scenario: Verify that Upload button is disabled when user has not selected sharing options at record detail- collab tab when custom permission is enabled
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Custom Permission Enabled user - record level post DND" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "CollabFileVanish.pdf" into library
    When I enter value as "test Automation" in field "Description" at Library Files
    When I select sharing option as "Select visibility options" at upload file modal
    Then I see "Upload" button is disabled at modal under library

  @130578    @validateThatIfSharingOptionIsNotSelectedThenUploadButtonIsDisabledAtCollabPhaseWhenCustomPermissionIsEnabled @libraryFiles
  Scenario: Verify that Upload button is disabled when user has not selected sharing options at collab phase when custom permission is enabled
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I pause execution for "3" seconds
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    And I pause execution for "3" seconds
    When I upload file "CollabFileVanish.pdf" into library
    And I pause execution for "3" seconds
    When I select sharing option as "Select visibility options" at upload file modal
    Then I see "Upload" button is disabled at modal under library

  @130104    @validateThatIfFileUploadedFromHomePhaseAtRecordLevelPostIsDisplayedInsideFilesTableOnThatRecord @libraryFiles @wip @needToUpdate @classificationMissing
  Scenario: Verify that if file uploaded on record level post from home phase-My feed section is displayed on respective record inside files table
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    When I upload file "CollabFileVanish.pdf" into library with sharing
    When I enter value as "test Automation" in field "Description" at Library Files
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I enter value "Collab temp" in my feed section and share the comment
    Then I softly see "CollabFileVanish.pdf" inside flex table with id "---program:-:myFeedTableId---"
 #130104 verify if the uploaded file is displayed at record detail page in attachment tab
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "CollabFileVanish.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "CollabFileVanish.pdf" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "CollabFileVanish.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "CollabFileVanish.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I navigate to "HOME" tab
    And I click on "Delete" action at "Collab temp" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    Then I softly do not see "Collab temp" comment inside "Test Automation Post For collab attachment functionality check - record level" post at collab

  @130106    @validateThatIfFileUploadedFromHomePhaseAtRecordLevelPostIsEditableInsideFilesTableOnThatRecord @libraryFiles @wip @needToUpdate @classificationMissing
  Scenario: Verify that if file uploaded on record level post from home phase-My feed section is editable on respective record inside files table
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Custom permission given user - record post DND" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    When I upload file "CollabFileVanish.pdf" into library with sharing
    When I enter value as "test Automation" in field "Description" at Library Files
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I enter value "Collab temp" in my feed section and share the comment
    Then I softly see "CollabFileVanish.pdf" inside flex table with id "---program:-:myFeedTableId---"
 #130106 verify if the uploaded file is editable at record detail page in attachment tab
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "CollabFileVanish.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "CollabFileVanish.pdf" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Edit" icon for "CollabFileVanish.pdf" inside table
    When I enter value as "CollabFileVanishUpdated.pdf" in field "Title" at Library Files
    When I click on "Save" button in send email modal
    When I perform quick search for "CollabFileVanishUpdated.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "CollabFileVanishUpdated.pdf" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
 #130106 verify if updated file name is displayed at home - my feed section comment
    And I navigate to "HOME" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    Then I softly see "CollabFileVanishUpdated.pdf" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Collab temp" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    Then I softly do not see "Collab temp" comment inside "Custom permission given user - record post DND" post at collab

  @129994   @validateMaximum5FilesCanBeUploadedMessageAtUploadFileMOodalAtCollabMyFeed-Home
  Scenario: Verify that maximum 5 files can be uploaded msg at upload file modal at collab my feed - home
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I click on "Upload File from Library" tab at files library upload modal
    Then I do not see information as "Maximum of 5 files can be selected." at files library upload modal

  @129993    @validateThatOnlyOneFileCanBeUploadedFromHomePhaseMyFeedSectionAtRecordLevelPost @wip @needToUpdate
  Scenario: Verify that only one file can be uploaded on record level post from home phase-My feed section
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "MultipleFileUploadCollabDND.png" into library with sharing
    When I enter value as "Collab File uploaded for multiple upload check DND" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I perform quick search for "MultipleFileUploadCollabDND.png" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "MultipleFileUploadCollabDND.png" for title "Title" inside table "---program:-:workSpaceFilesFlexTableId---"
 #129993 Attach file from home phase and validate- my feed section
    And I navigate to "HOME" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "MultipleFileUploadCollabDND.png" in "WorkspaceFiles" panel
    When I check "MultipleFileUploadCollabDND.png" boxes in flex table with id "WorkspaceFiles"
    When I click on top right button "Attach" in flex table with id "WorkspaceFiles"
    And I enter value "Collab Phase temporary comment delete" in my feed section and share the comment
    Then I softly see "MultipleFileUploadCollabDND.png" inside flex table with id "---program:-:myFeedTableId---"
 #129993 delete comment from home phase -my feed section
    And I click on "Delete" action at "Collab Phase temporary comment delete" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    Then I softly do not see "Collab Phase temporary comment delete" comment inside "Test Automation Post For collab attachment functionality check - record level" post at collab
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "MultipleFileUploadCollabDND.png" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:workSpaceFilesFlexTableId---"

  @129992  @validateThatOnlyOneFileCanBeUploadedFromCollabPhaseMyFeedSectionAtRecordLevelPost @wip @facingIssueOfDuplicateFileUpload
  Scenario: Verify that only one file can be uploaded on record level post from collab phase-My feed section
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "MultipleFileUploadCollabDND.png" into library with sharing
    When I enter value as "Collab File uploaded for multiple upload check DND" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I perform quick search for "MultipleFileUploadCollabDND.png" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "MultipleFileUploadCollabDND.png" for title "Title" inside table "---program:-:workSpaceFilesFlexTableId---"
 #129992 Attach file from collab phase and validate in collab my feed section
    And I navigate to "Collab" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "MultipleFileUploadCollabDND.png" in "WorkspaceFiles" panel
    When I check "MultipleFileUploadCollabDND.png" boxes in flex table with id "WorkspaceFiles"
    When I click on top right button "Attach" in flex table with id "WorkspaceFiles"
    And I enter value "Collab Phase temporary comment delete" in my feed section and share the comment
    Then I softly see "MultipleFileUploadCollabDND.png" inside flex table with id "---program:-:myFeedTableId---"
 #129992 delete comment from collab phase -my feed section
    And I click on "Delete" action at "Collab Phase temporary comment delete" comment inside my feed
    And I click modal button "OK"
    Then I softly do not see "MultipleFileUploadCollabDND.png" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "MultipleFileUploadCollabDND.png" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:workSpaceFilesFlexTableId---"

  @132366    @VerifyAttachmentShownInsideInboxWhileSendingInvitaion
  Scenario:validate attachment shown inside inbox while sending invitation
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Internal Organization(s)" content inside "Manage Organizations" subheader on left panel
    When I click on "View" icon for "Secretary of Health" inside table
    When I perform quick search for "Henry PM" in "toggleFlexTableContactsByAccount" panel
    When I click on "send invitation" icon for "Henry PM" inside table
    When I enter value "qateamrei@yopmail.com" into field "{testData:CcField}" on send email modal
    When I upload file "CollabFileTemp.pdf" into library
    When I click modal button "Send"
    When I close modal by clicking the top right x button
    And I checkout to yopmail with mailid "qateamrei@yopmail.com"
    And I pause execution for "120" seconds
    And I refresh the page
    Then I see the text :
      | CollabFileTemp.pdf |

  @130103    @verifyThatFileAttachedAtRecordLevelCommentIsDisplayedAtRespectiveRecordDetailsPlanningFilesTable @libraryFiles @wip @needToUpdate @classificationMissing
  Scenario: validate that file attached to any record level post is displayed inside attachment tab at respective record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    When I upload file "captureModalFields.png" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I enter value "Automation file upload at record post collab" in my feed section and share the comment
 #130103 upload file from collab - home phase
    Then I softly see "captureModalFields.png" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "captureModalFields.png" in "---program:-:PlanningFilesFlexGridId---" panel
 #130103 file uploaded from home phase is displayed inside attachment tab - record detail
    Then I softly see value "captureModalFields.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    And I navigate to "HOME" tab
    And I click on "Delete" action at "Automation file upload at record post collab" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
 #130103 file is deleted from - home phase
    Then I softly do not see "Automation file upload at record post collab" comment inside "Test Automation Post For collab attachment functionality check - record level" post at collab
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "captureModalFields.png" in "---program:-:PlanningFilesFlexGridId---" panel
 #130103 file deleted from home phase comment is also gets removed from attachment tab-  record detail page
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @130105    @verifyThatFileAttachedAtRecordLevelCommentIsDisplayedAtRespectiveRecordDetailsCollabTab @libraryFiles @wip @needToUpdate @classificationMissing
  Scenario: validate that file attached to any record level post is displayed inside collab tab at respective record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    When I upload file "captureModalFields.png" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I enter value "Automation file upload at record post collab" in my feed section and share the comment
 #130105 uploaded file from collab is displayed at collab tab - home phase
    Then I softly see "captureModalFields.png" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    Then I softly see "captureModalFields.png" inside flex table with id "collabContainer"
    And I navigate to "HOME" tab
    And I click on "Delete" action at "Automation file upload at record post collab" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
 #130105 file is deleted from - home phase
    Then I softly do not see "Automation file upload at record post collab" comment inside "Test Automation Post For collab attachment functionality check - record level" post at collab
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "captureModalFields.png" in "---program:-:PlanningFilesFlexGridId---" panel
 #130105 file/comment deleted from home phase comment is also gets removed from collab tab-  record detail page
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "captureModalFields.png" in "WorkspaceFiles" panel
    Then I softly see "No Records Found" inside flex table with id "WorkspaceFiles"

  @129996    @verifyThatOnlySingleFileCanBeUploadedFromMyFeedSectionRecordLevelPost
  Scenario: validate that use can attach single file from library tab at record post present at home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
 #129996 upload file from home phase - files list
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "actionsAtEgrid.png" into library with sharing
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "actionsAtEgrid" in "WorkspaceFiles" panel
    When I check "actionsAtEgrid.png" boxes in flex table with id "WorkspaceFiles"
 #129996 after selecting one radio button all others set to false/disabled
    Then I softly see checkbox/radio button at "actionsAtEgrid.png" is disabled
    When I click on top right button "Attach" in flex table with id "WorkspaceFiles"
    And I enter value "Automation file upload at record post collab" in my feed section and share the comment
    And I pause execution for "10" seconds
 #129996 only single file is uploaded from home phase - my feed section
    Then I softly see "actionsAtEgrid.png" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "actionsAtEgrid.png" in "---program:-:PlanningFilesFlexGridId---" panel
 #129996 single file uploaded from home phase is displayed inside attachment tab - record detail
    Then I softly see value "actionsAtEgrid.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I enter value "Automation file upload at record post collab" in my feed section and share the comment
    Then I softly see "Automation file upload at record post collab" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Automation file upload at record post collab" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
 #129996 single file uploaded from home phase is deleted from - home phase my feed section
    Then I softly do not see "Automation file upload at record post collab" comment inside "Test Automation Post For collab attachment functionality check - record level" post at collab

  @130109    @verifyThatOnlySingleFileCanBeUploadedFromMyFeedSectionRecordLevelPost
  Scenario: validate that use can attach single file from library tab at record post present at home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
 #130109 upload file from home phase - files list
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "actionsAtEgrid.png" into library with sharing
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "actionsAtEgrid" in "WorkspaceFiles" panel
    And I pause execution for "10" seconds
    When I check "actionsAtEgrid.png" boxes in flex table with id "WorkspaceFiles"
 #130109 after selecting one radio button all others set to false/disabled
    Then I softly see checkbox/radio button at "actionsAtEgrid.png" is disabled
    When I click on top right button "Attach" in flex table with id "WorkspaceFiles"
    And I enter value "Automation file upload at record post collab" in my feed section and share the comment
 #130109 only single file is uploaded from home phase - my feed section
    Then I softly see "actionsAtEgrid.png" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "actionsAtEgrid" in "---program:-:PlanningFilesFlexGridId---" panel
 #130109 single file uploaded from home phase is displayed inside attachment tab - record detail
    Then I softly see value "actionsAtEgrid.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I enter value "Automation file upload at record post collab" in my feed section and share the comment
    Then I softly see "Automation file upload at record post collab" inside flex table with id "---program:-:myFeedTableId---"
    And I click on "Delete" action at "Automation file upload at record post collab" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    And I navigate to "HOME" tab
 #130109 single file deleted from record level is deleted from - home phase my feed section
    Then I softly do not see "Automation file upload at record post collab" comment inside "Test Automation Post For collab attachment functionality check - record level" post at collab

  @146274    @validateSaveActionAtAddNotesModalAfterEnteringTextBeyondVisibleLimitAtDescriptionField
  Scenario: validate Add action displayed at add Notes modal after entering data in Description field beyond the visible limit
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add" in notes and attachment with name "Notes"
    When I enter values "{LongText:TextMoreThan250Characters}" into textarea description field for Edit Attachment
    Then I see "Save" at bottom of Attachment Modal

  @146276    @validateSaveActionAtAddAttachmentModalAfterEnteringTextBeyondVisibleLimitAtDescriptionField
  Scenario: validate save action displayed at add attachment modal after entering data in Description field beyond the visible limit
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add" in notes and attachment with name "Attachments"
    When I enter values "{LongText:TextMoreThan250Characters}" into textarea description field for Edit Attachment
    Then I see "Save" at bottom of Attachment Modal

  @146444    @validateDescriptionFieldIsRenderedAsLonfTextIfEnteredTextBeyondVisibleLimitAtDescriptionFieldAtAddAttachment
  Scenario: validate description field is rendered as long text field after entering text beyond the visible limit at add attachment
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add" in notes and attachment with name "Attachments"
    When I enter values "{LongText:TextMoreThan250Characters}" into textarea description field for Edit Attachment
    Then I see "Description" field is rendered as long text area

  @146439    @validateDescriptionFieldIsRenderedAsLongfTextIfEnteredTextBeyondVisibleLimitAtDescriptionFieldAtAddNotes
  Scenario: validate description field is rendered as long text field after entering text beyond the visible limit at add notes
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add" in notes and attachment with name "Notes"
    When I enter values "{LongText:TextMoreThan250Characters}" into textarea description field for Edit Attachment
    Then I see "Description" field is rendered as long text area

  @147222 @validateThatModalSaveActionWorkingForRowLevelActionEdit-RecordLevel
  Scenario: Verify that if user edited the record then modal is getting closed by click at Save action
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "testAutomationFileDND.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Edit" icon for "testAutomationFileDND.png" inside table
    And I switch to iframe with id "PlanningFilesiframeContentId"
    And I close modal by clicking the top right x button
    When I click on "Save" button in send email modal
    When I pause execution for "3" seconds
    Then I see "File Edit" modal is closed

  @147223 @validateThatModalCancelActionWorkingForRowLevelActionEdit-RecordLevel
  Scenario: Verify that if user edited the record then modal is getting closed by click at cancel action
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "testAutomationFileDND.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Edit" icon for "testAutomationFileDND.png" inside table
    And I switch to iframe with id "PlanningFilesiframeContentId"
    When I click on "Cancel" button in send email modal
    When I pause execution for "3" seconds
    Then I see "File Edit" modal is closed

  @147365  @verifyRichTextAreaFieldIsDisplayedAtPageLayoutIfPermissionsAreEnabledForAdminUser
  Scenario: validate rich text area field is displayed at page layout if permissions are enabled for admin user
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Description" field is rendered as rich text area

  @147375  @verifyLongTextAreaFieldIsDisplayedAtPageLayoutIfPermissionsAreDisabledForFrameworkQAUser
  Scenario: validate long text area field is displayed at page layout if permissions are disabled for framework qa user
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I see "Description" field is rendered as long text area

  @148379    @verifyCancelButtonWorkingAtAddFileModalAtCollabPhase
  Scenario: Verify cancel button working at add file modal at collab Phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    And I navigate to "Planning" tab
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I pause execution for "3" seconds
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I click on "Cancel" button in send email modal
    Then I see "Add Files" modal window with id "collabModalDiv" is not displayed

  @148376    @verifyCancelButtonWorkingAtAddFileModalAtHomePhaseMyFeed
  Scenario: Verify cancel button working at add file modal at home Phase- my feed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Automation Test Data - Post DND" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    When I click on "Cancel" button in send email modal
    Then I see "Add Files" modal window with id "homeCollabModalDiv" is not displayed

  @148378    @verifyCancelButtonWorkingAtAddFileModalAtRecordLevelCollabTab
  Scenario: Verify cancel button working at add file modal at record level collab tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I click on "Cancel" button in send email modal
    Then I see "Add Files" modal window with id "collabModalDiv" is not displayed

  @146997    @validateAttachmentAddActionWorkingWhileUploadingFromComputer
  Scenario: validate Attachment add action working correctly while uploading attachment from computer
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Attachments" sub tab
    When I only upload attachment "TestAutomation.txt" of type "Other Artifacts" from computer
    And I click modal button "Save"
    Then I see the following messages in the page details contains:
      | Attachment added Successfully. |

  @146998    @validateAttachmentAddActionWorkingWhileUploadingFromWorkspace
  Scenario: validate Attachment add action working correctly while uploading attachment from workspace
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Attachments" sub tab
    And I upload attachment "DynamicLayoutExport.pdf" from workspace
    Then I see table with header "Attachments" contains records "DynamicLayoutExport.pdf"

  @147033    @validateEditActionAtAttachmentIsWorkingForAttachmentUploadedFromComputer
  Scenario: validate that user can Edit an Attachment record by clicking on Edit icon if it is Uploaded from Computer
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Attachments" sub tab
    And I upload attachment "DynamicLayoutExport.pdf" from workspace
    When I click on "Edit" icon for "DynamicLayoutExport.pdf" inside table
    When I upload file "TestFileSharing.docx" into library
    When I enter values "Test Automation" into textarea description field for Edit Attachment and save
    When I close modal by clicking the top right x button
    Then I see table with header "Attachments" contains records "TestFileSharing.docx"

  @136664    @verifyThatAlertMessageDisplayedIfUserClickCommentWithoutEnteringCommentInIt-HomePhase
  Scenario: validate that alert message splayed if user click comment without entering comment at Home Phase
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Automation Test Data - Post DND" comment inside my feed
    And I enter value "" in my feed section and share the comment
    Then I see confirmation box with body "Comment is Required." is displayed

  @136665    @verifyThatAlertMessageDisplayedIfUserClickCommentWithoutEnteringCommentInIt-CollabPhase
  Scenario: validate that alert message displayed if user click comment without entering comment at collab Phase
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    When I pause execution for "3" seconds
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I enter value "" in my feed section and share the comment
    Then I softly see confirmation box with body "Comment is Required." is displayed
    And I refresh the page
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @136668    @verifyThatAlertMessageDisplayedIfUserClickCommentWithoutEnteringCommentInIt-RecordLevelCollabTab
  Scenario: validate that alert message displayed if user click comment without entering comment at record level collab tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I enter value "" in my feed section and share the comment
    Then I see confirmation box with body "Comment is Required." is displayed

  @160568    @verifyThatUserAbleToSeeClassificationRequiredOnSaveForExternalUsersOnCollabHomePhase  @abhishekS
  Scenario: validate that external user is able to see Classiication reqiured on Save on collab home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    Given I have "customMetaData" configuration as below:
      | id                 | label                  | booleanValue | customMetaDataApiName    |
      | m036O000000oLvmQAE | classificationRequired | true         | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label                  | booleanValue | customMetaDataApiName    |
      | m036O000000oLvmQAE | classificationRequired | true         | GNT__KeyValueHolder__mdt |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Framework Dev" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    Then I see "Upload" button is disabled at modal under library

  @167391 @jyoti  @recordShouldOpensProperlyFoePendingTasksAssignedByMeSection56624
  Scenario: validate record of pending tasks assigned by me section should opens properly while logging as PM user
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:PendingTaskSubmitforapprovalid}" in "---program:-:ProgramPendingTaskByMeId---" panel
    When I click on "View" icon for "{Framework_recordUsed:PendingTaskSubmitforapprovalid}" inside table
    Then I see the text containing :
      | Description        |
      | Attachment         |
      | System Information |

  @160572    @verifyThatUserNotAbleToSeeClassificationRequiredOnSaveForExternalUsersOnCollabHomePhase  @abhishekS
  Scenario: validate that external user is not able to see Classiication reqiured on Save on collab home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    Given I have "customMetaData" configuration as below:
      | id                 | label                  | booleanValue | customMetaDataApiName    |
      | m036O000000oLvmQAE | classificationRequired | true         | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label                  | booleanValue | customMetaDataApiName    |
      | m036O000000oLvmQAE | classificationRequired | false        | GNT__KeyValueHolder__mdt |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Framework Dev" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    Then I do not see "Upload" button is disabled at modal under library

  @160564    @verifyThatUserAbleToSeeAttachmentClassificationRequireOnSaveOnRecordLevelCollabTab  @abhishekS
  Scenario: validate that external user is able to see Attachment Classiication reqiured on Save on record level collab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    Given I have "customMetaData" configuration as below:
      | id                 | label                  | booleanValue | customMetaDataApiName    |
      | m036O000000oLvmQAE | classificationRequired | true         | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label                  | booleanValue | customMetaDataApiName    |
      | m036O000000oLvmQAE | classificationRequired | true         | GNT__KeyValueHolder__mdt |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    And I navigate to "Collab" sub tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    When I pause execution for "3" seconds
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    Then I see "Upload" button is disabled at modal under library
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "More Options" action at "Temp Post Automation" comment inside my feed
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Automation SPI" at my feed container with id "---program:-:myFeedTableId---"

  @158211 @tejal
  Scenario: Verify user able to see Attachment Classification not required on Save on record level collab tab for External Users.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    Given I have "customMetaData" configuration as below:
      | id                 | label                  | booleanValue | customMetaDataApiName    |
      | m036O000000oLvmQAE | classificationRequired | true         | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label                  | booleanValue | customMetaDataApiName    |
      | m036O000000oLvmQAE | classificationRequired | false        | GNT__KeyValueHolder__mdt |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:ApplicationWitEditActionForSPIUser}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationWitEditActionForSPIUser}" inside table
    And I navigate to "Collab" sub tab
    And I enter value "Automation SPI" in my feed section and share the post
    And I click on "Comment" action at "Automation SPI" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "60" seconds
    Then I see sharing option as "Visible to Anyone With Record Access" at upload file modal
    #Then I see pre-selected library/folder as "UnitedHealth Group" is displayed at add file modal
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    Then I do not see "Upload" button is disabled at modal under library
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "More Options" action at "Automation SPI" comment inside my feed
    And I click on "Delete" action from dropdown at "Automation SPI" comment inside my feed
    And I click modal button "OK"

  @170128 @tejal
  Scenario: Verify On record level collab tab  @ mention user then user page is getting opened in tab for admin user
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I navigate to "Collab" sub tab
    And I enter value "Hello @Automation PM" in my feed section and share the post
    And I click on hyperlink containing value "@Automation PM"
    Then I see new tab is opened

  @170130 @tejal
  Scenario: Verify On collab phase @ mention user then user page is getting opened in tab for admin user
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on hyperlink containing value "@Automation PM"
    And I pause execution for "3" seconds
    Then I see new tab is opened

  @170132 @tejal
  Scenario:  Verify On record level collab tab @ mention user then user page is getting opened in tab for  Internal user
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I navigate to "Collab" sub tab
    And I enter value "Hello @Automation PM" in my feed section and share the post
    And I click on hyperlink containing value "@Automation PM"
    Then I see new tab is opened

  @170134 @tejal
  Scenario: Verify On collab phase @ mention user then user page is getting opened in tab for  Internal user
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Hello @Bob PM" in my feed section and share the post
    And I click on hyperlink containing value "@Bob PM"
    Then I see new tab is opened

  @176825 @jyoti
  Scenario: Collab - To verify, on record level Collab if the user clicks on 'Share' button without entering any text in the Comment/Post-box, the alert message should display "A comment is required"
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I navigate to "Collab" sub tab
    And I click on button "Share" under collab for comment box
    Then I see alert message "A comment is required"

  @176824 @jyoti
  Scenario:Collab - To verify, on record (Edit layout) level Collab if the user clicks on 'Share' button without entering any text in the Comment/Post-box, the alert message should display "A comment is required"
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I click on "Edit" in the page details
    And I navigate to "Collab" sub tab
    And I click on button "Share" under collab for comment box
    Then I see alert message "A comment is required"

  @176822 @jyoti
  Scenario: Collab - To verify, on record (Edit layout) level Collab if the user clicks on 'Share' button after entering some text in the Comment/Post-box, the alert message should not display "A comment is required"
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I click on "Edit" in the page details
    And I navigate to "Collab" sub tab
    And I enter value "Hello @Automation PM" in my feed section and share the post
    Then I do not see alert popup box

  @176821 @jyoti
  Scenario: Collab - To verify, on record level Collab if the user clicks on 'Share' button after entering some text in the Comment/Post-box, the alert message should not display "A comment is required"
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I navigate to "Collab" sub tab
    And I enter value "Hello @Automation PM" in my feed section and share the post
    Then I do not see alert popup box

  @170135 @tejal
  Scenario: Verify On record level collab tab @ mention user then user page is getting opened in tab for External user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:ApplicationWitEditActionForSPIUser}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationWitEditActionForSPIUser}" inside table
    And I navigate to "Collab" sub tab
    And I enter value "hii @Framework Dev" in my feed section and share the post
    And I click on hyperlink containing value "@Framework Dev"
    Then I see new tab is opened