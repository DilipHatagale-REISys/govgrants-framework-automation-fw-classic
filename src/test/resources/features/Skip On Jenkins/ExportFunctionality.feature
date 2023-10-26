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
    Then I cannot see "Show" in downloaded xls or csv file "govgrants"
    Then I cannot see "Page 1" in downloaded xls or csv file "govgrants"
    Then I cannot see "Total Records" in downloaded xls or csv file "govgrants"

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
    Then I cannot see "Show" in downloaded xls or csv file "govgrants"
    Then I cannot see "Page 1" in downloaded xls or csv file "govgrants"
    Then I cannot see "Total Records" in downloaded xls or csv file "govgrants"

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
    Then I see "Internal Programs - Active" in downloaded xls or csv file "govgrants"

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
    Then I see "Applications - Submitted" in downloaded xls or csv file "govgrants"

  @346781 @346782
  Scenario Outline: Flex table-Export-Admin-UI-To verify that if user not provided Header/Label of list view in config, then nothing get displayed as a Header (also null value not displayed) in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue          | filterId         |
      | Flex Table List       | Label     | Internal Programs - Active | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Label     |               | Programs           | Name                      | FLV-2217                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of ""
    And I download the file
    Then I cannot see "Internal Programs - Active" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346783
  Scenario: Flex table-Export-SPI-UI-To verify that if user not provided Header/Label of list view in config, then nothing get displayed as a Header (also null value not displayed) in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue        | filterId         |
      | Flex Table List       | Label     | Applications - Submitted | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Label     |               | RecipientApplications | Name                      | FLV-3447                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of ""
    And I download the file
    Then I cannot see "Applications - Submitted" on page "1" of "govgrants" pdf file

  @346784 @346785
  Scenario Outline: Flex table-Export-Admin-UI-To verify that actions not get displayed in downloaded PDF
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I cannot see "Actions" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346787 @346788
  Scenario Outline: Flex table-Export-Admin-UI-To verify that actions not get displayed in downloaded XLS/CSV
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Active"
    Then I cannot see "Actions" in downloaded xls or csv file "govgrants"

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346789
  Scenario: Flex table-Export-SPI-UI-To verify that actions not get displayed in downloaded XLS/CSV
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Active"
    Then I cannot see "Actions" in downloaded xls or csv file "govgrants"

  @346790 @346791
  Scenario Outline: Flex table-Export-Admin-UI-To verify that Record selection and Auto Index columns not displayed in downloaded PDF
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I cannot see "#" on page "1" of "govgrants" pdf file
    Then I cannot see "checkbox" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346792
  Scenario: Flex table-Export-SPI-UI-To verify that Record selection and Auto Index columns not displayed in downloaded PDF
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    Then I cannot see "#" on page "1" of "govgrants" pdf file
    Then I cannot see "checkbox" on page "1" of "govgrants" pdf file

  @346793 @346794
  Scenario Outline: Flex table-Export-Admin-UI-To verify that Record selection and Auto Index columns not displayed in downloaded XLS/CSV
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Active"
    Then I cannot see "#" in downloaded xls or csv file "govgrants"
    Then I cannot see "Checkbox" in downloaded xls or csv file "govgrants"

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346795
  Scenario: Flex table-Export-SPI-UI-To verify that Record selection and Auto Index columns not displayed in downloaded XLS/CSV
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Active"
    Then I cannot see "#" in downloaded xls or csv file "govgrants"
    Then I cannot see "Checkbox" in downloaded xls or csv file "govgrants"

  @346889 @346890
  Scenario Outline: Flex table-Export-Admin-UI-To verify that respective Header get displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue          | filterId         |
      | Flex Table List       | Header    | Internal Programs - Active | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Header    | Internal Programs - Active | Programs           | Name                      | FLV-2217                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I see "Internal Programs - Active" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346891
  Scenario: Flex table-Export-SPI-UI-To verify that respective Header get displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue        | filterId         |
      | Flex Table List       | Header    | Applications - Submitted | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Header    | Applications - Submitted | RecipientApplications | Name                      | FLV-3447                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    Then I see "Applications - Submitted" on page "1" of "govgrants" pdf file

  @346893 @346894
  Scenario Outline: Flex table-Export-Admin-UI-To verify that respective Header get displayed in downloaded XLS/CSV
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue          | filterId         |
      | Flex Table List       | Header    | Internal Programs - Active | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Header    | Internal Programs - Active | Programs           | Name                      | FLV-2217                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Active"
    Then I see "Internal Programs - Active" in downloaded xls or csv file "govgrants"

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346985
  Scenario: Flex table-Export-SPI-UI-To verify that respective Header get displayed in downloaded XLS/CSV
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue        | filterId         |
      | Flex Table List       | Header    | Applications - Submitted | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Header    | Applications - Submitted | RecipientApplications | Name                      | FLV-3447                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as XLS" from parallel lines dropdown of "Applications - Submitted"
    Then I see "Applications - Submitted" in downloaded xls or csv file "govgrants"

  @346957 @346959
  Scenario Outline: Flex table-Export-Admin-UI-To verify that Overall total not displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total | true          | Programs           | Name                      | FTC-9005                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I cannot see "Overall Total" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346960
  Scenario: Flex table-Export-SPI-UI-To verify that Overall total not displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total | true          | RecipientApplications | Name                      | FTC-10992                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    Then I cannot see "Overall Total" on page "1" of "govgrants" pdf file

  @346961 @346962
  Scenario Outline: Flex table-Export-Admin-UI-To verify that Overall total not displayed in downloaded XLS/CSV
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total | true          | Programs           | Name                      | FTC-9005                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Active"
    Then I cannot see "Overall Total" in downloaded xls or csv file "govgrants"

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346963
  Scenario: Flex table-Export-SPI-UI-To verify that Overall total not displayed in downloaded XLS/CSV
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total | true          | RecipientApplications | Name                      | FTC-10992                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as XLS" from parallel lines dropdown of "Applications - Submitted"
    Then I cannot see "Overall Total" in downloaded xls or csv file "govgrants"

  @346950 @346952
  Scenario Outline: Flex table-Export-Admin-UI-To verify that format of Currency field displayed in downloaded PDF
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I see "Funded Amount" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346953
  Scenario Outline: Flex table-Export-SPI-UI-To verify that format of Currency field displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    Then I see "Award Ceiling" on page "1" of "govgrants" pdf file
    Examples:
      | newFieldsApi                                                                                                                                                               | defaultFieldsApi                                                                                                                                           |
      | Id,Name,Title__c,Announcement__r.AnnouncementName__c,Announcement__r.AccountName__c,Announcement__r.ApplicationDueDate__c,SubmittedOn__c,OwnerId,Status__c,AwardCeiling__c | Id,Name,Title__c,Announcement__r.AnnouncementName__c,Announcement__r.AccountName__c,Announcement__r.ApplicationDueDate__c,SubmittedOn__c,OwnerId,Status__c |

  @346942 @346946 @346966
  Scenario Outline: Flex table-Export-Admin-UI-To verify that all the fields of different data types displayed in downloaded PDF
  Flex table-Export-Admin-UI-To verify that format of all different datatype/fields displayed same as what displayed on UI/page layout/table in downloaded PDF
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I see "EGMS ID" on page "1" of "govgrants" pdf file
    Then I see "Program Name" on page "1" of "govgrants" pdf file
    Then I see "Internal Organization" on page "1" of "govgrants" pdf file
    Then I see "Funded Amount" on page "1" of "govgrants" pdf file
    Then I see "Start Date" on page "1" of "govgrants" pdf file
    Then I see "Status" on page "1" of "govgrants" pdf file
    Then I see "Last Modified By" on page "1" of "govgrants" pdf file
    Then I see "Created By" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346948 @346956
  Scenario: Flex table-Export-SPI-UI-To verify that all the fields of different data types displayed in downloaded PDF
  Flex table-Export-SPI-UI-To verify that reference field displayed in downloaded PDF
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    Then I see "EGMS ID" on page "1" of "govgrants" pdf file
    Then I see "Application Title" on page "1" of "govgrants" pdf file
    Then I see "Funding Opportunity Title" on page "1" of "govgrants" pdf file
    Then I see "Funding Organization" on page "1" of "govgrants" pdf file
    Then I see "Application Due Date" on page "1" of "govgrants" pdf file
    Then I see "Submitted On" on page "1" of "govgrants" pdf file
    Then I see "Status" on page "1" of "govgrants" pdf file

  @346935 @346936
  Scenario Outline: Flex table-Export-Admin-Config-To verify that all the fields which added in "Skip fields for Export" config, are not displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export |                   | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF)    | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export | Status__c     | Programs           |                           |                            |
      | Flex Table:General    | Enable Export (PDF)    | true          | Programs           |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Draft"
    And I download the file
    And I pause execution for "5" seconds
    Then I cannot see "Status" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346938
  Scenario: Flex table-Export-SPI-UI-To verify that all the fields which added in "Skip fields for Export" config, are not displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export |                   | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF)    | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export | Status__c     | RecipientApplications |                           |                            |
      | Flex Table:General    | Enable Export (PDF)    | true          | RecipientApplications |                           |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    Then I cannot see "Status" on page "1" of "govgrants" pdf file

  @346939 @346940
  Scenario Outline: Flex table-Export-Admin-Config-To verify that all the fields which added in "Skip fields for Export" config, are not displayed in downloaded XLS/CSV
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export |                   | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF)    | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export | Status__c     | Programs           |                           |                            |
      | Flex Table:General    | Enable Export (PDF)    | true          | Programs           |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Active"
    Then I cannot see "Status" in downloaded xls or csv file "govgrants"

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346941
  Scenario:Flex table-Export-SPI-UI-To verify that all the fields which added in "Skip fields for Export" config, are not displayed in downloaded XLS/CSV
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export |                   | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF)    | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export | Status__c     | RecipientApplications |                           |                            |
      | Flex Table:General    | Enable Export (PDF)    | true          | RecipientApplications |                           |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as XLS" from parallel lines dropdown of "Applications - Submitted"
    Then I cannot see "Status" in downloaded xls or csv file "govgrants"

  @346853 @346854
  Scenario Outline: Flex table-Filter-Admin-UI-To verify that export functionality(i.e. PDF/XLS) not supported filtered records
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program Name | Contains | Program Creation For Flow |
    Then I see Total Records count "Total Records : 1" in table name "toggleFlexTablePrograms"
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    Then I cannot see "Total Records" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @346852
  Scenario: Flex table-Filter-SPI-UI-To verify that export functionality(i.e. PDF/XLS) not supported filtered records
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Application Title | Contains | Vrush Application |
    Then I see Total Records count "Total Records : 1" in table name "toggleFlexTablePrograms"
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - All"
    And I download the file
    Then I cannot see "Total Records" on page "1" of "govgrants" pdf file

  @346695
  Scenario: Flex table-Filter-SPI-UI-To verify that export functionality(i.e. PDF/XLS) not supported filtered records
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Application Title | Contains | Vrush Application |
    Then I see Total Records count "Total Records : 1" in table name "toggleFlexTablePrograms"
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as XLS" from parallel lines dropdown of "Applications - Submitted"
    Then I cannot see "Total Records" in downloaded xls or csv file "govgrants"

  @346696 @346697
  Scenario Outline: Flex table-Filter-Admin-UI-To verify that export functionality(i.e. PDF/XLS) not supported filtered records
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program Name | Contains | Program Creation For Flow |
    Then I see Total Records count "Total Records : 1" in table name "toggleFlexTablePrograms"
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Active"
    Then I cannot see "Status" in downloaded xls or csv file "govgrants"

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

