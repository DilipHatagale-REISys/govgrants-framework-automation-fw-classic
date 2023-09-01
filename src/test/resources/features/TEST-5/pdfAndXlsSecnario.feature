@allPdfAndXlxRelatedScenarios @regression-test5
Business Need: All pdf and xls related scenario including component and completed backlogs
  Test all download pdf and xls based scenarios
  As a configuration manager i make different configurational changes for download pdf and xls related scenarios and will validate them.

  @39294    @skipFieldForExportFieldAtFlexTable-gPlanning @pass
  Scenario: Setup skip form export for 'Status_c' in configuration and validating inside program flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export |                   | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF)    | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export | Status__c     | Programs           |                           |                            |
      | Flex Table:General    | Enable Export (PDF)    | true          | Programs           |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Draft"
    And I download the file
    And I pause execution for "5" seconds
    Then I cannot see "Status" on page "1" of "govgrants" pdf file

  @40233    @showInPdfFieldAtFlexTable-gPlanning @pass
  Scenario: Disabling active programs from list view of program flex table from config and validating it at program flex table-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Draft"
    And I download the file
    And I pause execution for "5" seconds
#    Then I see "Active Programs" on page "1" of "govgrants" pdf file
    Then I see "Internal Programs - Active" on page "1" of "govgrants" pdf file

  @35095    @validateSkipFormForDownload-gapplications @smoke
  Scenario: Setup skip form download for 'General Budget Details Form' in configuration and validating inside Applications view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Forms                 | Skip Form Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Skip Form Download | true          | General Application Budget Form |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Automation Internal Program for flow"
    When I click on "View" icon for "Automation Internal Program for flow" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "20" seconds
    Then I cannot see "Form - Budget Details" on page "1" of "govgrants" pdf file

  @35986    @skipForExportFieldAtPageBlock-gPlanning
  Scenario: Setup skip form export for 'Program Information' in configuration and validating inside program detail page
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName       | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Skip for Export | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Skip for Export | true          | Grantor State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "10" seconds
    Then I see "EGMS ID" on page "1" of "govgrants" pdf file

  @50389    @pdfRenderTypeFieldAtMonitoringScheduleGrantorParentFlexTableForContentInBlock-gMonitoring @pass
  Scenario: validate Activated status in downloaded pdf file after checking check box of show in pdf at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | PDF Render Type     | Block             | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | PDF Render Type     | Block         | MonitoringScheduleGrantor |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true          | MonitoringScheduleGrantor |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableMonitoringScheduleGrantor"
    And I select "Download as PDF" from parallel lines dropdown of "Scheduled Activities - Next 30 Days"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "EGMS ID" on page "1" of "govgrants" pdf file

  @50390    @pdfRenderTypeFieldAtMonitoringScheduleGrantorParentFlexTableForContentInTable-gMonitoring
  Scenario: validate Activated status in downloaded pdf file after checking check box of show in pdf at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | PDF Render Type     | Block             | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | PDF Render Type     | Table         | MonitoringScheduleGrantor |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true          | MonitoringScheduleGrantor |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableMonitoringScheduleGrantor"
    And I select "Download as PDF" from parallel lines dropdown of "Scheduled Activities - Next 30 Days"
    And I download the file
    And I pause execution for "10" seconds
    Then I see "EGMS ID" on page "1" of "govgrants" pdf file
    #Then I see "Subaward ID" on page "1" of "govgrants" pdf file

  @49252    @showInPDFFieldAtParentFlexTable-gPlanning
  Scenario: validate Active status in downloaded pdf file after checking check box of show in pdf at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF         | false             | ApiGeneratedId:0 |
      | Flex Table                | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF         | true          | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Table:General        | Enable Export (PDF) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "10" seconds
    Then I see "Description" on page "1" of "govgrants" pdf file

  @49254    @showInPDFFieldToVerifyFlexTableNotContainAnyListViewAtParentFlexTable-gPlanning
  Scenario: validate Activated status in downloaded pdf file after checking check box of Is Master View Field at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View      | false             | ApiGeneratedId:0 |
      | Flex Table                | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View      | false         | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Table:General        | Enable Export (PDF) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "10" seconds
    Then I see "Description" on page "1" of "govgrants" pdf file

  @49256    @showInPDFFieldToVerifyFlexTableContainMoreThanOneListViewAtParentFlexTable-gPlanning
  Scenario: validate Activated status in downloaded pdf file after checking check box of Is Master View Field at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View      | false             | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF         | false             | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Show in PDF         | false             | ApiGeneratedId:3 |
      | Flex Table                | Enable Export (PDF) | true              | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View      | true          | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Grid:Flex Table List | Show in PDF         | true          | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Grid:Flex Table List | Show in PDF         | true          | ProgramReviewStepTemplates | Name                      | FLV-3855                   |
      | Flex Table:General        | Enable Export (PDF) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Announcement" on page "1" of "govgrants" pdf file

  @49234    @showInPDFFieldWithOneActiveListViewAndIsmasterViewCheckedAtChildFlexTable-gPlanning
  Scenario: validate being amended status in downloaded pdf file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Active ?            | true              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF         | true              | ApiGeneratedId:1 |
      | Flex Table                | Enable Export (PDF) | true              | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Active ?            | false         | ProgramReviewStepPanelTemplates | Name                      | FLV-3856                   |
      | Flex Grid:Flex Table List | Show in PDF         | false         | ProgramReviewStepPanelTemplates | Name                      | FLV-3455                   |
      | Flex Grid:Flex Table List | Is Master View      | true          | ProgramReviewStepPanelTemplates | Name                      | FLV-3455                   |
      | Flex Table:General        | Enable Export (PDF) | true          | ProgramReviewStepPanelTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Setup tabs" sub tab
    When I perform quick search for "1" in "ProgramReviewStepTemplatesFlexToggle" panel
    When I expand nested table containing column value "1"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepPanelTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "20" seconds
    Then I see "Description" on page "1" of "govgrants" pdf file

  @49236    @showInPDFFieldWithMultipleActiveListViewAndShowInPDFNotCheckedAtChildFlexTable-gPlanning
  Scenario: validate being amended status in downloaded pdf file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF         | true              | ApiGeneratedId:0 |
      | Flex Table                | Enable Export (PDF) | true              | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF         | false         | ProgramReviewStepPanelTemplates | Name                      | FLV-3455                   |
      | Flex Grid:Flex Table List | Show in PDF         | false         | ProgramReviewStepPanelTemplates | Name                      | FLV-3856                   |
      | Flex Grid:Flex Table List | Is Master View      | false         | ProgramReviewStepPanelTemplates | Name                      | FLV-3856                   |
      | Flex Grid:Flex Table List | Is Master View      | true          | ProgramReviewStepPanelTemplates | Name                      | FLV-3455                   |
      | Flex Table:General        | Enable Export (PDF) | true          | ProgramReviewStepPanelTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Setup tabs" sub tab
    #When I perform quick search for "1" in "ProgramReviewStepTemplatesFlexToggle" panel
    When I expand nested table containing column value "1"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepPanelTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Justification" on page "1" of "govgrants" pdf file

  @49238    @showInPDFFieldWithMultipleActiveListViewAndShowInPDFCheckedAtChildFlexTable-gPlanning
  Scenario: validate being amended status in downloaded pdf file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue | coreComponentField                        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF         | false         | ProgramReviewStepPanelTemplatesFlexToggle | Name                      | FLV-3455                   |
      | Flex Grid:Flex Table List | Is Master View      | false         | ProgramReviewStepPanelTemplatesFlexToggle | Name                      | FLV-3455                   |
      | Flex Grid:Flex Table List | Is Master View      | true          | ProgramReviewStepPanelTemplatesFlexToggle | Name                      | FLV-3856                   |
      | Flex Grid:Flex Table List | Show in PDF         | true          | ProgramReviewStepPanelTemplatesFlexToggle | Name                      | FLV-3856                   |
      | Flex Table:General        | Enable Export (PDF) | true          | ProgramReviewStepPanelTemplatesFlexToggle |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    #When I perform quick search for "first review" in "---program:-:flexGridEnhancedReviewStepID---" panel
    When I expand nested table containing column value "1"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepPanelTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Description" on page "1" of "govgrants" pdf file

  @49253   @showInPDFFieldWithFlexTableContainsOnlyOneListViewAtParentFlexTable-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF               | false             | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (xls / csv) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF               | true          | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Grid:General         | Enable Export (xls / csv) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I see "Description" in downloaded xls or csv file "govgrants"

  @49257   @isMasterViewFieldWithFlexTableContainMOreThanOneListViewInShowInPDF-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View            | true              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF               | false             | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Show in PDF               | false             | ApiGeneratedId:2 |
      | Flex Grid                 | Enable Export (XLS / CSV) | false             | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View            | true          | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Grid:Flex Table List | Show in PDF               | true          | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Grid:Flex Table List | Show in PDF               | true          | ProgramReviewStepTemplates | Name                      | FLV-3855                   |
      | Flex Grid:General         | Enable Export (XLS / CSV) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I see "Description" in downloaded xls or csv file "govgrants"

  @49239   @showInPDFFieldWithFlexTableContainsOnlyOneListViewAtChildFlexTable-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF               | true              | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF               | false         | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Grid:General         | Enable Export (XLS / CSV) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    #When I perform quick search for "desc" in "---program:-:flexGridEnhancedReviewStepID---" panel
    When I expand nested table containing column value "1"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepPanelTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I see "Description" in downloaded xls or csv file "govgrants"

  @49237   @isMasterViewFieldWithFlexTableDoesNotContainAnyListViewInShowInPDFAtChildFlexTable-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View            | true              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF               | true              | ApiGeneratedId:1 |
      | Flex Grid                 | Enable Export (XLS / CSV) | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View            | true          | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Grid:Flex Table List | Show in PDF               | false         | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Grid:General         | Enable Export (XLS / CSV) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    #When I perform quick search for "desc" in "---program:-:flexGridEnhancedReviewStepID---" panel
    When I expand nested table containing column value "1"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepPanelTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I see "Description" in downloaded xls or csv file "govgrants"

  @49235   @isMasterViewFieldWithFlexTableContainMOreThanOneListViewInShowInPDFAtChildFlexTable-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Active ?                  | true              | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Show in PDF               | true              | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Show in PDF               | false             | ApiGeneratedId:2 |
      | Flex Grid:Flex Table List | Is Master View            | true              | ApiGeneratedId:3 |
      | Flex Grid                 | Enable Export (XLS / CSV) | false             | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Active ?                  | false         | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Grid:Flex Table List | Show in PDF               | true          | ProgramReviewStepTemplates | Name                      | FLV-3857                   |
      | Flex Grid:Flex Table List | Show in PDF               | true          | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Grid:Flex Table List | Is Master View            | true          | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Grid:General         | Enable Export (XLS / CSV) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    #When I perform quick search for "desc" in "---program:-:flexGridEnhancedReviewStepID---" panel
    When I expand nested table containing column value "1"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepPanelTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I see "Agency" in downloaded xls or csv file "govgrants"

  @49255   @isMasterViewFieldWithFlexTableDoesNotContainAnyListViewInShowInPDF-gPlanning
  Scenario: validate Activated status in downloaded xls file after making changes at config and validating it inside enhanced grid of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View            | true              | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View            | true          | ProgramReviewStepTemplates | Name                      | FLV-3007                   |
      | Flex Grid:General         | Enable Export (XLS / CSV) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I see "Announcement" in downloaded xls or csv file "govgrants"

  @56278    @headersOfChildLevelRecordsShouldBeDisplayedInsidePDF
  Scenario: validate downloaded pdf file should contain header of child level records after checking checkbox of Enable export and show header panel and validating inside applicationBudgetPeriod flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
      | Flex Table            | Show Header Panel   | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ApplicationGrantorBudgetPeriods |                           |                            |
      | Flex Table:General    | Show Header Panel   | true          | ApplicationGrantorBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "JyotiApplication"
    When I click on "View" icon for "JyotiApplication" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryGrantorFlexGrid"
    And I select "Download as PDF" from parallel lines dropdown of "Budget Details"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Budget Period #" on page "1" of "govgrants" pdf file

  @56766    @downloadedPDFFileContainsFormDetailsOnGranteeApplication @wip
  Scenario: validate pdf contains form details for grantee application
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantee"
    And I navigate to "Applications" tab
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I click on "Menu" in the page details
    And I select "Download as PDF" from dropdown
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Form" on page "5" of "govgrants" pdf file

  @56524    @PDFShouldGetDownlodedWithThrowingAnyErrorAtGranteeApplicationView @wip
  Scenario: validate pdf file getting downloaded without any error and oppotunity overview text is present
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantee"
    And I navigate to "Applications" tab
    And I click toggle button to select "Draft Applications"
    When I perform quick search for "APP-HHS-082"
    When I click on "View" icon for "APP-HHS-082" inside table
    When I click on "Menu" in the page details
    And I select "Download as PDF" from dropdown
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Opportunity Overview" on page "1" of "govgrants" pdf file

  @57143    @pdfFileShouldGetDownloadedProperlyForFundingAccount @pass
  Scenario: validate downloaded pdf file should get downloaded properly with content of funding account
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | AnnouncementContacts |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
#    When I click on top right button "Associate" in flex table with id "ProgramFundingAccount"
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableAnnouncementContacts"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Name" on page "1" of "govgrants" pdf file

  @56837    @pdfFileShouldGetDownloadedProperlyForDefaultApplicationReviewStep @check
  Scenario: validate downloaded pdf file should get downloaded properly with text containing default application review step
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | AnnouncementContacts |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableAnnouncementContacts"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Email" on page "1" of "govgrants" pdf file

  @56833    @pdfFileShouldGetDownloadedProperlyForProgramServiceArea @check @pass
  Scenario: validate downloaded pdf file should get downloaded properly with text containing program servicearea
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | AnnouncementContacts |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableAnnouncementContacts"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Organization" on page "1" of "govgrants" pdf file

  @59061    @downloadAsPDFShouldWorkProperlyAtProgramFlexTable @pass
  Scenario: Validate PDF is getting downloaded correctly at program flex table
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Draft"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Internal Programs - Active" on page "1" of "govgrants" pdf file

  @59186    @numberFieldShouldDisplayedInDownloadPDFFileAtProgramFlexTable
  Scenario: validate value of Number Field should displayed correctly in downloaded pdf file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | Programs           |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I enter value "1" into field "Number__c"
    And I click on "Save" in the page details
    When I click on "Menu" in the page details
    And I select "Download as PDF" from dropdown
    And I download the file
    And I pause execution for "5" seconds
    Then I see "1.00" on page "1" of "govgrants" pdf file

  @59974    @headersOfChildLevelRecordsShouldNotBeBeDisplayedInsidePDF
  Scenario: validate downloaded pdf file should not contain header of child level records after unchecking checkbox of show header panel at child table of enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Show Header Panel   | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Show Header Panel   | false         | ProgramReviewStepTemplates |                           |                            |
      | Flex Table:General    | Enable Export (PDF) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I cannot see "Review Steps" on page "1" of "govgrants" pdf file

  @59360    @AMPMShouldDisplayForDateTimeFieldInsidePDFFileAtEnhancedGrid
  Scenario: validate AM/PM should display inside downloaded pdf file for DateTime Field At enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    #When I perform quick search for "Automation Internal Announcement for Testing" in "flexGridEnhancedDivId" panel
