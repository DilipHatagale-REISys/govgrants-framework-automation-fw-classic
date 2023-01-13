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

  @267851 @US-265865
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
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:programTableDivId---" is "All"
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"
    And I navigate to "Planning" tab
    Then I see "All" with page size dropdown at "---program:-:programTableDivId---"

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