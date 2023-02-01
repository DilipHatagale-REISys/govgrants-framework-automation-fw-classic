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
  Scenario: To verify when user changes the page size (Show entries) to All and click on the same phase then table should get open on page size (Show entries) to All.
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
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I select value inside table "---program:-:MonitoringScheduleGrantorTableId---" is "10"
    Then I see "10" with page size dropdown at "---program:-:MonitoringScheduleGrantorTableId---"
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

  @267655 @Sprint-21 @Vrushali
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
     # | PM    |

  @267646
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
       # | PM    |

  @267614 @Vrushali @Sprint-21
  Scenario:To verify when user changes the page size (Show entries) to 10, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 10.
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

  @267746 @Sprint-21 @Vrushali
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
     # | PM    |