#    And I edit the following rows inline in flex table with id "---program:-:flexGridEnhancedReviewStepID---" by clicking "Edit" :
#      | Project Title | DateTime |
#      | Demo_Title    | 0        |
    And I refresh the page
    When I navigate to "Setup tabs" sub tab
   #When I perform quick search for "Automation Internal Announcement for Testing" in "flexGridEnhancedDivId" panel
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "SME Review" on page "28" of "govgrants" pdf file

  @56480    @xlsFileShouldGetDownloadedProperlyForApplicatioBudgetCategoryFlexGrid @wip
  Scenario: validating download as XLS is getting downloaded properly at Budget Details period grid
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantee"
    And I navigate to "Applications" tab
    When I perform quick search for "APP-HHS-082"
    When I click on "View" icon for "APP-HHS-082" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridApplicationBudgetCategoryGrantorFlexGrid"
    And I select "Download as XLS" from parallel lines dropdown of "Budget Details"
    Then I see "Proposed Uses Of Total Funds" in downloaded xls or csv file "govgrants"

  @57145    @csvFileShouldGetDownloadedProperlyForFundingAccount
  Scenario: validate CSV file should get downloaded properly with content at funding account flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | SelectFundingAccounts |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I click on top right button "Associate" in flex table with id "ProgramFundingAccount"
    When I click on parallel lines menu bar with data target value "#toggleFlexTableSelectFundingAccounts"
    And I select "Download as CSV" from parallel lines dropdown of "Funding Accounts "
    Then I see "Automation PM" in downloaded xls or csv file "govgrants"

  @56838    @csvFileShouldGetDownloadedProperlyForDefaultApplicationReviewStep
  Scenario: validate download csv file should get downloaded properly with text containing default application review step
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField                      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | ProgramRelatedAppReviewStepTemplatesNew |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableProgramRelatedAppReviewStepTemplatesNew"
    And I select "Download as CSV" from parallel lines dropdown of "Default Application Review Steps"
    Then I see "Review Steps" in downloaded xls or csv file "govgrants"

  @56834    @csvFileShouldGetDownloadedProperlyForProgramServiceArea @wip
  Scenario: validate download as csv file should get downloaded properly with text containing program service area
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RelatedProgramServiceAreas |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
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
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Late" content inside "Task Summary By Due Date" charts
    When I click on parallel lines menu bar with data target value "#toggleFlexTableTasksLate"
    And I select "Download as CSV" from parallel lines dropdown of "My Late Tasks "
    Then I see "My Late Tasks" in downloaded xls or csv file "govgrants"

  @56951   @lookupFieldShouldDisplayedInDownloadedXLSFileForActiveGrantsRiskAssessment
  Scenario: validate look up  field in downloaded xls file after making changes at config and validating it inside Active grants grid risk assessment grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | true          | OrgRiskAssessment  |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    When I click on parallel lines menu bar with data target value "#OrgRiskAssessmentFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Organization Risk Assessments - Active"
    Then I see "Organization Risk Assessments - Active" in downloaded xls or csv file "govgrants"

  @56955   @dateFieldShouldDisplayedInDownloadedXLSFileForActiveGrantsRiskAssessment
  Scenario: validate date field in downloaded xls file after making changes at config and validating it inside Active grants grid risk assessment grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | true          | OrgRiskAssessment  |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    When I click on parallel lines menu bar with data target value "#OrgRiskAssessmentFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Organization Risk Assessments - Active"
    Then I see "04/24/2022" in downloaded xls or csv file "govgrants"

  @78095    @verifyPicklistFieldValueIsShownInDownloadedPDFAtEnhancedGrid-gPlanning @enhancedGrid
  Scenario: validate a picklist field value is shown in downloaded pdf instead of picklist value API name at EnhancedGrid - gPlanning
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "SME Review" on page "1" of "govgrants" pdf file

  @78097    @verifyPicklistFieldValueIsShownInDownloadedXLSAtEnhancedGrid-gPlanning @enhancedGrid
  Scenario: validate a picklist field value is shown in downloaded xls instead of picklist value API name at EnhancedGrid - gPlanning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I see "SME Review" in downloaded xls or csv file "govgrants"

  @79169    @verifyPicklistFieldValueIsShownInDownloadedPDFAtProgramFlexTable @flexTable
  Scenario: validate a picklist field value is shown in downloaded pdf instead of picklist value API name at flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    #  | Flex Table List       | Filter Clause       | <oldSoqlFilter>    | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | Programs           |                           |                            |
      #| Flex Table List       | Filter Clause       | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Draft"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Program Name" on page "1" of "govgrants" pdf file

  @79171    @verifyPicklistFieldValueIsShownInDownloadedXLSAtProgramFlexTable @flexTable
  Scenario: validate a picklist field value is shown in downloaded xls instead of picklist value API name at flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
     # | Flex Table List       | Filter Clause             | <oldSoqlFilter>    | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | Programs           |                           |                            |
    #  | Flex Table List       | Filter Clause             | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Draft"
    Then I see "Program Name" in downloaded xls or csv file "govgrants"

  @79176    @verifyPicklistFieldValueIsShownInDownloadedPDFAtHistoryTable-gPlanning @history
  Scenario: validate a picklist field value is shown in downloaded pdf instead of picklist value API name at history table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    And I enter value "Loan" into field "ProgramType__c"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Loan" on page "1" of "govgrants" pdf file

  @79178    @verifyPicklistFieldValueIsShownInDownloadedXLSAtHistoryTable-gPlanning @history
  Scenario: validate a picklist field value is shown in downloaded xls instead of picklist value API name at history table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active                 | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active                 | true          | Grantor State Program | Name                      | TAB-2623                   |
      | Flex Table:General                  | Enable Export (XLS / CSV) | true          | History               |                           |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    And I enter value "Loan" into field "ProgramType__c"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as CSV" from parallel lines dropdown of "Field History"
    Then I see "Loan" in downloaded xls or csv file "govgrants"

  @79173    @verifyPicklistFieldValueIsShownInDownloadedPDFAtPageLayout-gPlanning @pageLayout
  Scenario: validate a picklist field value is shown in downloaded pdf instead of picklist value API name at page detail
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Program Name" on page "1" of "govgrants" pdf file

  @79742    @verifyIfNoneIsSelectedInPicklistFieldThenAfterSaveABlankValueIsShownInDownloadedPDFAtEnhancedGrid-gPlanning @enhancedGrid
  Scenario: validate if none is selected and saved in picklist from dropdown then blank value is shown in downloaded pdf - EnhancedGrid
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF    | false             | ApiGeneratedId:0 |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:1 |
    #  | Flex Table List           | Filter Clause       | <oldSoqlFilter>    | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF    | true          | ProgramReviewStepTemplates | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Is Master View | true          | ProgramReviewStepTemplates | Name                      | FLV-2539                   |
 #     | Flex Table List           | Filter Clause       | <newSoqlFilter> | ProgramReviewStepTemplates | Name                      | FLV-2539                   |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Setup tabs" sub tab
