@ExportFunctionality-Component @regression-QA
Business Need: All pdf and xls related scenario including component and completed backlogs
  Test all Export Functionality based scenarios
  As a configuration manager i make different configurational changes for Export Functionality related scenarios and will validate them.

  @346338 @346339
  Scenario Outline: E-grid-Parent_Config Export_"<User>"_To verify user should get 'Download as PDF' option under Menu when Enable Export (PDF) is enabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
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
      | ADMIN |
      | PM    |

  @346340
  Scenario: E-grid-Parent_Config Export_SPI_To verify user should get 'Download as PDF' option under Menu when Enable Export (PDF) is enabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
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
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
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
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
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
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
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
      | ADMIN |
      | PM    |

  @346350
  Scenario: E-grid-Parent_Config Export_SPI_To verify user should not get 'Download as PDF' option under Menu when Enable Export (PDF) is disabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
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
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
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
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
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
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
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
      | ADMIN |
      | PM    |

  @346357
  Scenario: E-grid-Parent_Config Export_SPI_To verify user should get 'Download as XLS' option under Menu when Enable Export (XLS / CSV) is enabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
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
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
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
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
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
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
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
      | ADMIN |
      | PM    |

  @346364
  Scenario: E-grid-Parent_Config Export_SPI_To verify user should not get 'Download as XLS' option under Menu when Enable Export (XLS / CSV) is disabled in config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
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
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
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
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    Then I do not see "Download as PDF" options is displayed

  @346411 @346412 @346434 @346436
  Scenario Outline: E-grid-Parent_UI Export_"<User>"-To verify all available records should be displayed in the downloaded PDF
  |E-grid-Parent_UI Export_"<User>"_To verify respective header should get displayed in the downloaded PDF.|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
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
    Then I see "Grant Budget" on page "1" of "govgrants" pdf file
    Then I see "Budget Period Title" on page "1" of "govgrants" pdf file
    Then I see "Start Date" on page "1" of "govgrants" pdf file
    Then I see "End Date" on page "1" of "govgrants" pdf file
    Then I see "#" on page "1" of "govgrants" pdf file
    Then I see "Budget Category" on page "1" of "govgrants" pdf file
    Then I see "Awarded Budget" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346413 @346438
  Scenario: E-grid-Parent_UI Export_SPI_To verify all available records should be displayed in the downloaded PDF
  |E-grid-Parent_UI Export_SPI_To verify respective header should get displayed in the downloaded PDF|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    And I select "Download as PDF" from parallel lines dropdown of "Grant Budget"
    And I download the file
    Then I see "Grant Budget" on page "1" of "govgrants" pdf file
    Then I see "Budget Period Title" on page "1" of "govgrants" pdf file
    Then I see "Start Date" on page "1" of "govgrants" pdf file
    Then I see "End Date" on page "1" of "govgrants" pdf file
    Then I see "#" on page "1" of "govgrants" pdf file
    Then I see "Budget Category" on page "1" of "govgrants" pdf file
    Then I see "Awarded Budget" on page "1" of "govgrants" pdf file

  @346414 @346415 @346439 @346442
  Scenario Outline: E-grid-Child_UI Export_"<User>"_To verify all available records should be displayed in the downloaded PDF
  |E-grid-Child_UI Export "<User>"-To verify respective header should get displayed in the downloaded PDF.|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
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
    Then I see "Grant Budget" on page "1" of "govgrants" pdf file
    Then I see "Budget Period Title" on page "1" of "govgrants" pdf file
    Then I see "Start Date" on page "1" of "govgrants" pdf file
    Then I see "End Date" on page "1" of "govgrants" pdf file
    Then I see "#" on page "1" of "govgrants" pdf file
    Then I see "Budget Category" on page "1" of "govgrants" pdf file
    Then I see "Awarded Budget" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346416 @346444
  Scenario: E-grid-Child_UI Export_SPI_To verify all available records should be displayed in the downloaded PDF
  |E-grid-Child_UI Export_SPI_To verify respective header should get displayed in the downloaded PDF.|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as PDF" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    Then I see "Grant Budget" on page "1" of "govgrants" pdf file
    Then I see "Budget Period Title" on page "1" of "govgrants" pdf file
    Then I see "Start Date" on page "1" of "govgrants" pdf file
    Then I see "End Date" on page "1" of "govgrants" pdf file
    Then I see "#" on page "1" of "govgrants" pdf file
    Then I see "Budget Category" on page "1" of "govgrants" pdf file
    Then I see "Awarded Budget" on page "1" of "govgrants" pdf file

  @346417 @346418 @346426 @346428
  Scenario Outline: E-grid-Parent_UI Export_"<User>"-To verify all available records should be displayed in the downloaded XLS/CSV
  |E-grid-Parent_UI Export-"<User>"-To verify respective header should get displayed in the downloaded XLS/CSV.|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
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
    Then I see "Grant Budget" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Start Date" in downloaded xls or csv file "govgrants"
    Then I see "End Date" in downloaded xls or csv file "govgrants"
    Then I see "#" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Awarded Budget" in downloaded xls or csv file "govgrants"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346419 @346430
  Scenario: E-grid-Parent_UI Export_SPI_To verify all available records should be displayed in the downloaded XLS/CSV.
  |E-grid-Parent_UI Export_SPI_-To verify respective header should get displayed in the downloaded XLS/CSV.|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecGrantBudgetPeriods | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    And I select "Download as XLS" from parallel lines dropdown of "Grant Budget"
    And I download the file
    Then I see "Grant Budget" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Start Date" in downloaded xls or csv file "govgrants"
    Then I see "End Date" in downloaded xls or csv file "govgrants"
    Then I see "#" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Awarded Budget" in downloaded xls or csv file "govgrants"

  @346420 @346423 @346431 @346432
  Scenario Outline: E-grid-Child_UI Export_"<User>"_To verify all available records should be displayed in the downloaded XLS/CSV
  |E-grid-Child_UI Export_"<User>"_To verify respective header should get displayed in the downloaded XLS/CSV|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
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
    Then I see "Grant Budget" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Start Date" in downloaded xls or csv file "govgrants"
    Then I see "End Date" in downloaded xls or csv file "govgrants"
    Then I see "#" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Awarded Budget" in downloaded xls or csv file "govgrants"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346424 @346433
  Scenario: E-grid-Child_UI Export_SPI_To verify all available records should be displayed in the downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as XLS" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    Then I see "Grant Budget" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Start Date" in downloaded xls or csv file "govgrants"
    Then I see "End Date" in downloaded xls or csv file "govgrants"
    Then I see "#" in downloaded xls or csv file "govgrants"
    Then I see "Budget Category" in downloaded xls or csv file "govgrants"
    Then I see "Awarded Budget" in downloaded xls or csv file "govgrants"

  @346445 @346446
  Scenario Outline: E-grid-Parent_UI Export_"<User>"-To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
      | Flex Table List       | Label               | Grant Budget      | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | GrantBudgetPeriods |                           |                            |
      | Flex Table List       | Label               |               | GrantBudgetPeriods | Name                      | FLV-2634                   |
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
    Then I cannot see "Grant Budget" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | ADMIN |
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
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    And I select "Download as PDF" from parallel lines dropdown of ""
    And I download the file
    Then I cannot see "Grant Budget" on page "1" of "govgrants" pdf file

  @346450 @346452
  Scenario Outline: E-grid-Child_UI Export_"<User>"_To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded PDF.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
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
    Then I cannot see "Budget Category" on page "1" of "govgrants" pdf file
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346453
  Scenario: E-grid-Child_UI Export_SPI_To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded PDF.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
      | Flex Table List       | Label               | Budget Category   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
      | Flex Table List       | Label               |               | RecGrantBudgetCategoryFlexTable | Name                      | FLV-3329                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as PDF" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    Then I cannot see "Budget Category" on page "1" of "govgrants" pdf file

  @346454 @346455
  Scenario Outline: E-grid-Parent_UI Export_"<User>"_To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
      | Flex Table List       | Label                     | Grant Budget      | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | GrantBudgetPeriods |                           |                            |
      | Flex Table List       | Label                     |               | GrantBudgetPeriods | Name                      | FLV-2634                   |
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
    Then I cannot see "Grant Budget" in downloaded xls or csv file "govgrants"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346457
  Scenario: E-grid-Parent_UI Export_SPI_To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
      | Flex Table List       | Label                     | Grant Budget      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecGrantBudgetPeriods | Name                      |                            |
      | Flex Table List       | Label                     |               | RecGrantBudgetPeriods | Name                      | FLV-3328                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    When I click on "Menu" button inside table id "---program:-:GrantBudgetTableIdForSPIuser---"
    And I select "Download as XLS" from parallel lines dropdown of "Grant Budget"
    And I download the file
    Then I cannot see "Grant Budget" in downloaded xls or csv file "govgrants"

  @346458 @346462
  Scenario Outline: E-grid-Child_UI Export_"<User>"_To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
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
    Then I cannot see "Budget Category" in downloaded xls or csv file "govgrants"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @346460
  Scenario: E-grid-Child_UI Export_SPI_To verify when user not provided Label of List View in config then nothing get displayed as header in the downloaded XLS/CSV.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
      | Flex Table List       | Label                     | Budget Category   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecGrantBudgetCategoryFlexTable | Name                      |                            |
      | Flex Table List       | Label                     |               | RecGrantBudgetCategoryFlexTable | Name                      | FLV-3329                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:GrantsActiveTableIdForSPIuser---"
    When I click on "View" icon for "Testing Grant for Automation" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "Fiscal Year(2023-2024)"
    When I click on "Menu" button inside table id "child1MetaData"
    And I select "Download as XLS" from parallel lines dropdown of "GrantBudgetCategoryFlexTable"
    And I download the file
    Then I cannot see "Budget Category" in downloaded xls or csv file "govgrants"
