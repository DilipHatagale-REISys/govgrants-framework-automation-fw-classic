@ExportFunctionality-ComponentPatch @regression-QA
Business Need: All pdf and xls related scenario including component and completed backlogs
  Test all Export Functionality based scenarios
  As a configuration manager i make different configurational changes for Export Functionality related scenarios and will validate them.

  ################### Export Functionality - Flex Table #####################
  @346698p @346744
  Scenario Outline: Flex table-Export-Admin & PM-Config-To verify that "Download as PDF" link get displayed under "Menu", on enabling "Enable Export (PDF)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF)       | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF)       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    Then I see "Download as PDF" options is displayed
    Examples:
      | User  |
      | PM    |

  @346745p
  Scenario: Flex table-Export-SPI-UI-To verify that "Download as PDF" link get displayed under "Menu", on enabling "Enable Export (PDF)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | MonitoringScheduleGrantor | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I click on "Menu" button inside table id "---program:-:MonitoringScheduleGrantorTableId---"
    Then I see "Download as PDF" options is displayed

  @346747p
  Scenario Outline: Flex table-Export-Admin-PM-Config-To verify that "Download as PDF" link not get displayed under "Menu", on disabling "Enable Export (PDF)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
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
      | PM    |

  @346750
  Scenario: Flex table-Export-SPI-UI-To verify that "Download as PDF" link not get displayed under "Menu", on disabling "Enable Export (PDF)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | MonitoringScheduleGrantor | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I click on "Menu" button inside table id "---program:-:MonitoringScheduleGrantorTableId---"
    Then I do not see "Download as PDF" options is displayed

  @346751 @346752
  Scenario Outline: Flex table-Export-Admin-Config-To verify that "Download as XLS/CSV" link get displayed under "Menu", on enabling "Enable Export (XLS / CSV)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
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
      | PM    |

  @346753
  Scenario: Flex table-Export-SPI-UI-To verify that "Download as XLS/CSV" link get displayed under "Menu", on enabling "Enable Export (XLS / CSV)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | MonitoringScheduleGrantor | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I click on "Menu" button inside table id "---program:-:MonitoringScheduleGrantorTableId---"
    Then I see "Download as CSV" options is displayed

  @346754p @346756
  Scenario Outline: Flex table-Export-Admin-Config-To verify that "Download as XLS/CSV" link not get displayed under "Menu", on disabling "Enable Export (XLS / CSV)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
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
      | PM    |

  @346757
  Scenario: Flex table-Export-SPI-UI-To verify that "Download as XLS/CSV" link not get displayed under "Menu", on disabling "Enable Export (XLS / CSV)" config of flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | MonitoringScheduleGrantor | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I click on "Menu" button inside table id "---program:-:MonitoringScheduleGrantorTableId---"
    Then I do not see "Download as CSV" options is displayed

  @346758p @346761
  Scenario Outline: Flex table-Export-Admin-UI-To verify that all the available records get displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View            | true              | ApiGeneratedId:0 |
      | Flex Table                | Enable Export (PDF)       | true              | ApiGeneratedId:1 |
      | Flex Table                | Enable Export (XLS / CSV) | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General        | Enable Export (PDF)       | true          | Programs           | Name                      |                            |
      | Flex Table:General        | Enable Export (XLS / CSV) | true          | Programs           | Name                      |                            |
      | Flex Grid:Flex Table List | Is Master View            | true          | Programs           | Name                      | FLV-2254                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Admin Program for Advance filter" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
