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

  @346758 @346761
  Scenario Outline: Flex table-Export-Admin-UI-To verify that all the available records get displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | Programs           | Name                      | FLV-2217                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I see "Automation Internal Program for Export Functionality Testing" on page "6" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346762
  Scenario: Flex table-Export-SPI-UI-To verify that all the available records get displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | RecipientApplications | Name                      | FLV-3447                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Submitted"
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    Then I see "Application Autosnapshot TD AN 4 from D" on page "6" of "govgrants" pdf file

  @346763 @346765
  Scenario Outline: Flex table-Export-PM-UI-To verify that all the available records get displayed in downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | Programs           | Name                      | FLV-2217                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I see "Automation Internal Program for Export Functionality Testing" on page "6" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346766
  Scenario: Flex table-Export-SPI-UI-To verify that all the available records get displayed in downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | RecipientApplications | Name                      | FLV-3447                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Submitted"
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as XLS" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    Then I see "Application Autosnapshot TD AN 4 from D" on page "6" of "govgrants" pdf file

  @346767 @346768
  Scenario Outline: Flex table-Export-Admin-UI-To verify that Page size (i.e. Show entries) block, Pagination and Total Records count not displayed in downloaded PDF
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I cannot see "Show" on page "1" of "govgrants" pdf file
    Then I cannot see "Page 1" on page "1" of "govgrants" pdf file
    Then I cannot see "Total Records" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346769
  Scenario: Flex table-Export-SPI-UI-To verify that Page size (i.e. Show entries) block, Pagination and Total Records count not displayed in downloaded PDF
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Submitted"
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    Then I cannot see "Show" on page "1" of "govgrants" pdf file
    Then I cannot see "Page 1" on page "1" of "govgrants" pdf file
    Then I cannot see "Total Records" on page "1" of "govgrants" pdf file

  @346770 @346772
  Scenario Outline: Flex table-Export-Admin-UI-To verify that Page size (i.e. Show entries) block, Pagination and Total Records count not displayed in downloaded XLS/CSV
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I cannot see "Show" on page "1" of "govgrants" pdf file
    Then I cannot see "Page 1" on page "1" of "govgrants" pdf file
    Then I cannot see "Total Records" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346773
  Scenario: Flex table-Export-SPI-UI-To verify that Page size (i.e. Show entries) block, Pagination and Total Records count not displayed in downloaded XLS/CSV
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Submitted"
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as XLS" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    Then I cannot see "Show" on page "1" of "govgrants" pdf file
    Then I cannot see "Page 1" on page "1" of "govgrants" pdf file
    Then I cannot see "Total Records" on page "1" of "govgrants" pdf file

  @346774 @346775
  Scenario Outline: Flex table-Export-Admin-UI-To verify that respective Header get displayed in downloaded PDF
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I softly see "Internal Programs - Active" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346776
  Scenario: Flex table-Export-SPI-UI-To verify that respective Header get displayed in downloaded PDF
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Submitted"
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    Then I softly see "Applications - Submitted" on page "1" of "govgrants" pdf file

  @346777 @346779
  Scenario Outline: Flex table-Export-Admin-UI-To verify that respective Header get displayed in downloaded XLS/CSV
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I softly see "Internal Programs - Active" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346780
  Scenario: Flex table-Export-SPI-UI-To verify that respective Header get displayed in downloaded XLS/CSV
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Submitted"
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as XLS" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    Then I softly see "Applications - Submitted" on page "1" of "govgrants" pdf file

  @346781
  Scenario Outline: Flex table-Export-Admin-UI-To verify that if user not provided Header/Label of list view in config, then nothing get displayed as a Header (also null value not displayed) in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue          | filterId         |
      | Flex Table            | Header    | Internal Programs - Active | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header    |               | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I cannot see "Internal Programs - Active" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
     # | PM    |
