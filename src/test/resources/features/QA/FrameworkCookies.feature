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
    Then I can see last page displayed in pagination inside "Programs"
    And I navigate to "Planning" tab
    Then I can see last page displayed in pagination inside "Programs"
    #267851
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "All"
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
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

  @268444
  Scenario Outline: To verify when sort direction of data type-standard field is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-standard field (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:0 |
     # | Flex Grid             | Sort Direction      | DESC              | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 5                | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination   | true              | ApiGeneratedId:2 |
      | Flex Table            | Order By            |                   | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true              | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | Programs           | Name                      |                            |
      | Flex Grid:General     | Sort Direction      | ASC           | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination   | true          | Programs           | Name                      |                            |
      | Flex Grid:General     | Order By            | Percentage__c | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size    | true          | Programs           | Name                      |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Automation Internal Program for Testing"
    Examples:
      | User  |
      | ADMIN |
         # | PM   |