#      | PM    |

  @346762
  Scenario: Flex table-Export-SPI-UI-To verify that all the available records get displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View            | true              | ApiGeneratedId:0 |
      | Flex Table                | Enable Export (PDF)       | true              | ApiGeneratedId:1 |
      | Flex Table                | Enable Export (XLS / CSV) | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General        | Enable Export (PDF)       | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General        | Enable Export (XLS / CSV) | true          | RecipientApplications | Name                      |                            |
      | Flex Grid:Flex Table List | Is Master View            | true          | RecipientApplications | Name                      | FLV-3469                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Submitted"
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Application Autosnapshot TD AN 4 from D" on page "6" of "govgrants" pdf file

  @346763 @346765
  Scenario Outline: Flex table-Export-PM-UI-To verify that all the available records get displayed in downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View            | true              | ApiGeneratedId:0 |
      | Flex Table                | Enable Export (PDF)       | true              | ApiGeneratedId:1 |
      | Flex Table                | Enable Export (XLS / CSV) | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General        | Enable Export (PDF)       | true          | Programs           | Name                      |                            |
      | Flex Table:General        | Enable Export (XLS / CSV) | true          | Programs           | Name                      |                            |
      | Flex Grid:Flex Table List | Is Master View            | true          | Programs           | Name                      | FLV-2254                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Automation Internal Program for Export Functionality Testing" on page "6" of "govgrants" pdf file

    Examples:
      | User  |
      | PM    |

  @346766p
  Scenario: Flex table-Export-SPI-UI-To verify that all the available records get displayed in downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory     | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid:Flex Table List | Is Master View | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory     | fieldName      | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:Flex Table List | Is Master View | true          | RecipientApplications | Name                      | FLV-3469                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Submitted"
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as XLS" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Vrush Announcement" on page "1" of "govgrants" pdf file

  @346767 @346768
  Scenario Outline: Flex table-Export-Admin-UI-To verify that Page size (i.e. Show entries) block, Pagination and Total Records count not displayed in downloaded PDF
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Show" on page "1" of "govgrants" pdf file
    Then I cannot see "Page 1" on page "1" of "govgrants" pdf file
    Then I cannot see "Total Records" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | PM    |

  @346769p
  Scenario: Flex table-Export-SPI-UI-To verify that Page size (i.e. Show entries) block, Pagination and Total Records count not displayed in downloaded PDF
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Submitted"
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    And I pause execution for "10" seconds
    Then I see "Application Title" on page "1" of "govgrants" pdf file
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
      | PM    |

  @346773p
  Scenario: Flex table-Export-SPI-UI-To verify that Page size (i.e. Show entries) block, Pagination and Total Records count not displayed in downloaded XLS/CSV
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
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
    And I pause execution for "7" seconds
    Then I softly see "Internal Programs - Active" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | PM    |

  @346776
  Scenario: Flex table-Export-SPI-UI-To verify that respective Header get displayed in downloaded PDF
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Submitted"
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    And I pause execution for "7" seconds
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
      | PM    |

  @346780
  Scenario: Flex table-Export-SPI-UI-To verify that respective Header get displayed in downloaded XLS/CSV
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
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
      | Flex Table List       | Label     |               | Programs           | Name                      | FLV-2254                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of ""
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Internal Programs - Active" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | PM    |

  @346783p
  Scenario: Flex table-Export-SPI-UI-To verify that if user not provided Header/Label of list view in config, then nothing get displayed as a Header (also null value not displayed) in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue        | filterId         |
      | Flex Table List       | Label       | Applications - Submitted | ApiGeneratedId:0 |
      | Flex Table List       | Show in PDF | true                     | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Label       |               | RecipientApplications | Name                      | FLV-3469                   |
      | Flex Table List       | Show in PDF | true          | RecipientApplications | Name                      | FLV-3469                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of ""
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Applications - Submitted" on page "1" of "govgrants" pdf file

  @346784 @346785
  Scenario Outline: Flex table-Export-Admin-UI-To verify that actions not get displayed in downloaded PDF
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Actions" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | PM    |

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
      | PM    |

  @346789
  Scenario: Flex table-Export-SPI-UI-To verify that actions not get displayed in downloaded XLS/CSV
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
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
    And I pause execution for "7" seconds
    Then I cannot see "#" on page "1" of "govgrants" pdf file
    Then I cannot see "checkbox" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | PM    |

  @346792
  Scenario: Flex table-Export-SPI-UI-To verify that Record selection and Auto Index columns not displayed in downloaded PDF
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    And I pause execution for "7" seconds
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
      | PM    |

  @346795
  Scenario: Flex table-Export-SPI-UI-To verify that Record selection and Auto Index columns not displayed in downloaded XLS/CSV
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
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
      | Flex Table List       | Header    | Internal Programs - Active | Programs           | Name                      | FLV-2254                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as PDF" from parallel lines dropdown of "Internal Programs - Active"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Internal Programs - Active" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | PM    |

  @346891
  Scenario: Flex table-Export-SPI-UI-To verify that respective Header get displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue        | filterId         |
      | Flex Table List       | Header      | Applications - Submitted | ApiGeneratedId:1 |
      | Flex Table List       | Show in PDF | true                     | ApiGeneratedId:1 |

    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Header      | Applications - Submitted | RecipientApplications | Name                      | FLV-3469                   |
      | Flex Table List       | Show in PDF | true                     | RecipientApplications | Name                      | FLV-3469                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Applications - Submitted" on page "1" of "govgrants" pdf file

  @346893 @346894
  Scenario Outline: Flex table-Export-Admin-UI-To verify that respective Header get displayed in downloaded XLS/CSV
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue          | filterId         |
      | Flex Table List       | Header    | Internal Programs - Active | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Header    | Internal Programs - Active | Programs           | Name                      | FLV-2254                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select "Download as XLS" from parallel lines dropdown of "Internal Programs - Active"
    Then I see "Internal Programs - Active" in downloaded xls or csv file "govgrants"

    Examples:
      | User  |
      | PM    |

  @346985
  Scenario: Flex table-Export-SPI-UI-To verify that respective Header get displayed in downloaded XLS/CSV
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue        | filterId         |
      | Flex Table List       | Header      | Applications - Submitted | ApiGeneratedId:0 |
      | Flex Table List       | Show in PDF | true                     | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Header      | Applications - Submitted | RecipientApplications | Name                      | FLV-3469                   |
      | Flex Table List       | Show in PDF | true                     | RecipientApplications | Name                      | FLV-3469                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
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
    And I pause execution for "7" seconds
    Then I cannot see "Overall Total" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | PM    |

  @346960
  Scenario: Flex table-Export-SPI-UI-To verify that Overall total not displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total | true          | RecipientApplications | Name                      | FTC-10992                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    And I pause execution for "7" seconds
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
      | PM    |

  @346963
  Scenario: Flex table-Export-SPI-UI-To verify that Overall total not displayed in downloaded XLS/CSV
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total | true          | RecipientApplications | Name                      | FTC-10992                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
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
    And I pause execution for "7" seconds
    Then I see "Funded Amount" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | PM    |

  @346953
  Scenario Outline: Flex table-Export-SPI-UI-To verify that format of Currency field displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    And I pause execution for "7" seconds
    And I pause execution for "7" seconds
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
    And I pause execution for "7" seconds
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
      | PM    |

  @346948 @346956
  Scenario: Flex table-Export-SPI-UI-To verify that all the fields of different data types displayed in downloaded PDF
  Flex table-Export-SPI-UI-To verify that reference field displayed in downloaded PDF
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    And I pause execution for "7" seconds
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
    And I pause execution for "7" seconds
    And I pause execution for "5" seconds
    Then I cannot see "Status" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | PM    |

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
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - Submitted"
    And I download the file
    And I pause execution for "7" seconds
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
      | PM    |

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
    When I login to "Grants Portal" app as "SPI3" user
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
    And I pause execution for "7" seconds
    Then I cannot see "Total Records" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @346852
  Scenario: Flex table-Filter-SPI-UI-To verify that export functionality(i.e. PDF/XLS) not supported filtered records
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Application Title | Contains | Vrush Application |
    Then I see Total Records count "Total Records : 1" in table name "toggleFlexTablePrograms"
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - All"
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Total Records" on page "1" of "govgrants" pdf file

  @346695
  Scenario: Flex table-Filter-SPI-UI-To verify that export functionality(i.e. PDF/XLS) not supported filtered records
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
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
      | PM    |

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
      | PM    |

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
      | PM    |

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
      | PM    |

  @346979 @346980 @347021 @347024 @347119 @347122 @347235 @347240
  Scenario Outline: Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of FDM record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "All Funding Decision Memos (FDM)"
    And I perform quick search for "Test 32" in "---program:-:fdmTableId---" panel
    When I click on "View" icon for "Test 32" inside flex table with id "---program:-:fdmTableId---"
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
      | PM    |

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
      | PM    |

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
      | PM    |

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
      | PM    |

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
      | PM    |

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
      | PM    |

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
      | PM    |

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
      | PM    |

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
      | PM    |

  @347325 @347326 @347402 @347403
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
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    #347402 #347403
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @347327 @347328 @347404 @347405
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the Announcement record.
  Flex Layout_UI_Admin_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of the Announcement record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Test 11-Jul"
    When I click on "View" icon for "Test 11-Jul" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    #347404 #347405
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347331 @347332 @347408 @347409
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the Application record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "PROGRAM CREATION"
    When I click on "View" icon for "PROGRAM CREATION" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    #347408 #347409
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |


    Examples:
      | User  |
      | ADMIN |
     #| PM    |

  @347333 @347335 @347411
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the FDM record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "All Funding Decision Memos (FDM)"
    And I perform quick search for "Program For Announcement Testing" in "---program:-:fdmTableId---" panel
    When I click on "View" icon for "Program For Announcement Testing" inside flex table with id "---program:-:fdmTableId---"
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    #347411 #347413
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347336 @347338 @347415 @347416
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the Grants record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Testing Grant for Automation"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    #347415 #347416
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347339 @347340 @347419 @347421
  Scenario Outline:Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the Subawards record.
  Flex Layout_UI_Admin_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of the Subawards record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    When I click toggle button to select "Subawards  - Active"
    And I perform quick search for "product flow start" in "---program:-:GridGrantorRelatedAwards2TableId---" panel
    When I click on "View" icon for "product flow start" inside flex table with id "---program:-:GridGrantorRelatedAwards2TableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    #347419 #347421
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |


    Examples:
      | User  |
      | PM    |

  @347341 @347342 @347422 @347423
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the Amendment Request record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Amendment Requests" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Amendment Requests - Approved"
    And I perform quick search for "CR-AD-adc-01-00" in "---program:-:GrantorAmendmentRequestsTableId---" panel
    When I click on "View" icon for "CR-AD-adc-01-00" inside flex table with id "---program:-:GrantorAmendmentRequestsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    #347422 #347423
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347346 @347347 @347428 @347429
  Scenario Outline:   Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the Site visit record.
  Flex Layout_UI_Admin_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of the Site visit record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Site Visit Reports - In Progress"
    And I perform quick search for "SV-0727" in "---program:-:manageSiteVisitTableId---" panel
    When I click on "View" icon for "SV-0727" inside flex table with id "---program:-:manageSiteVisitTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    #347428 #347429
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347348 @347349 @347431 @347432
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the Desk reviews record.
  Flex Layout_UI_Admin_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of the Desk reviews record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Desk Reviews" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Desk Review Reports - All"
    And I perform quick search for "test flow 1" in "---program:-:LatestDeskReviewReportsTableId---" panel
    When I click on "View" icon for "test flow 1" inside flex table with id "---program:-:LatestDeskReviewReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    #347431 #347432
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347350 @347351 @347434 @347436
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the Organization Risk Assessment record.
  Flex Layout_UI_Admin_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of the Organization Risk Assessment record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Organization Risk Assessments - Active"
    And I perform quick search for "RA-0579" in "---program:-:OrgRiskAssessmentGridTableId---" panel
    When I click on "View" icon for "RA-0579" inside flex table with id "---program:-:OrgRiskAssessmentGridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    #347434 #347436
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347352 @343353 @347437 @347438
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the Advance Payment Request record.
  Flex Layout_UI_Admin_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of the Advance Payment Request record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Advances" content inside "Payments" subheader on left panel
    And I click toggle button to select "Advances - Approved"
    And I perform quick search for "PR-adc-00" in "---program:-:GrantorPaymentRequestAdvancesTableId---" panel
    When I click on "View" icon for "PR-adc-00" inside flex table with id "---program:-:GrantorPaymentRequestAdvancesTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    #347437 #347438
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347354 @347355 @347439 @347441
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the Reimbursement Payment Request record.
  Flex Layout_UI_Admin_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of the Reimbursement Payment Request record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Reimbursements" content inside "Payments" subheader on left panel
    And I click toggle button to select "Reimbursements - Approved"
    And I perform quick search for "PR-1000-12" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "PR-1000-12" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    #347439 #347441
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |


    Examples:
      | User  |
      | PM    |

  @347357 @347358 @347443 @347445
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the Closeout Request record.
  Flex Layout_UI_Admin_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of the Closeout Request record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Closeout" tab
    When I navigate to "Project Period Closeouts" content inside "Closeouts" subheader on left panel
    And I click toggle button to select "Project Period Closeouts - All"
    And I perform quick search for "Early Completion" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "Early Completion" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    #347443 #347445
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347364 @347365 @347451 @347453
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the Announcement record.
  Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the Announcement record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Test 11-Jul"
    When I click on "View" icon for "Test 11-Jul" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    #347451 #347453
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347369 @347371 @347456 @347457
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the Application record.
  Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the Application record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "PROGRAM CREATION"
    When I click on "View" icon for "PROGRAM CREATION" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    #347456 #347457
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | ADMIN |
     #| PM    |

  @347372 @347373 @347458 @347460
  Scenario Outline:Flex Layout_UI_Admin_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the FDM record.
  Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the FDM record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "All Funding Decision Memos (FDM)"
    And I perform quick search for "Program For Announcement Testing" in "---program:-:fdmTableId---" panel
    When I click on "View" icon for "Program For Announcement Testing" inside flex table with id "---program:-:fdmTableId---"
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    #347458 #347460
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347374 @347376 @347461 @347462
  Scenario Outline:Flex Layout_UI_Admin_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the Grants record.
  Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the Grants record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Testing Grant for Automation"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    #347461 #347462
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |


    Examples:
      | User  |
      | PM    |

  @347378 @347379 @347463 @347464
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the Subawards record.
  Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the Subawards record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    When I click toggle button to select "Subawards  - Active"
    And I perform quick search for "product flow start" in "---program:-:GridGrantorRelatedAwards2TableId---" panel
    When I click on "View" icon for "product flow start" inside flex table with id "---program:-:GridGrantorRelatedAwards2TableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    #347463 #347464
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347380 @347381 @347466 @347467
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the Amendment Request record.
  Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the Amendment Request record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Amendment Requests" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Amendment Requests - Approved"
    And I perform quick search for "CR-AD-adc-01-00" in "---program:-:GrantorAmendmentRequestsTableId---" panel
    When I click on "View" icon for "CR-AD-adc-01-00" inside flex table with id "---program:-:GrantorAmendmentRequestsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    #347466 #347467
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347384 @347386 @347473 @347474
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the Site visit record.
  Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the Site visit record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Site Visit Reports - In Progress"
    And I perform quick search for "SV-0727" in "---program:-:manageSiteVisitTableId---" panel
    When I click on "View" icon for "SV-0727" inside flex table with id "---program:-:manageSiteVisitTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    #347473 #347474
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347388 @347389 @347475 @347477
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the Desk reviews record.
  Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the Desk reviews record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Desk Reviews" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Desk Review Reports - All"
    And I perform quick search for "test flow 1" in "---program:-:LatestDeskReviewReportsTableId---" panel
    When I click on "View" icon for "test flow 1" inside flex table with id "---program:-:LatestDeskReviewReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    #347475 #347477
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347390 @347392 @347478 @347479
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the Organization Risk Assessment record.
  Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the Organization Risk Assessment record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Organization Risk Assessments - Active"
    And I perform quick search for "RA-0579" in "---program:-:OrgRiskAssessmentGridTableId---" panel
    When I click on "View" icon for "RA-0579" inside flex table with id "---program:-:OrgRiskAssessmentGridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    #347478 #347479
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347393 @347393 @347482 @347484
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the Advance Payment Request record.
  Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the Advance Payment Request record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Advances" content inside "Payments" subheader on left panel
    And I click toggle button to select "Advances - Approved"
    And I perform quick search for "PR-adc-00" in "---program:-:GrantorPaymentRequestAdvancesTableId---" panel
    When I click on "View" icon for "PR-adc-00" inside flex table with id "---program:-:GrantorPaymentRequestAdvancesTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    #347482 #347484
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347395 @347396 @347487 @347489
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the Reimbursement Payment Request record.
  Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the Reimbursement Payment Request record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Reimbursements" content inside "Payments" subheader on left panel
    And I click toggle button to select "Reimbursements - Approved"
    And I perform quick search for "PR-1000-12" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "PR-1000-12" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    #347487 #347489
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347397 @347399 @347491 @347492
  Scenario Outline:Flex Layout_UI_PM_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the Closeout Request record.
  Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the Closeout Request record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Closeout" tab
    When I navigate to "Project Period Closeouts" content inside "Closeouts" subheader on left panel
    And I click toggle button to select "Project Period Closeouts - All"
    And I perform quick search for "Early Completion" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "Early Completion" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    #347491 #347492
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | PM    |

  @347400 @347401 @347447 @347450
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the program record.
  Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the program record.
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
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    #347447 #347450
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @347494 @347495
  Scenario Outline: Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the program record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Tabs Config      | Skip for Export | false             | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Grantor State Program | Name                      | TAB-2624                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    And I pause execution for "5" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @347496 @347499
  Scenario Outline:Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the Announcement record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField      | filterId         |
      | Page Tabs Config      | Skip for Export | false             | Annoucement Profile-FOA | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Annoucement Profile-FOA | Name                      | TAB-2063                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Test 11-Jul"
    When I click on "View" icon for "Test 11-Jul" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347503 @347504
  Scenario Outline: Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | filterId         |
      | Page Tabs Config      | Skip for Export | false             | ApplicationView    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | ApplicationView    | Name                      | TAB-1823                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "PROGRAM CREATION"
    When I click on "View" icon for "PROGRAM CREATION" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347505 @347507
  Scenario Outline: Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the FDM record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField          | filterId         |
      | Page Tabs Config      | Skip for Export | false             | FundingDecisionMemoTemplate | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | FundingDecisionMemoTemplate | Name                      | TAB-1849                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "All Funding Decision Memos (FDM)"
    And I perform quick search for "Program For Announcement Testing" in "---program:-:fdmTableId---" panel
    When I click on "View" icon for "Program For Announcement Testing" inside flex table with id "---program:-:fdmTableId---"
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Funding Decision Memo" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347509 @347511
  Scenario Outline: Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the Grants record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | filterId         |
      | Page Tabs Config      | Skip for Export | false             | Grant              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Grant              | Name                      | TAB-2113                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Testing Grant for Automation"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347514 @347520
  Scenario Outline: Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the Subawards record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | filterId         |
      | Page Tabs Config      | Skip for Export | false             | Awards             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Awards             | Name                      | TAB-1950                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    When I click toggle button to select "Subawards  - Active"
    And I perform quick search for "product flow start" in "---program:-:GridGrantorRelatedAwards2TableId---" panel
    When I click on "View" icon for "product flow start" inside flex table with id "---program:-:GridGrantorRelatedAwards2TableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347527 @347535
  Scenario Outline: Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the Amendment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField       | filterId         |
      | Page Tabs Config      | Skip for Export | false             | Grantor Formal Amendment | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Grantor Formal Amendment | Name                      | TAB-2865                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Amendment Requests" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Amendment Requests - Approved"
    And I perform quick search for "CR-AD-adc-01-00" in "---program:-:GrantorAmendmentRequestsTableId---" panel
    When I click on "View" icon for "CR-AD-adc-01-00" inside flex table with id "---program:-:GrantorAmendmentRequestsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347539 @347545
  Scenario Outline: Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the Site visit record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | filterId         |
      | Page Tabs Config      | Skip for Export | false             | Grantor SiteVisit  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Grantor SiteVisit  | Name                      | TAB-2021                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Site Visit Reports - In Progress"
    And I perform quick search for "SV-0727" in "---program:-:manageSiteVisitTableId---" panel
    When I click on "View" icon for "SV-0727" inside flex table with id "---program:-:manageSiteVisitTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347551 @347561
  Scenario Outline: Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the Desk reviews record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField  | filterId         |
      | Page Tabs Config      | Skip for Export | false             | Grantor Desk Review | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Grantor Desk Review | Name                      | TAB-3044                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Desk Reviews" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Desk Review Reports - All"
    And I perform quick search for "test flow 1" in "---program:-:LatestDeskReviewReportsTableId---" panel
    When I click on "View" icon for "test flow 1" inside flex table with id "---program:-:LatestDeskReviewReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347569 @347571
  Scenario Outline: Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the Organization Risk Assessment record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField             | filterId         |
      | Page Tabs Config      | Skip for Export | false             | OrganizationRiskAssessmentView | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | OrganizationRiskAssessmentView | Name                      | TAB-2819                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Organization Risk Assessments - Active"
    And I perform quick search for "RA-0579" in "---program:-:OrgRiskAssessmentGridTableId---" panel
    When I click on "View" icon for "RA-0579" inside flex table with id "---program:-:OrgRiskAssessmentGridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347572 @347576
  Scenario Outline: Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the Advance Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField     | filterId         |
      | Page Tabs Config      | Skip for Export | false             | PaymentRequestsAdvance | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | PaymentRequestsAdvance | Name                      | TAB-3084                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Advances" content inside "Payments" subheader on left panel
    And I click toggle button to select "Advances - Approved"
    And I perform quick search for "PR-adc-00" in "---program:-:GrantorPaymentRequestAdvancesTableId---" panel
    When I click on "View" icon for "PR-adc-00" inside flex table with id "---program:-:GrantorPaymentRequestAdvancesTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347578 @347580
  Scenario Outline: Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the Reimbursement Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField          | filterId         |
      | Page Tabs Config      | Skip for Export | false             | PaymentRequestReimbursement | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | PaymentRequestReimbursement | Name                      | TAB-2115                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Reimbursements" content inside "Payments" subheader on left panel
    And I click toggle button to select "Reimbursements - Approved"
    And I perform quick search for "PR-1000-12" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "PR-1000-12" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347584 @347589
  Scenario Outline:Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the Closeout Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField     | filterId         |
      | Page Tabs Config      | Skip for Export | false             | GrantorCloseoutRequest | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | GrantorCloseoutRequest | Name                      | TAB-2710                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Closeout" tab
    When I navigate to "Project Period Closeouts" content inside "Closeouts" subheader on left panel
    And I click toggle button to select "Project Period Closeouts - All"
    And I perform quick search for "Early Completion" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "Early Completion" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347639 @347641 @347678 @347679
  Scenario Outline: Flex Layout_Config_Admin_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of the program record.
  Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the program record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | Grantor State Program | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Grantor State Program | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Approver Table"
    When I click on "View" icon for "Test Approver Table" inside table
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed
    Examples:
      | User  |
      | PM    |

  @347643 @347644 @347680 @347681
  Scenario Outline: Flex Layout_Config_Admin_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of the Announcement record.
  Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the Announcement record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | Annoucement Profile-FOA |                           |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Annoucement Profile-FOA | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Test 11-Jul"
    When I click on "View" icon for "Test 11-Jul" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed
    Examples:
      | User  |
      | PM    |

  @347648 @347649 @347684 @347685
  Scenario Outline:Flex Layout_Config_Admin_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of the Application record.
  Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | ApplicationView    | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | ApplicationView    | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "PROGRAM CREATION"
    When I click on "View" icon for "PROGRAM CREATION" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed
    Examples:
      | User  |
      | PM    |

  @347651 @347652 @347686 @347687
  Scenario Outline: Flex Layout_Config_Admin_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of the FDM record.
  Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the FDM record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | FundingDecisionMemoTemplate | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | FundingDecisionMemoTemplate | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "All Funding Decision Memos (FDM)"
    And I perform quick search for "Program For Announcement Testing" in "---program:-:fdmTableId---" panel
    When I click on "View" icon for "Program For Announcement Testing" inside flex table with id "---program:-:fdmTableId---"
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed
    Examples:
      | User  |
      | PM    |

  @347653 @347654 @347688 @347689
  Scenario Outline: Flex Layout_Config_Admin_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of the Grants record.
  Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the Grants record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | Grant              | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Grant              | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Testing Grant for Automation"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed
    Examples:
      | User  |
      | PM    |

  @347655 @347657 @347690 @347691
  Scenario Outline: Flex Layout_Config_Admin_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of the Subawards record.
  Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the Subawards record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | Awards             | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Awards             | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    When I click toggle button to select "Subawards  - Active"
    And I perform quick search for "product flow start" in "---program:-:GridGrantorRelatedAwards2TableId---" panel
    When I click on "View" icon for "product flow start" inside flex table with id "---program:-:GridGrantorRelatedAwards2TableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed
    Examples:
      | User  |
      | PM    |

  @347658 @347659 @347692 @347693
  Scenario Outline: Flex Layout_Config_Admin_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of the Amendment Request record.
  Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the Amendment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | Grantor Formal Amendment | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Grantor Formal Amendment | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Amendment Requests" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Amendment Requests - Approved"
    And I perform quick search for "CR-AD-adc-01-00" in "---program:-:GrantorAmendmentRequestsTableId---" panel
    When I click on "View" icon for "CR-AD-adc-01-00" inside flex table with id "---program:-:GrantorAmendmentRequestsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed
    Examples:
      | User  |
      | PM    |

  @347663 @347664 @347696 @347698
  Scenario Outline: Flex Layout_Config_Admin_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of the Site visit record.
  Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the Site visit record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | Grantor SiteVisit  | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Grantor SiteVisit  | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Site Visit Reports - In Progress"
    And I perform quick search for "SV-0727" in "---program:-:manageSiteVisitTableId---" panel
    When I click on "View" icon for "SV-0727" inside flex table with id "---program:-:manageSiteVisitTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed
    Examples:
      | User  |
      | PM    |

  @347666 @347667 @347699 @347700
  Scenario Outline: Flex Layout_Config_Admin_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of the Desk reviews record.
  Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the Desk reviews record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | Grantor Desk Review | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Grantor Desk Review | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Desk Reviews" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Desk Review Reports - All"
    And I perform quick search for "test flow 1" in "---program:-:LatestDeskReviewReportsTableId---" panel
    When I click on "View" icon for "test flow 1" inside flex table with id "---program:-:LatestDeskReviewReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed
    Examples:
      | User  |
      | PM    |

  @347669 @347670 @347701 @347702
  Scenario Outline:   Flex Layout_Config_Admin_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of the Organization Risk Assessment record.
  Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the Organization Risk Assessment record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | OrganizationRiskAssessmentView | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | OrganizationRiskAssessmentView | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Organization Risk Assessments - Active"
    And I perform quick search for "RA-0579" in "---program:-:OrgRiskAssessmentGridTableId---" panel
    When I click on "View" icon for "RA-0579" inside flex table with id "---program:-:OrgRiskAssessmentGridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed
    Examples:
      | User  |
      | PM    |

  @347672 @347673 @347703 @347705
  Scenario Outline: Flex Layout_Config_Admin_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of the Advance Payment Request record.
  Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the Advance Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download       | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphotd | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | PaymentRequestsAdvnce | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | PaymentRequestsAdvnce | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Advances" content inside "Payments" subheader on left panel
    And I click toggle button to select "Advances - Approved"
    And I perform quick search for "PR-adc-00" in "---program:-:GrantorPaymentRequestAdvancesTableId---" panel
    When I click on "View" icon for "PR-adc-00" inside flex table with id "---program:-:GrantorPaymentRequestAdvancesTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed
    Examples:
      | User  |
      | PM    |

  @347674 @347675 @347706 @347707
  Scenario Outline: Flex Layout_Config_Admin_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of the Reimbursement Payment Request record.
  Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the Reimbursement Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | PaymentRequestReimbursement | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | PaymentRequestReimbursement | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Reimbursements" content inside "Payments" subheader on left panel
    And I click toggle button to select "Reimbursements - Approved"
    And I perform quick search for "PR-1000-12" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "PR-1000-12" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed
    Examples:
      | User  |
      | PM    |

  @347676 @347677 @347708 @347709
  Scenario Outline: Flex Layout_Config_Admin_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of the Closeout Request record.
  Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the Closeout Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | GrantorCloseoutRequest | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | GrantorCloseoutRequest | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Closeout" tab
    When I navigate to "Project Period Closeouts" content inside "Closeouts" subheader on left panel
    And I click toggle button to select "Project Period Closeouts - All"
    And I perform quick search for "Early Completion" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "Early Completion" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed
    Examples:
      | User  |
      | PM    |

  @347710 @347724 @347817
  Scenario: Flex Layout_UI_SPI_To verify user can see menu icon on the page layout of Pre-Application record.
  Flex Layout_UI_SPI_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of Pre-Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | Recipient Pre-Application | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Pre-Applications - Submitted"
    And I perform quick search for "Test 32_Preapplication" in "---SPI-TableIDs:-:ApplicationsPreApplicationsTableId---" panel
    When I click on "View" icon for "Test 32_Preapplication" inside flex table with id "---SPI-TableIDs:-:ApplicationsPreApplicationsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347724
    Then I see "Download as PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    #347817
    Then I see "Overview" on page "1" of "govgrants" pdf file

  @347711 @347725 @347818
  Scenario: Flex Layout_UI_SPI_To verify user can see menu icon on the page layout of Application record.
  Flex Layout_UI_SPI_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of  Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | Recipient ApplicationView | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application test"
    When I click on "View" icon for "Application test" inside table
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347725
    Then I see "Download as PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    #347818
    Then I see "Overview" on page "1" of "govgrants" pdf file

  @347713 @347726 @347819
  Scenario: Flex Layout_UI_SPI_To verify user can see menu icon on the page layout of Grants record.
  Page Layout_UI_SPI_To verify user can see download as PDF on the page layout of Grants record in menu option.
  Flex Layout_UI_SPI_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of  Grants record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | RecipientGrant     | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
