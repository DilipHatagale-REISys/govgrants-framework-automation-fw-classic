@ExportFunctionality-Component @regression-QA
Business Need: All pdf and xls related scenario including component and completed backlogs
  Test all Export Functionality based scenarios
  As a configuration manager i make different configurational changes for Export Functionality related scenarios and will validate them.

  ################### Export Functionality - Flex Table #####################
  @346698 @346744
  Scenario Outline: Flex table-Export-Admin & PM-Config-To verify that "Download as PDF" link get displayed under "Menu", on enabling "Enable Export (PDF)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    Then I see "Download as PDF" options is displayed

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346745
  Scenario: Flex table-Export-SPI-UI-To verify that "Download as PDF" link get displayed under "Menu", on enabling "Enable Export (PDF)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | MonitoringScheduleGrantor | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    When I click on "Menu" button inside table id "---program:-:MonitoringScheduleGrantorTableId---"
    Then I see "Download as PDF" options is displayed

  @346747
  Scenario Outline: Flex table-Export-Admin-PM-Config-To verify that "Download as PDF" link not get displayed under "Menu", on disabling "Enable Export (PDF)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    Then I do not see "Download as PDF" options is displayed

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346750
  Scenario: Flex table-Export-SPI-UI-To verify that "Download as PDF" link not get displayed under "Menu", on disabling "Enable Export (PDF)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | MonitoringScheduleGrantor | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    When I click on "Menu" button inside table id "---program:-:MonitoringScheduleGrantorTableId---"
    Then I do not see "Download as PDF" options is displayed

  @346751 @346752
  Scenario Outline: Flex table-Export-Admin-Config-To verify that "Download as XLS/CSV" link get displayed under "Menu", on enabling "Enable Export (XLS / CSV)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    Then I see "Download as CSV" options is displayed

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346753
  Scenario: Flex table-Export-SPI-UI-To verify that "Download as XLS/CSV" link get displayed under "Menu", on enabling "Enable Export (XLS / CSV)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | MonitoringScheduleGrantor | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    When I click on "Menu" button inside table id "---program:-:MonitoringScheduleGrantorTableId---"
    Then I see "Download as CSV" options is displayed

  @346754 @346756
  Scenario Outline: Flex table-Export-Admin-Config-To verify that "Download as XLS/CSV" link not get displayed under "Menu", on disabling "Enable Export (XLS / CSV)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    Then I do not see "Download as CSV" options is displayed

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346757
  Scenario: Flex table-Export-SPI-UI-To verify that "Download as XLS/CSV" link not get displayed under "Menu", on disabling "Enable Export (XLS / CSV)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | MonitoringScheduleGrantor | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    When I click on "Menu" button inside table id "---program:-:MonitoringScheduleGrantorTableId---"
    Then I do not see "Download as CSV" options is displayed

  @346758
  Scenario Outline: Flex table-Export-Admin-UI-To verify that all the available records get displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true         | Programs           | Name                      | FLV-2217                   |
