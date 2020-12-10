@allPdfAndXlxRelatedScenarios @regression-test5 @skipOnJenkins
Business Need: All pdf and xls related scenario including component and completed backlogs
  Test all download pdf and xls based scenarios
  As a configuration manager i make different configurational changes for download pdf and xls related scenarios and will validate them.

  @39294    @skipFieldForExportFieldAtFlexTable-gPlanning
  Scenario: Setup skip form export for 'Status_c' in configuration and validating inside program flex table
    Given I have "default" configuration as below:
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
    Then I cannot see "Status" on page "1" of "govgrants" pdf file

  @40233    @showInPdfFieldAtFlexTable-gPlanning
  Scenario: Disabling active programs from list view of program flex table from config and validating it at program flex table-programs
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
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Programs"
    And I download the file
    Then I see "Active Programs" on page "1" of "govgrants" pdf file

  @35095    @validateSkipFormForDownload-gapplications @smoke
  Scenario: Setup skip form download for 'General Application Budget Form' in configuration and validating inside Applications view
    Given I have "default" configuration as below:
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
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I cannot see "Form - Application Budget" on page "29" of "govgrants" pdf file

  @35986    @skipForExportFieldAtPageBlock-gPlanning
  Scenario: Setup skip form export for 'Program Information' in configuration and validating inside program detail page
    Given I have "default" configuration as below:
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
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I cannot see "Program Information" on page "1" of "govgrants" pdf file

  @50389    @pdfRenderTypeFieldAtActiveGrantsGridParentFlexTableForContentInBlock-gMonitoring
  Scenario: validate Activated status in downloaded pdf file after checking check box of show in pdf at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
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
    Then I cannot see "ID Title" on page "1" of "govgrants" pdf file

  @50390    @pdfRenderTypeFieldAtActiveGrantsGridParentFlexTableForContentInTable-gMonitoring
  Scenario: validate Activated status in downloaded pdf file after checking check box of show in pdf at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
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
    Then I see "ID Title" on page "1" of "govgrants" pdf file

  @49252    @showInPDFFieldAtParentFlexTable-gPlanning
  Scenario Outline: validate Active status in downloaded pdf file after checking check box of show in pdf at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
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
    Then I see "Active" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                                                                                                                       | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Status__c,Name,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @49254    @showInPDFFieldToVerifyFlexTableNotContainAnyListViewAtParentFlexTable-gPlanning
  Scenario Outline: validate Activated status in downloaded pdf file after checking check box of Is Master View Field at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
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
    Then I see "Active" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                                                                                                                       | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Status__c,Name,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @49256    @showInPDFFieldToVerifyFlexTableContainMoreThanOneListViewAtParentFlexTable-gPlanning
  Scenario Outline: validate Activated status in downloaded pdf file after checking check box of Is Master View Field at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
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
    Then I see "Active" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                                                                                                                                              | defaultFieldsApi                                                                                                                                                                                                                                          |
      | Status__c,Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,TotalAdjustedAmount__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @49234    @showInPDFFieldWithOneActiveListViewAndIsmasterViewCheckedAtChildFlexTable-gPlanning
  Scenario Outline: validate being amended status in downloaded pdf file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
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
    When I perform quick search for "GT-12132-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-12132-001"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Active Awards"
    And I download the file
    Then I see "Activated" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                     | defaultFieldsApi                                                                                                                               |
      | Status__c,Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c | Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,Status__c,Agreement1__c,AmountDirectAssistance__c |

  @49236    @showInPDFFieldWithMultipleActiveListViewAndShowInPDFNotCheckedAtChildFlexTable-gPlanning
  Scenario Outline: validate being amended status in downloaded pdf file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
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
    When I perform quick search for "GT-12132-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-12132-001"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Active Awards"
    And I download the file
    Then I see "Activated" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                     | defaultFieldsApi                                                                                                                 |
      | Status__c,Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c | Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,Status__c,AmountDirectAssistance__c |

  @49238    @showInPDFFieldWithMultipleActiveListViewAndShowInPDFCheckedAtChildFlexTable-gPlanning
  Scenario Outline: validate being amended status in downloaded pdf file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
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
    When I perform quick search for "GT-12132-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-12132-001"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Active Awards"
    And I download the file
    Then I see "Activated" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                     | defaultFieldsApi                                                                                                                 |
      | Status__c,Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,AmountDirectAssistance__c | Name,GrantAwardName__c,BudgetStartEndDate__c,TotalGrantAwardAmount__c,TotalObligateAmount__c,Status__c,AmountDirectAssistance__c |

  @49253   @showInPDFFieldWithFlexTableContainsOnlyOneListViewAtParentFlexTable-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF               | false             | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (xls / csv) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF               | true          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Enable Export (xls / csv) | true          | TmpActiveGrantsGrid |                           |                            |
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
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View            | true              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF               | false             | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Show in PDF               | false             | ApiGeneratedId:2 |
      | Flex Grid                 | Enable Export (XLS / CSV) | false             | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View            | true          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Show in PDF               | true          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Show in PDF               | true          | TmpActiveGrantsGrid | Name                      | FLV-2545                   |
      | Flex Grid:General         | Enable Export (XLS / CSV) | true          | TmpActiveGrantsGrid |                           |                            |
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
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF               | true              | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF               | true          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:General         | Enable Export (XLS / CSV) | true          | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-12132-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-12132-001"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Active Awards"
    Then I see "Being Amended" in downloaded xls or csv file "govgrants"

  @49237   @isMasterViewFieldWithFlexTableDoesNotContainAnyListViewInShowInPDFAtChildFlexTable-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View            | true              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF               | true              | ApiGeneratedId:1 |
      | Flex Grid                 | Enable Export (XLS / CSV) | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View            | true          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:Flex Table List | Show in PDF               | false         | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:General         | Enable Export (XLS / CSV) | true          | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-12132-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-12132-001"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Active Awards"
    Then I see "Activated" in downloaded xls or csv file "govgrants"

  @49235   @isMasterViewFieldWithFlexTableContainMOreThanOneListViewInShowInPDFAtChildFlexTable-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Active ?                  | true              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF               | true              | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Show in PDF               | false             | ApiGeneratedId:2 |
      | Flex Grid                 | Enable Export (XLS / CSV) | false             | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Active ?                  | false         | TmpGrantorActiveAwardsGrid | Name                      | FLV-2544                   |
      | Flex Grid:Flex Table List | Show in PDF               | true          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2541                   |
      | Flex Grid:Flex Table List | Show in PDF               | true          | TmpGrantorActiveAwardsGrid | Name                      | FLV-2544                   |
      | Flex Grid:General         | Enable Export (XLS / CSV) | true          | TmpGrantorActiveAwardsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "GT-12132-001" in "---program:-:flexGridEnhancedID---" panel
    When I expand nested table containing column value "GT-12132-001"
    When I click on parallel lines menu bar with data target value "#TmpGrantorActiveAwardsGridFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Active Awards"
    Then I see "Being Amended" in downloaded xls or csv file "govgrants"

  @49255   @isMasterViewFieldWithFlexTableDoesNotContainAnyListViewInShowInPDF-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View            | true              | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View            | true          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Enable Export (XLS / CSV) | true          | TmpActiveGrantsGrid |                           |                            |
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
    Given I have "default" configuration as below:
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
    Then I see "Proposed Uses Of Total Funds" on page "1" of "govgrants" pdf file

  @56279    @childLevelRecordsOfMEGridShouldDisplayedInsideXLS
  Scenario: validate downloaded pdf file should contain header of child level records after checking checkbox of Enable export and show header panel and validating inside applicationBudgetPeriod flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
      | Flex Table            | Show Header Panel         | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Show Header Panel         | true          | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as XLS" from parallel lines dropdown of "Application Budget"
    Then I see "Indirect Cost Rate" in downloaded xls or csv file "govgrants"

  @56280    @childLevelRecordsOfMEGridShouldDisplayedInsidePDF
  Scenario: validate downloaded pdf file should contain header of child level records after checking checkbox of Enable export and show header panel and validating inside applicationBudgetPeriod flex table
    Given I have "default" configuration as below:
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
    Then I see "Language Development" on page "1" of "govgrants" pdf file

  @56766    @downloadedPDFFileContainsFormDetailsOnGranteeApplication
  Scenario: validate pdf contains form details for grantee application
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-DOS-USPDPA-001"
    When I click on "View" icon for "AP-DOS-USPDPA-001" inside table
    When I click on "Menu" in the page details
    And I select "Download as PDF" from dropdown
    And I download the file
    Then I see "Form" on page "5" of "govgrants" pdf file

  @56524    @PDFShouldGetDownlodedWithThrowingAnyErrorAtGranteeApplicationView
  Scenario: validate pdf file getting downloaded without any error and oppotunity overview text is present
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Applications" tab
    And I click toggle button to select "Draft Applications"
    When I perform quick search for "APP-HHS-082"
    When I click on "View" icon for "APP-HHS-082" inside table
    When I click on "Menu" in the page details
    And I select "Download as PDF" from dropdown
    And I download the file
    Then I see "Opportunity Overview" on page "1" of "govgrants" pdf file

  @57143    @pdfFileShouldGetDownloadedProperlyForFundingAccount
  Scenario: validate downloaded pdf file should get downloaded properly with content of funding account
    Given I have "default" configuration as below:
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
    Then I see "Funding Source" on page "1" of "govgrants" pdf file

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
    Then I see "Default Application Review Steps" on page "1" of "govgrants" pdf file

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
    Then I see "Program Service Areas" on page "1" of "govgrants" pdf file

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
    Then I see "Application Budget" on page "1" of "govgrants" pdf file

  @56752  @pdfFileShouldGetDownloadedProperlyForTaskSummaryByDueDate @check
  Scenario: validate pdf file getting downloaded properly for Task Summary By Due Date Chart with content My Late Tasks
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Late" content inside "Task Summary By Due Date" charts
    When I click on parallel lines menu bar with data target value "#toggleFlexTableTasksLate"
    And I select "Download as PDF" from parallel lines dropdown of "My Late Tasks "
    And I download the file
    Then I see "My Late Tasks" on page "1" of "govgrants" pdf file

  @59061    @downloadAsPDFShouldWorkProperlyAtProgramFlexTable
  Scenario: Validate PDF is getting downloaded correctly at program flex table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Programs"
    And I download the file
    Then I see "Draft Programs" on page "1" of "govgrants" pdf file

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
    Then I see "AP-755-213" on page "1" of "govgrants" pdf file

  @59990    @hideColumnShouldNotGetListedInDowloadPDFFileAtEnhanceGrid
  Scenario Outline: Validate external organization getting hide from PDF file after hiding it from config page
    Given I have "default" configuration as below:
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
    Then I cannot see "Account Name" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                   | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,TotalAdjustedAmount__c,ExternalOrganization__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @59186    @numberFieldShouldDisplayedInDownloadPDFFileAtProgramFlexTable
  Scenario Outline: validate value of Number Field should displayed correctly in downloaded pdf file
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
    When I perform quick search for "Test Program for testing"
    When I click on "Edit" icon for "Test Program for testing" inside table
    When I enter value "1" into field "Number__c"
    And I click on "Save" in the page details
    When I click on "Menu" in the page details
    And I select "Download as PDF" from dropdown
    And I download the file
    Then I see "1.00" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                               | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,Number__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @59974    @headersOfChildLevelRecordsShouldNotBeBeDisplayedInsidePDF
  Scenario: validate downloaded pdf file should not contain header of child level records after unchecking checkbox of show header panel at child table of enhanced grid
    Given I have "default" configuration as below:
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
    Then I cannot see "Active Awards" on page "1" of "govgrants" pdf file

  @59360    @AMPMShouldDisplayForDateTimeFieldInsidePDFFileAtEnhancedGrid
  Scenario Outline: validate AM/PM should display inside downloaded pdf file for DateTime Field At enhanced grid
    Given I have "default" configuration as below:
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
    And I edit the following rows inline in flex table with id "---program:-:flexGridEnhancedID---" by clicking "Edit" :
      | Project Title | DateTime |
      | Demo_Title    | 0        |
    And I refresh the page
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhancedDivId" panel
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    And I download the file
    Then I see "PM" on page "28" of "govgrants" pdf file

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
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | SelectFundingAccounts |                           |                            |
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
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField                      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | ProgramRelatedAppReviewStepTemplatesNew |                           |                            |
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
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RelatedProgramServiceAreas |                           |                            |
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
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | TasksLate          |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Late" content inside "Task Summary By Due Date" charts
    When I click on parallel lines menu bar with data target value "#toggleFlexTableTasksLate"
    And I select "Download as CSV" from parallel lines dropdown of "My Late Tasks "
    Then I see "My Late Tasks" in downloaded xls or csv file "govgrants"

  @56951   @lookupFieldShouldDisplayedInDownloadedXLSFileForActiveGrantsRiskAssessment
  Scenario Outline: validate look up  field in downloaded xls file after making changes at config and validating it inside Active grants grid risk assessment grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | false              | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | true           | ActiveGrantsGridRiskAssessment |                           |                            |
      | Flex Grid:General     | Display Field Names       | <newFieldsApi> | ActiveGrantsGridRiskAssessment |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Management" content inside "Activities" subheader on left panel
    When I click on parallel lines menu bar with data target value "#toggleFGridRiskAssessmentGridView"
    And I select "Download as XLS" from parallel lines dropdown of "Risk Management"
    Then I see "UnitedHealth Group" in downloaded xls or csv file "govgrants"
    Examples:
      | newFieldsApi                                                                                                           | defaultFieldsApi                                                                                          |
      | id,Name,IssueDate__c,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,TotalObligatedAmount__c,Status__c | id,Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,TotalObligatedAmount__c,Status__c |

  @56955   @dateFieldShouldDisplayedInDownloadedXLSFileForActiveGrantsRiskAssessment
  Scenario Outline: validate date field in downloaded xls file after making changes at config and validating it inside Active grants grid risk assessment grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | false              | ApiGeneratedId:0 |
      | Flex Grid             | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | true           | ActiveGrantsGridRiskAssessment |                           |                            |
      | Flex Grid:General     | Display Field Names       | <newFieldsApi> | ActiveGrantsGridRiskAssessment |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Management" content inside "Activities" subheader on left panel
    When I click on parallel lines menu bar with data target value "#toggleFGridRiskAssessmentGridView"
    And I select "Download as XLS" from parallel lines dropdown of "Risk Management"
    Then I see "05/24/2017" in downloaded xls or csv file "govgrants"
    Examples:
      | newFieldsApi                                                                                                           | defaultFieldsApi                                                                                          |
      | id,Name,IssueDate__c,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,TotalObligatedAmount__c,Status__c | id,Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,TotalObligatedAmount__c,Status__c |

  @78095    @verifyPicklistFieldValueIsShownInDownloadedPDFAtEnhancedGrid-gPlanning @enhancedGrid
  Scenario Outline: validate a picklist field value is shown in downloaded pdf instead of picklist value API name at EnhancedGrid - gPlanning
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
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    And I download the file
    Then I see "Project Grants" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                      | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Name,GrantType__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @78097    @verifyPicklistFieldValueIsShownInDownloadedXLSAtEnhancedGrid-gPlanning @enhancedGrid
  Scenario Outline: validate a picklist field value is shown in downloaded xls instead of picklist value API name at EnhancedGrid - gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Grid             | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Grid             | Enable Export (XLS / CSV) | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names       | <newFieldsApi> | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:General     | Enable Export (XLS / CSV) | true           | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    Then I see "Project Grants" in downloaded xls or csv file "govgrants"

    Examples:
      | newFieldsApi                      | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Name,GrantType__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @78304    @verifyPicklistFieldValueIsShownInDownloadedPDFAtMEGrid-gApplication @flexGrid
  Scenario Outline: validate a picklist field value is shown in downloaded pdf instead of picklist value API name at ME Grid - gApplication
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "Yes/No" on page "1" of "govgrants" pdf file

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                                                                           |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c,BudgetType__c |

  @78305    @verifyPicklistFieldValueIsShownInDownloadedXLSAtMEGrid-gApplication @flexGrid
  Scenario Outline: validate a picklist field value is shown in downloaded xls instead of picklist value API name at ME Grid - gApplication
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as XLS" from parallel lines dropdown of "Application Budget"
    Then I see "Yes/No" in downloaded xls or csv file "govgrants"

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                                                                           |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c,BudgetType__c |

  @79167    @verifyPicklistFieldValueIsShownInDownloadedPDFAtN2GGrid-gGrant @flexGrid @wip @bugLogged79177
  Scenario Outline:  validate a picklist field value is shown in downloaded pdf instead of picklist value API name at N2G Grid - gGrant
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | GrantorBudgetPeriod |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridGrantFinancials"
    And I select "Download as PDF" from parallel lines dropdown of "Budget Period Details"
    And I download the file
    Then I see "Yes/No" on page "1" of "govgrants" pdf file

    Examples:
      | defaultFieldsApi                                               | newFieldsApi                                                                 |
      | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c,BudgetType__c |

  @79169    @verifyPicklistFieldValueIsShownInDownloadedPDFAtProgramFlexTable @flexTable
  Scenario Outline: validate a picklist field value is shown in downloaded pdf instead of picklist value API name at flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
      | Flex Table List       | Filter Clause       | <oldSoqlFilter>    | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi>  | Programs           |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true            | Programs           |                           |                            |
      | Flex Table List       | Filter Clause       | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Programs"
    And I download the file
    Then I see "Grant" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                    | defaultFieldsApi                                                                                                 | newSoqlFilter                                                                                                                                                                                    | oldSoqlFilter                                                                                                             |
      | Name,ProgramName__c,ProgramType__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') and ProgramName__c = 'Test program for automation - Created mode only' | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') |

  @79171    @verifyPicklistFieldValueIsShownInDownloadedXLSAtProgramFlexTable @flexTable
  Scenario Outline: validate a picklist field value is shown in downloaded xls instead of picklist value API name at flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (XLS / CSV) | true               | ApiGeneratedId:1 |
      | Flex Table List       | Filter Clause             | <oldSoqlFilter>    | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names       | <newFieldsApi>  | Programs           |                           |                            |
      | Flex Table:General    | Enable Export (XLS / CSV) | true            | Programs           |                           |                            |
      | Flex Table List       | Filter Clause             | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as XLS" from parallel lines dropdown of "Draft Programs"
    Then I see "Grant" in downloaded xls or csv file "govgrants"

    Examples:
      | newFieldsApi                                                                                                                    | defaultFieldsApi                                                                                                 | newSoqlFilter                                                                                                                                                                                    | oldSoqlFilter                                                                                                             |
      | Name,ProgramName__c,ProgramType__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') and ProgramName__c = 'Test program for automation - Created mode only' | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') |

  @79176    @verifyPicklistFieldValueIsShownInDownloadedPDFAtHistoryTable-gPlanning @history
  Scenario: validate a picklist field value is shown in downloaded pdf instead of picklist value API name at history table
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
    When I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    And I enter value "Loan" into field "ProgramType__c"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    Then I see "Loan" on page "1" of "govgrants" pdf file

  @79178    @verifyPicklistFieldValueIsShownInDownloadedXLSAtHistoryTable-gPlanning @history
  Scenario: validate a picklist field value is shown in downloaded xls instead of picklist value API name at history table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active                 | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active                 | true          | Grantee State Program | Name                      | TAB-027                    |
      | Flex Table:General                  | Enable Export (XLS / CSV) | true          | History               |                           |                            |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    And I enter value "Loan" into field "ProgramType__c"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as CSV" from parallel lines dropdown of "Field History"
    Then I see "Loan" in downloaded xls or csv file "govgrants"

  @79173    @verifyPicklistFieldValueIsShownInDownloadedPDFAtPageLayout-gPlanning @pageLayout @wip @bugLogged79177
  Scenario: validate a picklist field value is shown in downloaded pdf instead of picklist value API name at page detail
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Grant" on page "1" of "govgrants" pdf file

  @79168    @verifyPicklistFieldValueIsShownInDownloadedXLSAtN2GGrid-gGrant @flexGrid
  Scenario Outline:  validate a picklist field value is shown in downloaded xls instead of picklist value API name at N2G Grid - gGrant
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Grid             | Enable Export (XLS / CSV) | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names       | <newFieldsApi> | GrantorBudgetPeriod |                           |                            |
      | Flex Grid:General     | Enable Export (XLS / CSV) | true           | GrantorBudgetPeriod |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridGrantFinancials"
    And I select "Download as XLS" from parallel lines dropdown of "Budget Period Details"
    Then I see "Yes/No" in downloaded xls or csv file "govgrants"

    Examples:
      | defaultFieldsApi                                               | newFieldsApi                                                                 |
      | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c | Year__c,BudgetStartDate__c,BudgetEndDate__c,Status__c,Notes__c,BudgetType__c |

  @79742    @verifyIfNoneIsSelectedInPicklistFieldThenAfterSaveABlankValueIsShownInDownloadedPDFAtEnhancedGrid-gPlanning @enhancedGrid
  Scenario Outline: validate if none is selected and saved in picklist from dropdown then blank value is shown in downloaded pdf - EnhancedGrid
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF         | false              | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Is Master View      | true               | ApiGeneratedId:2 |
      | Flex Table List           | Filter Clause       | <oldSoqlFilter>    | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>  | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:Flex Table List | Show in PDF         | true            | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Is Master View      | true            | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Table List           | Filter Clause       | <newSoqlFilter> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "test Program for automation DND" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "test Program for automation DND" inside table
    When I enter value "--None--" into field "GrantType__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    And I download the file
    Then I see "" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                      | defaultFieldsApi                                                                                                                                                                                                                   | newSoqlFilter                                                                                          | oldSoqlFilter                                    |
      | ProjectTitle__c,Name,GrantType__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c='test Program for automation DND' | RecordType.Name='Grantor' and status__c='Active' |

  @77434    @validateDownloadedPDFContentIfShowInPDFCheckboxIsCheckedAtFlexTableEnhanced-gPlanning @flexTableEnhanced
  Scenario: validate Activated status in downloaded pdf file for enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF         | true              | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF         | true          | EnhancedDataTable  | Name                      | FLV-2548                   |
      | Flex Grid:General     | Enable Export (PDF) | true          | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Grants Enhanced Table"
    And I download the file
    Then I see "Active" on page "1" of "govgrants" pdf file

  @77472    @validateDownloadedXLSContentIfShowInPDFCheckboxIsCheckedAtFlexTableEnhanced-gPlanning @flexTableEnhanced
  Scenario: validate Activated status in downloaded xls file for enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (xls / csv) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF               | true          | EnhancedDataTable  | Name                      | FLV-2548                   |
      | Flex Grid:General     | Enable Export (xls / csv) | true          | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Grants Enhanced Table"
    Then I see "Active" in downloaded xls or csv file "govgrants"

  @79744    @verifyIfNoneIsSelectedInPicklistFieldThenAfterSaveABlankValueIsShownInDownloadedXLSAtEnhancedGrid-gPlanning @enhancedGrid
  Scenario Outline: validate if none is selected and saved in picklist from dropdown then blank value is shown in downloaded XLS - EnhancedGrid
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid                 | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF         | false              | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Is Master View      | true               | ApiGeneratedId:2 |
      | Flex Table List           | Filter Clause       | <oldSoqlFilter>    | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General         | Display Field Names | <newFieldsApi>  | TmpActiveGrantsGrid |                           |                            |
      | Flex Grid:Flex Table List | Show in PDF         | true            | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Is Master View      | true            | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Table List           | Filter Clause       | <newSoqlFilter> | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "test Program for automation DND" in "---program:-:flexGridEnhancedID---" panel
    When I click on "Edit" icon for "test Program for automation DND" inside table
    When I enter value "--None--" into field "GrantType__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedID---"
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    Then I see "" in downloaded xls or csv file "govgrants"

    Examples:
      | newFieldsApi                      | defaultFieldsApi                                                                                                                                                                                                                   | newSoqlFilter                                                                                          | oldSoqlFilter                                    |
      | ProjectTitle__c,Name,GrantType__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | RecordType.Name='Grantor' and status__c='Active' and ProjectTitle__c='test Program for automation DND' | RecordType.Name='Grantor' and status__c='Active' |

  @80925    @verifyDoubleDollarSymbolIsNotDisplayedForTotalInDownloadedPDFAtMEGrid-gApplication @flexGrid
  Scenario: validate double dollar symbol at total is not displayed at ME Grid under downloaded pdf - gApplication
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "$ 77,700.00" on page "1" of "govgrants" pdf file

  @80928    @verifyDoubleDollarSymbolIsNotDisplayedInTotalColumnInDownloadedXLSAtMEGrid-gApplication @flexGrid
  Scenario: validate double dollar symbol at total column is not displayed at ME Grid under downloaded XLS - gApplication
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as XLS" from parallel lines dropdown of "Application Budget"
    Then I see "$30,000.00" in downloaded xls or csv file "govgrants"

  @80920    @verifyTotalAmountAtCurrencyFieldWithoutDecimalPlacesInDownloadedPDFAtMEGrid-gApplication @flexGrid
  Scenario Outline: validate total amount at currency currency field without decimal places at ME Grid under downloaded pdf - gApplication
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table List       | Enable Total        | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetCategoryFlexTable |                           |                            |
      | Flex Table List       | Enable Total        | true           | ApplicationBudgetCategoryFlexTable | Name                      | FTC-1512                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "$ 1,200" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                        | defaultFieldsApi                                                                                     |
      | Id,ServiceAreaTitle__c,BudgetCategory__c,Amount1__c | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c |

  @80922    @verifyAmountAtCurrencyFieldWithoutDecimalPlacesInDownloadedXLSAtMEGrid-gApplication @flexGrid
  Scenario Outline: validate amount at currency currency field without decimal places at ME Grid under downloaded XLS - gApplication
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetCategoryFlexTable |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as XLS" from parallel lines dropdown of "Application Budget"
    Then I see "$1,200.00" in downloaded xls or csv file "govgrants"

    Examples:
      | newFieldsApi                                        | defaultFieldsApi                                                                                     |
      | Id,ServiceAreaTitle__c,BudgetCategory__c,Amount1__c | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c |

  @80913    @verifyCurrencyFieldValuesWithDecimalPlacesInDownloadedPDFAtMEGrid-gApplication @flexGrid
  Scenario: validate total amount at currency currency field without decimal places at ME Grid under downloaded pdf - gApplication
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "$29,700.00" on page "1" of "govgrants" pdf file

  @80917    @verifyAtCurrecyFieldValuesWithoutDecimalPlacesInDownloadedXLSAtMEGrid-gApplication @flexGrid
  Scenario: validate amount at currency currency field without decimal places at ME Grid under downloaded XLS - gApplication
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as XLS" from parallel lines dropdown of "Application Budget"
    Then I see "$29,700.00" in downloaded xls or csv file "govgrants"


  @77820    @validateDownloadedPDFContentAsStatusIsActiveUnderParentFlexTableForEnhancedGridAtSideBar-gHOME @sidebar
  Scenario Outline: validate Activated status in downloaded pdf file for enhanced grid at sidebar - home phase
    Given I have "default" configuration as below:
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
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    And I download the file
    Then I see "Active" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                                                                                                                                                                                                       | defaultFieldsApi                                                                                                                                                                                                                   |
      | ProjectTitle__c,Status__c,Name,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c | Name,ProjectTitle__c,BudgetPeriodEndDate__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardObligatedAmount__c,Status__c,CFDANumber__c,isClosedOut__c,AddressProgramContact__c |

  @77821    @validateDownloadedXLSContentAsStatusIsActiveUnderParentFlexTableForEnhancedGridAtSideBar-gHOME @sidebar
  Scenario: validate Activated status in downloaded xls file for enhanced grid at sidebar - home phase
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF               | false             | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (xls / csv) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF               | true          | TmpActiveGrantsGrid | Name                      | FLV-2539                   |
      | Flex Grid:General         | Enable Export (xls / csv) | true          | TmpActiveGrantsGrid |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    When I click on parallel lines menu bar with data target value "#TmpActiveGrantsGridFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Monitoring Schedule For All Active Grants"
    Then I see "Active" in downloaded xls or csv file "govgrants"

  @77800    @validateDownloadedPDFContentAsStatusIsActiveAtFlexTableEnhancedUnderSidebar-gHome @sidebar
  Scenario: validate Activated status in downloaded pdf file for enhanced data table at sidebar
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF         | true              | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF         | true          | EnhancedDataTable  | Name                      | FLV-2548                   |
      | Flex Grid:General     | Enable Export (PDF) | true          | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Grants Enhanced Table"
    And I download the file
    Then I see "Active" on page "1" of "govgrants" pdf file

  @77819    @validateDownloadedXLSContentAsStatusIsActiveAtFlexTableEnhancedUnderSidebar-gHome @sidebar
  Scenario: validate Activated status in downloaded xls file for enhanced data table at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (xls / csv) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (xls / csv) | true          | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Grants Enhanced Table"
    Then I see "Active" in downloaded xls or csv file "govgrants"

  @70264 @validateThatFileShouldGetDownloadFromFolderForViewerProfileHomePhase @libraryFiles
  Scenario: Verify that file is getting download from folder under home phase library for Viewer profile
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder2"
    When I click on dropdown at library/folder/file "automationTestingOfFiles.xls"
    When I click on "Download File" option at library/folder/file "automationTestingOfFiles.xls"
    Then I see "First Name" in downloaded xls or csv file "govgrants"

  @70409 @validateThatFileShouldGetDownloadFromFolderForAuthorProfileHomePhase @libraryFiles
  Scenario: Verify that file is getting download from folder under home phase library for Author profile
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder2"
    When I click on dropdown at library/folder/file "automationTestingOfFiles.xls"
    When I click on "Download" option at library/folder/file "automationTestingOfFiles.xls"
    Then I see "First Name" in downloaded xls or csv file "automationTestingOfFiles"

  @70367 @validateThatWhenClickOnDownloadFileAtLibraryThenFilesFromThatLibraryGetsDownloadedAtHomePhase @libraryFiles
  Scenario: Verify that if click on download at library then files only from that library is getting downloaded under home phase library
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Download Files" option at library/folder/file "Department of Community Health"
    Then I softly see "Program Name" in downloaded xls or csv file "govgrants"
    Then I softly cannot see "First Name" in downloaded xls or csv file "govgrants"


  @70496 @validateThatUserCanDownloadFileFromFileListTab-HomePhase-FileList @libraryFiles
  Scenario: Verify that user can download file from FileList tab - Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "automationTestingOfFiles.xls" in "---program:-:workSpaceFilesFlexTableId---" panel
    When I click on "Download" icon for "automationTestingOfFiles.xls" inside table
    Then I see "First Name" in downloaded xls or csv file "govgrants"

  @70729 @validateThatUserCanDownloadFileFromPlanningFilesTableAtAttachmentTab-RecordLevel @wip @NeedDeleteAPI @libraryFiles
  Scenario: Verify that user can download file from planning Files table at attachment tab - Record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "SheetJSFileUpload.xlsx" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "SheetJSFileUpload.xlsx" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Download" icon for "SheetJSFileUpload.xlsx" inside table
    Then I softly see "Organization" in downloaded xls or csv file "govgrants"


  @83182 @validateThatAdminUserCanDownloadTheLibraryAndAllFilesInItAtAssetLibrary-HomePhase @libraryFiles
  Scenario: Verify that admin user can download library and it's files at  asset library
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Asset Library"
    When I click on "Download Files" option at library/folder/file "Asset Library"
    Then I softly see "Creating" on page "1" of "govgrants" pdf file

  @83183 @validateThatAdminUserCanDownloadTheAttachedFilesFromAssetLibrary-HomePhase @libraryFiles
  Scenario: Verify that admin user can download the attached files from  asset library
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Asset Library"
    When I click on dropdown at library/folder/file "AssetLibraryTestData.pdf"
    When I click on "Download File" option at library/folder/file "AssetLibraryTestData.pdf"
    Then I see "Creating" on page "1" of "govgrants" pdf file

  @83781    @validatePicklistFieldLabelAtFlexTableInDownloadedPDF-gPlanning @flexTable
  Scenario: validate label of 'Status_c' field inside downloaded PDF at program flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Programs"
    And I download the file
    Then I see "Status" on page "1" of "govgrants" pdf file

  @83785    @validatePicklistFieldLabelAtFlexTableInDownloadedXLS-gPlanning @flexTable
  Scenario: validate label of 'Status_c' field inside downloaded XLS at program flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (xls / csv) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (xls / csv) | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Programs"
    Then I see "Status" in downloaded xls or csv file "govgrants"

  @83788    @verifyPicklistFieldLabelIsShownInDownloadedPDFAtMEGrid-gApplication @flexGrid
  Scenario Outline: validate a picklist field label is shown in downloaded pdf instead of picklist field API name at ME Grid - gApplication
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "BudgetAvailable" on page "1" of "govgrants" pdf file

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                                                                           |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c,BudgetType__c |

  @83793    @verifyPicklistFieldLabelIsShownInDownloadedXLSAtMEGrid-gApplication @flexGrid
  Scenario Outline: validate a picklist field label is shown in downloaded xls instead of picklist field API name at ME Grid - gApplication
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as XLS" from parallel lines dropdown of "Application Budget"
    Then I see "BudgetAvailable" in downloaded xls or csv file "govgrants"

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                                                                           |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c,BudgetType__c |

  @83930    @verifyPicklistFieldLabelIsShownInDownloadedPDFAtPageLayout-gPlanning @pageLayout @smoke
  Scenario: validate a picklist field label is shown in downloaded pdf instead of picklist field API name inside program detail page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed/Reject Announcements"
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Announcement Type" on page "1" of "govgrants" pdf file

  @83970 @validateThatFilesLinkedAtProgramAreShownInDownloadedPDFAtApplicationRecord-gApplication @libraryFiles
  Scenario: Verify that files linked at program record are displayed in downloaded PDF at application record by changing filter criteria of files tabl
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table            | Filter Criteria | {!ContentDocLinkId} | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Filter Criteria | parentId= '{!ProgramId}' | ApplicationFiles   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on parallel lines menu bar with data target value "#ApplicationFilesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Application Files"
    And I download the file
    Then I see "ProgramRecordDoNotDelete.png" on page "1" of "govgrants" pdf file

  @84591   @verifyDateTimeFieldFormatForLocalAsISTUnderFieldHistoryTableUnderDownloadedPDF @history
  Scenario: validate the date and time format under field history table with respective to IST Local - under downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-027                    |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramForLocalTesting}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:ProgramForLocalTesting}" inside table
    When I click on "Menu" in the page details
    And I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    Then I softly see "12/6/2020 5:00 PM" on page "1" of "govgrants" pdf file
    Then I softly see "11/6/2020 4:14 PM" on page "1" of "govgrants" pdf file

  @84590   @verifyDateTimeFieldFormatForLocalAsEDTUnderFieldHistoryTableUnderDownloadedPDF @history
  Scenario: validate the date and time format under field history table with respective to EDT Local - under downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-027                    |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramForLocalTesting}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:ProgramForLocalTesting}" inside table
    And I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    Then I softly see "12/06/2020 5:00 PM" on page "1" of "govgrants" pdf file
    Then I softly see "11/06/2020 4:14 PM" on page "1" of "govgrants" pdf file

  @84584   @verifyDateTimeFieldFormatForLocalAsESTUnderFieldHistoryTableUnderDownloadedPDF @history
  Scenario: validate the date and time format under field history table with respective to EST Local - under downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-027                    |
    When I login as "Automation" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramForLocalTesting}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:ProgramForLocalTesting}" inside table
    And I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    Then I softly see "06/12/2020 5:00 PM" on page "1" of "govgrants" pdf file
    Then I softly see "06/11/2020 4:14 PM" on page "1" of "govgrants" pdf file

  @88656   @VerifyChangedValueColumnInDownloadAsPDFForFieldHistoryTable @history
  Scenario: Validate by click on Download As PDF option a PDF is getting downloaded and value is present in changed value column in history table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-027                    |
    When I login as "Automation" user
    When I navigate to "Planning" tab
    When I perform quick search for "Test Program specific for History"
    When I click on "View Program Details" icon for "Test Program specific for History" inside table
    When I navigate to "History" sub tab
    When I select "Program" from dropdown at History Table
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    Then I see "DateandTime" on page "1" of "govgrants" pdf file

  @91565    @numberFieldWithNoDecimalShouldDisplayedInDownloadPDFFileAtProgramFlexTable  @flexTable
  Scenario Outline: validate value of Number Field should displayed correctly in downloaded pdf file
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
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Programs"
    And I download the file
    Then I see "20" on page "25" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                 | defaultFieldsApi                                                                                                 |
      | Name,ProgramName__c,Number_Test__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @91579    @verifyDollarSymbolIsDisplayedForTotalInDownloadedPDFAtMEGrid-gApplication @flexGrid
  Scenario Outline: validate dollar symbol at total is displayed at ME Grid under downloaded pdf - gApplication
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table List       | Enable Total        | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
      | Flex Table List       | Enable Total        | true           | ApplicationBudgetPeriods | Name                      | FTC-1520                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "$1,512.00" on page "3" of "govgrants" pdf file

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                   |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,TestField__c |

  @91691   @validateDollarSymbolAtCurrencyFieldTotalInPdfAtFlexTable-gPlanning
  Scenario Outline:  validate dollar symbol in relational field is displayed at program flex table dowloaded pdf-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table List       | Show in PDF         | false              | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:2 |
      | Flex Table List       | Filter Clause       | <oldSoqlFilter>    | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF         | true            | Programs           | Name                      | FLV-1837                   |
      | Flex Table:General    | Enable Export (PDF) | true            | Programs           |                           |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi>  | Programs           |                           |                            |
      | Flex Table List       | Filter Clause       | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Programs"
    And I download the file
    Then I see "$5,000" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                           | defaultFieldsApi                                                                                                 | newSoqlFilter                                                                                                                                                           | oldSoqlFilter                                                                                                             |
      | Name,ProgramName__c,Account__r.AnnualRevenue,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') and ProgramName__c like '%Created mode only%' | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') |

  @91692   @validateDollarSymbolAtCurrencyFieldTotalInxlsAtFlexTable-gPlanning
  Scenario Outline:  validate dollar symbol in relational field is displayed at program flex table downloaded xls-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table List       | Show in PDF               | false              | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (xls / csv) | true               | ApiGeneratedId:1 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:2 |
      | Flex Table List       | Filter Clause             | <oldSoqlFilter>    | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF               | true            | Programs           | Name                      | FLV-1837                   |
      | Flex Table:General    | Enable Export (xls / csv) | true            | Programs           |                           |                            |
      | Flex Table:General    | Display Field Names       | <newFieldsApi>  | Programs           |                           |                            |
      | Flex Table List       | Filter Clause             | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as CSV" from parallel lines dropdown of "Draft Programs"
    Then I see "$5,000" in downloaded xls or csv file "govgrants"

    Examples:
      | newFieldsApi                                           | defaultFieldsApi                                                                                                 | newSoqlFilter                                                                                                                                                           | oldSoqlFilter                                                                                                             |
      | Name,ProgramName__c,Account__r.AnnualRevenue,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') and ProgramName__c like '%Created mode only%' | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') |

  @91845    @validateHideColumnsFieldAtApplicationBudgetPeriodFlexTableInsideDownloadedPDF-MEGrid @flexGrid
  Scenario Outline: validate hide columns field at application budget period flex table inside downloaded pdf - me grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Hide Columns        |                    | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
      | Flex Table List       | Filter Clause       | <oldFilterClause>  | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                         | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Hide Columns        | govgrants_config:HideColumnsAtApplicationBudgetMEGrid | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi>                                        | ApplicationBudgetPeriods |                           |                            |
      | Flex Table List       | Filter Clause       | <newFilterClause>                                     | ApplicationBudgetPeriods | Name                      | FLV-2100                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "*****" on page "1" of "govgrants" pdf file

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                                                  | oldFilterClause                         | newFilterClause                                                    |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,Application__r.AwardCeiling__c,TestField__c | Application__c = '{!Application__c.Id}' | Application__c = '{!Application__c.Id}' and SupportYear__c='BP-02' |

  @91846    @validateHideColumnsFieldAtApplicationBudgetPeriodFlexTableInsideDownloadedXLS-MEGrid @flexGrid
  Scenario Outline: validate hide columns field at application budget period flex table inside downloaded xls - me grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Hide Columns        |                    | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
      | Flex Table List       | Filter Clause       | <oldFilterClause>  | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                         | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Hide Columns        | govgrants_config:HideColumnsAtApplicationBudgetMEGrid | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi>                                        | ApplicationBudgetPeriods |                           |                            |
      | Flex Table List       | Filter Clause       | <newFilterClause>                                     | ApplicationBudgetPeriods | Name                      | FLV-2100                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as XLS" from parallel lines dropdown of "Application Budget"
    Then I see "*****" in downloaded xls or csv file "govgrants"

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                                                  | oldFilterClause                         | newFilterClause                                                    |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,Application__r.AwardCeiling__c,TestField__c | Application__c = '{!Application__c.Id}' | Application__c = '{!Application__c.Id}' and SupportYear__c='BP-02' |

  @92065    @validateCurrencyFieldWithNoDecimalValueAtProgramFlexTableUnderDownloadedPDF @flexTable
  Scenario Outline: validate if we enter decimal value in non-decimal currency field then non-decimal value should get saved and displayed correctly in flex table downloaded pdf
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
      | Flex Table List       | Filter Clause       | <oldSoqlFilter>    | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi>  | Programs           |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true            | Programs           |                           |                            |
      | Flex Table List       | Filter Clause       | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
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
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Programs"
    And I download the file
    Then I see "$40,000" on page "1" of "govgrants" pdf file

    Examples:
      | newFieldsApi                                  | defaultFieldsApi                                                                                                 | newSoqlFilter                                                                                                                                                                                    | oldSoqlFilter                                                                                                             |
      | Name,ProgramName__c,FundedAmount__c,Status__c | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') and ProgramName__c = 'Test program for automation - Created mode only' | RecordType.Name = 'Internal Program' and Status__c IN ( 'Created','Change Requested','Submitted for Approval','Approved') |

  @70096    @verifyDownloadingOfTemplateFile @SheetJS
  Scenario: Validate Template file is getting downloaded or not on download button click inside download and upload wizard modal.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Data Import/Export | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I click on button "Download File" on download & upload wizard modal
    Then I see "Program Name" in downloaded xls or csv file "govgrants"

  @96571    @validateIfShowInPDFForAnyListViewIsCheckedThenThatListViewContentShouldBeDisplayedInDownloadedPDF @flexTable
  Scenario: verify if Show in pdf for draft announcement list view is checked then draft announcement is displayed inside downloaded pdf
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Table List       | Show in PDF | false             | ApiGeneratedId:0 |
    Given I seGiven I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF | true          | ActiveFundingOpportunities | Name                      | FLV-2399                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on parallel lines menu bar with data target value "#toggleFlexTableActiveFundingOpportunities"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Announcements"
    And I download the file
    Then I see "Draft Announcements" on page "1" of "govgrants" pdf file

  @98869    @verifyDownloadingAsPDFAtAwardTable-gAward @flexTable
  Scenario: validate by click download as pdf at active award flex table then it is shown in downloaded pdf
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Active Awards" content inside "Manage Grants, Awards & Amendments" subheader on left panel
    When I click on parallel lines menu bar with data target value "#toggleFlexTableGrantorActiveAwards"
    And I select "Download as PDF" from parallel lines dropdown of "Active Awards"
    And I download the file
    Then I see "Active Awards" on page "1" of "govgrants" pdf file

  @100659    @validateFormatOfCurrencyFieldValueWithDollarSymbolInsideDownloadedPDFAtPageBlockDetail-gPlanning @pageLayout
  Scenario: validate format of currency field value with $ symbol inside program detail page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "($500,000)" on page "1" of "govgrants" pdf file

  @101055 @validateSentDateOfEmailInISTModeInsideDownloadedPDF
  Scenario: Validate send date of an email for IST time zone inside downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableCommunicationHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Messages"
    And I download the file
    Then I see "4/9/2020 3:35 PM" on page "1" of "govgrants" pdf file

  @101057 @validateSentDateOfEmailInEDTModeInsideDownloadedPDF
  Scenario: Validate send date of an email for EDT time zone inside downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableCommunicationHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Messages"
    And I download the file
    Then I see "04/09/2020 6:05 AM" on page "1" of "govgrants" pdf file

  @101056 @validateSentDateOfEmailInESTModeInsideDownloadedPDF
  Scenario: Validate send date of an email for EST time zone inside downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableCommunicationHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Messages"
    And I download the file
    Then I see "09/04/2020 5:05 AM" on page "1" of "govgrants" pdf file

  @102102    @verifyHideFieldJsonFieldByHidingTextFieldOnTheBasisOfPicklistFieldUnderDownloadedPDF
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value and verify at pdf
    Given I have "default" configuration as below:
      | configurationCategory               | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Config | Hide Fields JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Config | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantee State Program | Name                      | PBD-646                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I cannot see "Title" on page "1" of "govgrants" pdf file

  @100500 @verifyThatIfPicklistFieldValueIsChanagedThenItIsDisplayedInFieldHistoryTableInDownloadedPDFFromPageLyout
  Scenario: verify that if picklist field value is changed then it is displayed correctly field history table in downloaded pdf from page layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active       | false             | ApiGeneratedId:0 |
      | Page Tabs Config      | Skip for Export | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active       | false         | Grantee State Program | Name                      | TAB-026                    |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Grantee State Program | Name                      | TAB-980                    |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    And I enter value "Loan" into field "ProgramType__c"
    And I click on "Save" in the page details
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Loan" on page "5" of "govgrants" pdf file

  @103924    @validateDecimalPlacesNotDisplayedUnderNumberFieldMeGridParentTableDownloadedPDF
  Scenario Outline: validating decimal places not displayed at number field value under me grid parent table in downloaded pdf
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true           | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}" inside table
    When I navigate to "Budget" sub tab
    When I click on "Delete" icon for "BP-08" inside table
    When I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "New" :
      | Support Year | Sequence Number |
      | BP-08        | 100000          |
    When I pause execution for "4" seconds
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "100,000" on page "1" of "govgrants" pdf file

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                        |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,SequenceNumber__c |

  @104345 @validateDisplayOfSelectedFileNameInDescriptionInsidePDFDownloadedFromMessageTable @sendEmail
  Scenario: Validate selected linked file name is displayed inside description at pdf downloaded from message table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I have "customMetaData" configuration as below:
      | id                 | label                          | booleanValue | customMetaDataApiName    |
      | m031C000000XZXyQAO | SendEmailFilesLinkConfigHolder | false        | GNT__KeyValueHolder__mdt |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    And I update custom metadata setting changes:
      | id                 | label                          | booleanValue | customMetaDataApiName    |
      | m031C000000XZXyQAO | SendEmailFilesLinkConfigHolder | true         | GNT__KeyValueHolder__mdt |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios1}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios1}" inside table
    When I navigate to "Collab" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableCommunicationHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Messages"
    And I download the file
    Then I see "ProgramRecordDoNotDelete.png" on page "1" of "govgrants" pdf file

  @104470    @validateCurrencyFieldFormattingAfterAddingNewRecordAtMEGridParentTableDownloadedPDF
  Scenario Outline: validating field formatting of currency field value after adding new record under me grid parent table in downloaded pdf
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true           | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}"
    When I click on "View" icon for "{Framework_recordUsed:AnnouncementHavingMultipleBudgetPeriods}" inside table
    When I navigate to "Budget" sub tab
    When I click on "Delete" icon for "BP-09" inside table
    When I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "New" :
      | Support Year | TestField |
      | BP-09        | 100000    |
    When I pause execution for "4" seconds
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "$100,000.00" on page "1" of "govgrants" pdf file

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                   |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,TestField__c |

  @104473    @validateTotalCurrencyFormattingAfterAddingNewRecordAtMEGridParentTableDownloadedPDF
  Scenario Outline: validating formatting of currency total value after adding new record  under me grid parent table in downloaded pdf
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true           | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:ApplicationHavingSingleBudgetPeriodToValidateTotalAmount}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationHavingSingleBudgetPeriodToValidateTotalAmount}" inside table
    When I navigate to "Budget" sub tab
    When I click on "Delete" icon for "BP-001" inside table
    When I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "New" :
      | Support Year | TestField |
      | BP-001       | 100000    |
    When I pause execution for "4" seconds
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "$100,000.00" on page "1" of "govgrants" pdf file

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                   |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,TestField__c |

  @104475    @validateTotalNumberFormattingAfterAddingNewRecordAtMEGridParentTableDownloadedPDF
  Scenario Outline: validating formatting of number total value after adding new record  under me grid parent table in downloaded pdf
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
      | Flex Table List       | Enable Total        | false              | ApiGeneratedId:2 |
      | Flex Table:General    | Enable Total Row    | false              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ApplicationBudgetPeriods |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true           | ApplicationBudgetPeriods |                           |                            |
      | Flex Table List       | Enable Total        | true           | ApplicationBudgetPeriods | Name                      | FTC-1532                   |
      | Flex Table:General    | Enable Total Row    | true           | ApplicationBudgetPeriods |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:ApplicationHavingSingleBudgetPeriodToValidateTotalAmount}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationHavingSingleBudgetPeriodToValidateTotalAmount}" inside table
    When I navigate to "Budget" sub tab
    When I click on "Delete" icon for "BP-002" inside table
    When I pause execution for "3" seconds
    When I enter the following values into flex table with id "---program:-:applicationBudgetCategoryInlineEditTableId---" by clicking "New" :
      | Support Year | Sequence Number |
      | BP-002       | 100000          |
    When I pause execution for "4" seconds
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "100,000" on page "1" of "govgrants" pdf file

    Examples:
      | defaultFieldsApi                                                         | newFieldsApi                        |
      | Id,SupportYear__c,DateTime__c,BudgetStartDate__c,Notes__c,Application__c | Id,SupportYear__c,SequenceNumber__c |

  @105416    @validateDollarSymbolInDownloaedDFAtFlexTableEnhanced-gPlanning @flexTableEnhanced
  Scenario: validate dollar sign in downloaded pdf file for enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF         | true              | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF         | true          | EnhancedDataTable  | Name                      | FLV-2548                   |
      | Flex Grid:General     | Enable Export (PDF) | true          | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Grants Enhanced Table"
    And I download the file
    Then I see "$300000" on page "1" of "govgrants" pdf file

  @105419    @validateDollarSignAtSingleLevelMEGridParentTableDownloadedPDF
  Scenario: validating dollar sign under single level me grid parent table in downloaded pdf
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "{Framework_recordUsed:ApplicationHavingSingleBudgetPeriodToValidateTotalAmount}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationHavingSingleBudgetPeriodToValidateTotalAmount}" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridProjectCostForApplication"
    And I select "Download as PDF" from parallel lines dropdown of "Program Financials"
    And I download the file
    Then I see "$8,000.00" on page "1" of "govgrants" pdf file

  @105385 @verifyThatSelectedValueIsDisplayedAtTheMultiPicklistFieldUsingCheckBoxButtonInsideDownloadedPDF
  Scenario:validate that selected value is displayed inside multipicklist field rendered as checkbox button in downloaded pdf
    Given I have "dynamicFieldConfig" configuration as below:
      | id                 | Type  | Name                 |
      | a0L1C00000WNaMrUAL | Radio | Multi-Picklist Field |
    And I update custom Dynamic Field setting changes:
      | id                 | Type     | Name                 |
      | a0L1C00000WNaMrUAL | Checkbox | Multi-Picklist Field |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Display 1" on page "1" of "govgrants" pdf file

  @105388 @verifyThatSelectedValueIsDisplayedAtTheMultiPicklistFieldUsingRadioButtonInsideDownloadedPDF
  Scenario:validate that selected value is displayed inside multipicklist field rendered as radio buton in downloaded pdf
    Given I have "dynamicFieldConfig" configuration as below:
      | id                 | Type  | Name                 |
      | a0L1C00000WNaMrUAL | Radio | Multi-Picklist Field |
    And I update custom Dynamic Field setting changes:
      | id                 | Type  | Name                 |
      | a0L1C00000WNaMrUAL | Radio | Multi-Picklist Field |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Display 1" on page "1" of "govgrants" pdf file

  @114427    @verifyReqFieldsAreHiddenFromDownloadPDFAtPageLayoutUsingHideFieldJSON
  Scenario: verify req fields are not displayed in downloaded pdf which are hidden using hide field JSON config field
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination11 | Grantee State Program | Name                      | PBD-3883                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantee State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "NGO" into field "FunderType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly see "Program Type" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I softly cannot see "Project Goals" on page "1" of "govgrants" pdf file
    Then I softly cannot see "Program Type" on page "1" of "govgrants" pdf file

  @114728    @verifyCurrencyFieldValueIsShownInDownloadedPDFAtHistoryTable-gPlanning @history
  Scenario: validate a currency field value is shown in downloaded pdf at history table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-027                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForFundedAmount}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForFundedAmount}" inside table
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    Then I see "$400,000" on page "1" of "govgrants" pdf file

  @114730    @verifyDecimalCurrencyFieldValueIsShownInDownloadedPDFAtHistoryTable-gPlanning @history
  Scenario: validate a decimal currency field value is shown in downloaded pdf at history table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for email notification check"
    When I click on "View" icon for "Announcement for email notification check" inside table
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    Then I softly see "$400,000.00" on page "1" of "govgrants" pdf file
    Then I softly see "$300,000.00" on page "1" of "govgrants" pdf file

  @114969    @verifyPageBlockSeperatorDisplayedInsideDownloadedPDF-gPlanning
  Scenario: verify page block seperator is displayed inside downloaded PDF from program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | false             | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true           | Grantee State Program | Name                      | PBD-9228                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForFundedAmount}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForFundedAmount}" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "2" seconds
    Then I see "Test Page Block1" on page "1" of "govgrants" pdf file

  @115546     @VerifyMeGridTableViewActionsIsAlignedProperly-gPlanning @flexGrid
  Scenario: validate alignment of view actions under me grid parent flex table - Planning phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-0001" in "---program:-:ProjectCostForApplicationFlexGridTableId---" panel
    Then I see actions are aligned at "---program:-:ProjectCostForApplicationFlexGridTableId---" me grid parent table and compared with "meGridProgramFinancials.png"

  @115547     @VerifyMeGridTableViewActionsIsAlignedProperly-gPlanning @flexGrid
  Scenario: validate alignment of view actions under me grid parent flex table - Planning phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-0001" in "---program:-:ProjectCostForApplicationFlexGridTableId---" panel
    Then I see actions are aligned at "---program:-:ProjectCostForApplicationFlexGridTableId---" me grid parent table and compared with "meGridProgramFinancials.png"

  @116359    @verifyDoubleDollarSymbolIsDisplayedForTotalInDownloadedPDFAtMEGridChildTable-gApplication @flexGrid
  Scenario: validate dollar symbol at total is displayed at ME Grid under downloaded pdf at child table - gApplication
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Application Budget"
    And I download the file
    Then I see "$60,000.00" on page "1" of "govgrants" pdf file

  @116063    @verifyThatDollarSymbolIsDisplayedInsideXLSDownloadedForEnhancedDataTable
  Scenario: validate dollar symbol in enhanced data table displayed under downloaded XLS
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (xls / csv) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF               | true          | EnhancedDataTable  | Name                      | FLV-2548                   |
      | Flex Grid:General     | Enable Export (xls / csv) | true          | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Grants Enhanced Table"
    Then I see "$" in downloaded xls or csv file "govgrants"

  @118383    @verifyDownloadAsPDFAtFDM-gApplication @flexGrid
  Scenario: validate download as pdf at FDM table - gApplication
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I navigate to "Review FDM" content inside "Manage Application Review" subheader on left panel
    When I click on parallel lines menu bar with data target value "#toggleFlexTableFDMList1"
    And I select "Download as PDF" from parallel lines dropdown of "Funding Decision Memo"
    And I download the file
    Then I see "QA Team Announcement 1" on page "1" of "govgrants" pdf file