#      And I perform quick search for "Application test" in "---SPI-TableIDs:-:ApplicationsPreApplicationsTableId---" panel
#      When I click on "View" icon for "Application test" inside flex table with id "---SPI-TableIDs:-:ApplicationsPreApplicationsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347726
    Then I see "Download as PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    #347819
    Then I see "Overview" on page "1" of "govgrants" pdf file

  @347714 @347727 @347820
  Scenario: Flex Layout_UI_SPI_To verify user can see menu icon on the page layout of Subawards record.
  Flex Layout_UI_SPI_To verify user can see download as PDF on the page layout of Subawards record in menu option.
  Flex Layout_UI_SPI_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of  Subawards record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | RecipientAwards    | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - Active"
    And I perform quick search for "Autosnapshot grant 1" in "---program:-:RecipientsRelatedAwards2gridTableId---" panel
    When I click on "View" icon for "Autosnapshot grant 1" inside flex table with id "---program:-:RecipientsRelatedAwards2gridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347727
    Then I see "Download as PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    #347820
    Then I see "Overview" on page "1" of "govgrants" pdf file

  @347718 @347730 @347823
  Scenario: Flex Layout_UI_SPI_To verify user can see menu icon on the page layout of Site visit record.
  Flex Layout_UI_SPI_To verify user can see download as PDF on the page layout of Site visit record in menu option.
  Flex Layout_UI_SPI_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of  Site  visit record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | Recipient Grantor SiteVisit | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Site Visits - In Progress"
    And I perform quick search for "SV-0727" in "---program:-:ApplicantSiteVisitReportsTableId---" panel
    When I click on "View" icon for "SV-0727" inside flex table with id "---program:-:ApplicantSiteVisitReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347730
    Then I see "Download as PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    #347823
    Then I see "Overview" on page "1" of "govgrants" pdf file

  @347719 @347731 @347824
  Scenario: Flex Layout_UI_SPI_To verify user can see menu icon on the page layout of Desk reviews record.
  Flex Layout_UI_SPI_To verify user can see download as PDF on the page layout of Desk reviews record in menu option.
  Flex Layout_UI_SPI_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of  desk review record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | Recipient DeskReview | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Desk Reviews" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Desk Reviews - All"
    And I perform quick search for "SV-0723" in "---program:-:ApplicantDeskReviewReportsTableId---" panel
    When I click on "View" icon for "SV-0723" inside flex table with id "---program:-:ApplicantDeskReviewReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347731
    Then I see "Download as PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    #347824
    Then I see "Overview" on page "1" of "govgrants" pdf file

  @347720 @347732 @347825
  Scenario: Flex Layout_UI_SPI_To verify user can see menu icon on the page layout of Risk Assessment record.
  Flex Layout_UI_SPI_To verify user can see download as PDF on the page layout of Risk Assessment record in menu option.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | OrganizationRiskAssessmentView | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Organization Risk Assessments - Active"
    And I perform quick search for "RA-0580" in "---program:-:OrgRiskAssessmentGridTableId---" panel
    When I click on "View" icon for "RA-0580" inside flex table with id "---program:-:OrgRiskAssessmentGridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347732
    Then I see "Download as PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    #347825
    Then I see "Overview" on page "1" of "govgrants" pdf file

  @347721 @347733
  Scenario:Flex Layout_UI_SPI_To verify user can see menu icon on the page layout of Advance Payment Request record.
  Flex Layout_UI_SPI_To verify user can see download as PDF on the page layout of Advance Payment Request record in menu option.
  Flex Layout_UI_SPI_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of Advance Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | PaymentRequestsAdvance | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Advances" content inside "Payments" subheader on left panel
    And I click toggle button to select "Advances - All"
    And I perform quick search for "RA-0580" in "---program:-:GrantorPaymentRequestAdvancesTableId---" panel
    When I click on "View" icon for "RA-0580" inside flex table with id "---program:-:GrantorPaymentRequestAdvancesTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347733
    Then I see "Download as PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    #347826
    Then I see "Overview" on page "1" of "govgrants" pdf file

  @347722 @347734 @347827
  Scenario: Flex Layout_UI_SPI_To verify user can see menu icon on the page layout of Reimbursement Payment Request record.
  Flex Layout_UI_SPI_To verify user can see download as PDF on the page layout of Reimbursement Payment Request record in menu option.
  Flex Layout_UI_SPI_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of Reimbursement Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | PaymentRequestReimbursement | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Reimbursements" content inside "Payments" subheader on left panel
    And I click toggle button to select "Reimbursements - All"
    And I perform quick search for "PR-asg1-00" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "PR-asg1-00" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347734
    Then I see "Download as PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    #347827
    Then I see "Overview" on page "1" of "govgrants" pdf file

  @347723 @347735 @347828
  Scenario: Flex Layout_UI_SPI_To verify user can see menu icon on the page layout of Closeout Request record.
  Flex Layout_UI_SPI_To verify user can see download as PDF on the page layout of Closeout Request record in menu option.
  Flex Layout_UI_SPI_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of Closeout Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | SubrecipientCloseoutRequest | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Project Period Closeouts" content inside "Recipient Closeouts" subheader on left panel
    And I click toggle button to select "Project Period Closeouts - All"
    And I perform quick search for "CL-RG-001070-00000" in "---program:-:ProjectPeriodCloseoutGrantorTableId---" panel
    When I click on "View" icon for "CL-RG-001070-00000" inside flex table with id "---program:-:ProjectPeriodCloseoutGrantorTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347735
    Then I see "Download as PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    #347828
    Then I see "Overview" on page "1" of "govgrants" pdf file