#    When I perform quick search for "test Program for automation DND" in "---program:-:flexGridEnhancedReviewStepID---" panel
#    When I click on "Edit" icon for "test Program for automation DND" inside table
    When I enter value "--None--" into field "GrantType__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedReviewStepID---"
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "" on page "1" of "govgrants" pdf file

  @77434    @validateDownloadedPDFContentIfShowInPDFCheckboxIsCheckedAtFlexTableEnhanced-gPlanning @flexTableEnhanced
  Scenario: validate Activated status in downloaded pdf file for enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF         | true              | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF         | true          | DataTableEnhanceProgramContacts | Name                      | FLV-2548                   |
      | Flex Grid:General     | Enable Export (PDF) | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#DataTableEnhanceProgramContactsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts@1234567890!@#$%^&*()"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Name" on page "1" of "govgrants" pdf file

  @77472    @validateDownloadedXLSContentIfShowInPDFCheckboxIsCheckedAtFlexTableEnhanced-gPlanning @flexTableEnhanced
  Scenario: validate Activated status in downloaded xls file for enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (xls / csv) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF               | true          | DataTableEnhanceProgramContacts | Name                      | FLV-2548                   |
      | Flex Grid:General     | Enable Export (xls / csv) | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#DataTableEnhanceProgramContactsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Contacts@1234567890!@#$%^&*()"
    Then I see "Name" in downloaded xls or csv file "govgrants"

  @79744    @verifyIfNoneIsSelectedInPicklistFieldThenAfterSaveABlankValueIsShownInDownloadedXLSAtEnhancedGrid-gPlanning @enhancedGrid
  Scenario: validate if none is selected and saved in picklist from dropdown then blank value is shown in downloaded XLS - EnhancedGrid
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF    | false             | ApiGeneratedId:1 |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:2 |
  #    | Flex Table List           | Filter Clause       | <oldSoqlFilter>    | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF    | true          | ProgramReviewStepTemplates | Name                      | FLV-2539                   |
      | Flex Grid:Flex Table List | Is Master View | true          | ProgramReviewStepTemplates | Name                      | FLV-2539                   |
   #   | Flex Table List           | Filter Clause       | <newSoqlFilter> | ProgramReviewStepTemplates | Name                      | FLV-2539                   |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "test Program for automation DND" in "---program:-:flexGridEnhancedReviewStepID---" panel
    When I click on "Edit" icon for "test Program for automation DND" inside table
    When I enter value "--None--" into field "GrantType__c"
    When I click on top right button "Save" in flex table with id "---program:-:flexGridEnhancedReviewStepID---"
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I see "" in downloaded xls or csv file "govgrants"

  @77820    @validateDownloadedPDFContentAsStatusIsActiveUnderParentFlexTableForEnhancedGridAtSideBar-gHOME @sidebar
  Scenario: validate Activated status in downloaded pdf file for enhanced grid at sidebar - home phase
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF         | false             | ApiGeneratedId:0 |
      | Flex Table                | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF         | true          | ProgramReviewStepTemplates | Name                      | FLV-2539                   |
      | Flex Table:General        | Enable Export (PDF) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Active" on page "1" of "govgrants" pdf file

  @77821    @validateDownloadedXLSContentAsStatusIsActiveUnderParentFlexTableForEnhancedGridAtSideBar-gHOME @sidebar
  Scenario: validate Activated status in downloaded xls file for enhanced grid at sidebar - home phase
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF               | false             | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (xls / csv) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Show in PDF               | true          | ProgramReviewStepTemplates | Name                      | FLV-2539                   |
      | Flex Grid:General         | Enable Export (xls / csv) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Flex Grid Enhanced" content inside "Manage Organizations" subheader on left panel
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I see "Active" in downloaded xls or csv file "govgrants"

  @77800    @validateDownloadedPDFContentAsStatusIsActiveAtFlexTableEnhancedUnderSidebar-gHome @sidebar
  Scenario: validate Activated status in downloaded pdf file for enhanced data table at sidebar
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF         | true              | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF         | true          | DataTableEnhanceProgramContacts | Name                      | FLV-2548                   |
      | Flex Grid:General     | Enable Export (PDF) | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    When I click on parallel lines menu bar with data target value "#DataTableEnhanceProgramContactsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts@1234567890!@#$%^&*()"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Active" on page "1" of "govgrants" pdf file

  @77819    @validateDownloadedXLSContentAsStatusIsActiveAtFlexTableEnhancedUnderSidebar-gHome @sidebar
  Scenario: validate Activated status in downloaded xls file for enhanced data table at sidebar
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (xls / csv) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (xls / csv) | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Data table enhanced record" content inside "Manage Organizations" subheader on left panel
    When I click on parallel lines menu bar with data target value "#DataTableEnhanceProgramContactsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Contacts@1234567890!@#$%^&*()"
    Then I see "Active" in downloaded xls or csv file "govgrants"

  @83781    @validatePicklistFieldLabelAtFlexTableInDownloadedPDF-gPlanning @flexTable
  Scenario: validate label of 'Status_c' field inside downloaded PDF at program flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | Programs           |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Draft"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Status" on page "1" of "govgrants" pdf file

  @83785    @validatePicklistFieldLabelAtFlexTableInDownloadedXLS-gPlanning @flexTable
  Scenario: validate label of 'Status_c' field inside downloaded XLS at program flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (xls / csv) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (xls / csv) | true          | Programs           |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Draft"
    Then I see "Status" in downloaded xls or csv file "govgrants"

  @83930    @verifyPicklistFieldLabelIsShownInDownloadedPDFAtPageLayout-gPlanning @pageLayout @smoke
  Scenario: validate a picklist field label is shown in downloaded pdf instead of picklist field API name inside program detail page
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed and Archived Announcements"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Announcement Type" on page "1" of "govgrants" pdf file

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
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    When I login to "As a Grantor" app as "Admin" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I click on "Menu" in the page details
    And I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    And I pause execution for "5" seconds
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
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    When I login to "As a Grantor" app as "Admin" user
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    And I pause execution for "5" seconds
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
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    When I login to "As a Grantor" app as "Admin" user
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    And I pause execution for "5" seconds
    Then I softly see "06/12/2020 5:00 PM" on page "1" of "govgrants" pdf file
    Then I softly see "06/11/2020 4:14 PM" on page "1" of "govgrants" pdf file

  @88656   @VerifyChangedValueColumnInDownloadAsPDFForFieldHistoryTable @history
  Scenario: Validate by click on Download As PDF option a PDF is getting downloaded and value is present in changed value column in history table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    When I login to "As a Grantor" app as "Admin" user
    When I navigate to "Planning" tab
    When I perform quick search for "Test Program specific for History"
    When I click on "View" icon for "Test Program specific for History" inside table
    When I navigate to "History" sub tab
    When I select "Program" from dropdown inside page block
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "DateandTime" on page "1" of "govgrants" pdf file

  @91565    @numberFieldWithNoDecimalShouldDisplayedInDownloadPDFFileAtProgramFlexTable  @flexTable
  Scenario: validate value of Number Field should displayed correctly in downloaded pdf file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | Programs           |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Draft"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "20.0000" on page "25" of "govgrants" pdf file

  @91691   @validateDollarSymbolAtCurrencyFieldTotalInPdfAtFlexTable-gPlanning
  Scenario:  validate dollar symbol in relational field is displayed at program flex table dowloaded pdf-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Show in PDF         | false             | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
     # | Flex Table List       | Filter Clause       | <oldSoqlFilter>    | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF         | true          | Programs           | Name                      | FLV-1837                   |
      | Flex Table:General    | Enable Export (PDF) | true          | Programs           |                           |                            |
     # | Flex Table List       | Filter Clause       | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Draft"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "$5,000" on page "1" of "govgrants" pdf file

  @91692   @validateDollarSymbolAtCurrencyFieldTotalInxlsAtFlexTable-gPlanning
  Scenario:  validate dollar symbol in relational field is displayed at program flex table downloaded xls-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table List       | Show in PDF               | false             | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (xls / csv) | true              | ApiGeneratedId:1 |
     # | Flex Table List       | Filter Clause             | <oldSoqlFilter>    | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF               | true          | Programs           | Name                      | FLV-1837                   |
      | Flex Table:General    | Enable Export (xls / csv) | true          | Programs           |                           |                            |
   #  | Flex Table List       | Filter Clause             | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as CSV" from parallel lines dropdown of "Internal Programs - Draft"
    Then I see "$5,000" in downloaded xls or csv file "govgrants"

  @92065    @validateCurrencyFieldWithNoDecimalValueAtProgramFlexTableUnderDownloadedPDF @flexTable
  Scenario: validate if we enter decimal value in non-decimal currency field then non-decimal value should get saved and displayed correctly in flex table downloaded pdf
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    #  | Flex Table List       | Filter Clause       | <oldSoqlFilter>    | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | Programs           |                           |                            |
    #  | Flex Table List       | Filter Clause       | <newSoqlFilter> | Programs           | Name                      | FLV-1837                   |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    And I enter value "40000.12" into field "fieldFundedAmount__c"
    When I click on "Save" in the page details
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Draft"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "$40,000" on page "1" of "govgrants" pdf file

  @70096    @verifyDownloadingOfTemplateFile @SheetJS
  Scenario: Validate Template file is getting downloaded or not on download button click inside download and upload wizard modal.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Data Import/Export | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true          | Programs           |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I click on button "Download File" on download & upload wizard modal
    Then I see "Program Name" in downloaded xls or csv file "govgrants"

  @96571    @validateIfShowInPDFForAnyListViewIsCheckedThenThatListViewContentShouldBeDisplayedInDownloadedPDF @flexTable
  Scenario: verify if Show in pdf for draft announcement list view is checked then draft announcement is displayed inside downloaded pdf
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | filterId         |
      | Flex Table List       | Show in PDF | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF | true          | ActiveFundingOpportunities | Name                      | FLV-2399                   |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I click on parallel lines menu bar with data target value "#toggleFlexTableActiveFundingOpportunities"
    And I select "Download as PDF" from parallel lines dropdown of "Draft Announcements"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Draft Announcements" on page "1" of "govgrants" pdf file

  @98869    @verifyDownloadingAsPDFAtAwardTable-gAward @flexTable
  Scenario: validate by click download as pdf at active award flex table then it is shown in downloaded pdf
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Test Forms" content inside "Manage Grants, Awards & Amendments" subheader on left panel
    When I click on parallel lines menu bar with data target value "#toggleFlexTableGrantorActiveAwards"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Test Forms" on page "1" of "govgrants" pdf file

  @100659    @validateFormatOfCurrencyFieldValueWithDollarSymbolInsideDownloadedPDFAtPageBlockDetail-gPlanning @pageLayout
  Scenario: validate format of currency field value with $ symbol inside program detail page
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "5" seconds
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
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableCommunicationHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Messages"
    And I download the file
    And I pause execution for "5" seconds
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
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableCommunicationHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Messages"
    And I download the file
    And I pause execution for "5" seconds
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
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableCommunicationHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Messages"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "09/04/2020 5:05 AM" on page "1" of "govgrants" pdf file

  @102102    @verifyHideFieldJsonFieldByHidingTextFieldOnTheBasisOfPicklistFieldUnderDownloadedPDF
  Scenario: Set up hide field json value to Hide title from Overview page block using picklist field value and verify at pdf
    Given I have "default" configuration as below:
      | configurationCategory               | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Config | Hide Fields JSON |                   | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName        | fieldNewValue                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Config | Hide Fields JSON | govgrants_config:HideTextFieldOnTheBasisOfPicklistUsingHideFiledJSON | Grantor State Program | Name                      | PBD-23618                  |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "5" seconds
    Then I cannot see "Title" on page "1" of "govgrants" pdf file

  @100500 @verifyThatIfPicklistFieldValueIsChanagedThenItIsDisplayedInFieldHistoryTableInDownloadedPDFFromPageLyout
  Scenario: verify that if picklist field value is changed then it is displayed correctly field history table in downloaded pdf from page layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | false         | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    And I enter value "Loan" into field "ProgramType__c"
    And I click on "Save" in the page details
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Loan" on page "5" of "govgrants" pdf file

  @105416    @validateDollarSymbolInDownloaedDFAtFlexTableEnhanced-gPlanning @flexTableEnhanced
  Scenario: validate dollar sign in downloaded pdf file for enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Show in PDF         | true              | ApiGeneratedId:0 |
      | Flex Grid                 | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF         | true          | DataTableEnhanceProgramContacts | Name                      | FLV-2548                   |
      | Flex Grid:General     | Enable Export (PDF) | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#DataTableEnhanceProgramContactsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts@1234567890!@#$%^&*()"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Contacts@1234567890!@#$%^&*()" on page "1" of "govgrants" pdf file

  @114427    @verifyReqFieldsAreHiddenFromDownloadPDFAtPageLayoutUsingHideFieldJSON
  Scenario: verify req fields are not displayed in downloaded pdf which are hidden using hide field JSON config field
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I clear the value from field "fieldProjectGoals__c"
    When I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Grantor State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON  | govgrants_config:HidingBadgesByUsingJSONCombination11 | Grantor State Program | Name                      | PBD-3883                   |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit                                   | Grantor State Program | Name                      | PBD-9163                   |
    When I click on "Edit" in the page details
    And I enter value "NGO" into field "FunderType__c"
    Then I softly see "Project Goals" is not displayed inside page block detail
    Then I softly see "Program Type" is not displayed inside page block detail
    When I click on "Save" in the page details
    Then I softly do not see missing field badge on "Overview" tab
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "5" seconds
    Then I softly cannot see "Project Goals" on page "1" of "govgrants" pdf file
    Then I softly cannot see "Program Type" on page "1" of "govgrants" pdf file

  @114728    @verifyCurrencyFieldValueIsShownInDownloadedPDFAtHistoryTable-gPlanning @history
  Scenario: validate a currency field value is shown in downloaded pdf at history table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:programForFundedAmount}"
    When I click on "View" icon for "{Framework_recordUsed:programForFundedAmount}" inside table
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "$400,000" on page "1" of "govgrants" pdf file

  @114730    @verifyDecimalCurrencyFieldValueIsShownInDownloadedPDFAtHistoryTable-gPlanning @history
  Scenario: validate a decimal currency field value is shown in downloaded pdf at history table
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Announcement for email notification check"
    When I click on "View" icon for "Announcement for email notification check" inside table
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    And I pause execution for "5" seconds
    Then I softly see "$400,000.00" on page "1" of "govgrants" pdf file
    Then I softly see "$300,000.00" on page "1" of "govgrants" pdf file

  @114969    @verifyPageBlockSeperatorDisplayedInsideDownloadedPDF-gPlanning
  Scenario: verify page block seperator is displayed inside downloaded PDF from program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | PBD-9228                   |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:programForFundedAmount}"
    When I click on "View" icon for "{Framework_recordUsed:programForFundedAmount}" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "5" seconds
    And I pause execution for "2" seconds
    Then I see "Test Page Block1" on page "1" of "govgrants" pdf file

  @116063    @verifyThatDollarSymbolIsDisplayedInsideXLSDownloadedForDataTableEnhanceProgramContacts
  Scenario: validate dollar symbol in enhanced data table displayed under downloaded XLS
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (xls / csv) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Show in PDF               | true          | DataTableEnhanceProgramContacts | Name                      | FLV-2548                   |
      | Flex Grid:General     | Enable Export (xls / csv) | true          | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#DataTableEnhanceProgramContactsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Contacts@1234567890!@#$%^&*()"
    Then I see "$" in downloaded xls or csv file "govgrants"

  @118383    @verifyDownloadAsPDFAtFDM-gApplication @flexGrid
  Scenario: validate download as pdf at FDM table - gApplication
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I navigate to "Review FDM" content inside "Manage Application Review" subheader on left panel
    When I click on parallel lines menu bar with data target value "#toggleFlexTableFDMList1"
    And I select "Download as PDF" from parallel lines dropdown of "Funding Decision Memo"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "QA Team Announcement 1" on page "1" of "govgrants" pdf file

  @118934    @verifyMaskedValuesDisplayedInsidePDFByHidingValuesUsingHideCellJSONAtEnhancedGrid-EGrid @enhancedGrid
  Scenario: Verify masked values are displayed inside downloaded pdf by hiding field values using hide cell json-enhanced grid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Cell JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                                               | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Cell JSON | govgrants_config:HideCellJsonForCurrencyFieldAtEnhancedGrid | ProgramReviewStepTemplates | Name                      | FTC-1491                   |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "*****" on page "28" of "govgrants" pdf file

  @118781 @verifyThatMultipleSectionsPresentAtUIShouldDisplayedInsideDownloadedPDFAtFormLayout
  Scenario:validate that  multiple sections present on UI should display inside downloaded pdf at form layout
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Files" sub tab
    When I click on "View" icon of form "General Application Cover Page" program in flex table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "5" seconds
    Then I softly see "APPLICATION COVER PAGE" on page "1" of "govgrants" pdf file
    Then I softly see "Review Steps" on page "1" of "govgrants" pdf file

  @127468  @verifyDownloadAsPDFAtCasesTableAtHomePhase
  Scenario: validate download as pdf at case table- gHome
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I click on "tmpcase1FlexTable"
    When I click on parallel lines menu bar with data target value "#toggleFlexTableCaseList"
    And I select "Download as PDF" from parallel lines dropdown of "Open Cases"
    And I pause execution for "3" seconds
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Automation_Script_Record" on page "1" of "govgrants" pdf file

  @81048  @VerifyActionsAreAlignedInsideDataTableEnhanceProgramContacts
  Scenario: verify that actions are aligned inside enhanced data table
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "{Framework_recordUsed:GrantInsideEnhancedGrid}" in "---program:-:flexGridDataTableEnhanceProgramContactsId---" panel
    Then I see actions under "---program:-:flexGridDataTableEnhanceProgramContactsId---" table are aligned and compared with "actionsAtDataTableEnhanceProgramContacts.png"

  @128295    @VerifyDownloadAsPDFAtReassignedTask
  Scenario: Validate download as PDF at reassigned task
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    And I select value "Automation PM" into field "s2id_autogen1"
    And I select value "Automation-Reviewer GGPTEST5" into field "s2id_autogen3"
    And I pause execution for "3" seconds
    When I click on parallel lines menu bar with data target value "#toggleFlexTableTaskReassignment"
    And I select "Download as PDF" from parallel lines dropdown of "All Tasks"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "All Tasks" on page "1" of "govgrants" pdf file

  @128335    @VerifyDownloadAsPDFAtReassignedTaskpendingTaskTable
  Scenario: Validate download as PDF at reassigned task-pending task table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active         | true              | ApiGeneratedId:0 |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active         | true          | Grantor State Program | Name                      | TAB-2623                   |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantor State Program | Name                      | TAB-2625                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
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
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePhasePendingTasks"
    And I select "Download as PDF" from parallel lines dropdown of "Pending Tasks (Assigned To Me)"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Pending Tasks (Assigned To Me)" on page "1" of "govgrants" pdf file

  @80889  @VerifyActionsAreAlignedInsideEnhancedGridTable @enhancedGrid
  Scenario: verify that actions are aligned inside enhanced grid table
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    ##When I perform quick search for "Automation Internal Announcement for Testing" in "---program:-:flexGridEnhancedReviewStepID---" panel
    Then I see actions under "---program:-:enhancedGridTableId---" table are aligned and compared with "actionsAtEgrid.png"

  @80953   @VerifyFlexTableActionsAreAlignedProperly-gPlanning @flexTable
  Scenario: validate alignment of actions under flex table - Planning phase
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "test send to owner 2"
    Then I see actions under "---program:-:programsTableId---" table are aligned and compared with "actionsAtFlexTable.png"

  @96030     @VerifyAttachmentTableActionsAreAlignedProperly-gPlanning @flexTable
  Scenario: validate alignment of actions under attachment table - Planning phase
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "test send to owner 2"
    When I click on "View Program Details " icon for "test send to owner 2" inside table
    When I navigate to "Files" sub tab
    Then I see actions are aligned at attachment

  @116105    @verifyWhiteSpaceIsNotPresentAtModalIfAnyFieldIsHiddenUsingHideExpressionJSON
  Scenario: validate white space is not displayed at modal window if any field is hidden using hide expression json
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Roles and Responsibilities 7    |                           |                            | ApiGeneratedId:0 |
      | Flex Table Action                        | Modal Width          | 800               | ProgramRolesAndResponsibilities | Name                      | New                        | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                           | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:HideUserFieldUsingHideExpressionInsideRolesModalWindow | Roles and Responsibilities 7    | Name                      | PBD-8028                   |
      | Flex Table Action                        | Modal Width          | 1200                                                                    | ProgramRolesAndResponsibilities | Name                      | New                        |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Responsibilities" sub tab
    When I click on top right button "New" in flex table with id "---program:-:programTableDivId---"
    Then I see fields are displayed without white space in modal

  @117758    @validateAlignmentOfValidateButtonAtFlexTableInsidePageLayout @pageLayout
  Scenario: Validate alignment of validate button at flex table header inside page layout
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Internal Program for flow"
    When I click on "View" icon for "Automation Internal Program for flow" inside table
    When I navigate to "Files" sub tab
    Then I see validate button is aligned at pannel header

  @118698    @verifyThatMiniPageLayoutShouldDisplayCompletelyUnderModalWindow @pageLayout @wip
  Scenario: validate that mini page layout is displayed completely on hover at lookup field inside modal window
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Responsibilities" sub tab
    When I click on "View" icon for "Nauman Shahid" inside table
    When I hovering mouse on page block detail of label "Assigned to User" lookup field "Nauman Shahid"
    Then I see mini page layout displayed and compared with "captureMiniPageLayoutAtModal.png"

  @130107    @verifyThatFileAttachedAtRecordLevelCommentIsDisplayedAndDownloadedFromRecordLevelCollab @wip
  Scenario: validate that file attached to any record level post is displayed and can be downloaded from record level
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    When I upload file "AttachmentTesting.pdf" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I click on "Upload" button in send email modal
    When I click on "×" icon at "Add Files" modal under Library
    And I enter value "Automation file upload at record post collab" in my feed section and share the comment
 #130107 file is uploaded from home phase - my feed section
    Then I softly see "AttachmentTesting.pdf" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Files" sub tab
    When I perform quick search for "AttachmentTesting.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
 #130107 file uploaded from home phase is displayed inside attachment tab - record detail
    Then I softly see value "AttachmentTesting.pdf" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Download" icon for "AttachmentTesting.pdf" inside table
    And I download the file
    And I pause execution for "5" seconds
 #130107 file uploaded from home phase is displayed inside attachment tab - record detail
    Then I softly see "Creating a Core Service Area" on page "1" of "govgrants" pdf file
    And I navigate to "Home" tab
    And I click on "Delete" action at "Automation file upload at record post collab" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
 #130107 file uploaded from home phase is deleted from - home phase my feed section
    Then I softly do not see "Automation file upload at record post collab" comment inside "Test Automation Post For collab attachment functionality check - record level" post at collab

  @113190 @validateThatSPIUserCanDownloadFormDataTablePDFAtApplicationPhase
  Scenario: Verify that SPI user can download form data table pdf at application phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Automation Internal Program for flow"
    When I click on "View" icon for "Automation Internal Program for flow" inside table
    When I navigate to "Files" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableFormEnhancedTable"
    And I select "Download as PDF" from parallel lines dropdown of "All Forms"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "General Application Form" on page "1" of "govgrants" pdf file

  @145541    @validateDecimalValueIsDisplayedOnFlexTableForNumberFieldInDownloadedPDF
  Scenario: Validate decimal value should be display on the Number field at flex table In Downloaded PDF
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I enter value "12345678" into field "Number__c"
    And I click on "Save" in the page details
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    Then I softly see value "12,345,678.00" for title "Number" inside table "---program:-:programsTableId---"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Draft"
    And I download the file
    And I pause execution for "5" seconds
    Then I softly see "12345678.00" on page "17" of "govgrants" pdf file
    Then I softly cannot see "12,345,678.00" on page "17" of "govgrants" pdf file

  @145546    @validateDecimalValueIsDisplayedOnFlexGridEnhancedForNumberFieldInDownloadedPDF
  Scenario: Validate decimal value should be display on the Number field at flex grid enhanced In Downloaded PDF
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "GT-First-001" in "---program:-:flexGridEnhancedTableId---" panel
    Then I softly see value "93.847" for title "Number" inside table "---program:-:programsTableId---"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I softly see "93.847" on page "1" of "govgrants" pdf file

  @145753    @validateDecimalValueIsDisplayedOnFlexTableForNumberFieldInDownloadedCSV
  Scenario: Validate decimal value should be display on the Number field at flex table In Downloaded CSV
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I enter value "12345678" into field "Number__c"
    And I click on "Save" in the page details
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    Then I softly see value "12,345,678.00" for title "Number" inside table "---program:-:programsTableId---"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as CSV" from parallel lines dropdown of "Internal Programs - Draft"
    Then I softly see "12345678.00" in downloaded xls or csv file "govgrants"

  @145754 @validateDecimalValueIsDisplayedOnFlexGridEnhancedForNumberFieldInDownloadedXLS
  Scenario: Validate decimal value should be display on the Number field at flex grid enhanced In Downloaded XLS
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (xls / csv) | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (xls / csv) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "GT-First-001" in "---program:-:flexGridEnhancedTableId---" panel
    Then I softly see value "93.847" for title "Number" inside table "---program:-:programsTableId---"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I softly see "93.847" in downloaded xls or csv file "govgrants"

  @148351    @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtEnhancedGridParentTableInsidePDF
  Scenario: verify number field is displayed with 4 decimal places at enhanced grid parent table inside PDF
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "12,344.0000" on page "30" of "govgrants" pdf file

  @148353    @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtEnhancedGridParentTableInsidePDF
  Scenario: verify number field is displayed with 4 decimal places at enhanced grid parent table inside PDF
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I see "12,344.0000" in downloaded xls or csv file "govgrants"

  @148509  @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtEnhancedGridChidTableInsidePDF
  Scenario: verify number field is displayed with 4 decimal places at enhanced grid of child table inside PDF
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Overview" sub tab
    #When I perform quick search for "Automation Internal Announcement for Testing" in "---program:-:flexGridEnhancedReviewStepID---" panel
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "2,323.0,000" on page "30" of "govgrants" pdf file

  @148510  @verifyNumberFieldIsDisplayedWithFourDecimalPlacesAtEnhancedGridChidTableInsideXLS
  Scenario: verify number field is displayed with 4 decimal places at enhanced grid of child table inside XLS
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "View" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Overview" sub tab
    #When I perform quick search for "Automation Internal Announcement for Testing" in "---program:-:flexGridEnhancedReviewStepID---" panel
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I see "2,323.0,000" in downloaded xls or csv file "govgrants"

  @147028    @validateAttachmentDownloadAction
  Scenario: validate by click at Attachment download action a file is getting downloaded
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Files" sub tab
    And I upload attachment "DynamicLayoutExport.pdf" from workspace
    When I click on "Download" icon for "DynamicLayoutExport.pdf" inside table
    And I download the file
    And I pause execution for "5" seconds
    Then I see "SF424: Application For Federal Assistance Form" on page "1" of "govgrants" pdf file

  @147031    @validateAttachmentIsGettingDownloadedByClickAtAttachmentNameHyperlink
  Scenario: validate by click at Attachment name hyperlink, a file is getting downloaded
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Files" sub tab
    And I upload attachment "DynamicLayoutExport.pdf" from workspace
    And I click on hyperlink containing value "DynamicLayoutExport.pdf"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "SF424: Application For Federal Assistance Form" on page "1" of "govgrants" pdf file

  @148295    @verifyFieldHistoryTableInDownloadedXLSAtHistoryTable @history
  Scenario: validate field history table is display with title in xls
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active                 | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active                 | true          | Grantor State Program | Name                      | TAB-2623                   |
      | Flex Table:General                  | Enable Export (XLS / CSV) | true          | History               |                           |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    And I enter value "Loan" into field "ProgramType__c"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as CSV" from parallel lines dropdown of "Field History"
    Then I see "Field History" in downloaded xls or csv file "govgrants"

  @148292    @verifyFieldHistoryTableInDownloadedPDFAtHistoryTable @history
  Scenario: validate field history table is display with title in PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2623                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I pause execution for "3" seconds
    When I click on "Edit" in the page details
    When I navigate to "Overview" sub tab
    And I enter value "Loan" into field "ProgramType__c"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Field History" on page "1" of "govgrants" pdf file

  @150597    @verifyDisplayFieldsAndValuesInsideEnhancedGridChildFlexTableDownloadedPDF-gPlanning
  Scenario: validate given display fields and values are displayed on enhanced grid of programs-planning chid table pdf
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    #When I perform quick search for "Automation Internal Announcement for Testing" in "---program:-:flexGridEnhancedReviewStepID---" panel
    When I expand nested table containing column value "1"
    When I click on "Edit" icon for "Pre-Screen Review" inside table
    When I enter value "Application completeness and correctness review Testing" into field "Description__c"
    When I click on top right button "Save" in flex table with id "---program:-:ProgramReviewStepTemplatesTableId---"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepPanelTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    #Then I softly see "122" on page "31" of "govgrants" pdf file
    Then I softly see "Application completeness and correctness review Testing" on page "31" of "govgrants" pdf file

  @150602    @verifyDisplayFieldsAndValuesInsideEnhancedGridChildFlexTableDownloadedXLS-gPlanning
  Scenario: validate given display fields and values are displayed on enhanced grid of programs-planning chid table XLS
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    #When I perform quick search for "Automation Internal Announcement for Testing" in "---program:-:flexGridEnhancedReviewStepID---" panel
    When I expand nested table containing column value "1"
    When I click on "Edit" icon for "Pre-Screen Review" inside table
    When I enter value "Application completeness and correctness review Testing" into field "Description__c"
    When I click on top right button "Save" in flex table with id "---program:-:ProgramReviewStepTemplatesTableId---"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepPanelTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    #Then I softly see "122" on page "31" of "govgrants" pdf file

  @150693 @verifyThatReferenceDateFieldValueIsDisplayedAsExpectedInDownloadedXLSAtEnhancedGrid
  Scenario: validate that reference date field value is displayed as expected in downloaded xls at enhanced grid
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableMonitoringScheduleGrantor"
    And I select "Download as XLS" from parallel lines dropdown of "Scheduled Activities - Next 30 Days"
    Then I softly see "05/28/2021" in downloaded xls or csv file "govgrants"

  @150692 @verifyThatReferenceDateFieldValueIsDisplayedAsExpectedInDownloadedPDFAtEnhancedGrid
  Scenario: validate that reference date field value is displayed as expected in downloaded PDF at enhanced grid
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridMonitoringGridView"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I softly see "122" on page "31" of "govgrants" pdf file

  @148214    @verifyApostropheIsShownInDownloadedPDFAtPageLayout
  Scenario: validate a apostrophe is shown in downloaded pdf at page layout
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Closed and Archived Announcements"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "5" seconds
    Then I softly see "Automation Internal Announcement for Testing" on page "1" of "govgrants" pdf file

  @161001  @validateToProvideLocaleSupportInAdvanceFilterOfDataTableInISTTimeZoneForLessThanOrEqualToOperator. @abhishekS
  Scenario: validate that to provide local support in Advance filter of data table in IST Time zone for less than or equal to operator by login as admin user
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "Admin" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I click on advance filter "#advfAppReviewList" of table id "---program:-:appReviewListTableId---"
    When I enter advance filter values inside id "advfAppReviewList"
      | Project Period Start Date | Less than or Equal to | 1/3/2017 |
    Then I see value "1/1/2017" for title "Project Period Start Date" inside table "---program:-:appReviewListTableId---"

  @160998     @validateToProvideLocaleSupportInAdvanceFilterOfDataTableInISTTimeZoneForGreaterThanOrEqualToOperator. @abhishekS
  Scenario: validate that to provide local support in Advance filter of data table in IST Time zone for greater than or equal to operator by login as admin user
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "Admin" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I click on advance filter "#advfAppReviewList" of table id "---program:-:appReviewListTableId---"
    When I enter advance filter values inside id "advfAppReviewList"
      | Project Period Start Date | Greater than or Equal to | 1/3/2020 |
    Then I see value "1/3/2020" for title "Project Period Start Date" inside table "---program:-:appReviewListTableId---"

  @155465     @validateToProvideLocaleSupportInAdvanceFilterOfDataTableInISTTimeZoneForLessThanOperator. @abhishekS
  Scenario: validate that to provide local support in Advance filter of data table in IST Time zone for less than operator by login as admin user
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "Admin" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I click on advance filter "#advfAppReviewList" of table id "---program:-:appReviewListTableId---"
    When I enter advance filter values inside id "advfAppReviewList"
      | Project Period Start Date | Less than | 1/3/2017 |
    Then I see value "1/1/2017" for title "Project Period Start Date" inside table "---program:-:appReviewListTableId---"

  @160838     @validateToProvideLocaleSupportInAdvanceFilterOfDataTableInISTTimeZoneForGreaterThanOperator. @abhishekS
  Scenario: validate that to provide local support in Advance filter of data table in IST Time zone for greater than operator by login as admin user
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    When I login to "As a Grantor" app as "Admin" user
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I click on advance filter "#advfAppReviewList" of table id "---program:-:appReviewListTableId---"
    When I enter advance filter values inside id "advfAppReviewList"
      | Project Period Start Date | Greater than | 03/09/2018 |
    Then I see value "01/02/2019" for title "Project Period Start Date" inside table "---program:-:appReviewListTableId---"

  @68727 @VerifyCurrencyFieldIsAvailableOnTheTableItDisplaysDollerSignforPDF
  Scenario: E-grid-To verify,  if a currency reference field is available on the table it displays a dollar sign for the PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (PDF) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "Edit" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Overview" sub tab
    And I click toggle button to select "Review Steps"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "$0.00" on page "1" of "govgrants" pdf file

  @68726 @VerifyCurrencyFieldIsAvailableOnTheTableItDisplaysDollerSignforCSV
  Scenario: E-grid-To verify,  if a currency reference field is available on the table it displays a dollar sign for the CSV
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program for Review Steps"
    When I click on "Edit" icon for "Automation Program for Review Steps" inside table
    When I navigate to "Overview" sub tab
    And I click toggle button to select "Review Steps"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "$0.00" in downloaded xls or csv file "govgrants"

  @168748 @VerifyCurrencyReferenceFieldIsAvailableOnTheTableItDisplaysDollerSignForPDF
  Scenario: Data table -To verify,  if a currency reference field is available on the table it displays a dollar sign for the PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (PDF) | true          | ProgramRolesAndResponsibilities |                           |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Responsibilities" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableProgramRolesAndResponsibilities"
    And I select "Download as PDF" from parallel lines dropdown of "Approvers"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "$0" on page "1" of "govgrants" pdf file

  @172134 @tejal
  Scenario: Verify if User  added lookup field on parent  table  (Required to Save) & save the record then mandatory icon should display for lookup field saved data is display on PDF
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "ACC-APG-Detrick" on page "29" of "govgrants" pdf file

  @172135 @tejal
  Scenario: Verify if User  added lookup field on parent  table  (Required to Save) & save the record then mandatory icon should display for lookup field saved data is display on XLS
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    And I pause execution for "2" seconds
    Then I see "Department of Transportation" in downloaded xls or csv file "govgrants"

  @171817 @tejal
  Scenario: Verify if User  added lookup field  (Required to Save)  on child table  & save the record then mandatory icon should display for lookup field saved data is display on XLS
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Setup tabs" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:enhancedGridTableId---" panel
    And I pause execution for "2" seconds
    When I expand nested table containing column value "GT-ITSGT-001"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepPanelTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    And I pause execution for "2" seconds
    Then I see "Department of Transportation" in downloaded xls or csv file "govgrants"

  @171816 @tejal
  Scenario: Verify if User  added lookup field (Required to Save)  on child table   & save the record then mandatory icon should display for lookup field saved data is display on PDF
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    When I perform quick search for "GT-ITSGT-001" in "---program:-:enhancedGridTableId---" panel
    And I pause execution for "2" seconds
    When I expand nested table containing column value "GT-ITSGT-001"
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepPanelTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "5" seconds
    Then I see "25Th Air Force" on page "28" of "govgrants" pdf file