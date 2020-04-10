@flextableEnhanced-component @regression
Feature: Flex Table enhanced Component Scenarios
  Test all flex table enhanced component based scenarios
  As a configuration manager i make different configurational changes in flex table enhanced component and will validate them.

  @76929    @disablingPDFExportFileForEnhancedDataTable-gPlanning @smoke
  Scenario: validate disabling of PDF download from menu option in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (PDF) | false         | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    Then I see "Download as PDF" options inside "Grants Enhanced Table" disabled

  @76945    @disablingXLSExportFileForEnhancedDataTable-gPlanning @smoke
  Scenario: validate disabling of XLS download from menu option in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Export (XLS / CSV) | false         | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    When I click on parallel lines menu bar with data target value "#EnhancedDataTableFlexToggle"
    Then I see "Download as XLS" options inside "Grants Enhanced Table" disabled

  @76931    @disablingAdvanceFilterForEnhancedDataTable-gPlanning @smoke
  Scenario: validate disabling of advance filter from enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Filter | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Filter | false         | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see Advance Filter is disabled from table "---program:-:flexGridEnhancedDataTable---" with data target value "#advfEnhancedDataTable"

  @76932    @disablingQuickSearchForEnhancedDataTable-gPlanning @smoke
  Scenario: validate disabling of quick search from enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Quick Search | false         | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see quick search option disabled from enhanced grid

  @76934    @enablingAutoIndexForEnhancedDataTable-gPlanning
  Scenario: validate auto index for details inside enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Auto Index | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Auto Index | true          | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "#" in enhanced flex grid header "---program:-:EnhancedDataTableId---"

  @77110    @enablePageSizeFieldAtEnhancedDataTable-gPlanning
  Scenario: enabling of page size dropdown at bottom inside enhanced enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Page Size | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Page Size | true          | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:EnhancedDataTableId---"

  @77112    @defaultPageSizeFieldAtEnhancedDataTable-gPlanning
  Scenario: validate change of default page size inside dropdown at bottom of enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Default Page Size | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Default Page Size | true          | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see "5" records inside enhanced grid id "---program:-:EnhancedDataTableId---"

  @77113    @disablingEnableTotalRecordCountFieldForAtEnhancedDataTable-gPlanning
  Scenario: validate disabling of total row count in enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Total Records Count | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Total Records Count | false         | EnhancedDataTable  |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Financials" sub tab
    Then I see no "Total Records" count in enhanced grid "---program:-:EnhancedDataTablegrid---"