#************
  @347791
  Scenario: Flex Layout_UI_SPI_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of Pre-Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | Recipient Pre-Application | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Pre-Applications - Submitted"
    And I perform quick search for "Test 32_Preapplication" in "---SPI-TableIDs:-:ApplicationsPreApplicationsTableId---" panel
    When I click on "View" icon for "Test 32_Preapplication" inside flex table with id "---SPI-TableIDs:-:ApplicationsPreApplicationsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    Then I see new tab is opened

  @347792
  Scenario: Flex Layout_UI_SPI_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | Recipient ApplicationView | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application test"
    When I click on "View" icon for "Application test" inside table
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    Then I see new tab is opened

  @347793
  Scenario: Flex Layout_UI_SPI_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of Grants record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | RecipientGrant     | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    Then I see new tab is opened

  @347795
  Scenario:Flex Layout_UI_SPI_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of subawards record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | RecipientAwards    | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - Active"
    And I perform quick search for "Autosnapshot grant 1" in "---program:-:RecipientsRelatedAwards2gridTableId---" panel
    When I click on "View" icon for "Autosnapshot grant 1" inside flex table with id "---program:-:RecipientsRelatedAwards2gridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    Then I see new tab is opened

  @347798
  Scenario: Flex Layout_UI_SPI_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of Site visit record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | Recipient Grantor SiteVisit | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Site Visits - In Progress"
    And I perform quick search for "SV-0727" in "---program:-:ApplicantSiteVisitReportsTableId---" panel
    When I click on "View" icon for "SV-0727" inside flex table with id "---program:-:ApplicantSiteVisitReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    Then I see new tab is opened

  @347799
  Scenario:Flex Layout_UI_SPI_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of Desk reviews record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | Recipient DeskReview | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Desk Reviews" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Desk Reviews - All"
    And I perform quick search for "SV-0723" in "---program:-:ApplicantDeskReviewReportsTableId---" panel
    When I click on "View" icon for "SV-0723" inside flex table with id "---program:-:ApplicantDeskReviewReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    Then I see new tab is opened

  @347800
  Scenario:Flex Layout_UI_SPI_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of Risk Assessment record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | OrganizationRiskAssessmentView | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Organization Risk Assessments - Active"
    And I perform quick search for "RA-0580" in "---program:-:OrgRiskAssessmentGridTableId---" panel
    When I click on "View" icon for "RA-0580" inside flex table with id "---program:-:OrgRiskAssessmentGridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    Then I see new tab is opened

  @347801
  Scenario:Flex Layout_UI_SPI_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of Advance Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | PaymentRequestsAdvance | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Advances" content inside "Payments" subheader on left panel
    And I click toggle button to select "Advances - All"
    And I perform quick search for "RA-0580" in "---program:-:GrantorPaymentRequestAdvancesTableId---" panel
    When I click on "View" icon for "RA-0580" inside flex table with id "---program:-:GrantorPaymentRequestAdvancesTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    Then I see new tab is opened

  @347802
  Scenario:Flex Layout_UI_SPI_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of Reimbursement Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | PaymentRequestReimbursement | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Reimbursements" content inside "Payments" subheader on left panel
    And I click toggle button to select "Reimbursements - All"
    And I perform quick search for "PR-asg1-00" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "PR-asg1-00" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    Then I see new tab is opened

  @347803
  Scenario:Flex Layout_UI_SPI_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of Closeout  Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | SubrecipientCloseoutRequest | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Project Period Closeouts" content inside "Recipient Closeouts" subheader on left panel
    And I click toggle button to select "Project Period Closeouts - All"
    And I perform quick search for "CL-RG-001070-00000" in "---program:-:ProjectPeriodCloseoutGrantorTableId---" panel
    When I click on "View" icon for "CL-RG-001070-00000" inside flex table with id "---program:-:ProjectPeriodCloseoutGrantorTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    Then I see new tab is opened

    #*********************************
  @347858 @347872
  Scenario: Flex Layout_UI_SPI_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of Pre-Application record.
  Flex Layout_UI_SPI_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of Pre-Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | Recipient Pre-Application | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Recipient Pre-Application | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Pre-Applications - Submitted"
    And I perform quick search for "Test 32_Preapplication" in "---SPI-TableIDs:-:ApplicationsPreApplicationsTableId---" panel
    When I click on "View" icon for "Test 32_Preapplication" inside flex table with id "---SPI-TableIDs:-:ApplicationsPreApplicationsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347858
    Then I do not see "Download as PDF" options is displayed
    #347872
    Then I do not see "Take Snapshot" options is displayed

  @347859 @347873
  Scenario:Flex Layout_UI_SPI_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of  Application record.
  Flex Layout_UI_SPI_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | Recipient ApplicationView | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Recipient ApplicationView | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application test"
    When I click on "View" icon for "Application test" inside table
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347859
    Then I do not see "Download as PDF" options is displayed
    #347873
    Then I do not see "Take Snapshot" options is displayed

  @347860 @347874
  Scenario: Flex Layout_UI_SPI_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of  Grants record.
  Flex Layout_UI_SPI_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of Grants record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | RecipientGrant     | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | RecipientGrant     | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347860
    Then I do not see "Download as PDF" options is displayed
    #347874
    Then I do not see "Take Snapshot" options is displayed

  @347861 @347875
  Scenario:Flex Layout_UI_SPI_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of  subaward record.
  Flex Layout_UI_SPI_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of Subawards  record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | RecipientAwards    | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | RecipientAwards    | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - Active"
    And I perform quick search for "Autosnapshot grant 1" in "---program:-:RecipientsRelatedAwards2gridTableId---" panel
    When I click on "View" icon for "Autosnapshot grant 1" inside flex table with id "---program:-:RecipientsRelatedAwards2gridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347861
    Then I do not see "Download as PDF" options is displayed
    #347875
    Then I do not see "Take Snapshot" options is displayed

  @347865 @347878
  Scenario: Flex Layout_UI_SPI_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of  Site visit record.
  Flex Layout_UI_SPI_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of site visit record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | Recipient Grantor SiteVisit | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Recipient Grantor SiteVisit | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Site Visits - In Progress"
    And I perform quick search for "SV-0727" in "---program:-:ApplicantSiteVisitReportsTableId---" panel
    When I click on "View" icon for "SV-0727" inside flex table with id "---program:-:ApplicantSiteVisitReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347865
    Then I do not see "Download as PDF" options is displayed
    #347878
    Then I do not see "Take Snapshot" options is displayed

  @347866 @347879
  Scenario:Flex Layout_UI_SPI_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of  Desk reviews record.
  Flex Layout_UI_SPI_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of desk reviews record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | Recipient DeskReview | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Recipient DeskReview | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Desk Reviews" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Desk Reviews - All"
    And I perform quick search for "SV-0723" in "---program:-:ApplicantDeskReviewReportsTableId---" panel
    When I click on "View" icon for "SV-0723" inside flex table with id "---program:-:ApplicantDeskReviewReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347866
    Then I do not see "Download as PDF" options is displayed
    #347879
    Then I do not see "Take Snapshot" options is displayed

  @347867 @347881
  Scenario:Flex Layout_UI_SPI_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of  Risk Assessment record.
  Flex Layout_UI_SPI_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of Risk Assessment record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | OrganizationRiskAssessmentView | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | OrganizationRiskAssessmentView | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Organization Risk Assessments - Active"
    And I perform quick search for "RA-0580" in "---program:-:OrgRiskAssessmentGridTableId---" panel
    When I click on "View" icon for "RA-0580" inside flex table with id "---program:-:OrgRiskAssessmentGridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347867
    Then I do not see "Download as PDF" options is displayed
    #347881
    Then I do not see "Take Snapshot" options is displayed

  @347868 @347882
  Scenario:Flex Layout_UI_SPI_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of Advance Payment Request record.
  Flex Layout_UI_SPI_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of Advance Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | PaymentRequestsAdvance | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | PaymentRequestsAdvance | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Advances" content inside "Payments" subheader on left panel
    And I click toggle button to select "Advances - All"
    And I perform quick search for "RA-0580" in "---program:-:GrantorPaymentRequestAdvancesTableId---" panel
    When I click on "View" icon for "RA-0580" inside flex table with id "---program:-:GrantorPaymentRequestAdvancesTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347868
    Then I do not see "Download as PDF" options is displayed
    #347882
    Then I do not see "Take Snapshot" options is displayed

  @347870 @347883
  Scenario:Flex Layout_UI_SPI_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of Reimbursement Payment Request record.
  Flex Layout_UI_SPI_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of Reimbursement Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | PaymentRequestReimbursement | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | PaymentRequestReimbursement | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Reimbursements" content inside "Payments" subheader on left panel
    And I click toggle button to select "Reimbursements - All"
    And I perform quick search for "PR-asg1-00" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "PR-asg1-00" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347870
    Then I do not see "Download as PDF" options is displayed
    #347883
    Then I do not see "Take Snapshot" options is displayed

  @347871 @347884
  Scenario:Flex Layout_UI_SPI_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of Closeout Request record.
  Flex Layout_UI_SPI_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of Closeout Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | SubrecipientCloseoutRequest | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | SubrecipientCloseoutRequest | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Project Period Closeouts" content inside "Recipient Closeouts" subheader on left panel
    And I click toggle button to select "Project Period Closeouts - All"
    And I perform quick search for "CL-RG-001070-00000" in "---program:-:ProjectPeriodCloseoutGrantorTableId---" panel
    When I click on "View" icon for "CL-RG-001070-00000" inside flex table with id "---program:-:ProjectPeriodCloseoutGrantorTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347871
    Then I do not see "Download as PDF" options is displayed
    #347884
    Then I do not see "Take Snapshot" options is displayed

    ##******************
  @347736 @347777 @347804
  Scenario: Flex Layout_UI_SPI_To verify user can see Take a snapshot on the page layout of Pre-Application record in menu option.
  Flex Layout_UI_SPI_To verify user clicks View Take Snapshot in menu option then snapshot get generated in the snapshot history table of Pre-Application record.
  Flex Layout_UI_SPI_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of Pre-Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | false         | Recipient Pre-Application | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Pre-Applications - Submitted"
    And I perform quick search for "Test 32_Preapplication" in "---SPI-TableIDs:-:ApplicationsPreApplicationsTableId---" panel
    When I click on "View" icon for "Test 32_Preapplication" inside flex table with id "---SPI-TableIDs:-:ApplicationsPreApplicationsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347736
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    #347777
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    #347804
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

  @347738 @347778 @347806
  Scenario:  Flex Layout_UI_SPI_To verify user can see Take a snapshot on the page layout of Application record in menu option.
  Flex Layout_UI_SPI_To verify user clicks View Take Snapshot in menu option then snapshot get generated in the snapshot history table of  Application record.
  Flex Layout_UI_SPI_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | false         | Recipient ApplicationView | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application test"
    When I click on "View" icon for "Application test" inside table
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347738
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    #347778
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    #347806
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

  @347739 @347781 @347807
  Scenario:Flex Layout_UI_SPI_To verify user can see Take a snapshot on the page layout of Grants record in menu option.
  Flex Layout_UI_SPI_To verify user clicks View Take Snapshot in menu option then snapshot get generated in the snapshot history table of Grants record.
  Flex Layout_UI_SPI_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of Grants record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | false         | RecipientGrant     | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347739
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    #347781
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    #347807
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

  @347740 @347782 @347808
  Scenario: Flex Layout_UI_SPI_To verify user can see Take a snapshot on the page layout of Subawards record in menu option.
  Flex Layout_UI_SPI_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of Subawards record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | false         | RecipientAwards    | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - Active"
    And I perform quick search for "Autosnapshot grant 1" in "---program:-:RecipientsRelatedAwards2gridTableId---" panel
    When I click on "View" icon for "Autosnapshot grant 1" inside flex table with id "---program:-:RecipientsRelatedAwards2gridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347740
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    #347782
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    #347808
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

  @347743 @347785 @347811
  Scenario:Flex Layout_UI_SPI_To verify user can see Take a snapshot on the page layout of Site visit record in menu option.
  Flex Layout_UI_SPI_To verify user clicks View Take Snapshot in menu option then snapshot get generated in the snapshot history table of  Site visit record.
  Flex Layout_UI_SPI_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of Site visit record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | false         | Recipient Grantor SiteVisit | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Site Visits - In Progress"
    And I perform quick search for "SV-0727" in "---program:-:ApplicantSiteVisitReportsTableId---" panel
    When I click on "View" icon for "SV-0727" inside flex table with id "---program:-:ApplicantSiteVisitReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347743
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    #347785
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    #347811
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

  @347744 @347786 @347812
  Scenario: Flex Layout_UI_SPI_To verify user can see Take a snapshot on the page layout of Desk reviews record in menu option.
  Flex Layout_UI_SPI_To verify user clicks View Take Snapshot in menu option then snapshot get generated in the snapshot history table of Desk reviews record.
  Flex Layout_UI_SPI_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of Desk reviews record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | false         | Recipient DeskReview | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Desk Reviews" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Desk Reviews - All"
    And I perform quick search for "SV-0723" in "---program:-:ApplicantDeskReviewReportsTableId---" panel
    When I click on "View" icon for "SV-0723" inside flex table with id "---program:-:ApplicantDeskReviewReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347744
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    #347786
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    #347812
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

  @347745 @347787 @34813
  Scenario:Flex Layout_UI_SPI_To verify user can see Take a snapshot on the page layout of Risk Assessment record in menu option.
  Flex Layout_UI_SPI_To verify user clicks View Take Snapshot in menu option then snapshot get generated in the snapshot history table of Risk Assessment record.
  Flex Layout_UI_SPI_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of Risk Assessment record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | false         | OrganizationRiskAssessmentView | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Organization Risk Assessments - Active"
    And I perform quick search for "RA-0580" in "---program:-:OrgRiskAssessmentGridTableId---" panel
    When I click on "View" icon for "RA-0580" inside flex table with id "---program:-:OrgRiskAssessmentGridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347745
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    #347787
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    #347813
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

  @347746 @347790 @347814
  Scenario:Flex Layout_UI_SPI_To verify user can see Take a snapshot on the page layout of Advance Payment Request record in menu option.
  Flex Layout_UI_SPI_To verify user clicks View Take Snapshot in menu option then snapshot get generated in the snapshot history table of Advance Payment Request record.
  Flex Layout_UI_SPI_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of Advance Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | false         | PaymentRequestsAdvance | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Advances" content inside "Payments" subheader on left panel
    And I click toggle button to select "Advances - All"
    And I perform quick search for "RA-0580" in "---program:-:GrantorPaymentRequestAdvancesTableId---" panel
    When I click on "View" icon for "RA-0580" inside flex table with id "---program:-:GrantorPaymentRequestAdvancesTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347746
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    #347790
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    #347814
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

  @347747 @347788 @347815
  Scenario: Flex Layout_UI_SPI_To verify user can see Take a snapshot on the page layout of Reimbursement Payment Request record in menu option.
  Flex Layout_UI_SPI_To verify user clicks View Take Snapshot in menu option then snapshot get generated in the snapshot history table of Reimbursement  Payment record.
  Flex Layout_UI_SPI_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of Reimbursement Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | false         | PaymentRequestReimbursement | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Reimbursements" content inside "Payments" subheader on left panel
    And I click toggle button to select "Reimbursements - All"
    And I perform quick search for "PR-asg1-00" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "PR-asg1-00" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347747
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    #347788
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    #347815
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

  @347748 @347789 @347816
  Scenario:Flex Layout_UI_SPI_To verify user can see Take a snapshot on the page layout of Closeout Request record in menu option.
  Flex Layout_UI_SPI_To verify user clicks View Take Snapshot in menu option then snapshot get generated in the snapshot history table of Closeout record.
  Flex Layout_UI_SPI_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of Closeout Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide On Demand Snaphot | false         | SubrecipientCloseoutRequest | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Project Period Closeouts" content inside "Recipient Closeouts" subheader on left panel
    And I click toggle button to select "Project Period Closeouts - All"
    And I perform quick search for "CL-RG-001070-00000" in "---program:-:ProjectPeriodCloseoutGrantorTableId---" panel
    When I click on "View" icon for "CL-RG-001070-00000" inside flex table with id "---program:-:ProjectPeriodCloseoutGrantorTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    #347748
    Then I see "Take Snapshot" options is displayed
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    #347789
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    #*************
  @347829
  Scenario: Flex Layout_UI_SPI_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of Pre-Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Tabs Config      | Skip for Export | false             | Recipient Pre-Application | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Recipient Pre-Application | Name                      | TAB-2730                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Pre-Applications - Submitted"
    And I perform quick search for "Test 32_Preapplication" in "---SPI-TableIDs:-:ApplicationsPreApplicationsTableId---" panel
    When I click on "View" icon for "Test 32_Preapplication" inside flex table with id "---SPI-TableIDs:-:ApplicationsPreApplicationsTableId---"
    And I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

  @347830
  Scenario: Flex Layout_UI_SPI_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of  Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Tabs Config      | Skip for Export | false             | Recipient ApplicationView | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Recipient ApplicationView | Name                      | TAB-2733                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application test"
    When I click on "View" icon for "Application test" inside table
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

  @347831
  Scenario:Flex Layout_UI_SPI_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of  Grants record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | filterId         |
      | Page Tabs Config      | Skip for Export | false             | RecipientGrant     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | RecipientGrant     | Name                      | TAB-2698                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    And I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

  @347832
  Scenario:Flex Layout_UI_SPI_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of Subawards record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | filterId         |
      | Page Tabs Config      | Skip for Export | false             | RecipientAwards    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | RecipientAwards    | Name                      | TAB-2697                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - Active"
    And I perform quick search for "Autosnapshot grant 1" in "---program:-:RecipientsRelatedAwards2gridTableId---" panel
    When I click on "View" icon for "Autosnapshot grant 1" inside flex table with id "---program:-:RecipientsRelatedAwards2gridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

  @347837
  Scenario:Flex Layout_UI_SPI_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of Site visit record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField          | filterId         |
      | Page Tabs Config      | Skip for Export | false             | Recipient Grantor SiteVisit | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Recipient Grantor SiteVisit | Name                      | TAB-3008                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Site Visits - In Progress"
    And I perform quick search for "SV-0727" in "---program:-:ApplicantSiteVisitReportsTableId---" panel
    When I click on "View" icon for "SV-0727" inside flex table with id "---program:-:ApplicantSiteVisitReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

  @347838
  Scenario: Flex Layout_UI_SPI_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of Desk review record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField   | filterId         |
      | Page Tabs Config      | Skip for Export | false             | Recipient DeskReview | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Recipient DeskReview | Name                      | TAB-2941                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Desk Reviews" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Desk Reviews - All"
    And I perform quick search for "SV-0723" in "---program:-:ApplicantDeskReviewReportsTableId---" panel
    When I click on "View" icon for "SV-0723" inside flex table with id "---program:-:ApplicantDeskReviewReportsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

  @347839
  Scenario:Flex Layout_UI_SPI_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of Risk Assessment record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField             | filterId         |
      | Page Tabs Config      | Skip for Export | false             | OrganizationRiskAssessmentView | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | OrganizationRiskAssessmentView | Name                      | TAB-2819                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    And I click toggle button to select "Organization Risk Assessments - Active"
    And I perform quick search for "RA-0580" in "---program:-:OrgRiskAssessmentGridTableId---" panel
    When I click on "View" icon for "RA-0580" inside flex table with id "---program:-:OrgRiskAssessmentGridTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

  @347840
  Scenario:Flex Layout_UI_SPI_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of Advance Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | filterId         |
      | Page Tabs Config      | Skip for Export | false             |                    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | PaymentRequestsAdvance | Name                      | TAB-3084                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Advances" content inside "Payments" subheader on left panel
    And I click toggle button to select "Advances - All"
    And I perform quick search for "RA-0580" in "---program:-:GrantorPaymentRequestAdvancesTableId---" panel
    When I click on "View" icon for "RA-0580" inside flex table with id "---program:-:GrantorPaymentRequestAdvancesTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

  @347841
  Scenario:Flex Layout_UI_SPI_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of Reimbursement Payment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField          | filterId         |
      | Page Tabs Config      | Skip for Export | false             | PaymentRequestReimbursement | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | PaymentRequestReimbursement | Name                      | TAB-2115                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Reimbursements" content inside "Payments" subheader on left panel
    And I click toggle button to select "Reimbursements - All"
    And I perform quick search for "PR-asg1-00" in "---program:-:GrantorPRReimbursementFlexTableId---" panel
    When I click on "View" icon for "PR-asg1-00" inside flex table with id "---program:-:GrantorPRReimbursementFlexTableId---"
    And I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

  @347842
  Scenario:Flex Layout_UI_SPI_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of   Closeout  Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField          | filterId         |
      | Page Tabs Config      | Skip for Export | false             | SubrecipientCloseoutRequest | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | SubrecipientCloseoutRequest | Name                      | TAB-3028                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    When I navigate to "Project Period Closeouts" content inside "Recipient Closeouts" subheader on left panel
    And I click toggle button to select "Project Period Closeouts - All"
    And I perform quick search for "CL-RG-001070-00000" in "---program:-:ProjectPeriodCloseoutGrantorTableId---" panel
    When I click on "View" icon for "CL-RG-001070-00000" inside flex table with id "---program:-:ProjectPeriodCloseoutGrantorTableId---"
    And I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

  @346974 @346976 @347012 @347015 @347109 @347114 @347222
  Scenario Outline:Export_LWC Flex Layout_UI_Admin_To verify user can see menu icon on the page layout of Pre-Application record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Pre-Applications - All"
    When I perform quick search for "Test 32"
    When I click on "View" icon for "Test 32" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I see "Download as PDF" options is displayed
    Then I see "Take Snapshot" options is displayed
    Then I see "View Native Page" options is displayed

    Examples:
      | User  |
      | PM    |

  @347329 @347330
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of the Pre-Application record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Pre-Applications - All"
    When I perform quick search for "Test 32"
    When I click on "View" icon for "Test 32" inside table
    When I navigate to "Overview" sub tab
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see take snap shot getting saved with "Snapshot History"

    Examples:
      | User  |
      | PM    |

  @347367 @347368
  Scenario Outline: Flex Layout_UI_Admin_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of the Pre-Application record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Pre-Applications - All"
    When I perform quick search for "Test 32"
    When I click on "View" icon for "Test 32" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Download as PDF" from dropdown
    Then I see new tab is opened
    Examples:
      | User  |
      | PM    |

  @347406 @347407
  Scenario Outline: Flex Layout_UI_Admin_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of the Pre-Application record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Pre-Applications - All"
    When I perform quick search for "Test 32"
    When I click on "View" icon for "Test 32" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347454 @347455
  Scenario Outline: Flex Layout_UI_Admin_To verify downloaded pdf contains all page tabs and page blocks which are enabled for export in config of the Pre-Application record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Pre-Applications - All"
    When I perform quick search for "Test 32"
    When I click on "View" icon for "Test 32" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Download as PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail      | Page Number |
      | Overview    | 1           |
      | Information | 1           |

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347501 @347502
  Scenario Outline: Flex Layout_UI_Admin_To verify downloaded pdf should not contain page tabs or page blocks which are hide for export in config of the Pre-Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField      | filterId         |
      | Page Tabs Config      | Skip for Export | false             | Grantor Pre-Application | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Grantor Pre-Application | Name                      | TAB-1915                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Pre-Applications - All"
    When I perform quick search for "Test 32"
    When I click on "View" icon for "Test 32" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @347682 @347683
  Scenario Outline: Flex Layout_Config_Admin_To verify if Hide On Demand Snapshot is true then Take snapshot option is hidden in menu of the Pre-Application record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField      | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download      | true          | Grantor Pre-Application | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Grantor Pre-Application | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Pre-Applications - All"
    When I perform quick search for "Test 32"
    When I click on "View" icon for "Test 32" inside table
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed

    Examples:
      | User  |
      | PM    |

  @347716 @347728 @347741
  Scenario:Flex Layout_UI_SPI_To verify user can see menu icon on the page layout of Amendment Request record.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I navigate to "Amendment Requests" content inside "Grants" subheader on left panel
    And I click toggle button to select "Amendment Requests - All"
    When I perform quick search for "CR-AD-asg1-01-00"
    When I click on "View" icon for "CR-AD-asg1-01-00" inside table
    When I navigate to "Overview" sub tab
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I see "Download As PDF" options is displayed
    Then I see "Take Snapshot" options is displayed
    Then I see "View Native Page" options is displayed

  @347783
  Scenario: Flex Layout_UI_SPI_To verify user clicks Take Snapshot in menu option then snapshot get generated in the snapshot history table of Amendment Request  record.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I navigate to "Amendment Requests" content inside "Grants" subheader on left panel
    And I click toggle button to select "Amendment Requests - All"
    When I perform quick search for "CR-AD-asg1-01-00"
    When I click on "View" icon for "CR-AD-asg1-01-00" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:

      | Detail   | Page Number |
      | Overview | 1           |

  @347796 @347821
  Scenario: Flex Layout_UI_SPI_To verify user clicks Download as PDF in menu option then PDF gets open in new tab of Amendment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide PDF Download | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout           | Hide PDF Download | false         | Recipient Amendment | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I navigate to "Amendment Requests" content inside "Grants" subheader on left panel
    And I click toggle button to select "Amendment Requests - All"
    When I perform quick search for "CR-AD-asg1-01-00"
    When I click on "View" icon for "CR-AD-asg1-01-00" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    Then I softly see following details in "govgrants" pdf file:
      | Detail   | Page Number |
      | Overview | 1           |

  @347809
  Scenario: Flex Layout_UI_SPI_To verify generated snapshot pdf contains all page tabs and page blocks which are visible on UI of Amendment Request record.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I navigate to "Amendment Requests" content inside "Grants" subheader on left panel
    And I click toggle button to select "Amendment Requests - All"
    When I perform quick search for "CR-AD-asg1-01-00"
    When I click on "View" icon for "CR-AD-asg1-01-00" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    When I pause execution for "5" seconds
    Then I see generated snapshot ".pdf" is displayed with "File Name"
    And I click on saved snap shot "SnapShot"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see following details in "govgrants" pdf file:
      | Detail   | Page Number |
      | Overview | 1           |

  @347834
  Scenario: Flex Layout_UI_SPI_To verify downloaded pdf should not contain page tabs or page blocks which are skip for export in config of Progress report record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField  | filterId         |
      | Page Tabs Config      | Skip for Export | false             | Recipient Amendment | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName       | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Skip for Export | true          | Recipient Amendment | Name                      | TAB-2916                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I navigate to "Amendment Requests" content inside "Grants" subheader on left panel
    And I click toggle button to select "Amendment Requests - All"
    When I perform quick search for "CR-AD-asg1-01-00"
    When I click on "View" icon for "CR-AD-asg1-01-00" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "7" seconds
    And I pause execution for "5" seconds
    Then I cannot see "Overview" on page "1" of "govgrants" pdf file

  @347862 @347876
  Scenario: Flex Layout_UI_SPI_To verify if Hide PDF Download is true then Download as PDF option is hidden in menu of  Amendment Request record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Page Layout           | Hide PDF Download      | false             | ApiGeneratedId:1 |
      | Page Layout           | Hide On Demand Snaphot | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout           | Hide PDF Download      | true          | Recipient Amendment | Name                      |                            |
      | Page Layout:General   | Hide On Demand Snaphot | true          | Recipient Amendment | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    When I navigate to "Amendment Requests" content inside "Grants" subheader on left panel
    And I click toggle button to select "Amendment Requests - All"
    When I perform quick search for "CR-AD-asg1-01-00"
    When I click on "View" icon for "CR-AD-asg1-01-00" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    Then I do not see "Download as PDF" options is displayed
    Then I do not see "Take Snapshot" options is displayed

  @346338 @346339
  Scenario Outline: E-grid-Parent_Config Export_"<User>"_To verify user should get 'Download as PDF' option under Menu when Enable Export (PDF) is enabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | AnnouncementBudgetCategory |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Financials" sub tab
    When I click on "Menu" button inside table id "AnnouncementBudgetCategorygrid"
    Then I see "Download as PDF" options is displayed
    Examples:
      | User  |
      | PM    |

  @346340
  Scenario: E-grid-Parent_Config Export_SPI_To verify user should get 'Download as PDF' option under Menu when Enable Export (PDF) is enabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    Then I see "Download as PDF" options is displayed

  @346341 @346344
  Scenario Outline: E-grid-Child_Config Export_"<Users>"_To verify user should get 'Download as PDF' option under Menu when Enable Export (PDF) is enabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ProgramReviewStepPanelTemplates |                           |                            |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    And I expand nested table containing column value "Pre-Screen Review"
    When I click on "Menu" button inside table id "child1MetaData"
    Then I see "Download as PDF" options is displayed
    Examples:
      | Users |
      | ADMIN |
      | PM    |

  @346346
  Scenario: E-grid-Child_Config Export_SPI_To verify user should get 'Download as PDF' option under Menu when Enable Export (PDF) is enabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    Then I see "Download as PDF" options is displayed

  @346347 @346348
  Scenario Outline: E-grid-Parent_Config Export_"<User>"_To verify user should not get 'Download as PDF' option under Menu when Enable Export (PDF) is disabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | AnnouncementBudgetCategory |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Financials" sub tab
    And I wait for "2" seconds
    When I click on "Menu" button inside table id "AnnouncementBudgetCategorygrid"
    Then I do not see "Download as PDF" options is displayed
    Examples:
      | User  |
      | PM    |

  @346350
  Scenario: E-grid-Parent_Config Export_SPI_To verify user should not get 'Download as PDF' option under Menu when Enable Export (PDF) is disabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    Then I do not see "Download as PDF" options is displayed

  @346351 @346352
  Scenario Outline: E-grid-Child_Config Export_"<Users>"_To verify user should not get 'Download as PDF' option under Menu when Enable Export (PDF) is disabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | ProgramReviewStepPanelTemplates |                           |                            |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    And I expand nested table containing column value "Pre-Screen Review"
    When I click on "Menu" button inside table id "child1MetaData"
    Then I do not see "Download as PDF" options is displayed
    Examples:
      | Users |
      | ADMIN |
      | PM    |

  @346354
  Scenario: E-grid-Child_Config Export_SPI_To verify user should not get 'Download as PDF' option under Menu when Enable Export (PDF) is disabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    Then I do not see "Download as PDF" options is displayed

  @346355 @346356
  Scenario Outline: E-grid-Parent_Config Export_"<User>"_To verify user should get 'Download as XLS' option under Menu when Enable Export (XLS / CSV) is enabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | AnnouncementBudgetCategory |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Financials" sub tab
    When I click on "Menu" button inside table id "AnnouncementBudgetCategorygrid"
    Then I see "Download as XLS" options is displayed
    Examples:
      | User  |
      | PM    |

  @346357
  Scenario: E-grid-Parent_Config Export_SPI_To verify user should get 'Download as XLS' option under Menu when Enable Export (XLS / CSV) is enabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    Then I see "Download as PDF" options is displayed

  @346358 @346359
  Scenario Outline: E-grid-Child_Config Export_"<Users>"_To verify user should get 'Download as XLS' option under Menu when Enable Export (XLS / CSV) is enabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | ProgramReviewStepPanelTemplates |                           |                            |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    And I expand nested table containing column value "Pre-Screen Review"
    When I click on "Menu" button inside table id "child1MetaData"
    Then I see "Download as XLS" options is displayed
    Examples:
      | Users |
      | ADMIN |
      | PM    |

  @346360
  Scenario: E-grid-Child_Config Export_SPI_To verify user should get 'Download as XLS' option under Menu when Enable Export (XLS / CSV) is enabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    Then I see "Download as PDF" options is displayed

  @346362 @346363
  Scenario Outline: E-grid-Parent_Config Export_"<User>"_To verify user should not get 'Download as XLS' option under Menu when Enable Export (XLS / CSV) is disabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | AnnouncementBudgetCategory |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Financials" sub tab
    And I wait for "2" seconds
    When I click on "Menu" button inside table id "AnnouncementBudgetCategorygrid"
    Then I do not see "Download as XLS" options is displayed
    Examples:
      | User  |
      | PM    |

  @346364
  Scenario: E-grid-Parent_Config Export_SPI_To verify user should not get 'Download as XLS' option under Menu when Enable Export (XLS / CSV) is disabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    Then I do not see "Download as PDF" options is displayed

  @346365 @346366
  Scenario Outline: E-grid-Child_Config Export_"<Users>"_To verify user should not get 'Download as XLS' option under Menu when Enable Export (XLS / CSV) is disabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | ProgramReviewStepPanelTemplates |                           |                            |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    And I expand nested table containing column value "Pre-Screen Review"
    When I click on "Menu" button inside table id "child1MetaData"
    Then I do not see "Download as XLS" options is displayed
    Examples:
      | Users |
      | ADMIN |
      | PM    |

  @346367
  Scenario: E-grid-Child_Config Export_SPI_To verify user should not get 'Download as XLS' option under Menu when Enable Export (XLS / CSV) is disabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    Then I do not see "Download as PDF" options is displayed

  @346411 @346412 @346434 @346436 @346463 @346464 @346477 @346478 @346531 @346532 @346612 @346613
  Scenario Outline: E-grid-Parent_UI Export_"<User>"-To verify all available records should be displayed in the downloaded PDF
  |E-grid-Parent_UI Export_"<User>"_To verify respective header should get displayed in the downloaded PDF.|
  |E-grid-Parent_UI Export_"<User>"-To verify that actions are not getting displayed in downloaded PDF.|
  |E-grid-Parent_UI Export_"<User>"-To verify that Record selection column should not displayed in downloaded PDF.|
  |E-grid-Parent_UI Export_"<User>"_To verify that all fields of different datatypes displayed in downloaded PDF.|
  |E-grid-Parent_UI Export_"<User>"_To verify that format of all different datatype/fields displayed same as what displayed on UI/page layout/table in downloaded PDF|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | GrantBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Grant Budget"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Grant Budget" on page "1" of "govgrants" pdf file
    Then I see "Budget Period Title" on page "1" of "govgrants" pdf file
    Then I see "Start Date" on page "1" of "govgrants" pdf file
    Then I see "End Date" on page "1" of "govgrants" pdf file
    Then I see "#" on page "1" of "govgrants" pdf file
    Then I see "Budget Category" on page "1" of "govgrants" pdf file
    Then I see "Awarded Budget" on page "1" of "govgrants" pdf file
    Then I cannot see "Actions" on page "1" of "govgrants" pdf file
    Then I cannot see "#" on page "1" of "govgrants" pdf file
    Then I cannot see "checkbox" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | PM    |

  @346413 @346438 @346467 @346480 @346535 @346614
  Scenario: E-grid-Parent_UI Export_SPI_To verify all available records should be displayed in the downloaded PDF
  |E-grid-Parent_UI Export_SPI_To verify respective header should get displayed in the downloaded PDF|
  |E-grid-Parent_UI Export_SPI_To verify that actions are not getting displayed in downloaded PDF.|
  |E-grid-Parent_UI Export_SPI_To verify that Record selection column should not displayed in downloaded PDF.|
  |E-grid-Parent_UI Export_SPI_To verify that all fields of different datatypes displayed in downloaded PDF.|
  |E-grid-Parent_UI Export_SPI_To verify that format of all different datatype/fields displayed same as what displayed on UI/page layout/table in downloaded PDF|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    And I select "Download as PDF" from parallel lines dropdown of "Grant Budget"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Grant Budget" on page "1" of "govgrants" pdf file
    Then I see "Budget Period Title" on page "1" of "govgrants" pdf file
    Then I see "Start Date" on page "1" of "govgrants" pdf file
    Then I see "End Date" on page "1" of "govgrants" pdf file
    Then I see "#" on page "1" of "govgrants" pdf file
    Then I see "Budget Category" on page "1" of "govgrants" pdf file
    Then I see "Awarded Budget" on page "1" of "govgrants" pdf file
    Then I cannot see "Actions" on page "1" of "govgrants" pdf file
    Then I cannot see "#" on page "1" of "govgrants" pdf file
    Then I cannot see "checkbox" on page "1" of "govgrants" pdf file

  @346414 @346415 @346439 @346442 @346468 @346469 @346481 @346482 @346537 @346540 @346547 @346548 @346615 @346616
  Scenario Outline: E-grid-Child_UI Export_"<User>"_To verify all available records should be displayed in the downloaded PDF
  |E-grid-Child_UI Export "<User>"-To verify respective header should get displayed in the downloaded PDF.|
  |E-grid-Child_UI Export_"<User>"_To verify that actions are not getting displayed in downloaded PDF.|
  |E-grid-Child_UI Export_"<User>"_To verify that Record selection column should not displayed in downloaded PDF.|
  |E-grid-Child_UI Export_"<User>"_To verify that all fields of different datatypes displayed in downloaded PDF.|
  |E-grid-Child_UI Export_"<User>"_To verify that format of currency field displayed in downloaded PDF.|
  |E-grid-Child_UI Export_"<User>"_To verify that format of all different datatype/fields displayed same as what displayed on UI/page layout/table in downloaded PDF|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | GrantBudgetCategoryFlexTable |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    And I wait for "2" seconds
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as PDF" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Grant Budget" on page "1" of "govgrants" pdf file
    Then I see "Budget Period Title" on page "1" of "govgrants" pdf file
    Then I see "Start Date" on page "1" of "govgrants" pdf file
    Then I see "End Date" on page "1" of "govgrants" pdf file
    Then I see "#" on page "1" of "govgrants" pdf file
    Then I see "Budget Category" on page "1" of "govgrants" pdf file
    Then I see "Awarded Budget" on page "1" of "govgrants" pdf file
    Then I cannot see "Actions" on page "1" of "govgrants" pdf file
    Then I cannot see "#" on page "1" of "govgrants" pdf file
    Then I cannot see "checkbox" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | PM    |

  @346416 @346444 @346470 @346484 @346541 @346550 @346617
  Scenario: E-grid-Child_UI Export_SPI_To verify all available records should be displayed in the downloaded PDF
  |E-grid-Child_UI Export_SPI_To verify respective header should get displayed in the downloaded PDF.|
  |E-grid-Child_UI Export_SPI_To verify that actions are not getting displayed in downloaded PDF.|
  |E-grid-Child_UI Export_SPI_To verify that Record selection column should not displayed in downloaded PDF.|
  |E-grid-Child_UI Export_SPI_To verify that all fields of different datatypes displayed in downloaded PDF.|
  |E-grid-Child_UI Export_SPI_To verify that format of all different datatype/fields displayed same as what displayed on UI/page layout/table in downloaded PDF|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as PDF" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Grant Budget" on page "1" of "govgrants" pdf file
    Then I see "Budget Period Title" on page "1" of "govgrants" pdf file
    Then I see "Start Date" on page "1" of "govgrants" pdf file
    Then I see "End Date" on page "1" of "govgrants" pdf file
    Then I see "#" on page "1" of "govgrants" pdf file
    Then I see "Budget Category" on page "1" of "govgrants" pdf file
    Then I see "Awarded Budget" on page "1" of "govgrants" pdf file
    Then I cannot see "Actions" on page "1" of "govgrants" pdf file
    Then I cannot see "#" on page "1" of "govgrants" pdf file
    Then I cannot see "checkbox" on page "1" of "govgrants" pdf file

  @346417 @346418 @346426 @346428 @346471 @346472 @346485 @346486 @346596 @346597
  Scenario Outline: E-grid-Parent_UI Export_"<User>"-To verify all available records should be displayed in the downloaded XLS/CSV
  |E-grid-Parent_UI Export-"<User>"-To verify respective header should get displayed in the downloaded XLS/CSV.|
  |E-grid-Parent_UI Export-"<User>"-To verify that actions are not getting displayed in downloaded XLS/CSV.|
  |E-grid-Parent_UI Export_"<User>"_To verify that Record selection column should not displayed in downloaded XLS/CSV.|
  |E-grid-Parent_UI Export_"<User>"_To verify that on clicking on Download as XLS link, and clicking on Yes button on confirmation box then XLS file get downloaded in a machine|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | GrantBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableId---"
    And I select "Download as XLS" from parallel lines dropdown of "Grant Budget"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Grant Budget" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Start Date" in downloaded xls or csv file "govgrants"
    Then I see "End Date" in downloaded xls or csv file "govgrants"
    Then I see "#" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Awarded Budget" in downloaded xls or csv file "govgrants"
    Then I cannot see "Actions" in downloaded xls or csv file "govgrants"
    Then I cannot see "#" in downloaded xls or csv file "govgrants"
    Then I cannot see "Checkbox" in downloaded xls or csv file "govgrants"
    Examples:
      | User  |
      | PM    |

  @346419 @346430 @346473 @346487 @346599
  Scenario: E-grid-Parent_UI Export_SPI_To verify all available records should be displayed in the downloaded XLS/CSV.
  |E-grid-Parent_UI Export_SPI_-To verify respective header should get displayed in the downloaded XLS/CSV.|
  |E-grid-Parent_UI Export_SPI_To verify that actions are not getting displayed in downloaded XLS/CSV.|
  |E-grid-Parent_UI Export_SPI_To verify that Record selection column should not displayed in downloaded XLS/CSV.|
  |E-grid-Parent_UI Export_SPI_To verify that on clicking on Download as XLS link, and clicking on Yes button on confirmation box then XLS file get downloaded in a machine|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    And I select "Download as XLS" from parallel lines dropdown of "Grant Budget"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Grant Budget" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Start Date" in downloaded xls or csv file "govgrants"
    Then I see "End Date" in downloaded xls or csv file "govgrants"
    Then I see "#" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Awarded Budget" in downloaded xls or csv file "govgrants"
    Then I cannot see "Actions" in downloaded xls or csv file "govgrants"
    Then I cannot see "#" in downloaded xls or csv file "govgrants"
    Then I cannot see "Checkbox" in downloaded xls or csv file "govgrants"

  @346420 @346423 @346431 @346432 @346474 @346475 @346489 @346490 @346601 @346602
  Scenario Outline: E-grid-Child_UI Export_"<User>"_To verify all available records should be displayed in the downloaded XLS/CSV
  |E-grid-Child_UI Export_"<User>"_To verify respective header should get displayed in the downloaded XLS/CSV|
  |E-grid-Child_UI Export_"<User>"_To verify that actions are not getting displayed in downloaded XLS/CSV.|
  |E-grid-Child_UI Export_"<User>"_To verify that Record selection column should not displayed in downloaded XLS/CSV.|
  |E-grid-Child_UI Export_"<User>"_To verify that on clicking on Download as XLS link, and clicking on Yes button on confirmation box then XLS file get downloaded in a machine|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | GrantBudgetCategoryFlexTable |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    And I wait for "2" seconds
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as XLS" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Grant Budget" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Start Date" in downloaded xls or csv file "govgrants"
    Then I see "End Date" in downloaded xls or csv file "govgrants"
    Then I see "#" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Awarded Budget" in downloaded xls or csv file "govgrants"
    Then I cannot see "Actions" in downloaded xls or csv file "govgrants"
    Then I cannot see "#" in downloaded xls or csv file "govgrants"
    Then I cannot see "Checkbox" in downloaded xls or csv file "govgrants"
    Examples:
      | User  |
      | PM    |

  @346424 @346433 @346476 @346491 @346603
  Scenario: E-grid-Child_UI Export_SPI_To verify all available records should be displayed in the downloaded XLS/CSV.
  |E-grid-Child_UI Export_SPI_To verify that actions are not getting displayed in downloaded XLS/CSV.|
  |E-grid-Child_UI Export_SPI_To verify that Record selection column should not displayed in downloaded XLS/CSV.|
  |E-grid-Child_UI Export_SPI_To verify that on clicking on Download as XLS link, and clicking on Yes button on confirmation box then XLS file get downloaded in a machine|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as XLS" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Grant Budget" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Start Date" in downloaded xls or csv file "govgrants"
    Then I see "End Date" in downloaded xls or csv file "govgrants"
    Then I see "#" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Awarded Budget" in downloaded xls or csv file "govgrants"
    Then I cannot see "Actions" in downloaded xls or csv file "govgrants"
    Then I cannot see "#" in downloaded xls or csv file "govgrants"
    Then I cannot see "Checkbox" in downloaded xls or csv file "govgrants"

  @346445 @346446
  Scenario Outline: E-grid-Parent_UI Export_"<User>"-To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
      | Flex Table List       | Label               | Grant Budget      | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | GrantBudgetPeriods |                           |                            |
      | Flex Table List       | Label               |               | GrantBudgetPeriods | Name                      | FLV-3294                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableId---"
    And I select "Download as PDF" from parallel lines dropdown of ""
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Grant Budget" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | PM    |

  @346347
  Scenario: E-grid-Parent_UI Export_SPI_To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded PDF.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
      | Flex Table List       | Label               | Grant Budget      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetPeriods | Name                      |                            |
      | Flex Table List       | Label               |               | RecGrantBudgetPeriods | Name                      | FLV-3328                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    And I select "Download as PDF" from parallel lines dropdown of ""
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Grant Budget" on page "1" of "govgrants" pdf file

  @346450 @346452
  Scenario Outline: E-grid-Child_UI Export_"<User>"_To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded PDF.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
      | Flex Table List       | Label               | Budget Category   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | GrantBudgetCategoryFlexTable |                           |                            |
      | Flex Table List       | Label               |               | GrantBudgetCategoryFlexTable | Name                      | FLV-2637                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    And I wait for "2" seconds
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as PDF" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Budget Category" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | PM    |

  @346453
  Scenario: E-grid-Child_UI Export_SPI_To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded PDF.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
      | Flex Table List       | Label               | Budget Category   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
      | Flex Table List       | Label               |               | RecGrantBudgetCategoryFlexTable | Name                      | FLV-3329                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as PDF" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Budget Category" on page "1" of "govgrants" pdf file

  @346454 @346455
  Scenario Outline: E-grid-Parent_UI Export_"<User>"_To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
      | Flex Table List       | Label                     | Grant Budget      | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | GrantBudgetPeriods |                           |                            |
      | Flex Table List       | Label                     |               | GrantBudgetPeriods | Name                      | FLV-3294                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableId---"
    And I select "Download as XLS" from parallel lines dropdown of "Grant Budget"
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Grant Budget" in downloaded xls or csv file "govgrants"
    Examples:
      | User  |
      | PM    |

  @346457
  Scenario: E-grid-Parent_UI Export_SPI_To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
      | Flex Table List       | Label                     | Grant Budget      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecGrantBudgetPeriods | Name                      |                            |
      | Flex Table List       | Label                     |               | RecGrantBudgetPeriods | Name                      | FLV-3328                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    And I select "Download as XLS" from parallel lines dropdown of "Grant Budget"
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Grant Budget" in downloaded xls or csv file "govgrants"

  @346458 @346462
  Scenario Outline: E-grid-Child_UI Export_"<User>"_To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
      | Flex Table List       | Label                     | Budget Category   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | GrantBudgetCategoryFlexTable |                           |                            |
      | Flex Table List       | Label                     |               | GrantBudgetCategoryFlexTable | Name                      | FLV-2637                   |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    And I wait for "2" seconds
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as XLS" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Budget Category" in downloaded xls or csv file "govgrants"
    Examples:
      | User  |
      | PM    |

  @346460
  Scenario: E-grid-Child_UI Export_SPI_To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
      | Flex Table List       | Label                     | Budget Category   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
      | Flex Table List       | Label                     |               | RecGrantBudgetCategoryFlexTable | Name                      | FLV-3329                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as XLS" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I cannot see "Budget Category" in downloaded xls or csv file "govgrants"

  @346543 @346544
  Scenario Outline: E-grid-Parent_UI Export_"<User>"_To verify that format of currency field displayed in downloaded PDF.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | GrantBudgetPeriods | Name                      |                            |
      | Flex Table:General    | Enable Export (PDF) | true           | GrantBudgetPeriods | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Grant Budget"
    And I download the file
    And I pause execution for "7" seconds
    Then I softly see "Fee Fund Requested" on page "1" of "govgrants" pdf file
    Examples:
      | User  | newFieldsApi                                                                 | defaultFieldsApi                                         |
      | ADMIN | BudgetPeriodTitle__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c | BudgetPeriodTitle__c,BudgetStartDate__c,BudgetEndDate__c |
      | PM    | BudgetPeriodTitle__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c | BudgetPeriodTitle__c,BudgetStartDate__c,BudgetEndDate__c |

  @346545
  Scenario Outline: E-grid-Parent_UI Export_SPI_To verify that format of currency field displayed in downloaded PDF.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | GrantBudgetPeriods    | Name                      |                            |
      | Flex Table:General    | Enable Export (PDF) | true           | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    And I select "Download as PDF" from parallel lines dropdown of "Grant Budget"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Fee Fund Requested" on page "1" of "govgrants" pdf file
    Examples:
      | newFieldsApi                                                                 | defaultFieldsApi                                         |
      | BudgetPeriodTitle__c,BudgetStartDate__c,BudgetEndDate__c,FeeFundRequested__c | BudgetPeriodTitle__c,BudgetStartDate__c,BudgetEndDate__c |

  @346604 @346605
  Scenario Outline: E-grid-Parent_UI Export_"<User>"_To verify that when user click on Download as PDF link, respective PDF get opened in new tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | GrantBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Grant Budget"
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    Examples:
      | User  |
      | PM    |

  @346606
  Scenario: E-grid-Parent_UI Export_SPI_To verify that when user click on Download as PDF link, respective PDF get opened in new tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    And I select "Download as PDF" from parallel lines dropdown of "Grant Budget"
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened

  @346608 @346610
  Scenario Outline: E-grid-Child_UI Export_"<User>"_To verify that when user click on Download as PDF link, respective PDF get opened in new tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | GrantBudgetCategoryFlexTable |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    And I wait for "2" seconds
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as PDF" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened
    Examples:
      | User  |
      | PM    |

  @346611
  Scenario: E-grid-Child_UI Export_SPI_To verify that when user click on Download as PDF link, respective PDF get opened in new tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as PDF" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I see new tab is opened

  @346622 @346624
  Scenario Outline: E-grid-Child_UI Export_"<User>"_To verify that Reference field displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | GrantBudgetCategoryFlexTable | Name                      |                            |
      | Flex Table:General    | Enable Export (PDF) | true           | GrantBudgetCategoryFlexTable | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    And I wait for "2" seconds
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as PDF" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Row Number" on page "1" of "govgrants" pdf file
    Examples:
      | User  | newFieldsApi                                                                                                                                                    | defaultFieldsApi                                                                                                                |
      | ADMIN | ProjServiceAreaName__c,BudgetCategoryName__c,AwardedBudget__c,CashMatch__c,NonCashMatch__c,OtherLeverage__c,TotalProjectCost__c,BudgetCategory__r.RowsNumber__c | ProjServiceAreaName__c,BudgetCategoryName__c,AwardedBudget__c,CashMatch__c,NonCashMatch__c,OtherLeverage__c,TotalProjectCost__c |
      | PM    | ProjServiceAreaName__c,BudgetCategoryName__c,AwardedBudget__c,CashMatch__c,NonCashMatch__c,OtherLeverage__c,TotalProjectCost__c,BudgetCategory__r.RowsNumber__c | ProjServiceAreaName__c,BudgetCategoryName__c,AwardedBudget__c,CashMatch__c,NonCashMatch__c,OtherLeverage__c,TotalProjectCost__c |

  @346625
  Scenario Outline: E-grid-Child_UI Export_SPI_To verify that Reference field displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | RecGrantBudgetCategoryFlexTable | Name                      |                            |
      | Flex Table:General    | Enable Export (PDF) | true           | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as PDF" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Row Number" on page "1" of "govgrants" pdf file
    Examples:
      | newFieldsApi                                                                                                                                                    | defaultFieldsApi                                                                                                                |
      | ProjServiceAreaName__c,BudgetCategoryName__c,AwardedBudget__c,CashMatch__c,NonCashMatch__c,OtherLeverage__c,TotalProjectCost__c,BudgetCategory__r.RowsNumber__c | ProjServiceAreaName__c,BudgetCategoryName__c,AwardedBudget__c,CashMatch__c,NonCashMatch__c,OtherLeverage__c,TotalProjectCost__c |

  @346570 @346572
  Scenario Outline: E-grid-Parent_UI Export_"<User>"_To verify that footer of Downloaded PDF contains Page number
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | GrantBudgetPeriods |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableId---"
    And I select "Download as PDF" from parallel lines dropdown of "Grant Budget"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Page 1 of 1" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | PM    |

  @346573
  Scenario: E-grid-Parent_UI Export_SPI_To verify that footer of Downloaded PDF contains and Page number
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    And I select "Download as PDF" from parallel lines dropdown of "Grant Budget"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Page 1 of 1" on page "1" of "govgrants" pdf file

  @346574 @346576
  Scenario Outline:E-grid-Child_UI Export_"<User>"_To verify that footer of Downloaded PDF contains one image and Page number
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | GrantBudgetCategoryFlexTable |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    And I wait for "2" seconds
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as PDF" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Page 1 of 1" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | PM    |

  @346577
  Scenario:E-grid-Child_UI Export_SPI_To verify that footer of Downloaded PDF contains Page number
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as PDF" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Page 1 of 1" on page "1" of "govgrants" pdf file

  @346559 @346560
  Scenario Outline: E-grid-Parent_UI Export_"<Users>"_To verify that To verify that Overall total displayed in downloaded PDF.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (PDF)   | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total | true          | ProgramReviewStepTemplates | Name                      | FTC-10960                  |
      | Flex Table:General    | Enable Export (PDF)   | true          | ProgramReviewStepTemplates | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "do not delete program for change request"
    When I click on "View" icon for "do not delete program for change request" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    Then I download the file
    Then I see "3" on page "1" of "govgrants" pdf file
    Examples:
      | Users |
      | ADMIN |
      | PM    |

  @346565 @346567
  Scenario Outline:E-grid-Child_UI Export_"<User>"_To verify that To verify that Overall total displayed in downloaded PDF.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | GrantBudgetCategoryFlexTable |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2022-2023)"
    And I wait for "2" seconds
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as PDF" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "$1,000.00" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | PM    |

  @346551 @346552
  Scenario Outline: E-grid-Parent_UI Export_"<User>"_To verify that Overall total displayed in downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total     | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total     | true          | ProgramReviewStepTemplates | Name                      | FTC-10960                  |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | ProgramReviewStepTemplates |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "do not delete program for change request"
    When I click on "View" icon for "do not delete program for change request" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "3" in downloaded xls or csv file "govgrants"
    Examples:
      | User  |
      | PM    |

  @346556 @346557
  Scenario Outline: E-grid-Child_UI Export_"<User>"_To verify that Overall total displayed in downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | GrantBudgetCategoryFlexTable |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2022-2023)"
    And I wait for "2" seconds
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as XLS" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "$1,000.00" in downloaded xls or csv file "govgrants"
    Examples:
      | User  |
      | PM    |

  @346618 @346620
  Scenario Outline: E-grid-Parent_UI Export_"<User>"_To verify that Reference field displayed in downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Export (PDF) | true               | ApiGeneratedId:1 |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | ProgramReviewStepTemplates | Name                      |                            |
      | Flex Table:General    | Enable Export (PDF) | true           | ProgramReviewStepTemplates | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "do not delete program for change request"
    When I click on "View" icon for "do not delete program for change request" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Review Steps"
    And I download the file
    And I pause execution for "7" seconds
    Then I see "Status" on page "1" of "govgrants" pdf file
    Examples:
      | User  | newFieldsApi                                                                                                                                                                                     | defaultFieldsApi                                                                                                                                                            |
      | ADMIN | Id,StepNumber__c,Name,Description__c,Weight__c,CountReviewPanels__c,Organization__c,Announcement__c,AnnouncementId__c,Countofreviewers__c,Justification__c,RecallComment__c,Program__r.Status__c | Id,StepNumber__c,Name,Description__c,Weight__c,CountReviewPanels__c,Organization__c,Announcement__c,AnnouncementId__c,Countofreviewers__c,Justification__c,RecallComment__c |
      | PM    | Id,StepNumber__c,Name,Description__c,Weight__c,CountReviewPanels__c,Organization__c,Announcement__c,AnnouncementId__c,Countofreviewers__c,Justification__c,RecallComment__c,Program__r.Status__c | Id,StepNumber__c,Name,Description__c,Weight__c,CountReviewPanels__c,Organization__c,Announcement__c,AnnouncementId__c,Countofreviewers__c,Justification__c,RecallComment__c |
