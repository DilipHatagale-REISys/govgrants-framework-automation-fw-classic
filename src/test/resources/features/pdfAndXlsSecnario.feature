@allPdfAndXlxRelatedScenarios @regression
Feature: All pdf and xls related scenario including component and completed backlogs
  Test all download pdf and xls based scenarios
  As a configuration manager i make different configurational changes for download pdf and xls related scenarios and will validate them.

  @39294    @skipFieldForExportFieldAtFlexTable-gPlanning
  Scenario: Setup skip form export for 'Status_c' in configuration and validating inside program flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export |                   | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF)    | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export | Status__c     | Programs           |                           |                            |
      | Flex Table:General    | Enable Export (PDF)    | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Programs"
    And I download the file
    Then I cannot see that "Status" on page "1" of "govgrants" pdf file

  @40233    @showInPdfFieldAtFlexTable-gPlanning
  Scenario: Disabling active programs from list view of program flex table from config and validating it at program flex table-programs
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Show in PDF         | false             | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF         | true          | Programs           | Name                      | FLV-1835                   |
      | Flex Table:General    | Enable Export (PDF) | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Programs"
    And I download the file
    Then I see that "Active Programs" on page "1" of "govgrants" pdf file

  @35095    @validateSkipFormForDownload-gapplications @smoke
  Scenario: Setup skip form download for 'General Application Budget Form' in configuration and validating inside Applications view
    Given I have default configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Forms                 | Skip Form Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Skip Form Download | true          | General Application Budget Form |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I click on "Menu" button inside detail page
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I cannot see that "Form - Application Budget" on page "29" of "govgrants" pdf file

  @35986    @skipForExportFieldAtPageBlock-gPlanning
  Scenario: Setup skip form export for 'Program Information' in configuration and validating inside program detail page
    Given I have default configuration as below:
      | configurationCategory        | fieldName       | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Skip for Export | false             | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Skip for Export | true          | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Menu" button inside detail page
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I cannot see that "Program Information" on page "1" of "govgrants" pdf file

  @50389    @pdfRenderTypeFieldAtActiveGrantsGridParentFlexTableForContentInBlock-gMonitoring
  Scenario: validate Activated status in downloaded pdf file after checking check box of show in pdf at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | PDF Render Type     | Block             | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | PDF Render Type     | Block         | ActiveGrantsGrid   |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I click on parallel lines menu bar with data target value "#toggleFGridMonitoringGridView"
    And I select "Download as PDF" from parallel lines dropdown of "Monitoring Schedule For All Active Grant"
    And I download the file
    Then I cannot see that "ID Title" on page "1" of "govgrants" pdf file

  @50390    @pdfRenderTypeFieldAtActiveGrantsGridParentFlexTableForContentInTable-gMonitoring
  Scenario: validate Activated status in downloaded pdf file after checking check box of show in pdf at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | PDF Render Type     | Block             | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | PDF Render Type     | Table         | ActiveGrantsGrid   |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrantsGrid   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I click on parallel lines menu bar with data target value "#toggleFGridMonitoringGridView"
    And I select "Download as PDF" from parallel lines dropdown of "Monitoring Schedule For All Active Grant"
    And I download the file
    Then I see that "ID Title" on page "1" of "govgrants" pdf file

  @49252    @showInPDFFieldAtParentFlexTable-gPlanning
  Scenario Outline: validate Active status in downloaded pdf file after checking check box of show in pdf at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:Flex Table List | Show in PDF         | false              | ApiGeneratedId:0 |
      | Flex Table                | Enable Export (PDF) | true               | ApiGeneratedId:1 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF         | true           | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Table:General        | Enable Export (PDF) | true           | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General         | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    And I download the file
    Then I see that "Active" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                                                                                                                       | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Status__c,Name,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @49254    @showInPDFFieldToVerifyFlexTableNotContainAnyListViewAtParentFlexTable-gPlanning
  Scenario Outline: validate Activated status in downloaded pdf file after checking check box of Is Master View Field at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:Flex Table List | Is Master View      | false              | ApiGeneratedId:0 |
      | Flex Table                | Enable Export (PDF) | true               | ApiGeneratedId:1 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View      | true           | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Table:General        | Enable Export (PDF) | true           | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General         | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    And I download the file
    Then I see that "Active" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                                                                                                                       | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Status__c,Name,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @49256    @showInPDFFieldToVerifyFlexTableContainMoreThanOneListViewAtParentFlexTable-gPlanning
  Scenario Outline: validate Activated status in downloaded pdf file after checking check box of Is Master View Field at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:Flex Table List | Is Master View      | false              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF         | false              | ApiGeneratedId:1 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:2 |
      | Flex Grid:Flex Table List | Show in PDF         | false              | ApiGeneratedId:3 |
      | Flex Table                | Enable Export (PDF) | true               | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View      | true           | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Show in PDF         | true           | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:Flex Table List | Show in PDF         | true           | TmpActiveGrantsGrid | Name                      | FLV-2545                   |
      | Flex Table:General        | Enable Export (PDF) | true           | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    And I download the file
    Then I see that "Active" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                                                                                                                                              | defaultFieldsApi                                                                                                                                                                                                                                          |
      | Status__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @49234    @showInPDFFieldWithOneActiveListViewAndIsmasterViewCheckedAtChildFlexTable-gPlanning
  Scenario Outline: validate being amended status in downloaded pdf file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:Flex Table List | Active ?            | true               | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF         | true               | ApiGeneratedId:1 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:2 |
      | Flex Table                | Enable Export (PDF) | true               | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Active ?            | false          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2544                   |
      | Flex Grid:Flex Table List | Show in PDF         | false          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Grid:Flex Table List | Is Master View      | true           | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Table:General        | Enable Export (PDF) | true           | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-12132-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-12132-001"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Active Awards"
    And I download the file
    Then I see that "Activated" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                     | defaultFieldsApi                                                                                                                               |
      | Status__c,Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c | Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,Status__c,Agreement1__c,AmountDirectAssistance__c |

  @49236    @showInPDFFieldWithMultipleActiveListViewAndShowInPDFNotCheckedAtChildFlexTable-gPlanning
  Scenario Outline: validate being amended status in downloaded pdf file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:Flex Table List | Show in PDF         | true               | ApiGeneratedId:0 |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:4 |
      | Flex Table                | Enable Export (PDF) | true               | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF         | false          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:Flex Table List | Show in PDF         | false          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2544                   |
      | Flex Grid:Flex Table List | Is Master View      | false          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2544                   |
      | Flex Grid:Flex Table List | Is Master View      | true           | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Table:General        | Enable Export (PDF) | true           | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-12132-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-12132-001"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Active Awards"
    And I download the file
    Then I see that "Activated" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                     | defaultFieldsApi                                                                                                                 |
      | Status__c,Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c | Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,Status__c,AmountDirectAssistance__c |

  @49238    @showInPDFFieldWithMultipleActiveListViewAndShowInPDFCheckedAtChildFlexTable-gPlanning
  Scenario Outline: validate being amended status in downloaded pdf file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:4 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF         | false          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2544                   |
      | Flex Grid:Flex Table List | Is Master View      | false          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2544                   |
      | Flex Grid:Flex Table List | Is Master View      | true           | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:Flex Table List | Show in PDF         | true           | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:General         | Display Field Names | <newFieldsApi> | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Table:General        | Enable Export (PDF) | true           | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-12132-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-12132-001"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Active Awards"
    And I download the file
    Then I see that "Activated" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                     | defaultFieldsApi                                                                                                                 |
      | Status__c,Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c | Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,Status__c,AmountDirectAssistance__c |

  @49253   @showInPDFFieldWithFlexTableContainsOnlyOneListViewAtParentFlexTable-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName               | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF             | false             | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (xls/csv) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName               | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF             | true          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Enable Export (xls/csv) | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    Then I see "Active" in downloaded xls or csv file "govgrants"

  @49257   @isMasterViewFieldWithFlexTableContainMOreThanOneListViewInShowInPDF-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName               | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View          | true              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF             | false             | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Show in PDF             | false             | ApiGeneratedId:2 |
      | Flex Grid                 | Enable Export (xls/csv) | false             | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName               | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View          | true          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Show in PDF             | true          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Show in PDF             | true          | TmpActiveGrantsGrid | Name                      | FLV-2545                   |
      | Flex Grid:General         | Enable Export (xls/csv) | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    Then I see "Active" in downloaded xls or csv file "govgrants"

  @49239   @showInPDFFieldWithFlexTableContainsOnlyOneListViewAtChildFlexTable-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName               | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF             | true              | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (xls/csv) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName               | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF             | true          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:General         | Enable Export (xls/csv) | true          | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-12132-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-12132-001"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Active Awards"
    Then I see "Being Amended" in downloaded xls or csv file "govgrants"

  @49237   @isMasterViewFieldWithFlexTableDoesNotContainAnyListViewInShowInPDFAtChildFlexTable-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName               | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View          | true              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF             | true              | ApiGeneratedId:1 |
      | Flex Grid                 | Enable Export (xls/csv) | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName               | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View          | true          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:Flex Table List | Show in PDF             | false         | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:General         | Enable Export (xls/csv) | true          | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-12132-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-12132-001"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Active Awards"
    Then I see "Activated" in downloaded xls or csv file "govgrants"

  @49235   @isMasterViewFieldWithFlexTableContainMOreThanOneListViewInShowInPDFAtChildFlexTable-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName               | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Active ?                | true              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF             | true              | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Show in PDF             | false             | ApiGeneratedId:2 |
      | Flex Grid                 | Enable Export (xls/csv) | false             | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName               | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Active ?                | false         | TmpGrantorActiveAwardsGrid | Name                      | FLV-2544                   |
      | Flex Grid:Flex Table List | Show in PDF             | true          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:Flex Table List | Show in PDF             | true          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2544                   |
      | Flex Grid:General         | Enable Export (xls/csv) | true          | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-12132-001" in "flexGridEnhanced1" panel
    When I expand nested table containing column value "GT-12132-001"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Active Awards"
    Then I see "Being Amended" in downloaded xls or csv file "govgrants"

  @49255   @isMasterViewFieldWithFlexTableDoesNotContainAnyListViewInShowInPDF-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName               | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View          | true              | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (xls/csv) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName               | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View          | true          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Enable Export (xls/csv) | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    Then I see "Active" in downloaded xls or csv file "govgrants"

  @56278    @headersOfChildLevelRecordsShouldBeDisplayedInsidePDF
  Scenario: validate downloaded pdf file should contain header of child level records after checking checkbox of Enable export and show header panel and validating inside applicationBudgetPeriod flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
      | Flex Table            | Show Header Panel   | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Show Header Panel   | true          | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see that "Proposed Uses Of Total Funds" on page "1" of "govgrants" pdf file

  @56279    @childLevelRecordsOfMEGridShouldDisplayedInsideXLS @check
  Scenario: validate downloaded pdf file should contain header of child level records after checking checkbox of Enable export and show header panel and validating inside applicationBudgetPeriod flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS/CSV) | true              | ApiGeneratedId:0 |
      | Flex Table            | Show Header Panel       | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS/CSV) | true          | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Show Header Panel       | true          | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as XLS" from parallel lines dropdown of "Application Budget"
    Then I see "Taxes & Government fees" in downloaded xls or csv file "govgrants"

  @56280    @childLevelRecordsOfMEGridShouldDisplayedInsidePDF
  Scenario: validate downloaded pdf file should contain header of child level records after checking checkbox of Enable export and show header panel and validating inside applicationBudgetPeriod flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
      | Flex Table            | Show Header Panel   | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Show Header Panel   | true          | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see that "Language Development" on page "1" of "govgrants" pdf file

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
    Then I see that "Form" on page "5" of "govgrants" pdf file

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
    Then I see that "Opportunity Overview" on page "1" of "govgrants" pdf file

  @57143    @pdfFileShouldGetDownloadedProperlyForFundingAccount
  Scenario: validate downloaded pdf file should get downloaded properly with content of funding accountScenario: validate CSV file should get downloaded properly with content at funding account flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | SelectFundingAccounts |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on top right button "Associate" in flex table with id "ProgramFundingAccount"
    When I click on parallel lines menu bar with data target value "#toggleFlexTableSelectFundingAccounts"
    And I select "Download as PDF" from parallel lines dropdown of "Funding Accounts "
    And I download the file
    Then I see that "Funding Source" on page "1" of "govgrants" pdf file

  @56837    @pdfFileShouldGetDownloadedProperlyForDefaultApplicationReviewStep @check
  Scenario: validate downloaded pdf file should get downloaded properly with text containing default application review step
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableProgramRelatedAppReviewStepTemplatesNew"
    And I select "Download as PDF" from parallel lines dropdown of "Default Application Review Steps"
    And I download the file
    Then I see that "Default Application Review Steps" on page "1" of "govgrants" pdf file

  @56833    @pdfFileShouldGetDownloadedProperlyForProgramServiceArea @check
  Scenario: validate downloaded pdf file should get downloaded properly with text containing program servicearea
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Log" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableRelatedProgramServiceAreas"
    And I select "Download as PDF" from parallel lines dropdown of "Program Service Areas"
    And I download the file
    Then I see that "Program Service Areas" on page "1" of "govgrants" pdf file

  @56479    @pdfFileShouldGetDownloadedProperlyForApplicationBudget
  Scenario: validate pdf file should get downloaded properly with text containing Application budget
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Applications" tab
    And I click toggle button to select "Draft Applications"
    When I perform quick search for "APP-HHS-082"
    When I click on "View" icon for "APP-HHS-082" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see that "Application Budget" on page "1" of "govgrants" pdf file

  @56752  @pdfFileShouldGetDownloadedProperlyForTaskSummaryByDueDate
  Scenario: validate pdf file getting downloaded properly for Task Summary By Due Date Chart with content My Late Tasks
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Late" content inside "Task Summary By Due Date" charts
    When I click on parallel lines menu bar with data target value "#toggleFlexTableTasksLate"
    And I select "Download as PDF" from parallel lines dropdown of "My Late Tasks "
    And I download the file
    Then I see that "My Late Tasks" on page "1" of "govgrants" pdf file

  @59061    @downloadAsPDFShouldWorkProperlyAtProgramFlexTable
  Scenario: Validate PDF is getting downloaded correctly at program flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Programs"
    And I download the file
    Then I see that "Draft Programs" on page "1" of "govgrants" pdf file

  @59363    @lookupFieldShouldDisplayCorrectlyOnDownloadedPDFFile @check
  Scenario: validating ID lookup field value should get downloaded and displayed properly in Downloaded file at application budget period grid
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see that "AP-755-213" on page "1" of "govgrants" pdf file

  @59990    @hideColumnShouldNotGetListedInDowloadPDFFileAtEnhanceGrid
  Scenario Outline: Validate external organization getting hide from PDF file after hiding it from config page
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Hide Column JSON    |                    | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Column JSON    | govgrants_config:Hide_Column_Enhancedgrid_ParentTable_Header | TmpActiveGrantsGrid | Name                      | FTC-1487                   |
      | Flex Grid:General     | Display Field Names | <newFieldsApi>                                               | TmpActiveGrantsGrid |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true                                                         | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    And I download the file
    Then I cannot see that "Account Name" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                   | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,TotalAdjustedAmount__c,ExternalOrganization__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @59186    @numberFieldShouldDisplayedInDownloadPDFFileAtProgramFlexTable
  Scenario Outline: validate value of Number Field should displayed correctly in downloaded pdf file
    Given I have default configuration as below:
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
    When I perform quick search for "Test Program for testing"
    When I click on "Edit" icon for "Test Program for testing" inside table
    When I enter value "1" into field "Number__c"
    And I click on "Save" in the page details
    When I click on "Menu" button inside detail page
    And I select "Download as PDF" from dropdown
    And I download the file
    Then I see that "1.00" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                               | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,Number__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @59974    @headersOfChildLevelRecordsShouldNotBeBeDisplayedInsidePDF
  Scenario: validate downloaded pdf file should not contain header of child level records after unchecking checkbox of show header panel at child table of enhanced grid
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Show Header Panel   | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Show Header Panel   | false         | TmpGrantorActiveAwardsGrid |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true          | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    And I download the file
    Then I cannot see that "Active Awards" on page "1" of "govgrants" pdf file

  @59360    @AMPMShouldDisplayForDateTimeFieldInsidePDFFileAtEnhancedGrid
  Scenario Outline: validate AM/PM should display inside downloaded pdf file for DateTime Field At enhanced grid
    Given I have default configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true           | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    And I edit the following rows inline in flex table with id "flexGridEnhanced1" by clicking "Edit" :
      | Project Title | DateTime |
      | Demo_Title    | 0        |
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    And I download the file
    Then I see that "PM" on page "28" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                            | defaultFieldsApi                                                                                                                                                                                                                                          |
      | Name,ProjectTitle__c,DateTime__c,BudgetPeriodEndDate__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @56480    @xlsFileShouldGetDownloadedProperlyForApplicatioBudgetCategoryFlexGrid
  Scenario: validating download as XLS is getting downloaded properly at application budget period grid
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Applications" tab
    When I perform quick search for "APP-HHS-082"
    When I click on "View" icon for "APP-HHS-082" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as XLS" from parallel lines dropdown of "Application Budget"
    Then I see "Proposed Uses Of Total Funds" in downloaded xls or csv file "govgrants"

  @57145    @csvFileShouldGetDownloadedProperlyForFundingAccount
  Scenario: validate CSV file should get downloaded properly with content at funding account flex table
    Given I have default configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (xls/csv) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (xls/csv) | true          | SelectFundingAccounts |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on top right button "Associate" in flex table with id "ProgramFundingAccount"
    When I click on parallel lines menu bar with data target value "#toggleFlexTableSelectFundingAccounts"
    And I select "Download as CSV" from parallel lines dropdown of "Funding Accounts "
    Then I see "Funding Accounts" in downloaded xls or csv file "govgrants"

  @56838    @csvFileShouldGetDownloadedProperlyForDefaultApplicationReviewStep
  Scenario: validate download csv file should get downloaded properly with text containing default application review step
    Given I have default configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (xls/csv) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField                      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (xls/csv) | true          | ProgramRelatedAppReviewStepTemplatesNew |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Roles" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableProgramRelatedAppReviewStepTemplatesNew"
    And I select "Download as CSV" from parallel lines dropdown of "Default Application Review Steps"
    Then I see "Default Application Review Steps" in downloaded xls or csv file "govgrants"

  @56834    @csvFileShouldGetDownloadedProperlyForProgramServiceArea
  Scenario: validate download as csv file should get downloaded properly with text containing program service area
    Given I have default configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (xls/csv) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (xls/csv) | true          | RelatedProgramServiceAreas |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Log" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableRelatedProgramServiceAreas"
    And I select "Download as CSV" from parallel lines dropdown of "Program Service Areas"
    Then I see "Program Service Areas" in downloaded xls or csv file "govgrants"

  @56753  @csvFileShouldGetDownloadedProperlyForTasksLate
  Scenario: validate download as csv file should get downloaded properly with text containing My Late Tasks
    Given I have default configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (xls/csv) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (xls/csv) | true          | TasksLate          |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Late" content inside "Task Summary By Due Date" charts
    When I click on parallel lines menu bar with data target value "#toggleFlexTableTasksLate"
    And I select "Download as CSV" from parallel lines dropdown of "My Late Tasks "
    Then I see "My Late Tasks" in downloaded xls or csv file "govgrants"
