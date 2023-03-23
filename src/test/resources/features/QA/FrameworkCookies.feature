@FrameworkCookies-component @regression-QA @FrameworkCookies
Business Need: FrameworkCookies Component Scenarios
  Test all FrameworkCookies component based scenarios
  As a configuration manager i make different configurational changes in FrameworkCookies component and will validate them.

  @268034 @US-265865
  Scenario: Phase Level-To verify when user changes pagination to Last and click on same phase then table should get open on the page where pagination was set to Last.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Last"
    And I can see last page displayed in pagination inside "Programs"
    And I navigate to "Planning" tab
    Then I can see last page displayed in pagination inside "Programs"
    #267851
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "All"
    And I see "All" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Planning" tab
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"

  @267851 @267788 @US-265865
  Scenario Outline: To verify when user changes the page size (Show entries) to All and click on the same phase then table should get open on page size (Show entries) to All.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "All"
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Planning" tab
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267859 @US-265865
  Scenario: To verify when user changes the page size (Show entries) to 10, click on the another phase and again click on the same phase where page size was changed to 10 then table should get open on the page size (Show entries) to 10. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I select value inside table "---program:-:MonitoringScheduleGrantorTableId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:MonitoringScheduleGrantorTableId---"
    And I navigate to "Applications" tab
    And I navigate to "Monitoring" tab
    Then I see "10" with page size dropdown at "---program:-:MonitoringScheduleGrantorTableId---"

  @267822 @267636 @Sprint-21 @Vrushali
  Scenario Outline: To verify when user changes the page size (Show entries) to 50 and click on the same phase then table should get open on the page size (Show entries) to 5
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "50"
    Then I see "50" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "50" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267811 @267613 @267603 @Sprint-21 @Vrushali
  Scenario Outline: To verify when user changes the page size (Show entries) to 10 and click on the same phase then table should get open on the page size (Show entries) to 10.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267799 @Sprint-21 @Vrushali
  Scenario:To verify when user changes the page size (Show entries) to All and refreshes the page then table should get open on the page size (Show entries) to All. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "All"
    Then I see "All" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"
    And I refresh the page
    Then I see "All" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"

  @267757 @Sprint-21 @Vrushali
  Scenario:To verify when user changes the page size (Show entries) to 10 and refreshes the page then table should get open on the page size (Show entries) to 10. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"
    And I refresh the page
    And I click toggle button to select "Applications - All"
    Then I see "10" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"

  @267656 @Vrushali @Sprint-21
  Scenario:To verify when user changes the page size (Show entries) to 10, click on row level 'Edit' action and click on page back arrow then table should get open on the page size (Show entries) to 10
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"
    When I click on "Edit" icon for "Application In Created State Only" inside table
    And I click on back arrow
    And I click toggle button to select "Applications - All"
    Then I see "10" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"

  @267655 @267653 @Sprint-21 @Vrushali
  Scenario Outline: To verify when user changes the page size (Show entries) to 10 and click on the same phase then table should get open on the page size (Show entries) to 10.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    And I click toggle button to select "Internal Programs - Draft"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    #And I click toggle button to select "Internal Programs - Draft"
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267646 @267645
  Scenario Outline: To verify when user changes the page size (Show entries) to All, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to All
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "All"
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267614 @Vrushali @Sprint-21
  Scenario:To verify when user changes the page size (Show entries) to 10, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 10.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications         | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications         | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications         | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | ProgRecipientApplicationsrams | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"
    When I click on "View" icon for "Application In Created State Only" inside table
    And I click on back arrow
    And I click toggle button to select "Applications - All"
    Then I see "10" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"

  @267746 @267754 @Sprint-21 @Vrushali
  Scenario Outline: To verify when user changes the page size (Show entries) to 10 and refreshes the page then table should get open on the page size (Show entries) to 10. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    And I refresh the page
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267641 @267643
  Scenario Outline: To verify when user changes the page size (Show entries) to 100, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 100. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "100"
    Then I see "100" with page size dropdown at "---program:-:programTableDivId---"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "100" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267604 @267631
  Scenario Outline: To verify when user changes the page size (Show entries) to 20, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 20. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "20"
    Then I see "20" with page size dropdown at "---program:-:programTableDivId---"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "20" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267634
  Scenario Outline: To verify when user changes the page size (Show entries) to 50, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 50. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "50"
    Then I see "50" with page size dropdown at "---program:-:programTableDivId---"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "50" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
        #| PM    |

  @267647
  Scenario:To verify when user changes the page size (Show entries) to All, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to All. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "10"
    Then I see "All" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"
    When I click on "View" icon for "Vrush Application" inside table
    And I click on back arrow
    Then I see "All" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"

  @267657 @267658
  Scenario Outline: To verify when user changes the page size (Show entries) to 20, click on row level 'Edit' action and click on page back arrow then table should get open on the page size (Show entries) to 20. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "20"
    Then I see "20" with page size dropdown at "---program:-:programTableDivId---"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "20" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267693 @267695
  Scenario Outline: To verify when user changes the page size (Show entries) to 50, click on row level 'Edit' action and click on page back arrow then table should get open on the page size (Show entries) to 50. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "50"
    Then I see "50" with page size dropdown at "---program:-:programTableDivId---"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "50" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267698 @267700
  Scenario Outline:To verify when user changes the page size (Show entries) to 100, click on row level 'Edit' action and click on page back arrow then table should get open on the page size (Show entries) to 100. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "100"
    Then I see "100" with page size dropdown at "---program:-:programTableDivId---"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "100" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267706 @267709
  Scenario Outline:To verify when user changes the page size (Show entries) to All, click on row level 'Edit' action and click on page back arrow then table should get open on the page size (Show entries) to All. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "All"
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267713
  Scenario: To verify when user changes the page size (Show entries) to All, click on row level 'Edit' action and click on page back arrow then table should get open on the page size (Show entries) to All. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "All"
    Then I see "All" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"
    When I click on "Edit" icon for "Application In Created State Only" inside table
    And I click on back arrow
    And I click toggle button to select "Applications - All"
    Then I see "All" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"

  @267763 @267765
  Scenario Outline: To verify when user changes the page size (Show entries) to 20 and refreshes the page then table should get open on the page size (Show entries) to 20. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "20"
    Then I see "20" with page size dropdown at "---program:-:programTableDivId---"
    And I refresh the page
    Then I see "20" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267767 @267770
  Scenario Outline:To verify when user changes the page size (Show entries) to 50 and refreshes the page then table should get open on the page size (Show entries) to 50. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "50"
    Then I see "50" with page size dropdown at "---program:-:programTableDivId---"
    And I refresh the page
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "50" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267778 @267783
  Scenario Outline: To verify when user changes the page size (Show entries) to 100 and refreshes the page then table should get open on the page size (Show entries) to 100. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "100"
    Then I see "100" with page size dropdown at "---program:-:programTableDivId---"
    And I refresh the page
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "100" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267793
  Scenario Outline:To verify when user changes the page size (Show entries) to All and refreshes the page then table should get open on the page size (Show entries) to All. (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "All"
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
    And I refresh the page
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @267809
  Scenario Outline: To verify when user changes the page size (Show entries) to 10 and click on the same phase then table should get open on the page size (Show entries) to 10. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Planning" tab
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @267812
  Scenario: To verify when user changes the page size (Show entries) to 10 and click on the same phase then table should get open on the page size (Show entries) to 10. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I select value inside table "---program:-:MonitoringScheduleGrantorTableId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:MonitoringScheduleGrantorTableId---"
    And I navigate to "Monitoring" tab
    Then I see "10" with page size dropdown at "---program:-:MonitoringScheduleGrantorTableId---"

  @267814 @267816
  Scenario Outline:To verify when user changes the page size (Show entries) to 20 and click on the same phase then table should get open on the page size (Show entries) to 20. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "20"
    Then I see "20" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Planning" tab
    Then I see "20" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267817
  Scenario:To verify when user changes the page size (Show entries) to 20 and click on the same phase then table should get open on the page size (Show entries) to 20. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I select value inside table "---program:-:MonitoringScheduleGrantorTableId---" is "20"
    Then I see "20" with page size dropdown at "---program:-:MonitoringScheduleGrantorTableId---"
    And I navigate to "Monitoring" tab
    Then I see "20" with page size dropdown at "---program:-:MonitoringScheduleGrantorTableId---"

  @267818
  Scenario Outline: To verify when user changes the page size (Show entries) to 50 and click on the same phase then table should get open on the page size (Show entries) to 50. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "50"
    Then I see "50" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "50" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
        #  | PM    |

  @267826
  Scenario: To verify when user changes the page size (Show entries) to 50 and click on the same phase then table should get open on the page size (Show entries) to 50. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I select value inside table "---program:-:MonitoringScheduleGrantorTableId---" is "50"
    Then I see "50" with page size dropdown at "---program:-:MonitoringScheduleGrantorTableId---"
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    Then I see "50" with page size dropdown at "---program:-:MonitoringScheduleGrantorTableId---"

  @267831 @267845
  Scenario Outline: To verify when user changes the page size (Show entries) to 100 and click on the same phase then table should get open on the page size (Show entries) to 100. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "100"
    Then I see "100" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "100" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @267847
  Scenario: To verify when user changes the page size (Show entries) to 100 and click on the same phase then table should get open on the page size (Show entries) to 100. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I select value inside table "---program:-:MonitoringScheduleGrantorTableId---" is "100"
    Then I see "100" with page size dropdown at "---program:-:MonitoringScheduleGrantorTableId---"
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    Then I see "100" with page size dropdown at "---program:-:MonitoringScheduleGrantorTableId---"

  @267850
  Scenario Outline: To verify when user changes the page size (Show entries) to All and click on the same phase then table should get open on the page size (Show entries) to All. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "All"
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Planning" tab
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @267853
  Scenario:  To verify when user changes the page size (Show entries) to All and click on the same phase then table should get open on the page size (Show entries) to All. (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "All"
    Then I see "All" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"
    And I click toggle button to select "Applications - All"
    And I navigate to "Applications" tab
    Then I see "All" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"

  @267856 @267858
  Scenario Outline:To verify when user changes the page size (Show entries) to 10, click on the another phase and again click on the same phase where page size was changed to 10 then table should get open on the page size (Show entries) to 10. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267876 @267877
  Scenario Outline: To verify when user changes the page size (Show entries) to 20, click on the another phase and again click on the same phase where page size was changed to 20 then table should get open on the page size (Show entries) to 20.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "20"
    Then I see "20" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "20" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267879 @267880
  Scenario Outline: To verify when user changes the page size (Show entries) to 50, click on the another phase and again click on the same phase where page size was changed to 50 then table should get open on the page size (Show entries) to 50.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "50"
    Then I see "50" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "50" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267882 @267883
  Scenario Outline:To verify when user changes the page size (Show entries) to 100, click on the another phase and again click on the same phase where page size was changed to 100 then table should get open on the page size (Show entries) to 100.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "100"
    Then I see "100" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "100" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
        #  | PM    |

  @267888 @267889
  Scenario Outline: To verify when user changes the page size (Show entries) to All, click on the another phase and again click on the same phase where page size was changed to All then table should get open on the page size (Show entries) to All.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "All"
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @267890
  Scenario: To verify when user changes the page size (Show entries) to All, click on the another phase and again click on the same phase where page size was changed to All then table should get open on the page size (Show entries) to All.(SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "All"
    Then I see "All" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"
    And I navigate to "Monitoring" tab
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    Then I see "All" with page size dropdown at "---program:-:toggleFlexTablepopupflextableTableId---"

  @268030 @268031
  Scenario Outline: -To verify when user changes pagination to next and click on the same phase then table should get open on the page where pagination was set to next (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I navigate to "Planning" tab
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @268032
  Scenario: To verify when user changes pagination to next and click on the same phase then table should get open on the page where pagination was set to next (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I navigate to "Applications" tab
    Then I see the text containing :
      | Page 2 |

  @268033
  Scenario Outline: To verify when user changes pagination to Last and click on the same phase then table should get open on the page where pagination was set to Last.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Last"
    Then I can see last page displayed in pagination inside "Programs"
    And I navigate to "Planning" tab
    Then I can see last page displayed in pagination inside "Programs"
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @268035
  Scenario: To verify when user changes pagination to Last and click on the same phase then table should get open on the page where pagination was set to Last.(SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I click on page navigation arrow "---program:-:MonitoringScheduleGrantorTableId---" for table id "Last"
    Then I can see last page displayed in pagination inside "Monitoring"
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    Then I can see last page displayed in pagination inside "Monitoring"

  @268036 @268037
  Scenario Outline: o verify when user changes pagination to Previous and click on the same phase then table should get open on the page where pagination was set to Previous (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Previous"
    And I navigate to "Planning" tab
    Then I see the text containing :
      | Page 1 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @268038
  Scenario: To verify when user changes pagination to Previous and click on the same phase then table should get open on the page where pagination was set to Previous (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Previous"
    And I navigate to "Applications" tab
    Then I see the text containing :
      | Page 1 |

  @268041 @268043
  Scenario Outline:To verify when user changes pagination to First and click on the same phase then table should get open on the page where pagination was set to First (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Last"
    Then I can see last page displayed in pagination inside "Programs"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "First"
    And I navigate to "Planning" tab
    Then I softly see the text containing :
      | Showing 1 to |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @268044
  Scenario: To verify when user changes pagination to First and click on the same phase then table should get open on the page where pagination was set to First (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Last"
    And I can see last page displayed in pagination inside "Applications"
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "First"
    And I navigate to "Applications" tab
    Then I softly see the text containing :
      | Showing 1 to |

  @268050 @268052
  Scenario Outline: To verify when user changes pagination to next and refreshes the page then table should get open on the page where pagination was set to next (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I refresh the page
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @268053
  Scenario: To verify when user changes pagination to next and refreshes the page then table should get open on the page where pagination was set to next (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I refresh the page
    Then I see the text containing :
      | Page 2 |

  @268054 @268055
  Scenario Outline:To verify when user changes pagination to Last and refreshes the page then table should get open on the page where pagination was set to Last.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Last"
    Then I can see last page displayed in pagination inside "Programs"
    And I refresh the page
    Then I can see last page displayed in pagination inside "Programs"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @268056
  Scenario: To verify when user changes pagination to Last and refreshes the page then table should get open on the page where pagination was set to Last.(SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I click on page navigation arrow "---program:-:MonitoringScheduleGrantorTableId---" for table id "Last"
    Then I can see last page displayed in pagination inside "Monitoring"
    And I refresh the page
    And I click toggle button to select "Scheduled Activities - All"
    Then I can see last page displayed in pagination inside "Monitoring"

  @268084 @268086
  Scenario Outline: To verify when user changes pagination to Previous and refreshes the page then table should get open on the page where pagination was set to Previous (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Previous"
    And I refresh the page
    Then I see the text containing :
      | Page 1 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @268087
  Scenario: To verify when user changes pagination to Previous and refreshes the page then table should get open on the page where pagination was set to Previous (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Previous"
    And I refresh the page
    Then I see the text containing :
      | Page 1 |

  @268088 @268089
  Scenario Outline: To verify when user changes pagination to First and refreshes the page then table should get open on the page where pagination was set to First (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Last"
    Then I can see last page displayed in pagination inside "Programs"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "First"
    And I navigate to "Planning" tab
    Then I softly see the text containing :
      | Showing 1 to |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |`

  @268090
  Scenario: o verify when user changes pagination to First and refreshes the page then table should get open on the page where pagination was set to First (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I click on page navigation arrow "---program:-:MonitoringScheduleGrantorTableId---" for table id "Last"
    Then I can see last page displayed in pagination inside "Monitoring"
    And I click on page navigation arrow "---program:-:MonitoringScheduleGrantorTableId---" for table id "First"
    And I refresh the page
    And I click toggle button to select "Scheduled Activities - All"
    Then I softly see the text containing :
      | Showing 1 to |

  @268096 @268097
  Scenario Outline: To verify when user changes pagination to next, click on row level Edit action and click on page back arrow then table should get open on the page where pagination was set to next.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
      #  | PM    |

  @268098
  Scenario: To verify when user changes pagination to next, click on row level Edit action and click on page back arrow then table should get open on the page where pagination was set to next.(SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    When I click on "Edit" icon for "Application In Created State Only" inside table
    And I click on back arrow
    And I click toggle button to select "Applications - All"
    Then I see the text containing :
      | Page 2 |

  @268100 @268102
  Scenario Outline:To verify when user changes pagination to Last, click on row level Edit action and click on page back arrow then table should get open on the page where pagination was set to Last.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Last"
    And I pause execution for "3" seconds
    And I can see last page displayed in pagination inside "Programs"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I can see last page displayed in pagination inside "Programs"
    Examples:
      | User  |
      | ADMIN |
      #  | PM    |

  @268104
  Scenario: To verify when user changes pagination to Last, click on row level Edit action and click on page back arrow then table should get open on the page where pagination was set to Last.(SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Last"
    And I can see last page displayed in pagination inside "Applications"
    When I click on "Edit" icon for "Application In Created State Only" inside table
    And I click on back arrow
    And I click toggle button to select "Applications - All"
    Then I can see last page displayed in pagination inside "Applications"

  @268105 @268106
  Scenario Outline: To verify when user changes pagination to Previous, click on row level Edit action and click on page back arrow then table should get open on the page where pagination was set to Previous.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Previous"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see the text containing :
      | Page 1 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @268107
  Scenario: To verify when user changes pagination to Previous, click on row level Edit action and click on page back arrow then table should get open on the page where pagina
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Previous"
    When I click on "Edit" icon for "Application In Created State Only" inside table
    And I click on back arrow
    And I click toggle button to select "Applications - All"
    Then I see the text containing :
      | Page 1 |

  @268109 @268110
  Scenario Outline: To verify when user changes pagination to First, click on row level Edit action and click on page back arrow then table should get open on the page where pagination was set to First(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Last"
    And I pause execution for "5" seconds
    Then I can see last page displayed in pagination inside "Programs"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "First"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see the text containing :
      | Page 1 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @268113 @268114
  Scenario Outline:  To verify when user changes pagination to next, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to next.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
      #  | PM    |

  @268115
  Scenario: To verify when user changes pagination to next, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to next.(SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    When I click on "View" icon for "Program For Application" inside table
    And I click on back arrow
    And I click toggle button to select "Applications - All"
    Then I see the text containing :
      | Page 2 |

  @268117 @268118
  Scenario Outline:To verify when user changes pagination to Last, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Last.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Last"
    And I pause execution for "3" seconds
    And I can see last page displayed in pagination inside "Programs"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I can see last page displayed in pagination inside "Programs"
    Examples:
      | User  |
      | ADMIN |
      #  | PM    |

  @268119
  Scenario: To verify when user changes pagination to Last, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Last.(SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Last"
    And I can see last page displayed in pagination inside "Applications"
    When I click on "View" icon for "Application In Created State Only" inside table
    And I click on back arrow
    And I click toggle button to select "Applications - All"
    Then I can see last page displayed in pagination inside "Applications"

  @268120 @268121
  Scenario Outline:To verify when user changes pagination to Previous, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Previous.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Previous"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see the text containing :
      | Page 1 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @268122
  Scenario: To verify when user changes pagination to Previous, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Previous.(SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Previous"
    When I click on "View" icon for "Vrush Application" inside table
    And I click on back arrow
    And I click toggle button to select "Applications - All"
    Then I see the text containing :
      | Page 1 |

  @268134 @268135
  Scenario Outline:To verify when user changes pagination to First, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to First.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 10            | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Last"
    And I pause execution for "5" seconds
    Then I can see last page displayed in pagination inside "Programs"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "First"
    When I click on "Edit" icon for "<Record>" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see the text containing :
      | Page 1 |
    Examples:
      | User  | Record                                  |
      | ADMIN | Automation Internal Program for Testing |
      | PM    |                                         |

  @268136
  Scenario: To verify when user changes pagination to First, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to First.(SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Last"
    And I can see last page displayed in pagination inside "Applications"
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "First"
    When I click on "View" icon for "Vrush Application" inside table
    Then I softly see the text containing :
      | Showing 1 to |

  @268140 @268142
  Scenario Outline:To verify when user changes pagination to next, click on the another phase and again click on the same phase where pagination was set to next then table should get open on that page (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
     #   | PM    |

  @268146
  Scenario: To verify when user changes pagination to next, click on the another phase and again click on the same phase where pagination was set to next then table should get open on that page (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I click on page navigation arrow "---program:-:MonitoringScheduleGrantorTableId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I navigate to "Applications" tab
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    Then I see the text containing :
      | Page 2 |

  @268149 @268152
  Scenario Outline: To verify when user changes pagination to Last, click on the another phase and again click on the same phase where pagination was set to Last then table should get open on that page(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Last"
    Then I can see last page displayed in pagination inside "Programs"
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I can see last page displayed in pagination inside "Programs"
    Examples:
      | User  |
      | ADMIN |
     #   | PM    |

  @268156
  Scenario: To verify when user changes pagination to Last, click on the another phase and again click on the same phase where pagination was set to Last then table should get open on that page(SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | RecipientApplications           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I click on page navigation arrow "---program:-:MonitoringScheduleGrantorTableId---" for table id "Last"
    And I can see last page displayed in pagination inside "Monitoring"
    And I navigate to "Applications" tab
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    Then I can see last page displayed in pagination inside "Monitoring"

  @268165 @268169
  Scenario Outline: To verify when user changes pagination to Previous, click on the another phase and again click on the same phase where pagination was set to Previous then table should get open on that page(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Previous"
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    And I see the text containing :
      | Page 1 |
    Examples:
      | User  |
      | ADMIN |
     #   | PM    |

  @268174
  Scenario: To verify when user changes pagination to Previous, click on the another phase and again click on the same phase where pagination was set to Previous then table should get open on that page(SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Previous"
    And I navigate to "Monitoring" tab
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    Then I see the text containing :
      | Page 1 |

  @268179 @268190
  Scenario Outline: To verify when user changes pagination to First, click on the another phase and again click on the same phase where pagination was set to First then table should get open on that page(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Last"
    Then I can see last page displayed in pagination inside "Programs"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "First"
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I softly see the text containing :
      | Showing 1 to |
    Examples:
      | User  |
      | ADMIN |
     #   | PM    |

  @268193
  Scenario: To verify when user changes pagination to First, click on the another phase and again click on the same phase where pagination was set to First then table should get open on that page(SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I click on page navigation arrow "---program:-:MonitoringScheduleGrantorTableId---" for table id "Last"
    And I can see last page displayed in pagination inside "Monitoring"
    And I click on page navigation arrow "---program:-:MonitoringScheduleGrantorTableId---" for table id "First"
    And I navigate to "Applications" tab
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    Then I softly see the text containing :
      | Showing 1 to |

  @268228 @268230
  Scenario Outline:To verify when user searches any value in quick search field, click on row level view action and click on page back arrow then table should show the records of Quick search results (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    And I click on back arrow
    Then I see value "Program For Application" for title "Program Name" inside table "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
     #   | PM    |

  @268237
  Scenario: To verify when user searches any value in quick search field, click on row level view action and click on page back arrow then table should show the records of Quick search results (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    And I click on back arrow
    And I click toggle button to select "Applications - All"
    Then I see value "Program For Application" for title "Application Title" inside table "---program:-:toggleFlexTablepopupflextableTableId---"

  @268277 @268279
  Scenario Outline:To verify when user searches any value in quick search field, click on row level Edit action and click on page back arrow then table should show the records of Quick search results (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @268280
  Scenario: To verify when user searches any value in quick search field, click on row level Edit action and click on page back arrow then table should show the records of Quick search results (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application In Created State Only"
    When I click on "Edit" icon for "Application In Created State Only" inside table
    And I click on back arrow
    And I click toggle button to select "Applications - All"
    Then I see value "Application In Created State Only" for title "Application Title" inside table "---program:-:toggleFlexTablepopupflextableTableId---"

  @268289
  Scenario Outline: To verify when user searches any value in quick search field and refreshes the page then table should show the records of Quick search results (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Automation Internal Program for Testing"
    And I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programTableDivId---"
    And I refresh the page
    Then I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programTableDivId---"
    Examples:
      | User |
     #| ADMIN |
      | PM   |

  @268293
  Scenario: To verify when user searches any value in quick search field and refreshes the page then table should show the records of Quick search results (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application In Created State Only"
    And I see value "Application In Created State Only" for title "Application Title" inside table "---program:-:toggleFlexTablepopupflextableTableId---"
    And I refresh the page
    And I click toggle button to select "Applications - All"
    Then I see value "Application In Created State Only" for title "Application Title" inside table "---program:-:toggleFlexTablepopupflextableTableId---"

  @268296 @268298
  Scenario Outline:To verify when user searches any value in quick search field and clicks on the same phase then table should show the records of Quick search results (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Automation Internal Program for Testing"
    And I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programTableDivId---"
    And I navigate to "Planning" tab
    Then I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
         # | PM   |

  @268299
  Scenario: To verify when user searches any value in quick search field and clicks on the same phase then table should show the records of Quick search results (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Vrush Application"
    And I see value "Vrush Application" for title "Application Title" inside table "---program:-:toggleFlexTablepopupflextableTableId---"
    And I navigate to "Applications" tab
    Then I see value "Vrush Application" for title "Application Title" inside table "---program:-:toggleFlexTablepopupflextableTableId---"

  @268304 @268305
  Scenario Outline: To verify when user searches any value in quick search field, click on the another phase and again click on the same phase where table was showing quick search results then table should show the records of Quick search results (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Automation Internal Program for Testing"
    And I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programTableDivId---"
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
         # | PM   |

  @268306
  Scenario: o verify when user searches any value in quick search field, click on the another phase and again click on the same phase where table was showing quick search results then table should show the records of Quick search results (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientApplications | Name                      |                            |
  #      | Flex Table:General    | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Vrush Application"
    And I see value "Vrush Application" for title "Application Title" inside table "---program:-:toggleFlexTablepopupflextableTableId---"
    And I navigate to "Monitoring" tab
    And I navigate to "Applications" tab
    Then I see value "Vrush Application" for title "Application Title" inside table "---program:-:toggleFlexTablepopupflextableTableId---"

################### Sorting ###########
  @268444 @268459
  Scenario Outline: To verify when sort direction of data type-standard field is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-standard field (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid             | Sort Direction      | ASC                | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 5                  | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:2 |
      | Flex Table            | Order By            |                    | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction      | ASC            | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5              | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true           | Programs           | Name                      |                            |
     # | Flex Grid:General     | Order By            | Percentage__c  | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true           | Programs           | Name                      |                            |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "EGMS ID" column inside Internal Programs
    And I click on "up" arrow inside "EGMS ID" field
    Then I see "down" arrow is Displayed inside "EGMS ID" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "EGMS ID" field
    Examples:
      | User  | newFieldsApi                                                                                   | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268461 @268462
  Scenario Outline: To verify when sort direction of data type-standard field(EGMS_ID) is set in ascending order, user clicks on row level Edit action and click on page back arrow then records should be in ascending order for data type-standard field (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "EGMS ID" column inside Internal Programs
    And I click on "up" arrow inside "EGMS ID" field
    Then I see "down" arrow is Displayed inside "EGMS ID" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "EGMS ID" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268464 @268466
  Scenario Outline:To verify when sort direction of data type-standard field(EGMS_ID) is set in ascending order and click on same phase then records should be in ascending order for data type-standard field (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "EGMS ID" column inside Internal Programs
    And I click on "up" arrow inside "EGMS ID" field
    Then I see "down" arrow is Displayed inside "EGMS ID" field
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "EGMS ID" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268469 @268471
  Scenario Outline:To verify when sort direction of data type-standard field is set in ascending order and refreshes the page then records should be in ascending order for data type-standard field (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "EGMS ID" column inside Internal Programs
    And I click on "up" arrow inside "EGMS ID" field
    Then I see "down" arrow is Displayed inside "EGMS ID" field
    And I refresh the page
    Then I see "down" arrow is Displayed inside "EGMS ID" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268476 @268478
  Scenario Outline: To verify when sort direction of data type-standard field is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "EGMS ID" column inside Internal Programs
    And I click on "up" arrow inside "EGMS ID" field
    Then I see "down" arrow is Displayed inside "EGMS ID" field
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "EGMS ID" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  #### Custom Data Type - Picklist *********
  @268482 @268560
  Scenario Outline: To verify when sort direction of data type-Picklist is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Picklist (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Type" column inside Internal Programs
    And I click on "up" arrow inside "Type" field
    Then I see "down" arrow is Displayed inside "Type" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "Type" field
    Examples:
      | User  | newFieldsApi                                                                                   | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268563 @268564
  Scenario Outline: To verify when sort direction of data type-Picklist is set in ascending order, user clicks on row level Edit action and click on page back arrow then records should be in ascending order for data type-Picklist (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Type" column inside Internal Programs
    And I click on "up" arrow inside "Type" field
    Then I see "down" arrow is Displayed inside "Type" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "Type" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
       # | PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268565 @268569
  Scenario Outline: To verify when sort direction of data type-Picklist is set in ascending order and click on same phase then records should be in ascending order for data type-Picklist (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Type" column inside Internal Programs
    And I click on "up" arrow inside "Type" field
    Then I see "down" arrow is Displayed inside "Type" field
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Type" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268572 @268574
  Scenario Outline:To verify when sort direction of data type-Picklist is set in ascending order and refreshes the page then records should be in ascending order for data type-Picklist (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Type" column inside Internal Programs
    And I click on "up" arrow inside "Type" field
    Then I see "down" arrow is Displayed inside "Type" field
    And I refresh the page
    Then I see "down" arrow is Displayed inside "Type" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268581 @268582
  Scenario Outline:To verify when sort direction of data type-Picklist is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Type" column inside Internal Programs
    And I click on "up" arrow inside "Type" field
    Then I see "down" arrow is Displayed inside "Type" field
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Type" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

##### Custom Data Type- Text #####
  @268588 @268589
  Scenario Outline: To verify when sort direction of data type-Text is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Text(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Abbreviation" column inside Internal Programs
    And I click on "up" arrow inside "Abbreviation" field
    Then I see "down" arrow is Displayed inside "Abbreviation" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "Abbreviation" field
    Examples:
      | User  | newFieldsApi                                                                                   | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268592 @268593
  Scenario Outline:  To verify when sort direction of data type-Text is set in ascending order, user clicks on row level Edit action and click on page back arrow then records should be in ascending order for data type-Text(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Abbreviation" column inside Internal Programs
    And I click on "up" arrow inside "Abbreviation" field
    Then I see "down" arrow is Displayed inside "Abbreviation" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "Abbreviation" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
       # | PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268595 @268596
  Scenario Outline: To verify when sort direction of data type-Text is set in ascending order and click on same phase then records should be in ascending order for data type-Text(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Abbreviation" column inside Internal Programs
    And I click on "up" arrow inside "Abbreviation" field
    Then I see "down" arrow is Displayed inside "Abbreviation" field
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Abbreviation" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268602 @268603
  Scenario Outline:To verify when sort direction of data type-Text is set in ascending order and refreshes the page then records should be in ascending order for data type-Text(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Abbreviation" column inside Internal Programs
    And I click on "up" arrow inside "Abbreviation" field
    Then I see "down" arrow is Displayed inside "Abbreviation" field
    And I refresh the page
    Then I see "down" arrow is Displayed inside "Abbreviation" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268607 @268609
  Scenario Outline:To verify when sort direction of data type-Text is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Abbreviation" column inside Internal Programs
    And I click on "up" arrow inside "Abbreviation" field
    Then I see "down" arrow is Displayed inside "Abbreviation" field
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Abbreviation" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  ###### Custom Data Type - Lookup *********
  @268615 @268617
  Scenario Outline: To verify when sort direction of data type-Lookup is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Lookup (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Internal Organization" column inside Internal Programs
    And I click on "up" arrow inside "Internal Organization" field
    Then I see "down" arrow is Displayed inside "Internal Organization" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "Internal Organization" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268619 @268620
  Scenario Outline: To verify when sort direction of data type-Lookup is set in ascending order, user clicks on row level Edit action and click on page back arrow then records should be in ascending order for data type-Lookup (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Internal Organization" column inside Internal Programs
    And I click on "up" arrow inside "Internal Organization" field
    Then I see "down" arrow is Displayed inside "Internal Organization" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "Internal Organization" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
       # | PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268623 @268624
  Scenario Outline:To verify when sort direction of data type-Lookup is set in ascending order and click on same phase then records should be in ascending order for data type-Lookup (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Internal Organization" column inside Internal Programs
    And I click on "up" arrow inside "Internal Organization" field
    Then I see "down" arrow is Displayed inside "Internal Organization" field
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Internal Organization" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268628 @268631
  Scenario Outline: To verify when sort direction of data type-Lookup is set in ascending order and refreshes the page then records should be in ascending order for data type-Lookup (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Internal Organization" column inside Internal Programs
    And I click on "up" arrow inside "Internal Organization" field
    Then I see "down" arrow is Displayed inside "Internal Organization" field
    And I refresh the page
    Then I see "down" arrow is Displayed inside "Internal Organization" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268633 @268634
  Scenario Outline: To verify when sort direction of data type-Lookup is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Internal Organization" column inside Internal Programs
    And I click on "up" arrow inside "Internal Organization" field
    Then I see "down" arrow is Displayed inside "Internal Organization" field
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Internal Organization" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  #### Data Type - Number ********
  @268637 @268638
  Scenario Outline:To verify when sort direction of data type-Number is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Number (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Number of Approval Steps" column inside Internal Programs
    And I click on "up" arrow inside "Number of Approval Steps" field
    Then I see "down" arrow is Displayed inside "Number of Approval Steps" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "Number of Approval Steps" field
    Examples:
      | User  | newFieldsApi                                                                                              | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,NumberOfApprovalSteps__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,NumberOfApprovalSteps__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268640 @268641
  Scenario Outline:To verify when sort direction of data type-Number is set in ascending order, user clicks on row level Edit action and click on page back arrow then records should be in ascending order for data type-Number (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Number of Approval Steps" column inside Internal Programs
    And I click on "up" arrow inside "Number of Approval Steps" field
    Then I see "down" arrow is Displayed inside "Number of Approval Steps" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "Number of Approval Steps" field
    Examples:
      | User  | newFieldsApi                                                                                              | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,NumberOfApprovalSteps__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,NumberOfApprovalSteps__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268644 @268646
  Scenario Outline: To verify when sort direction of data type-Number is set in ascending order and click on same phase then records should be in ascending order for data type-Number (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Number of Approval Steps" column inside Internal Programs
    And I click on "up" arrow inside "Number of Approval Steps" field
    Then I see "down" arrow is Displayed inside "Number of Approval Steps" field
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Number of Approval Steps" field
    Examples:
      | User  | newFieldsApi                                                                                              | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,NumberOfApprovalSteps__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,NumberOfApprovalSteps__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268652 @268660
  Scenario Outline: To verify when sort direction of data type-Number is set in ascending order and refreshes the page then records should be in ascending order for data type-Number (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Number of Approval Steps" column inside Internal Programs
    And I click on "up" arrow inside "Number of Approval Steps" field
    Then I see "down" arrow is Displayed inside "Number of Approval Steps" field
    And I refresh the page
    Then I see "down" arrow is Displayed inside "Number of Approval Steps" field
    Examples:
      | User  | newFieldsApi                                                                                              | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,NumberOfApprovalSteps__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,NumberOfApprovalSteps__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268667 @268668
  Scenario Outline: To verify when sort direction of data type-Number is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Number of Approval Steps" column inside Internal Programs
    And I click on "up" arrow inside "Number of Approval Steps" field
    Then I see "down" arrow is Displayed inside "Number of Approval Steps" field
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Number of Approval Steps" field
    Examples:
      | User  | newFieldsApi                                                                                              | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,NumberOfApprovalSteps__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,NumberOfApprovalSteps__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

#### Data type - Date ***************
  @268673 @268674
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Date (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Start Date" column inside Internal Programs
    And I click on "up" arrow inside "Start Date" field
    Then I see "down" arrow is Displayed inside "Start Date" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "Start Date" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,StartDate__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,StartDate__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268677 @268678
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order, user clicks on row level Edit action and click on page back arrow then records should be in ascending order for data type-Date (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Start Date" column inside Internal Programs
    And I click on "up" arrow inside "Start Date" field
    Then I see "down" arrow is Displayed inside "Start Date" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "Start Date" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,StartDate__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,StartDate__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268680 @268682
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order and click on same phase then records should be in ascending order for data type-Date (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Start Date" column inside Internal Programs
    And I click on "up" arrow inside "Start Date" field
    Then I see "down" arrow is Displayed inside "Start Date" field
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Start Date" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,StartDate__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,StartDate__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268684 @268685
  Scenario Outline:To verify when sort direction of data type-Date is set in ascending order and refreshes the page then records should be in ascending order for data type-Date (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Start Date" column inside Internal Programs
    And I click on "up" arrow inside "Start Date" field
    Then I see "down" arrow is Displayed inside "Start Date" field
    And I refresh the page
    Then I see "down" arrow is Displayed inside "Start Date" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,StartDate__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,StartDate__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268687 @268688
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Start Date" column inside Internal Programs
    And I click on "up" arrow inside "Start Date" field
    Then I see "down" arrow is Displayed inside "Start Date" field
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Start Date" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,StartDate__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,StartDate__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

#### Data Type - Date and Time ***********
  @268699 @268700
  Scenario Outline:To verify when sort direction of data type-date & time is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-date & time(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Date and Time" column inside Internal Programs
    And I click on "up" arrow inside "Date and Time" field
    Then I see "down" arrow is Displayed inside "Date and Time" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "Date and Time" field
    Examples:
      | User  | newFieldsApi                                                                                    | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DateandTime__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DateandTime__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268707 @268708
  Scenario Outline: To verify when sort direction of data type-date & time is set in ascending order, user clicks on row level Edit action and click on page back arrow then records should be in ascending order for data type-date & time(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Date and Time" column inside Internal Programs
    And I click on "up" arrow inside "Date and Time" field
    Then I see "down" arrow is Displayed inside "Date and Time" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "Date and Time" field
    Examples:
      | User  | newFieldsApi                                                                                    | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DateandTime__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DateandTime__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268713 @268715
  Scenario Outline: To verify when sort direction of data type-date & time is set in ascending order and click on same phase then records should be in ascending order for data type-date & time(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Date and Time" column inside Internal Programs
    And I click on "up" arrow inside "Date and Time" field
    Then I see "down" arrow is Displayed inside "Date and Time" field
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Date and Time" field
    Examples:
      | User  | newFieldsApi                                                                                    | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DateandTime__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DateandTime__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268721 @268723
  Scenario Outline: To verify when sort direction of data type-date & time is set in ascending order and refreshes the page then records should be in ascending order for data type-date & time(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Date and Time" column inside Internal Programs
    And I click on "up" arrow inside "Date and Time" field
    Then I see "down" arrow is Displayed inside "Date and Time" field
    And I refresh the page
    Then I see "down" arrow is Displayed inside "Date and Time" field
    Examples:
      | User  | newFieldsApi                                                                                    | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DateandTime__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DateandTime__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268734 @268735
  Scenario Outline: To verify when sort direction of data type-date & time is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Date and Time" column inside Internal Programs
    And I click on "up" arrow inside "Date and Time" field
    Then I see "down" arrow is Displayed inside "Date and Time" field
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Date and Time" field
    Examples:
      | User  | newFieldsApi                                                                                    | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DateandTime__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DateandTime__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  #### Data Type - Percentage **************
  @268791 @268792
  Scenario Outline:To verify when sort direction of data type-Percentage is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Percentage(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Percentage" column inside Internal Programs
    And I click on "up" arrow inside "Percentage" field
    Then I see "down" arrow is Displayed inside "Percentage" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "Percentage" field
    Examples:
      | User  | newFieldsApi                                                                                   | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268794 @268796
  Scenario Outline: To verify when sort direction of data type-Percentage is set in ascending order, user clicks on row level Edit action and click on page back arrow then records should be in ascending order for data type-Percentage(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Percentage" column inside Internal Programs
    And I click on "up" arrow inside "Percentage" field
    Then I see "down" arrow is Displayed inside "Percentage" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "Percentage" field
    Examples:
      | User  | newFieldsApi                                                                                   | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268799 @268802
  Scenario Outline: To verify when sort direction of data type-Percentage is set in ascending order and click on same phase then records should be in ascending order for data type-Percentage(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Percentage" column inside Internal Programs
    And I click on "up" arrow inside "Percentage" field
    Then I see "down" arrow is Displayed inside "Percentage" field
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Percentage" field
    Examples:
      | User  | newFieldsApi                                                                                   | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268807 @268810
  Scenario Outline: To verify when sort direction of data type-Percentage is set in ascending order and refreshes the page then records should be in ascending order for data type-Percentage(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Percentage" column inside Internal Programs
    And I click on "up" arrow inside "Percentage" field
    Then I see "down" arrow is Displayed inside "Percentage" field
    And I refresh the page
    Then I see "down" arrow is Displayed inside "Percentage" field
    Examples:
      | User  | newFieldsApi                                                                                   | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268819 @268820
  Scenario Outline: To verify when sort direction of data type-Percentage is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Percentage" column inside Internal Programs
    And I click on "up" arrow inside "Percentage" field
    Then I see "down" arrow is Displayed inside "Percentage" field
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Percentage" field
    Examples:
      | User  | newFieldsApi                                                                                   | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Percentage__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  ##### Data Type - Formula****
  @268822 @268823
  Scenario Outline: To verify when sort direction of data type-Formula is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Formula (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Address" column inside Internal Programs
    And I click on "up" arrow inside "Address" field
    Then I see "down" arrow is Displayed inside "Address" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "Address" field
    Examples:
      | User  | newFieldsApi                                                                                | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Address__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Address__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268827 @268828
  Scenario Outline:To verify when sort direction of data type-Formula is set in ascending order, user clicks on row level Edit action and click on page back arrow then records should be in ascending order for data type-Formula (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Address" column inside Internal Programs
    And I click on "up" arrow inside "Address" field
    Then I see "down" arrow is Displayed inside "Address" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "Address" field
    Examples:
      | User  | newFieldsApi                                                                                | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Address__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Address__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268830 @268831
  Scenario Outline:To verify when sort direction of data type-Formula is set in ascending order and click on same phase then records should be in ascending order for data type-Formula (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Address" column inside Internal Programs
    And I click on "up" arrow inside "Address" field
    Then I see "down" arrow is Displayed inside "Address" field
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Address" field
    Examples:
      | User  | newFieldsApi                                                                                | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Address__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Address__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268833 @268834
  Scenario Outline:To verify when sort direction of data type-Formula is set in ascending order and refreshes the page then records should be in ascending order for data type-Formula (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Address" column inside Internal Programs
    And I click on "up" arrow inside "Address" field
    Then I see "down" arrow is Displayed inside "Address" field
    And I refresh the page
    Then I see "down" arrow is Displayed inside "Address" field
    Examples:
      | User  | newFieldsApi                                                                                | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Address__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Address__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268836 @268837
  Scenario Outline:To verify when sort direction of data type-Formula is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Address" column inside Internal Programs
    And I click on "up" arrow inside "Address" field
    Then I see "down" arrow is Displayed inside "Address" field
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Address" field
    Examples:
      | User  | newFieldsApi                                                                                | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Address__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,Address__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

    ##### Data Type - Checkbox****
  @268839 @268840
  Scenario Outline: To verify when sort direction of data type-Checkbox is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Checkbox(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "CFDA Data" column inside Internal Programs
    And I click on "up" arrow inside "CFDA Data" field
    Then I see "down" arrow is Displayed inside "CFDA Data" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "CFDA Data" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,CFDA_Data__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,CFDA_Data__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268842 @268843
  Scenario Outline: To verify when sort direction of data type-Checkbox is set in ascending order, user clicks on row level Edit action and click on page back arrow then records should be in ascending order for data type-Checkbox(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "CFDA Data" column inside Internal Programs
    And I click on "up" arrow inside "CFDA Data" field
    Then I see "down" arrow is Displayed inside "CFDA Data" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "CFDA Data" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,CFDA_Data__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,CFDA_Data__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268845 @268846
  Scenario Outline: To verify when sort direction of data type-Checkbox is set in ascending order and click on same phase then records should be in ascending order for data type-Checkbox(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "CFDA Data" column inside Internal Programs
    And I click on "up" arrow inside "CFDA Data" field
    Then I see "down" arrow is Displayed inside "CFDA Data" field
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "CFDA Data" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,CFDA_Data__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,CFDA_Data__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268850 @268856
  Scenario Outline:To verify when sort direction of data type-Checkbox is set in ascending order and refreshes the page then records should be in ascending order for data type-Checkbox(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "CFDA Data" column inside Internal Programs
    And I click on "up" arrow inside "CFDA Data" field
    Then I see "down" arrow is Displayed inside "CFDA Data" field
    And I refresh the page
    Then I see "down" arrow is Displayed inside "CFDA Data" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,CFDA_Data__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,CFDA_Data__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268863 @268864
  Scenario Outline: To verify when sort direction of data type-Checkboxis set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "CFDA Data" column inside Internal Programs
    And I click on "up" arrow inside "CFDA Data" field
    Then I see "down" arrow is Displayed inside "CFDA Data" field
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "CFDA Data" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,CFDA_Data__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,CFDA_Data__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

   ##### Data Type - Email ****
  @268948 @268949
  Scenario Outline: To verify when sort direction of data type-Email is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Email (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "DND_Email" column inside Internal Programs
    And I click on "up" arrow inside "DND_Email" field
    Then I see "down" arrow is Displayed inside "DND_Email" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "DND_Email" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DND_Email__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DND_Email__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268951 @268952
  Scenario Outline: To verify when sort direction of data type-Email is set in ascending order, user clicks on row level Edit action and click on page back arrow then records should be in ascending order for data type-Email (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "DND_Email" column inside Internal Programs
    And I click on "up" arrow inside "DND_Email" field
    Then I see "down" arrow is Displayed inside "DND_Email" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "DND_Email" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DND_Email__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DND_Email__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268954 @268956
  Scenario Outline:  To verify when sort direction of data type-Email is set in ascending order and click on same phase then records should be in ascending order for data type-Email (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "DND_Email" column inside Internal Programs
    And I click on "up" arrow inside "DND_Email" field
    Then I see "down" arrow is Displayed inside "DND_Email" field
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "DND_Email" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DND_Email__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DND_Email__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268958 @268959
  Scenario Outline: To verify when sort direction of data type-Email is set in ascending order and refreshes the page then records should be in ascending order for data type-Email (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "DND_Email" column inside Internal Programs
    And I click on "up" arrow inside "DND_Email" field
    Then I see "down" arrow is Displayed inside "DND_Email" field
    And I refresh the page
    Then I see "down" arrow is Displayed inside "DND_Email" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DND_Email__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DND_Email__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268961 @268962
  Scenario Outline: To verify when sort direction of data type-Email is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "DND_Email" column inside Internal Programs
    And I click on "up" arrow inside "DND_Email" field
    Then I see "down" arrow is Displayed inside "DND_Email" field
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "DND_Email" field
    Examples:
      | User  | newFieldsApi                                                                                  | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DND_Email__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c,DND_Email__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  ######## Data Type - Currency *******
  @268965 @268966
  Scenario Outline: To verify when sort direction of data type-Currency is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Currency (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Funded Amount" column inside Internal Programs
    And I click on "up" arrow inside "Funded Amount" field
    Then I see "down" arrow is Displayed inside "Funded Amount" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "Funded Amount" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268968 @268969
  Scenario Outline: To verify when sort direction of data type-Currency is set in ascending order, user clicks on row level Edit action and click on page back arrow then records should be in ascending order for data type-Currency (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Funded Amount" column inside Internal Programs
    And I click on "up" arrow inside "Funded Amount" field
    Then I see "down" arrow is Displayed inside "Funded Amount" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "Funded Amount" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268971 @268972
  Scenario Outline: To verify when sort direction of data type-Currency is set in ascending order and click on same phase then records should be in ascending order for data type-Currency (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Funded Amount" column inside Internal Programs
    And I click on "up" arrow inside "Funded Amount" field
    Then I see "down" arrow is Displayed inside "Funded Amount" field
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Funded Amount" field
    Examples:
      | User  | newFieldsApi                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268975 @268976
  Scenario Outline:To verify when sort direction of data type-Currency is set in ascending order and refreshes the page then records should be in ascending order for data type-Currency (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Funded Amount" column inside Internal Programs
    And I click on "up" arrow inside "Funded Amount" field
    Then I see "down" arrow is Displayed inside "Funded Amount" field
    And I refresh the page
    Then I see "down" arrow is Displayed inside "Funded Amount" field
    Examples:
      | User  | newFieldsApi                                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268978 @268979
  Scenario Outline: To verify when sort direction of data type-Currency is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Funded Amount" column inside Internal Programs
    And I click on "up" arrow inside "Funded Amount" field
    Then I see "down" arrow is Displayed inside "Funded Amount" field
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Funded Amount" field
    Examples:
      | User  | newFieldsApi                                                     | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  ########## Data Type - URL **************
  @268981 @268983
  Scenario Outline:  To verify when sort direction of data type-URL is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-URL (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "URL" column inside Internal Programs
    And I click on "up" arrow inside "URL" field
    Then I see "down" arrow is Displayed inside "URL" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "URL" field
    Examples:
      | User  | newFieldsApi                                                            | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,URL__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,URL__c| Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268985 @268986
  Scenario Outline: To verify when sort direction of data type-URL is set in ascending order, user clicks on row level Edit action and click on page back arrow then records should be in ascending order for data type-URL (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "URL" column inside Internal Programs
    And I click on "up" arrow inside "URL" field
    Then I see "down" arrow is Displayed inside "URL" field
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "URL" field
    Examples:
      | User  | newFieldsApi                                                            | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,URL__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,URL__c| Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268990 @268991
  Scenario Outline: To verify when sort direction of data type-URL is set in ascending order and click on same phase then records should be in ascending order for data type-URL (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "URL" column inside Internal Programs
    And I click on "up" arrow inside "URL" field
    Then I see "down" arrow is Displayed inside "URL" field
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "URL" field
    Examples:
      | User  | newFieldsApi                                                            | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,URL__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,URL__c| Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268993 @268994
  Scenario Outline:  To verify when sort direction of data type-URL is set in ascending order and refreshes the page then records should be in ascending order for data type-URL (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "URL" column inside Internal Programs
    And I click on "up" arrow inside "URL" field
    Then I see "down" arrow is Displayed inside "URL" field
    And I refresh the page
    Then I see "down" arrow is Displayed inside "URL" field
    Examples:
      | User  | newFieldsApi                                                            | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,URL__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,URL__c| Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @268996 @268997
  Scenario Outline: To verify when sort direction of data type-URL is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "URL" column inside Internal Programs
    And I click on "up" arrow inside "URL" field
    Then I see "down" arrow is Displayed inside "URL" field
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "URL" field
    Examples:
      | User  | newFieldsApi                                                            | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,URL__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,URL__c| Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  ############## Quick search  ##############
  @269088 @269089
  Scenario Outline:To verify when sort direction-ascending order and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    Then I see "down" arrow is Displayed inside "Program Name" field
    When I perform quick search for "Automation Program"
    When I click on "View" icon for "Automation Program" inside table
    And I click on back arrow
    Then I see value "Automation Program" for title "Program Name" inside table "---program:-:programsTableId---"
    Then I see "down" arrow is Displayed inside "Program Name" field
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @269091 @269092
  Scenario Outline: To verify when sort direction-ascending order and searched any value in Quick search, user clicks on row level Edit action and click on page back arrow then table should restore search results and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    Then I see "down" arrow is Displayed inside "Program Name" field
    When I perform quick search for "Automation Edit Mode Program"
    When I click on "Edit" icon for "Automation Edit Mode Program" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see value "Automation Edit Mode Program" for title "Program Name" inside table "---program:-:programsTableId---"
    Then I see "down" arrow is Displayed inside "Program Name" field
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @269094 @269095
  Scenario Outline: To verify when sort direction-ascending order and searched any value in Quick search and click on same phase then table should restore search results and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    Then I see "down" arrow is Displayed inside "Program Name" field
    When I perform quick search for "Automation Program"
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    Then I see value "Automation Program" for title "Program Name" inside table "---program:-:programsTableId---"
    Then I see "down" arrow is Displayed inside "Program Name" field
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @269097 @269098
  Scenario Outline: To verify when sort direction-ascending order and searched any value in Quick search and refreshes the page then table should restore search results and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    Then I see "down" arrow is Displayed inside "Program Name" field
    When I perform quick search for "Automation Program"
    And I refresh the page
    And I pause execution for "5" seconds
    #After disabled lwc remove below comment
   # Then I see value "Automation Program" for title "Program Name" inside table "---program:-:programsTableId---"
    Then I see "down" arrow is Displayed inside "Program Name" field
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @269100 @269101
  Scenario Outline: To verify when sort direction-ascending order and searched any value in Quick search ,click on the another phase and again click on the previous phase then table should restore search results and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    Then I see "down" arrow is Displayed inside "Program Name" field
    When I perform quick search for "Automation Program"
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    Then I see value "Automation Program" for title "Program Name" inside table "---program:-:programsTableId---"
    Then I see "down" arrow is Displayed inside "Program Name" field
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  ########### Quick search,sorting, pagination #############

  @269105 @269106
  Scenario Outline: To verify when page size is 10 and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and page size (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    When I perform quick search for "Automation Program"
    When I click on "View" icon for "Automation Program" inside table
    And I click on back arrow
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Then I see value "Automation Program" for title "Program Name" inside table "---program:-:programsTableId---"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @269108 @269111
  Scenario Outline:To verify when page size is 10 and searched any value in Quick search, user clicks on row level Edit action and click on page back arrow then table should restore search results and page size (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    When I perform quick search for "Automation Edit Mode Program"
    When I click on "Edit" icon for "Automation Edit Mode Program" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Then I see value "Automation Edit Mode Program" for title "Program Name" inside table "---program:-:programsTableId---"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @269113 @269114
  Scenario Outline: To verify when page size is 10 and searched any value in Quick search and click on same phase then table should restore search results and page size (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    When I perform quick search for "Automation Program"
    Then I see value "Automation Program" for title "Program Name" inside table "---program:-:programsTableId---"
    And I navigate to "Planning" tab
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Then I see value "Automation Program" for title "Program Name" inside table "---program:-:programsTableId---"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @269116 @269117
  Scenario Outline: To verify when page size is 10 and searched any value in Quick search and  refreshes the page then table should restore search results and page size (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    When I perform quick search for "Automation Program"
    Then I see value "Automation Program" for title "Program Name" inside table "---program:-:programsTableId---"
    And I refresh the page
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Then I see value "Automation Program" for title "Program Name" inside table "---program:-:programsTableId---"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @269119 @269120
  Scenario Outline: To verify when page size is 10 and searched any value in Quick search ,click on the another phase and again click on the previous phase then table should restore search results and page size (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    When I perform quick search for "Automation Program"
    Then I see value "Automation Program" for title "Program Name" inside table "---program:-:programsTableId---"
    And I refresh the page
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Then I see value "Automation Program" for title "Program Name" inside table "---program:-:programsTableId---"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  ########### Quick search and pagination next ########
  @269126 @269127
  Scenario Outline: To verify when Pagination is changed to next and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and Pagination ‘next’ (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Automation Program"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    When I click on "View" icon for "Automation Program" inside table
    And I click on back arrow
    Then I see the text containing :
      | Page 2 |
    Then I see value "Automation Program" for title "Program Name" inside table "---program:-:programsTableId---"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @269130 @269131
  Scenario Outline: To verify when Pagination is changed to next and searched any value in Quick search, user clicks on row level Edit action and click on page back arrow then table should restore search results and Pagination ‘next’ (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see the text containing :
      | Page 2 |
    Then I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programsTableId---"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @269135 @269137
  Scenario Outline: To verify when Pagination is changed to next and searched any value in Quick search and click on same phase then table should restore search results and Pagination ‘next’ (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    Then I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programsTableId---"
    And I navigate to "Planning" tab
    Then I see the text containing :
      | Page 2 |
    Then I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programsTableId---"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @269140 @269142
  Scenario Outline: To verify when Pagination is changed to next and searched any value in Quick search and  refreshes the page then table should restore search results and Pagination ‘next’ (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    Then I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programsTableId---"
    And I refresh the page
    Then I see the text containing :
      | Page 2 |
    Then I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programsTableId---"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @269145 @269146
  Scenario Outline: To verify when Pagination is changed to next and searched any value in Quick search ,click on the another phase and again click on the previous phase then table should restore search results and Pagination ‘next’ (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Sort Direction    | ASC               | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size  | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Sort Direction    | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size  | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programsTableId---"
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Previous"
    Then I see the text containing :
      | Page 1 |
    Then I see value "Automation Internal Program for Testing" for title "Program Name" inside table "---program:-:programsTableId---"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  ###################### Page size and sorting #####################
  @269148 @269149
  Scenario Outline:To verify when Sort direction-ascending order and page size is 10, user clicks on row level view action and click on page back arrow then table should restore page size and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    And I see "down" arrow is Displayed inside "Program Name" field
    And I select value inside table "---program:-:programTableDivId---" is "10"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    Then I see "down" arrow is Displayed inside "Program Name" field
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @269151 @269152
  Scenario Outline: To verify when Sort direction-ascending order and page size is 10, user clicks on row level Edit action and click on page back arrow then table should restore page size and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    And I see "down" arrow is Displayed inside "Program Name" field
    And I select value inside table "---program:-:programTableDivId---" is "10"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    Then I see "down" arrow is Displayed inside "Program Name" field
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @269154 @269155
  Scenario Outline:  To verify when Sort direction-ascending order and page size is 10 and click on same phase then table should restore page size and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    And I see "down" arrow is Displayed inside "Program Name" field
    And I select value inside table "---program:-:programTableDivId---" is "10"
    And I see "10" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Program Name" field
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @269157 @269158
  Scenario Outline: To verify when Sort direction-ascending order and page size is 10 and  refreshes the page then table should restore page size and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    And I see "down" arrow is Displayed inside "Program Name" field
    And I select value inside table "---program:-:programTableDivId---" is "10"
    And I see "10" with page size dropdown at "---program:-:programTableDivId---"
    And I refresh the page
    Then I see "down" arrow is Displayed inside "Program Name" field
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @269160 @269161
  Scenario Outline: To verify when Sort direction-ascending order and page size is 10 ,click on the another phase and again click on the previous phase then table should restore page size and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    And I see "down" arrow is Displayed inside "Program Name" field
    And I select value inside table "---program:-:programTableDivId---" is "10"
    And I see "10" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    Then I see "down" arrow is Displayed inside "Program Name" field
    Then I see "10" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  ######### Pagination and Page size ####################
  @269240 @269241
  Scenario Outline: To verify when Pagination is changed to next and page size is 10, user clicks on row level view action and click on page back arrow then table should restore page size and Pagination(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    And I see "10" with page size dropdown at "---program:-:programTableDivId---"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
   # When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I pause execution for "5" seconds
    Then I see "11 to 20" with page size dropdown at "---program:-:programTableDivId---"
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @269245 @269246
  Scenario Outline:  To verify when Pagination is changed to next and page size is 10, user clicks on row level Edit action and click on page back arrow then table should restore page size and Pagination(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:programTableDivId---" is "10"
    And I see "10" with page size dropdown at "---program:-:programTableDivId---"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
   # When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    And I pause execution for "5" seconds
    Then I see "11 to 20" with page size dropdown at "---program:-:programTableDivId---"
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @269250 @269251
  Scenario Outline: To verify when Pagination is changed to next and page size is 10 and click on same phase then table should restore page size and Pagination(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    And I see "10" with page size dropdown at "---program:-:programTableDivId---"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I navigate to "Planning" tab
    Then I see "11 to 20" with page size dropdown at "---program:-:programTableDivId---"
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @269253 @269255
  Scenario Outline: To verify when Pagination is changed to next and page size is 10 and  refreshes the page then table should restore page size and Pagination(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    And I see "10" with page size dropdown at "---program:-:programTableDivId---"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I refresh the page
    Then I see "11 to 20" with page size dropdown at "---program:-:programTableDivId---"
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @269257 @269258
  Scenario Outline: o verify when Pagination is changed to next and page size is 10 ,click on the another phase and again click on the previous phase then table should restore page size and Pagination(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    And I see "10" with page size dropdown at "---program:-:programTableDivId---"
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I refresh the page
    Then I see "11 to 20" with page size dropdown at "---program:-:programTableDivId---"
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  ########## Sorting and Pagination ###############

  @269261 @269262
  Scenario Outline: To verify when Pagination is changed to next and Sort direction-ascending order, user clicks on row level view action and click on page back arrow then table should restore Pagination and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    And I see "down" arrow is Displayed inside "Program Name" field
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I click on "View" icon in flex table for record number "1"
    And I click on back arrow
    And I pause execution for "5" seconds
    Then I see "down" arrow is Displayed inside "Program Name" field
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @269264 @269265
  Scenario Outline: To verify when Pagination is changed to next and Sort direction-ascending order, user clicks on row level Edit action and click on page back arrow then table should restore Pagination and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    And I see "down" arrow is Displayed inside "Program Name" field
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I click on "Edit" icon in flex table for record number "2"
    And I click on back arrow
    And I click toggle button to select "Internal Programs - Draft"
    And I pause execution for "5" seconds
    Then I see "down" arrow is Displayed inside "Program Name" field
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @269267 @269268
  Scenario Outline:To verify when Pagination is changed to next and Sort direction-ascending order and click on same phase then table should restore Pagination and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    And I see "down" arrow is Displayed inside "Program Name" field
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    Then I see "down" arrow is Displayed inside "Program Name" field
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @269270 @269271
  Scenario Outline: To verify when Pagination is changed to next and Sort direction-ascending order and  refreshes the page then table should restore Pagination and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    And I see "down" arrow is Displayed inside "Program Name" field
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see "down" arrow is Displayed inside "Program Name" field
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @269273 @269275
  Scenario Outline:  To verify when Pagination is changed to next and Sort direction-ascending order ,click on the another phase and again click on the previous phase then table should restore Pagination and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Flex Table            | Default Page Size   | 10                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "Program Name" column inside Internal Programs
    And I click on "up" arrow inside "Program Name" field
    And I see "down" arrow is Displayed inside "Program Name" field
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    And I navigate to "Announcements" tab
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    Then I see "down" arrow is Displayed inside "Program Name" field
    Then I see the text containing :
      | Page 2 |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  ############### Component tab testing - cookies testing table ##################
############# Clear Session Message Test Cases ####
  @282365
  Scenario Outline:To verify when user changes the list view and clicks on row level 'Edit' action and click on page back arrow then list view value should be restored. (Admin/PM)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I softly see "Internal Programs - Active" inside list view option of table "#toggleFlexTablePrograms"
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    And I click on back arrow
    Then I softly see "Internal Programs - Active" inside list view option of table "#toggleFlexTablePrograms"
    Examples:
      | User  |
      | ADMIN |
   #  | PM    |

  @282224
  Scenario Outline: To verify when user changes page size and clicks on clear session then page size should set back to default value (Admin/PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Default Page Size | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    And I see "10" with page size dropdown at "---program:-:programTableDivId---"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Reset Table" from parallel lines dropdown of "Internal Programs - Active"
    And I see "5" with page size dropdown at "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
   #  | PM    |

  @282226
  Scenario Outline:o verify when user changes pagination and clicks on clear session then pagination should set back to default value (Admin/PM)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    And I see the text containing :
      | Page 2 |
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Reset Table" from parallel lines dropdown of "Internal Programs - Active"
    And I see the text containing :
      | Page 1 |
    Examples:
      | User  |
      | ADMIN |
   #  | PM    |

  @282235
  Scenario Outline: To verify when user changes sort direction and clicks on clear session then sort direction should set back to default value (Admin/PM)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on "EGMS ID" column inside Internal Programs
    And I click on "up" arrow inside "EGMS ID" field
    And I see "down" arrow is Displayed inside "EGMS ID" field
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Reset Table" from parallel lines dropdown of "Internal Programs - Active"
    And I click on "EGMS ID" column inside Internal Programs
    Then I see "up" arrow is Displayed inside "EGMS ID" field
    Examples:
      | User  |
      | ADMIN |
   #  | PM    |

  @282238
  Scenario Outline: To verify when user searches something in quick search and clicks on clear session then table records should set back to default value (Admin/PM)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Program For Application"
    And I see value "Program For Application" for title "Program Name" inside table "---program:-:programTableDivId---"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Reset Table" from parallel lines dropdown of "Internal Programs - Active"
    Then I do not see value "Program For Application" for title "Program Name" inside table "---program:-:programTableDivId---"
    Examples:
      | User  |
      | ADMIN |
   #  | PM    |

  @282242
  Scenario Outline: To verify when user changes the list view and clicks on clear session button then list view should set back to the default. (Admin/PM)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I softly see "Internal Programs - Draft" inside list view option of table "#toggleFlexTablePrograms"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Reset Table" from parallel lines dropdown of "Internal Programs - Draft"
    Then I softly see "Internal Programs - Active" inside list view option of table "#toggleFlexTablePrograms"
    Examples:
      | User  |
      | ADMIN |
   #  | PM    |

  @282244
  Scenario Outline: To verify when user changes page size then 'Click ‘Reset Table’ under the menu icon to refresh the table’s default values' message should display (Admin/PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Default Page Size | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I cannot see the following message in the page details :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |
    And I select value inside table "---program:-:programTableDivId---" is "10"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |
    Examples:
      | User  |
      | ADMIN |
   #  | PM    |

  @282247
  Scenario Outline: To verify when user changes pagination then 'Click Clear Session to refresh back to the default values' message should display (Admin/PM)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I cannot see the following message in the page details :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |
    Examples:
      | User  |
      | ADMIN |
   #  | PM    |

  @282261
  Scenario Outline: To verify when user changes sort direction then 'Click Clear Session to refresh back to the default values' message should display (Admin/PM)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I cannot see the following message in the page details :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |
    And I click on "EGMS ID" column inside Internal Programs
    And I click on "up" arrow inside "EGMS ID" field
    And I see "down" arrow is Displayed inside "EGMS ID" field
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |
    Examples:
      | User  |
      | ADMIN |
   #  | PM    |

  @282271
  Scenario Outline: To verify when user searches something in quick search then 'Click Clear Session to refresh back to the default values' message should display (Admin/PM)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I cannot see the following message in the page details :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |
    When I perform quick search for "Automation Internal Program for Testing"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |
    Examples:
      | User  |
      | ADMIN |
   #  | PM    |

  @282273
  Scenario Outline:To verify when user changes the list view then 'Click Clear Session to refresh back to the default values' message should display (Admin/PM)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I cannot see the following message in the page details :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |
    And I click toggle button to select "Internal Programs - Draft"
    And I softly see "Internal Programs - Draft" inside list view option of table "#toggleFlexTablePrograms"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |
    Examples:
      | User  |
      | ADMIN |
   #  | PM    |

  @282275
  Scenario Outline: To verify when user changes page size and clicks on clear session then 'Table has been reset' message should display (Admin/PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Default Page Size | 10                | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Default Page Size | 5             | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "10"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I pause execution for "5" seconds
    And I select "Reset Table" from parallel lines dropdown of "Internal Programs - Active"
#    Then I softly see the following messages in the page details :
#      | Table has been reset. |
    Then I can see the following message in table :
      | Table has been reset. |
    Examples:
      | User  |
      | ADMIN |
   #  | PM    |

  @282354
  Scenario Outline: To verify when user changes pagination and clicks on clear session then 'Cleared session storage successfully' message should display (Admin/PM)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:programTableDivId---" for table id "Next"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablePrograms"
    And I select "Reset Table" from parallel lines dropdown of "Internal Programs - Active"
#    Then I softly see the following messages in the page details :
#      | Table has been reset. |
    Then I can see the following message in table :
      | Table has been reset. |
    Examples:
      | User  |
      | ADMIN |
   #  | PM    |
