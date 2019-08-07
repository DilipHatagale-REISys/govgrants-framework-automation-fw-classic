@loggedIssueScenarios @regression
Feature: Logged Issues Scenarios
  Test all logged issues based scenarios
  As a configuration manager i make different configurational changes and will validate them.

  @54723    @validateIsFlexTableIsRefreshingOrNot
  Scenario: validate flex table is refreshing or not from menu option Refresh in flex table of programs-planning
    Given I have default configuration as below:
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
    When I click on top right parallel lines bar for "Draft Programs"
    And I select "Refresh" from parallel lines dropdown of "Draft Programs"
    Then I see parent page is refreshing

  @54706    @validateFlexTableQuickSearchReturnExpectedTextAsEntered
  Scenario: validate flex table quick search return records/text as expected in flex table of programs-planning
    Given I have default configuration as below:
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
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "Program Artifacts" inside table
    When I enter values "Test Automation" into textarea description field for Edit Attachment
    And I switch to Parent iframe
    Then I see "Test Automation" has been added in "Attachments" flex table

  @54847    @validateAttachmentDeleteActionWorkingOrNot
  Scenario: validate Attachment Delete action working correctly while deleting attachment records of programs-planning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Attachments" sub tab
    When I upload attachment "sbac-award-letter.pdf" of type "Program Artifacts"
    When I click on "Delete" icon for "Program Artifacts" inside table
    Then I see confirmation box with body "Record deleted successfully." is displayed

  @54860    @validateNotesDeleteActionWorkingOrNot
  Scenario: validate Notes Delete action working correctly while deleting notes records of programs-planning
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
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
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
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
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
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
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
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
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Delete" icon for "Success message on second tab" inside table
    When I close alertbox
    When I upload attachment "Attachment Testing.pdf" of type "Program Artifacts" and move on second tab
    Then I cannot see the following messages is not displayed in the page details contains:
      | Attachment added Successfully. |

  @54836    @disablingMenuIconShouldNotDisableListView
  Scenario: validate after disabling of menu icon from Program flex table List view should not gets disabled
    Given I have default configuration as below:
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
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-test-003" in "flexGridEnhancedDivId" panel
    When I click on "Edit" icon for "GT-test-003" inside table
    When I enter values "Test Automation" into textarea for table id "flexGridEnhanced1"
    When I click on top right button "Save" in flex table with id "flexGridEnhanced1"
    Then I see value "Test Automation" for multiple cells at column "AddressProgramContact__c"

  @56273  @inlineEditShouldWorkProperlyAtChildTableOfEnhancedGrid
  Scenario: validate inline edit is working properly with Editable Row as SingleEdit and Single Row Edit Behavior as inline at child table of enhanced grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-FIN.2-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-FIN.2-001"
    When I click on "Edit" icon for "AD-FIN.2--00" inside table
    When I enter values "Test Automation" into textarea for table id "TmpGrantorActiveAwardsGridFlexToggle"
    When I click on top right button "Save" in flex table with id "flexGridEnhanced1"
    Then I see value "Test Automation" for multiple cells at column "Agreement1__c"

  @56278    @headersOfChildLevelRecordsShouldBeDisplayedInsidePDF
  Scenario: validate downloaded pdf file should contain header of child level records after checking checkbox of Enable export and show header panel and validating inside applicationBudgetPeriod flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export     | true              | ApiGeneratedId:0 |
      | Flex Table            | Show Header Panel | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export     | true          | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Show Header Panel | true          | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on top right parallel lines bar for "Application Budget"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "Proposed Uses Of Total Funds" on page "1" of "govgrants" pdf file for Table Content

  @56279    @childLevelRecordsOfMEGridShouldDisplayedInsideXLS @check
  Scenario: validate downloaded pdf file should contain header of child level records after checking checkbox of Enable export and show header panel and validating inside applicationBudgetPeriod flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export     | true              | ApiGeneratedId:0 |
      | Flex Table            | Show Header Panel | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export     | true          | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Show Header Panel | true          | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on top right parallel lines bar for "Application Budget"
    And I select "Download as XLS" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "Taxes & Government fees" on page "1" of "govgrants" pdf file for Table Content

  @56280    @childLevelRecordsOfMEGridShouldDisplayedInsidePDF
  Scenario: validate downloaded pdf file should contain header of child level records after checking checkbox of Enable export and show header panel and validating inside applicationBudgetPeriod flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export     | true              | ApiGeneratedId:0 |
      | Flex Table            | Show Header Panel | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export     | true          | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Show Header Panel | true          | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on top right parallel lines bar for "Application Budget"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "Language Development" on page "1" of "govgrants" pdf file for Table Content

  @56282  @errorMessageShouldComeUPForTitleFieldAfterSubmittingWithDescriptionOnly-gHome
  Scenario Outline: validate error message is coming up after submitting it with description field value only at gHome
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Notes"
    When I click on user notes content with icon name "fa fa-plus"
    When I enter details as "<titleValue>""<descriptionValue>" on Add New Notes Modal for "onlyDescription"
    When I click modal button "Save and Close"
    Then I see the following messages in the page details contains:
      | Please enter title |

    Examples:
      | descriptionValue |
      | Value            |

  @56294    @viewActionShouldGetHideWithMentionedExpressionJSONFieldAtProgramFlexTable-gPlanning
  Scenario: Hide View row level action for program flex table from json configuration and validating it under program flex table-gPlanning
    Given I have default configuration as below:
      | configurationCategory     | fieldName            | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON |                   | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName            | fieldNewValue                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON | govgrants_config:ProgramFlexTableExpressionJsonForViewAction | Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "View" icon for "Test program for automation - Created mode only" is not displayed inside flex table

  @56306    @onlyViewActionShouldhideWithMentionedExpressioJsonAtProgramFundingAccountFlexTable
  Scenario: validate disabling of create button for context view with operator IN -gPlanning
    Given I have default configuration as below:
      | configurationCategory     | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName            | fieldNewValue                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON | govgrants_config:ProgramFundingAccountFlexTableExpressionJsonForViewAction | ProgramFundingAccount | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for testing"
    When I click on "View Program Details" icon for "Test program for testing" inside table
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
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
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

  @56394     @verifyActionsButtonNotDisplayedUnderFormsAttachmentBlockAtPreviewPage @check
  Scenario: validate Budget preference should be disabled after selecting Multiple Service Area as NO
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
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
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
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I click on "Menu" button inside detail page
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
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Roles" sub tab
    When I click on top right button "New" in flex table with id "flexTableDivId"
    When I click dropdown field "fieldBusinessRole__c"
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
    When I click on "Menu" button inside detail page
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
    Given I have default configuration as below:
      | configurationCategory     | fieldName            | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON |                   | ProgramRolesAndResponsibilities | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName            | fieldNewValue                                           | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTableTop_NewAction | ProgramRolesAndResponsibilities | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
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
    When I delete stickey notes by clicking on "x"
    When I click on user notes content with icon name "fa fa-plus"
    When I enter details as "<titleValue>""<descriptionValue>" on Add New Notes Modal for ""
    When I click modal button "Save and Close"
    Then I see sticky Notes text as "<descriptionValue>"

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
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
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
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
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
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Budget Category" flex table

  @56408    @associateButtonShouldDisplayForProgramContactBlockInOverviewTab
  Scenario: validate Associate button is displayed on program contact page block
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
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
  Scenario Outline: validate flex table is refreshing or not from menu option Refresh in flex table of programs-planning
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Opportunities" tab
    And I click toggle button to select "Open Funding Opportunities"
    When I perform quick search for "FOA--114"
    When I click on "View" icon for "FOA--114" inside table
    When I click on "Menu" button inside detail page
    And I select "Take Snapshot" from dropdown
    Then I see alert message "<message>"

    Examples:
      | message                                                                                                                      |
      | You are attempting to take a snapshot of the current record which will be saved in Snapshot History. Do you want to proceed? |

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

  @56766    @downloadedPDFFileContainsFormDetailsOnGranteeApplication
  Scenario: validate pdf contains form details for grantee application
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-DOS-USPDPA-001"
    When I click on "View" icon for "AP-DOS-USPDPA-001" inside table
    When I click on "Menu" button inside detail page
    And I select "Download as PDF" from dropdown
    And I download the file
    Then I see "Form" on page "5" of "govgrants" pdf file

  @56414    @globalSearchPopUpMessageShouldDisplayedProperly @check
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
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Silvio O. Conte Centers for Basic Neuroscience or Translational Mental Health Research (P50 Clinical Trial Optional)"
    When I click on "View" icon for "Silvio O. Conte Centers for Basic Neuroscience or Translational Mental Health Research (P50 Clinical Trial Optional)" inside table
    When I navigate to "Awards" sub tab
    When I perform quick search for "FAD-GHHS-BP-01-00" in "flexTableDivId" panel
    When I click on "View" icon for "FAD-GHHS-BP-01-00" inside table
    Then I see "Edit" button is not displayed

  @56524    @PDFShouldGetDownlodedWithThrowingAnyErrorAtGranteeApplicationView
  Scenario: validate pdf file getting downloaded without any error and oppotunity overview text is present
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Applications" tab
    And I click toggle button to select "Draft Applications"
    When I perform quick search for "APP-HHS-082"
    When I click on "View" icon for "APP-HHS-082" inside table
    When I click on "Menu" button inside detail page
    And I select "Download as PDF" from dropdown
    And I download the file
    Then I see "Opportunity Overview" on page "1" of "govgrants" pdf file