#################### Test suite: Export_Page Layout (Suite ID: 346077)  ###############################################################
  @346970 @346972 @347007 @347008 @347201 @347203 @347206 @347209
  Scenario Outline: Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of program record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    Then I see "Menu" icon is displayed on pagelayout
    #347007 #347008
    When I click on "Menu" in the page details
    Then I see "Download as PDF" options is displayed
    #347201 #347203
    Then I see "Take Snapshot" options is displayed
    #347206 #347209
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @346971 @346973 @347009 @347010 @347099 @347104 @347211 @347216
  Scenario Outline: Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of Announcement record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement Creation For Flow"
    When I click on "View" icon for "Announcement Creation For Flow" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347009 @347010
    Then I see "Download as PDF" options is displayed
    #347099 #347104
    Then I see "Take Snapshot" options is displayed
    #347211 #347216
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @346977 @346978 @347018 @347019  @343117 @343118 @347230 @347231
  Scenario Outline: Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of Application record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application test"
    When I click on "View" icon for "Application test" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347018 #347019
    Then I see "Download as PDF" options is displayed
    #343117 #343118
    Then I see "Take Snapshot" options is displayed
    #347230 #347231
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346979 @346980 @347021 @347024 @347119 @347122 @347235 @347240
  Scenario Outline: Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of FDM record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "Test 32" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "Test 32" inside flex table with id "---program:-:announcementListTableId---"
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347021 #347024
    Then I see "Download as PDF" options is displayed
    #343119 #343122
    Then I see "Take Snapshot" options is displayed
    #347235 #347240
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @346982 @346983 @347027 @347030 @347126 @347130 @347245 @347250
  Scenario Outline: Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of Grants record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347027 #347030
    Then I see "Download as PDF" options is displayed
    #347126 #347130
    Then I see "Take Snapshot" options is displayed
    #347245 #347250
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346984 @346986 @347034 @347046 @347137 @347148 @347253 @347256
  Scenario Outline: Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of Subawards record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Subawards" sub tab
    When I click on "View" icon for "Grant for Automation" inside table
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347034 #347046
    Then I see "Download as PDF" options is displayed
    #347137 #347148
    Then I see "Take Snapshot" options is displayed
    #347253 #347256
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | ADMIN |
         # | PM    |

  @346987 @346988 @347039 @347041 @347142 @347144 @347260 @347266
  Scenario Outline: Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of Amendment Request record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Amendment Requests" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Amendment Requests - Approved"
    And I perform quick search for "CR-AD-1000-02-00" in "---program:-:GrantorAmendmentRequestsTableId---" panel
    When I click on "View" icon for "CR-AD-1000-02-00" inside flex table with id "---program:-:GrantorAmendmentRequestsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347039 #347041
    Then I see "Download as PDF" options is displayed
    #347142 #347144
    Then I see "Take Snapshot" options is displayed
    #347260 #347266
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | ADMIN |
         # | PM    |

  @346992 @346994 @347056 @347060 @347163 @347167 @347276 @347277
  Scenario Outline:Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of Site visit record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Site Visit Reports - In Progress"
    And I perform quick search for "SV1701" in "---program:-:manageSiteVisitTableId---" panel
    When I click on "View" icon for "SV1701" inside flex table with id "---program:-:manageSiteVisitTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347056 #347060
    Then I see "Download as PDF" options is displayed
    #347163 #347167
    Then I see "Take Snapshot" options is displayed
    #347276 #347277
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | ADMIN |
         # | PM    |

  @346995 @346996 @347064 @347068 @347168 @347169 @347278 @347279
    Scenario Outline: Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of Desk reviews record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Desk Reviews" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Desk Review Reports - All"
    And I perform quick search for "Desk Review_AS_1" in "---program:-:LatestDeskReviewReportsTableId---" panel
    When I click on "View" icon for "Desk Review_AS_1" inside flex table with id "---program:-:LatestDeskReviewReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347064 #347068
    Then I see "Download as PDF" options is displayed
    #347168 #347169
    Then I see "Take Snapshot" options is displayed
    #347278 #347279
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | ADMIN |
         # | PM    |

  @346997 @346998 @347069 @347073 @347170 @347171 @347280 @347281
  Scenario Outline: Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of Organization Risk Assessment record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Organization Risk Assessments - Active"
    And I perform quick search for "Mothers for Justice & Equality" in "---program:-:OrgRiskAssessmentGridTableId---" panel
    When I click on "View" icon for "Mothers for Justice & Equality" inside flex table with id "---program:-:OrgRiskAssessmentGridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347069 #347073
    Then I see "Download as PDF" options is displayed
    #347170 #347171
    Then I see "Take Snapshot" options is displayed
    #347280 #347281
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | ADMIN |
         # | PM    |

  @346999 @347000 @347078 @347083 @347173 @347177 @347283 @347284
  Scenario Outline: Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of Advance Payment Request record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Advances" content inside "Payments" subheader on left panel
    And I click toggle button to select "Advances - Approved"
    And I perform quick search for "PR-1000-00" in "---program:-:GrantorPaymentRequestAdvancesTableId---" panel
    When I click on "View" icon for "PR-1000-00" inside flex table with id "---program:-:GrantorPaymentRequestAdvancesTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347078 #347083
    Then I see "Download as PDF" options is displayed
    #347173 #347177
    Then I see "Take Snapshot" options is displayed
    #347283 #347284
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | ADMIN |
         # | PM    |

  @347001 @347003 @347088 @347091 @347182 @347188 @347285 @347286
  Scenario Outline: Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of Reimbursement Payment Request record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Reimbursements" content inside "Payments" subheader on left panel
    And I click toggle button to select "Reimbursements - Approved"
    And I perform quick search for "PR-1000-00" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "PR-1000-00" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347088 #347091
    Then I see "Download as PDF" options is displayed
    #347182 #347188
    Then I see "Take Snapshot" options is displayed
    #347285 #347286
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | ADMIN |
         # | PM    |

  @347003 @347005 @347092 @347093 @347192 @347195 @347287 @347288
  Scenario Outline: Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of Closeout Request record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Closeout" tab
    When I navigate to "Project Period Closeouts" content inside "Closeouts" subheader on left panel
    And I click toggle button to select "Project Period Closeouts - All"
    And I perform quick search for "GT-REI1-00001" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "GT-REI1-00001" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347092 #347093
    Then I see "Download as PDF" options is displayed
    #347192 #347195
    Then I see "Take Snapshot" options is displayed
    #347287 #347288
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | ADMIN |
         # | PM    |

  @347325 @347326
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the program record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "do not delete program for change request"
    When I click on "View" icon for "do not delete program for change request" inside table
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"

    Examples:
      | User  |
      | ADMIN |
      #| PM    |