@FlexTable-Component @regression-QA @FlexTable_AllComponent
Business Need: FlexTable_AllComponent Scenarios flextable UI,flextable Interface,Quick Search
  Test all SendEmail component based scenarios
  As a configuration manager I make different configurational changes in FlexTable_AllComponent component and will validate them.

  ############Test suite: Flex Table UI (Suite ID: 334515)############

  @334978
  Scenario: Flex table-Page size-Admin-Config-To verify that on enabling page size, "Show entries" block displayed at bottom (left side) of flex table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Entries" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @334979
  Scenario: Flex table-Page size-PM-UI-To verify that on enabling page size, "Show entries" block displayed at bottom (left side) of flex table
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Entries" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @334980
  Scenario: Flex table-Page size-SPI-UI-To verify that on enabling page size, "Show entries" block displayed at bottom (left side) of flex table
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see "Entries" page size inside table "---program:-:toggleFlexTablepopupflextableTableId---"

  @334981
  Scenario: Flex table-Page size-Admin-Config-To verify that on disabling page size, "Show entries" block not displayed at bottom (left side) of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:3 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Page Size           | false         | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Entries" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @334984
  Scenario: Flex table-Page size-PM-UI-To verify that on disabling page size, "Show entries" block not displayed at bottom (left side) of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Page Size | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Page Size | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Entries" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @334985
  Scenario: Flex table-Page size-SPI-UI-To verify that on disabling page size, "Show entries" block not displayed at bottom (left side) of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Page Size | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Page Size | false         | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I do not see "Entries" page size inside table "---program:-:grantsFlexTableIdForSPIuser---"

  @334986
  Scenario: Flex table-Total Records count-Admin-Config-To verify that on enabling Total records count, value of total record count displayed at bottom of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Page Size           | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Total Records:" text-allignment is "center" in table id "---program:-:ProgramsFlexTableToggleId---"

  @334988
  Scenario: Flex table-Total Records count-PM-UI-To verify that on enabling Total records count, value of total record count displayed at bottom of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Page Size           | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Total Records:" text-allignment is "center" in table id "---program:-:ProgramsFlexTableToggleId---"

  @334989
  Scenario: Flex table-Total Records count-SPI-UI-To verify that on enabling Total records count, value of total record count displayed at bottom of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Page Size           | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see "Total Records:" text-allignment is "center" in table id "---program:-:toggleFlexTablepopupflextableTableId---"

  @334990
  Scenario: Flex table-Total Records count-Admin-Config-To verify that on disabling Total records count, value of total record count not displayed at bottom of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | false         | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | true          | GrantsList         | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Total Records" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @334993
  Scenario: Flex table-Total Records count-PM-UI-To verify that on disabling Total records count, value of total record count not displayed at bottom of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Total Records" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @334994
  Scenario: Flex table-Total Records count-SPI-UI-To verify that on disabling Total records count, value of total record count not displayed at bottom of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Page Size           | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | false         | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I do not see "Total Records" page size inside table "---program:-:grantsFlexTableIdForSPIuser---"


  @334995
  Scenario:Flex table-Pagination-Admin-Config-To verify that on enabling Pagination, respective pagination block/component displayed at right side(on top and bottom) of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Auto Index | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Page 1 of" text-allignment is "right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @334997
  Scenario: Flex table-Pagination-PM-UI-To verify that on enabling Pagination, respective pagination block/component displayed at right side(on top and bottom) of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Auto Index | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Page 1 of" text-allignment is "right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @334999
  Scenario: Flex table-Pagination-SPI-UI-To verify that on enabling Pagination, respective pagination block/component displayed at right side(on top and bottom) of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Auto Index          | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "Page 1 of" text-allignment is "right" in table id "---program:-:grantsFlexTableIdForSPIuser---"

  @335000
  Scenario:Flex table-Pagination-Admin-Config-To verify that on disabling Pagination, respective pagination block/component not displayed at right side(on top and bottom) of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | false         | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "---program:-:toggleFlexTableActiveFundingOpportunitiesAll---" table contains "Page 1 of"

  @335001
  Scenario: Flex table-Pagination-PM-UI-To verify that on disabling Pagination, respective pagination block/component not displayed at right side(on top and bottom) of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "---program:-:toggleFlexTableActiveFundingOpportunitiesAll---" table contains "Page 1 of"


  @335004
  Scenario: Flex table-Default page size-Admin-Config-To verify that number provided in "Default page size" field, that many records displayed on UI on a page.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335006
  Scenario: Flex table-Default page size-PM-UI-To verify that number provided in "Default page size" field, that many records displayed on UI on a page.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335007
  Scenario: Flex table-Default page size-SPI-UI-To verify that number provided in "Default page size" field, that many records displayed on UI on a page.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see table contains "Showing 1 to 5 of" inside table id "---program:-:toggleFlexTablepopupflextableTableId---"

  @335008
  Scenario: Flex table-Default page size-Admin-Config-To verify that if user not provided any number in "Default page size" field, then by default 20 records displayed on a page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Default Page Size | 20            | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335010
  Scenario: Flex table-Default page size-PM-UI-To verify that if user not provided any number in "Default page size" field, then by default 20 records displayed on a page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Default Page Size | 20            | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335011
  Scenario: Flex table-Default page size-SPI-UI-To verify that if user not provided any number in "Default page size" field, then by default 20 records displayed on a page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Default Page Size | 20            | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:grantsFlexTableIdForSPIuser---"

  @335017
  Scenario: Flex table-Auto Index-Admin-Config-To verify that on enabling auto index, Index column get displayed to the left of flex table, and all records get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "#" in flex table header "---program:-:ProgramsFlexTableToggleId---"

  @335019
  Scenario: Flex table-Auto Index-PM-UI-To verify that on enabling auto index, Index column get displayed to the left of flex table, and all records get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "#" in flex table header "---program:-:ProgramsFlexTableToggleId---"

  @335020
  Scenario: Flex table-Auto Index-SPI-UI-To verify that on enabling auto index, Index column get displayed to the left of flex table, and all records get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "#" in flex table header "---program:-:grantsFlexTableIdForSPIuser---"

  @335022
  Scenario: Flex table-Auto Index-Admin-Config-To verify that on disabling auto index, Index column not get displayed to the left of flex table, and all records not get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "#" in flex table header "---program:-:ProgramsFlexTableToggleId---"

  @335024
  Scenario: Flex table-Auto Index-PM-UI-To verify that on disabling auto index, Index column not get displayed to the left of flex table, and all records not get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "#" in flex table header "---program:-:ProgramsFlexTableToggleId---"

  @335026
  Scenario: Flex table-Auto Index-SPI-UI-To verify that on disabling auto index, Index column not get displayed to the left of flex table, and all records not get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | false         | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I do not see "#" in flex table header "---program:-:toggleFlexTablepopupflextableTableId---"

  @335028
  Scenario: Flex table-Auto Index Behavior-Admin-Config-To verify that on selecting auto index behavior-All Rows, all the rows in flex table get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "10" with page size dropdown at "---program:-:ProgramsFlexTableToggleId---"

  @335030
  Scenario: Flex table-Auto Index Behavior-PM-UI-To verify that on selecting auto index behavior-All Rows, all the rows in flex table get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "5" with page size dropdown at "---program:-:ProgramsFlexTableToggleId---"

  @335031
  Scenario: Flex table-Auto Index Behavior-SPI-UI-To verify that on selecting auto index behavior-All Rows, all the rows in flex table get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "5" with page size dropdown at "---program:-:grantsFlexTableIdForSPIuser---"

  @335040
  Scenario: Flex table-Auto Index Behavior-Admin-Config-To verify that on selecting auto index behavior-None, all the rows in flex table get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 10            | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" to "10" indexing inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335043
  Scenario: Flex table-Auto Index Behavior-PM-UI-To verify that on selecting auto index behavior-None, all the rows in flex table get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size | 10                | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 10            | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" to "10" indexing inside table id "---program:-:grantsFlexTableIdForSPIuser---"

  @335045
  Scenario: Flex table-Auto Index Behavior-SPI-UI-To verify that on selecting auto index behavior-None, all the rows in flex table get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | true              | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination       | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 10            | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Pagination       | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "1" to "10" indexing inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335049
  Scenario: Flex table-Enable Record Selection-Admin-Config-To verify that on enabling record selection, a Record selection column displayed on flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | true              | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination       | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 10            | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" to "10" Record Selection inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335052
  Scenario: Flex table-Enable Record Selection-PM-UI-To verify that on enabling record selection, a Record selection column displayed on flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 10            | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" to "10" Record Selection inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335054
  Scenario: Flex table-Enable Record Selection-SPI-UI-To verify that on enabling record selection, a Record selection column displayed on flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 5             | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "1" to "5" Record Selection inside table id "---program:-:grantsFlexTableIdForSPIuser---"

  @335055
  Scenario: Flex table-Disable Record Selection-Admin-Config-To verify that on disabling record selection, a Record selection column not displayed on flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 10            | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "1" to "10" Record Selection inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335059
  Scenario: Flex table-Disable Record Selection-PM-UI-To verify that on disabling record selection, a Record selection column not displayed on flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 10            | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "1" to "10" Record Selection inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335060
  Scenario: Flex table-Disable Record Selection-SPI-UI-To verify that on disabling record selection, a Record selection column not displayed on flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 5             | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | false         | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I do not see "1" to "5" Record Selection inside table id "---program:-:grantsFlexTableIdForSPIuser---"

  @335063
  Scenario: Flex table-Record Selection Column Position-Admin-Config-To verify that on selecting Record selection column position - Left, Record selection column displayed to the left side of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:3 |
#      | Flex Table            | Record Selection Column Position | Left              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | Programs           | Name                      |                            |
#      | Flex Table:General    | Record Selection Column Position | Left          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @335066
  Scenario: Flex table-Record Selection Column Position-PM-UI-To verify that on selecting Record selection column position - Left, Record selection column displayed to the left side of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:3 |
#      | Flex Table            | Record Selection Column Position | Left              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | Programs           | Name                      |                            |
#      | Flex Table:General    | Record Selection Column Position | Left          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @335068
  Scenario: Flex table-Record Selection Column Position-SPI-UI-To verify that on selecting Record selection column position - Left, Record selection column displayed to the left side of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:3 |
#      | Flex Table            | Record Selection Column Position | Left              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 5             | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | GrantsList         | Name                      |                            |
#      | Flex Table:General    | Record Selection Column Position | Left          | GrantsList         | Name                      |            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:grantsFlexTableIdForSPIuser---"

  @335070
  Scenario: Flex table-Record Selection Column Position-Admin-Config-To verify that on selecting Record selection column position - Right, Record selection column displayed to the right side of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:3 |
#      | Flex Table            | Record Selection Column Position | Left              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | Programs           | Name                      |                            |
#      | Flex Table:General    | Record Selection Column Position | Left          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "== 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @335072
  Scenario: Flex table-Record Selection Column Position-PM-UI-To verify that on selecting Record selection column position - Right, Record selection column displayed to the right side of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:3 |
#      | Flex Table            | Record Selection Column Position | left              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | Programs           | Name                      |                            |
#      | Flex Table:General    | Record Selection Column Position | Right         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "== 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @335075
  Scenario: Flex table-Record Selection Column Position-SPI-UI-To verify that on selecting Record selection column position - Right, Record selection column displayed to the right side of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:3 |
#      | Flex Table            | Record Selection Column Position | Left              | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 5             | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | GrantsList         | Name                      |                            |
#      | Flex Table:General    | Record Selection Column Position | Right         | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "Select All Check Box" column position is "== 'Right" in table id "---program:-:grantsFlexTableIdForSPIuser---"

  @335076
  Scenario: Flex table-Record Selection Column Position-Admin-Config-To verify that on selecting Record selection column position - None, Record selection column displayed to the left side of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                        | fieldOrignalValue | filterId         |
      | Flex Table            | Record Selection Column Header   | Demo text         | ApiGeneratedId:0 |
      | Flex Table            | Record Selection Column Position | None              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Record Selection Column Header   | Demo text     | Programs           | Name                      |                            |
      | Flex Table:General    | Record Selection Column Position | None          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @335080
  Scenario: Flex table-Record Selection Column Position-PM-UI-To verify that on selecting Record selection column position - None, Record selection column displayed to the left side of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                        | fieldOrignalValue | filterId         |
      | Flex Table            | Record Selection Column Header   | Demo text         | ApiGeneratedId:0 |
      | Flex Table            | Record Selection Column Position | None              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Record Selection Column Header   | Demo text     | Programs           | Name                      |                            |
      | Flex Table:General    | Record Selection Column Position | None          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @335085
  Scenario: Flex table-Record Selection Column Position-SPI-UI-To verify that on selecting Record selection column position - None, Record selection column displayed to the left side of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:3 |
#      | Flex Table            | Record Selection Column Position | Left              | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 5             | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | GrantsList         | Name                      |                            |
#      | Flex Table:General    | Record Selection Column Position | None         | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:grantsFlexTableIdForSPIuser---"

  @335088
  Scenario: Flex table-Disable Menu-Admin-Config-To verify that on disabling Menu, Menu option not displayed on UI for the flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Disable Menu      | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 10            | Programs           | Name                      |                            |
      | Flex Table:General    | Disable Menu      | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Menu" action is displayed at the "---program:-:ProgramsFlexTableToggleId---" modal

  @335089
  Scenario: Flex table-Disable Menu-PM-UI-To verify that on disabling Menu, Menu option not displayed on UI for the flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Disable Menu      | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 10            | Programs           | Name                      |                            |
      | Flex Table:General    | Disable Menu      | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Menu" action is displayed at the "---program:-:ProgramsFlexTableToggleId---" modal

  @335090
  Scenario: Flex table-Disable Menu-SPI-UI-To verify that on disabling Menu, Menu option not displayed on UI for the flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Disable Menu      | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size | 10            | GrantsList         | Name                      |                            |
      | Flex Table:General    | Disable Menu      | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I do not see "Menu" action is displayed at the "---program:-:grantsFlexTableIdForSPIuser---" modal

  @335116
  Scenario: Flex table-Enable Menu-Admin-Config-To verify that on enabling Menu, Menu option displayed on UI for the flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Disable Menu      | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 10            | Programs           | Name                      |                            |
      | Flex Table:General    | Disable Menu      | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Menu" action is displayed at the "---program:-:ProgramsFlexTableToggleId---" modal

  @335119
  Scenario: Flex table-Enable Menu-PM-UI-To verify that on enabling Menu, Menu option displayed on UI for the flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Disable Menu      | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size | 10            | Programs           | Name                      |                            |
      | Flex Table:General    | Disable Menu      | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Menu" action is displayed at the "---program:-:ProgramsFlexTableToggleId---" modal

  @335120
  Scenario: Flex table-Enable Menu-SPI-UI-To verify that on enabling Menu, Menu option displayed on UI for the flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Disable Menu      | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size | 10            | GrantsList         | Name                      |                            |
      | Flex Table:General    | Disable Menu      | false         | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "Menu" action is displayed at the "---program:-:grantsFlexTableIdForSPIuser---" modal

  @335124
  Scenario: Flex table-Page size-Admin-UI-To verify that user is able to change page size by clicking on Show Entries block
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I select value inside table "---program:-:toggleFlexTableIdForAdminPM---" is "20"
    Then I see table contains "Showing 1 to 20" inside table id "---program:-:toggleFlexTableIdForAdminPM---"

  @335126
  Scenario: Flex table-Page size-PM-UI-To verify that user is able to change page size by clicking on Show Entries block
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "20"
    Then I see table contains "Showing 1 to 20" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335128
  Scenario: Flex table-Page size-SPI-UI-To verify that user is able to change page size by clicking on Show Entries block
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I select value inside table "---program:-:grantsFlexTableIdForSPIuser---" is "10"
    Then I see table contains "Showing 1 to 10" inside table id "---program:-:grantsFlexTableIdForSPIuser---"

  @335129
  Scenario: Flex table-Page size-Admin-UI-To verify that different page sizes are available in Show Entries block
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "20"
    Then I see table contains "Showing 1 to 20" inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "5"
    Then I see table contains "Showing 1 to 5" inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "10"
    Then I see table contains "Showing 1 to 10" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335131
  Scenario: Flex table-Page size-PM-UI-To verify that different page sizes  are available in Show Entries block
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "10"
    Then I see table contains "Showing 1 to 10" inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "20"
    Then I see table contains "Showing 1 to 20" inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "50"
    Then I see table contains "Showing 1 to 50" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335134
  Scenario: Flex table-Page size-SPI-UI-To verify that different page sizes are available in Show Entries block
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "5"
    Then I see table contains "Showing 1 to" inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "10"
    Then I see table contains "Showing 1 to" inside table id "---program:-:toggleFlexTablepopupflextableTableId---"

  @335137
  Scenario: Flex table-Page size-Admin-UI-To verify that on selecting All page size, all available records displayed on a page
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "All"
    Then I see table contains "Showing 1 to 99 of 99 records" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335139
  Scenario: Flex table-Page size-PM-UI-To verify that on selecting All page size, all available records displayed on a page
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "All"
    Then I see table contains "Showing 1 to 81 of 81 records" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335148
  Scenario: Flex table-Page size-SPI-UI-To verify that on selecting All page size, all available records displayed on a page
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "All"
    Then I see table contains "Showing 1 to 7 of 7 records" inside table id "---program:-:toggleFlexTablepopupflextableTableId---"

  @335150
  Scenario: Flex table-Page size-Admin-UI-To verify that on changing page size, number of Pages(or Pagination block) also get changed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:ProgramsFlexTableToggleId---" for table id "Next"
    Then I see "---program:-:ProgramsFlexTableToggleId---" table contains "Page 2 of"

  @335151
  Scenario: Flex table-Page size-PM-UI-To verify that on changing page size, number of Pages(or Pagination block) also get changed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:ProgramsFlexTableToggleId---" for table id "Next"
    Then I see "---program:-:ProgramsFlexTableToggleId---" table contains "Page 2 of"

  @335154
  Scenario: Flex table-Page size-SPI-UI-To verify that on changing page size, number of Pages(or Pagination block) also get changed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Next"
    Then I see "---program:-:toggleFlexTablepopupflextableTableId---" table contains "Page 2 of"

  @335158
  Scenario: Flex table-Pagination-Admin-UI-To verify that on clicking on last (arrow) in pagination block, it get navigated to last page of flex table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:ProgramsFlexTableToggleId---" for table id "Last"
    Then I see user on "Last" pagination page "---program:-:ProgramsFlexTableToggleId---" table

  @335159
  Scenario: Flex table-Pagination-PM-UI-To verify that on clicking on last (arrow) in pagination block, it get navigated to last page of flex table
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:ProgramsFlexTableToggleId---" for table id "Last"
    Then I see user on "Last" pagination page "---program:-:ProgramsFlexTableToggleId---" table

  @335163
  Scenario: Flex table-Pagination-SPI-UI-To verify that on clicking on last (arrow) in pagination block, it get navigated to last page of flex table
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Last"
    Then I see user on "Last" pagination page "---program:-:toggleFlexTablepopupflextableTableId---" table

  @335174
  Scenario: Flex table-Pagination-Admin-UI-To verify that on clicking on First (arrow) in pagination block, it get navigated to first page of flex table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:ProgramsFlexTableToggleId---" for table id "First"
    Then I see user on "First" pagination page "---program:-:ProgramsFlexTableToggleId---" table

  @335177
  Scenario: Flex table-Pagination-PM-UI-To verify that on clicking on First (arrow) in pagination block, it get navigated to first page of flex table
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:ProgramsFlexTableToggleId---" for table id "First"
    Then I see user on "First" pagination page "---program:-:ProgramsFlexTableToggleId---" table

  @335180
  Scenario: Flex table-Pagination-SPI-UI-To verify that on clicking on First (arrow) in pagination block, it get navigated to first page of flex table
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "First"
    Then I see user on "First" pagination page "---program:-:toggleFlexTablepopupflextableTableId---" table

  @335200
  Scenario: LWC-Flex table-Page Size-Admin-UI-To verify that on changing page size (by clicking on Show entries block), text of "Showing 1 to n of x records" get changed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "---program:-:ProgramsFlexTableToggleId---" table contains "Page 1 of 3"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "10"
    Then I see "---program:-:ProgramsFlexTableToggleId---" table contains "Page 1 of 6"

  @335205
  Scenario: Flex table-Page Size-PM-UI-To verify that on changing page size (by clicking on Show entries block), text of "Showing 1 to n of x records" get changed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "---program:-:ProgramsFlexTableToggleId---" table contains "Page 1 of 3"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "10"
    Then I see "---program:-:ProgramsFlexTableToggleId---" table contains "Page 1 of 5"

  @335212
  Scenario: Flex table-Page Size-SPI-UI-To verify that on changing page size (by clicking on Show entries block), text of "Showing 1 to n of x records" get changed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see "---program:-:toggleFlexTablepopupflextableTableId---" table contains "Page 1 of 17"
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "10"
    Then I see "---program:-:toggleFlexTablepopupflextableTableId---" table contains "Page 1 of 9"

#######################Test suite: Quick Search (Suite ID: 334512)#############################\

  @334650
  Scenario: Flex table-Quick Search-Admin-Config-To verify that on enabling Quick search, it displayed on top of the flex table
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334652
  Scenario: Flex table-Quick Search-PM-UI-To verify that on enabling Quick search, it displayed on top of the flex table
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334654
  Scenario: Flex table-Quick Search-SPI-UI-To verify that on enabling Quick search, it displayed on top of the flex table
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:grantsFlexTableIdForSPIuser---"

  @334656
  Scenario: Flex table-Quick Search-Admin-Config-To verify that on disabling Quick search, it not displayed on top of the flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I do not see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334657
  Scenario: Flex table-Quick Search-PM-UI-To verify that on disabling Quick search, it not displayed on top of the flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I do not see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334658
  Scenario: Flex table-Quick Search-SPI-UI-To verify that on disabling Quick search, it not displayed on top of the flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Quick Search | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | false         | Programs           | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I do not see "quick-search" is displayed on table id "---program:-:grantsFlexTableIdForSPIuser---"


  @334659
  Scenario: Flex table-Quick Search-Admin-UI-To verify that user is able to search for text field (i.e. Text data type)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I quick search "GT-GA-00077" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "GT-GA-00077" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334660
  Scenario: Flex table-Quick Search-PM-UI-To verify that user is able to search for text field (i.e. Text data type)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I quick search "GT-GA-00068" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "GT-GA-00068" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334661
  Scenario: Flex table-Quick Search-SPI-UI-To verify that user is able to search for text field (i.e. Text data type)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I quick search "GT-GA-00075" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "GT-GA-00075" inside table "---program:-:grantsFlexTableIdForSPIuser---"

  @334663
  Scenario Outline: Flex table-Quick Search-Admin-UI-To verify that user is able to search for long text field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "Unique description for test" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "Unique description for test" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                              | defaultFieldsApi                                                                                                                                      |
      | ADMIN | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,GrantDescription__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |


  @334664
  Scenario Outline: Flex table-Quick Search-PM-UI-To verify that user is able to search for long text field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "Unique description for test" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "Unique description for test" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                              | defaultFieldsApi                                                                                                                                      |
      | PM   | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,GrantDescription__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334666
  Scenario Outline: Flex table-Quick Search-SPI-UI-To verify that user is able to search for long text field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "Test Description" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "Test Description" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                  | defaultFieldsApi                                                                                                                          |
      | SPI  | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,GrantDescription__c | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c |


  @334667
  Scenario Outline: Flex table-Quick Search-Admin-UI-To verify that user is able to search for Rich text area field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "Project Description for Grant Information" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "Project Description for Grant Information" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                                | defaultFieldsApi                                                                                                                                      |
      | ADMIN | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,ProjectDescription__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |


  @334668
  Scenario Outline: Flex table-Quick Search-PM-UI-To verify that user is able to search for Rich text area field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "Project Description for Grant Information" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "Project Description for Grant Information" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                                | defaultFieldsApi                                                                                                                                      |
      | PM   | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,ProjectDescription__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334670
  Scenario Outline: Flex table-Quick Search-SPI-UI-To verify that user is able to search for Rich text area field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "Test Description" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "Test Description" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                  | defaultFieldsApi                                                                                                                          |
      | SPI  | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,GrantDescription__c | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c |

  @334671
  Scenario Outline: Flex table-Quick Search-Admin-UI-To verify that user is able to search for Number field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "60" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see value "60" is displayed inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                                     | defaultFieldsApi                                                                                                                                      |
      | Admin | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,CloseoutLiquidationDays__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334672
  Scenario Outline: Flex table-Quick Search-PM-UI-To verify that user is able to search for Number field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "60" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see value "60" is displayed inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                                     | defaultFieldsApi                                                                                                                                      |
      | PM   | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,CloseoutLiquidationDays__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334675
  Scenario Outline: Flex table-Quick Search-SPI-UI-To verify that user is able to search for Number field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "60" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see value "60" is displayed inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                         | defaultFieldsApi                                                                                                                          |
      | SPI  | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,CloseoutLiquidationDays__c | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c |

  @334676
  Scenario Outline: Flex table-Quick Search-Admin-UI-To verify that user is able to search for Currency field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "$1,000.00" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "$1,000.00" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                           | defaultFieldsApi                                                                                                                                      |
      | ADMIN | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,AwardedToDate__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334678
  Scenario Outline: Flex table-Quick Search-PM-UI-To verify that user is able to search for Currency field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "$1,000.00" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "$1,000.00" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                           | defaultFieldsApi                                                                                                                                      |
      | PM   | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,AwardedToDate__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334679
  Scenario Outline: Flex table-Quick Search-SPI-UI-To verify that user is able to search for Currency field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "$1,000.00" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "$1,000.00" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                               | defaultFieldsApi                                                                                                                          |
      | SPI  | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,AwardedToDate__c | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c |

  @334682
  Scenario Outline: Flex table-Quick Search-Admin-UI-To verify that user is able to search for Date field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "05/20/2022" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "05/20/2022" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                                    | defaultFieldsApi                                                                                                                                      |
      | ADMIN | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,ProjectPeriodStartDate__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334683
  Scenario Outline: Flex table-Quick Search-PM-UI-To verify that user is able to search for Date field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "05/09/2023" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "05/09/2023" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                                    | defaultFieldsApi                                                                                                                                      |
      | PM   | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,ProjectPeriodStartDate__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334685
  Scenario Outline: Flex table-Quick Search-SPI-UI-To verify that user is able to search for Date and Date & Time field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "05/09/2023" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "05/09/2023" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                        | defaultFieldsApi                                                                                                                          |
      | SPI  | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,ProjectPeriodStartDate__c | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c |

  @334687
  Scenario Outline: Flex table-Quick Search-Admin-UI-To verify that user is able to search for ID field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "PG-A11-1252" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "PG-A11-1252" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                                    | defaultFieldsApi                                                                                                                                      |
      | ADMIN | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,ProjectPeriodStartDate__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334689
  Scenario Outline: Flex table-Quick Search-PM-UI-To verify that user is able to search for ID field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "PG-A11-1252" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "PG-A11-1252" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                                    | defaultFieldsApi                                                                                                                                      |
      | ADMIN | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,ProjectPeriodStartDate__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334690
  Scenario Outline: Flex table-Quick Search-SPI-UI-To verify that user is able to search for ID field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "PG-A11-1252" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "PG-A11-1252" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                        | defaultFieldsApi                                                                                                                          |
      | SPI  | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,ProjectPeriodStartDate__c | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c |


  @334691
  Scenario Outline: Flex table-Quick Search-Admin-UI-To verify that user is able to search for Picklist field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "No" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "No" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                          | defaultFieldsApi                                                                                                                                      |
      | ADMIN | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,KPIsRequired__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334692
  Scenario Outline: Flex table-Quick Search-PM-UI-To verify that user is able to search for Picklist field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "No" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "No" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                          | defaultFieldsApi                                                                                                                                      |
      | PM   | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,KPIsRequired__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334693
  Scenario Outline: Flex table-Quick Search-SPI-UI-To verify that user is able to search for Picklist field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "No" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "No" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                              | defaultFieldsApi                                                                                                                          |
      | SPI  | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,KPIsRequired__c | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c |

  @334694
  Scenario Outline: Flex table-Quick Search-Admin-UI-To verify that user is able to search for URL field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "https://www.google.com" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "https://www.google.com" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                 | defaultFieldsApi                                                                                                                                      |
      | ADMIN | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,URL__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334695
  Scenario Outline: Flex table-Quick Search-PM-UI-To verify that user is able to search for URL field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "https://www.google.com" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "https://www.google.com" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                 | defaultFieldsApi                                                                                                                                      |
      | PM   | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,URL__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334696
  Scenario Outline: Flex table-Quick Search-SPI-UI-To verify that user is able to search for URL field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "https://www.google.com" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "https://www.google.com" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                     | defaultFieldsApi                                                                                                                          |
      | SPI  | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,URL__c | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c |

  @334697
  Scenario Outline: Flex table-Quick Search-Admin-UI-To verify that user is able to search for Formula field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "Sarah PM" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "Sarah PM" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                       | defaultFieldsApi                                                                                                                                      |
      | ADMIN | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,OwnerName__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334698
  Scenario Outline: Flex table-Quick Search-PM-UI-To verify that user is able to search for Formula field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "Sarah PM" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "Sarah PM" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                       | defaultFieldsApi                                                                                                                                      |
      | PM   | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,OwnerName__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @224699
  Scenario Outline: Flex table-Quick Search-SPI-UI-To verify that user is able to search for Formula field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "Sarah PM" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "Sarah PM" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                           | defaultFieldsApi                                                                                                                          |
      | SPI  | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,OwnerName__c | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c |

  @334700
  Scenario: Flex table-Quick Search-Admin-UI-To verify that user is able to search for Lookup field
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Grants" tab
    And I quick search "AP-T09-007" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "AP-T09-007" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334701
  Scenario: Flex table-Quick Search-PM-UI-To verify that user is able to search for Lookup field
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I quick search "AP-A11-001" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "AP-A11-001" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334703
  Scenario Outline: Flex table-Quick Search-SPI-UI-To verify that user is able to search for Lookup field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Grants" tab
    And I pause execution for "20" seconds
    And I quick search "AP-A11-001" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "AP-A11-001" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                             | defaultFieldsApi                                                                                                                          |
      | SPI  | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c |

  @334704
  Scenario Outline: Flex table-Quick Search-Admin-UI-To verify that user is able to search for Email field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "dilipdm@reisystems.in" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "dilipdm@reisystems.in" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                   | defaultFieldsApi                                                                                                                                      |
      | ADMIN | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,Email__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334705
  Scenario Outline: Flex table-Quick Search-PM-UI-To verify that user is able to search for Email field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "dilipdm@reisystems.in" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "dilipdm@reisystems.in" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                   | defaultFieldsApi                                                                                                                                      |
      | PM   | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,Email__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334706
  Scenario Outline: Flex table-Quick Search-SPI-UI-To verify that user is able to search for Email field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Grants" tab
    And I pause execution for "20" seconds
    And I quick search "dilipdm@reisystems.in" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "dilipdm@reisystems.in" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                       | defaultFieldsApi                                                                                                                          |
      | SPI  | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Email__c | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c |

  @334707
  Scenario Outline: Flex table-Quick Search-Admin-UI-To verify that user is able to search for Percent field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "10.00%" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "10.00%" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                          | defaultFieldsApi                                                                                                                                      |
      | ADMIN | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,GranteeMatch__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334708
  Scenario Outline:Flex table-Quick Search-PM-UI-To verify that user is able to search for Percent field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Grants" tab
    And I quick search "10.00%" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "10.00%" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                                         | defaultFieldsApi                                                                                                                                      |
      | PM   | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c,BudgetRedirectionThreshhold__c | Name,ProjectTitle__c,InternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,Application__c |

  @334709
  Scenario Outline: Flex table-Quick Search-SPI-UI-To verify that user is able to search for Percent field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Grants" tab
    And I pause execution for "20" seconds
    And I quick search "10.00%" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "10.00%" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Examples:
      | User | newFieldsApi                                                                                                                                                             | defaultFieldsApi                                                                                                                          |
      | SPI  | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c,BudgetRedirectionThreshhold__c | Id,Name,ProjectTitle__c,ExternalOrganization__c,CurrentProjectPeriod__c,NumberofAwards__c,TotalAwardedAmount__c,CurrentAward__c,Status__c |

  @334710
  Scenario: Flex table-Quick Search-Admin-UI-To verify that user is able to search by entering whole data of respective field
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Grants" tab
    And I quick search "Vrush Application" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "Vrush Application" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334711
  Scenario: Flex table-Quick Search-PM-UI-To verify that user is able to search by entering whole data of respective field
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Grants" tab
    And I quick search "Vrush Application" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "Vrush Application" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334712
  Scenario: Flex table-Quick Search-SPI-UI-To verify that user is able to search by entering whole data of respective field
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I quick search "Vrush Application" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "Vrush Application" inside table "---program:-:grantsFlexTableIdForSPIuser---"

  @334713
  Scenario: Flex table-Quick Search-Admin-UI-To verify that user is able to search by entering keyword
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Applications" tab
    And I quick search "security" inside table "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see list contain "security Review_Application" inside table "---program:-:toggleFlexTableIdForAdminPM---"

  @334714
  Scenario: Flex table-Quick Search-PM-UI-To verify that user is able to search by entering keyword
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Applications" tab
    And I quick search "Program" inside table "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see list contain "Program For Application" inside table "---program:-:toggleFlexTableIdForAdminPM---"

  @334715
  Scenario: Flex table-Quick Search-SPI-UI-To verify that user is able to search by entering keyword
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I quick search "security" inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    Then I see list contain "security Review_Application" inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @334720
  Scenario: Flex table-Quick Search-Admin-UI-To verify that user is able to search by entering only characters
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Applications" tab
    And I quick search "snapshot" inside table "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see list contain "Test application for snapshot 3" inside table "---program:-:toggleFlexTableIdForAdminPM---"

  @334722
  Scenario: Flex table-Quick Search-PM-UI-To verify that user is able to search by entering only characters
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Applications" tab
    And I quick search "Testing" inside table "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see list contain "New Application For Testing Only" inside table "---program:-:toggleFlexTableIdForAdminPM---"

  @334724
  Scenario: Flex table-Quick Search-SPI-UI-To verify that user is able to search by entering only characters
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I quick search "release" inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    Then I see list contain "package release flow sk4_Application" inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @334725
  Scenario: Flex table-Quick Search-Admin-UI-To verify that user is able to search by entering only digits
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Applications" tab
    And I quick search "016" inside table "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see list contain "AP-T09-016" inside table "---program:-:toggleFlexTableIdForAdminPM---"

  @334726
  Scenario: Flex table-Quick Search-PM-UI-To verify that user is able to search by entering only digits
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Applications" tab
    And I quick search "001" inside table "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see list contain "AP-A11-001" inside table "---program:-:toggleFlexTableIdForAdminPM---"

  @334728
  Scenario: Flex table-Quick Search-SPI-UI-To verify that user is able to search by entering only digits
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I quick search "008" inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    Then I see list contain "AP-T09-008" inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @334730
  Scenario: Flex table-Quick Search-Admin-UI-To verify that user is able to search by entering alphanumeric values
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Applications" tab
    And I quick search "T09" inside table "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see list contain "AP-T09-016" inside table "---program:-:toggleFlexTableIdForAdminPM---"

  @334731
  Scenario: Flex table-Quick Search-PM-UI-To verify that user is able to search by entering alphanumeric values
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Applications" tab
    And I quick search "A11" inside table "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see list contain "AP-A11-001" inside table "---program:-:toggleFlexTableIdForAdminPM---"

  @334734
  Scenario: Flex table-Quick Search-SPI-UI-To verify that user is able to search by entering alphanumeric values
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I quick search "T09" inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    Then I see list contain "AP-T09-008" inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @334735
  Scenario: Flex table-Quick Search-Admin-UI-To verify that user is able to search by entering characters or digits with sp. characters.
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Applications" tab
    And I quick search "AP-T09-025" inside table "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see list contain "AP-T09-025" inside table "---program:-:toggleFlexTableIdForAdminPM---"

  @334736
  Scenario: Flex table-Quick Search-PM-UI-To verify that user is able to search by entering characters or digits with sp. characters.
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Applications" tab
    And I quick search "Program For Application	" inside table "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see list contain "Program For Application" inside table "---program:-:toggleFlexTableIdForAdminPM---"


  @334739
  Scenario: Flex table-Quick Search-SPI-UI-To verify that user is able to search by entering characters or digits with sp. characters.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I quick search "AP-T09-012" inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    Then I see list contain "AP-T09-012" inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @334740
  Scenario: Flex table-Quick Search-Admin-UI-To verify that user is able to search for reference fields
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Applications" tab
    And I quick search "07/18/2022" inside table "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see list contain "07/18/2022" inside table "---program:-:toggleFlexTableIdForAdminPM---"

  @334741
  Scenario: Flex table-Quick Search-PM-UI-To verify that user is able to search for reference fields
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Applications" tab
    And I quick search "07/27/2022" inside table "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see list contain "07/27/2022" inside table "---program:-:toggleFlexTableIdForAdminPM---"

  @334742
  Scenario: Flex table-Quick Search-SPI-UI-To verify that user is able to search for reference fields
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I quick search "04/28/2022" inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    Then I see list contain "04/28/2022" inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @334789
  Scenario: Flex table-Quick Search-Admin-UI-To verify that after reloading page, searched results get cleared
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Applications" tab
    And I quick search "Automation Internal Program for flow" inside table "---program:-:toggleFlexTableIdForAdminPM---"
    And I refresh the page

  @334746
  Scenario: To verify that only searched results/records not displayed in exported PDF/XLS
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "Total Records" on page "1" of "govgrants" pdf file

  @334747
  Scenario: To verify that only searched results/records not displayed in exported PDF/XLS
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "Total Records" on page "1" of "govgrants" pdf file

  @334748
  Scenario: To verify that only searched results/records not displayed in exported PDF/XLS
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    When I click on "Download as PDF" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    And I download the file
    Then I cannot see "Total Records" on page "1" of "govgrants" pdf file

    #######################Test suite: UI (Suite ID: 336192)####################

  @338444
  Scenario: Refresh- SPI- UI- Verify if flex table is getting refreshed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    When I click on "Refresh" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    Then I see entire page is refreshing

  @338445
  Scenario: Refresh- PM - UI- Verify if flex table is getting refreshed
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTableIdForAdminPM---"
    When I click on "Refresh" button inside table id "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see entire page is refreshing

  @338448
  Scenario: Refresh- Admin- config- Verify if flex table is getting refreshed
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTableIdForAdminPM---"
    When I click on "Refresh" button inside table id "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see entire page is refreshing

  @338451
  Scenario: Refresh- SPI- UI- Verify Refresh option is getting displayed under menu
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    Then I see "Refresh" option is getting displayed under Menu in table "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @338452
  Scenario: Refresh- PM - UI- Verify Refresh option is getting displayed under menu
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see "Refresh" option is getting displayed under Menu in table "---program:-:toggleFlexTableIdForAdminPM---"

  @338454
  Scenario: Refresh- Admin- config- Verify Refresh option is getting displayed under menu
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see "Refresh" option is getting displayed under Menu in table "---program:-:toggleFlexTableIdForAdminPM---"

  @338457
  Scenario: Page Size- Admin- Config- Verify dropdown appears on UI to select page size manually
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Applications" tab
    When I click on "Form Control-Number of Entries" button inside table id "---program:-:toggleFlexTableIdForAdminPM---"
    Then I see "6" options are available under Show Entries dropdown inside table id "---program:-:toggleFlexTableIdForAdminPM---"

  @338459
  Scenario: Page Size- PM- UI- Verify dropdown appears on UI to select page size manually
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I click on "Form Control-Number of Entries" button inside table id "---program:-:ProgramsFlexTableToggleId---"
    Then I see "6" options are available under Show Entries dropdown inside table id "---program:-:ProgramsFlexTableToggleId---"

  @338461
  Scenario: Page Size- SPI- UI- Verify dropdown appears on UI to select page size manually
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    When I navigate to "Applications" tab
    When I click on "Form Control-Number of Entries" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    Then I see "6" options are available under Show Entries dropdown inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @338465
  Scenario: Default Page Size- Admin- Config- Verify default number of records displayed in flex table are as mentioned in ‘Default Page Size’
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Default Page Size | 10                | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Default Page Size | 10            | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Grants" tab
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338467
  Scenario: Default Page Size - PM- UI- Verify default number of records displayed in flex table are as mentioned in ‘Default Page Size’
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Default Page Size | 10                | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Default Page Size | 10            | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Grants" tab
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338468
  Scenario: Default Page Size - SPI- UI- Verify default number of records displayed in flex table are as mentioned in ‘Default Page Size’
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Default Page Size | 5             | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:grantsFlexTableIdForSPIuser---"

  @338469
  Scenario: Total Records Count- Admin- Config- Verify ‘Total Records Count’ displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | true          | AppReviewList      | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Applications" tab
    Then I see "Total Records" page size inside table "---program:-:toggleFlexTableIdForAdminPM---"

  @338471
  Scenario: Total Records Count- PM- UI- Verify ‘Total Records Count’ displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | false         | AppReviewList      | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Applications" tab
    Then I see "Total Records" page size inside table "---program:-:toggleFlexTableIdForAdminPM---"

  @338472
  Scenario: Total Records Count- SPI- UI- Verify ‘Total Records Count’ displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see "Total Records" page size inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @338473
  Scenario: Total Records Count- Admin- Config- Verify Total Records Count should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Total Records" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @338475
  Scenario: Total Records Count- PM- UI- Verify Total Records Count should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Total Records" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @338477
  Scenario: Total Records Count- SPI- UI- Verify Total Records Count should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | false         | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I do not see "Total Records" page size inside table "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @338478
  Scenario: Pagination- Admin- Config- Verify ‘Pagination’ displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | AppReviewList      | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Applications" tab
    Then I see "---program:-:toggleFlexTableIdForAdminPM---" table contains "Page 1 of"

  @338481
  Scenario: Pagination - PM- UI- Verify ‘Pagination’ displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Grants" tab
    Then I see "---program:-:GrantsFlexTableIdForAdminAndPMuser---" table contains "Page 1 of"

  @338482
  Scenario: Pagination - SPI- UI- Verify ‘Pagination’ displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see "---program:-:toggleFlexTablepopupflextableForSPIuser---" table contains "Page 1 of"

  @338483
  Scenario: Pagination - Admin- Config- Verify Pagination should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | false         | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Grants" tab
    Then I do not see "---program:-:GrantsFlexTableIdForAdminAndPMuser---" table contains "Page 1 of"

  @338485
  Scenario: Pagination - PM- UI- Verify Pagination should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | false         | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Grants" tab
    Then I do not see "---program:-:GrantsFlexTableIdForAdminAndPMuser---" table contains "Page 1 of"

  @338487
  Scenario: Pagination - SPI- UI- Verify Pagination should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination | false         | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I do not see "---program:-:toggleFlexTablepopupflextableForSPIuser---" table contains "Page 1 of"

  @338489
  Scenario: Auto Index- Admin- Config- Verify records are getting indexed under separate column (#)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | ActiveGrants       | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "#" in flex table header "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338490
  Scenario: Auto Index - PM- UI- Verify records are getting indexed under separate column (#)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | ActiveGrants       | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "#" in flex table header "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338492
  Scenario: Auto Index - SPI- UI- Verify records are getting indexed under separate column (#)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Pagination | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see "#" in flex table header "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @338500
  Scenario: Record Selection- Admin- Config- Verify ‘Record Selection Column’ displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Record Selection | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "1" to "10" Record Selection inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338502
  Scenario: Record Selection- PM- UI- Verify ‘Record Selection Column’ displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Record Selection | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "1" to "10" Record Selection inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338503
  Scenario: Record Selection- SPI- UI- Verify ‘Record Selection Column’ displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Record Selection | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see "1" to "7" Record Selection inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"

    #############################Test suite: Export Functionality (Suite ID: 338453)#################################

  @338981
  Scenario: Download as XLS/CSV - Admin - Config- Verify Download as XLS/CSV option is not visible on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I do not see "Download as CSV" option is getting displayed under Menu in table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338982
  Scenario: Download as PDF- PM - UI- Verify Download as PDF option is not visible on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I do not see "Download as PDF" option is getting displayed under Menu in table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338983
  Scenario: Download as XLS/CSV -PM- UI- Verify Download as XLS/CSV option is not visible on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I do not see "Download as CSV" option is getting displayed under Menu in table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338984
  Scenario: Download as PDF- SPI - UI- Verify Download as PDF option is not visible on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    Then I do not see "Download as PDF" option is getting displayed under Menu in table "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @338949
  Scenario: Download as PDF - Admin - Config- Verify Download as PDF option is visible on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see "Download as PDF" option is getting displayed under Menu in table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338951
  Scenario: Download as XLS/CSV - Admin - Config- Verify Download as XLS/CSV option is visible on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see "Download as CSV" option is getting displayed under Menu in table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338952
  Scenario: Download as PDF - PM - UI- Verify Download as PDF option is visible on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see "Download as PDF" option is getting displayed under Menu in table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338953
  Scenario: Download as PDF- SPI- UI- Verify Download as PDF option is visible on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    Then I see "Download as CSV" option is getting displayed under Menu in table "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @338954
  Scenario: Download as XLS/CSV - PM - UI - Verify Download as XLS/CSV option is visible on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see "Download as CSV" option is getting displayed under Menu in table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338961
  Scenario: Download as XLS/CSV - SPI - UI - Verify Download as XLS/CSV option is visible on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    Then I see "Download as CSV" option is getting displayed under Menu in table "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @338980
  Scenario: Download as PDF- Admin- Config- Verify Download as PDF option is not visible on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | false         | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I do not see "Download as PDF" option is getting displayed under Menu in table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338985
  Scenario: Download as XLS/CSV - SPI - UI- Verify Download as XLS/CSV option is not visible on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | false         | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    Then I do not see "Download as CSV" option is getting displayed under Menu in table "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @338986
  Scenario: Download as PDF- Admin- Config- Verify if we can download record details in PDF format
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I see "Grant Title" on page "1" of "govgrants" pdf file

  @338987
  Scenario: Download as XLS/CSV - Admin- Config- Verify if we can download record details in XLS/CSV format
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as CSV" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I see "Grant Title" in downloaded xls or csv file "govgrants"

  @338988
  Scenario: Download as PDF- PM- UI- Verify if we can download record details in PDF format
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I see "Grant Title" on page "1" of "govgrants" pdf file

  @338989
  Scenario: Download as XLS/CSV - PM - UI- Verify if we can download record details in XLS/CSV format
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as CSV" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I see "Grant Title" in downloaded xls or csv file "govgrants"

  @338990
  Scenario: Download as PDF- SPI- UI- Verify if we can download record details in PDF format
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    When I click on "Download as PDF" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    And I download the file
    Then I see "Application Title" on page "1" of "govgrants" pdf file

  @338991
  Scenario: Download as XLS/CSV - SPI - UI- Verify if we can download record details in XLS/CSV format
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    When I click on "Download as CSV" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    And I download the file
    Then I see "Application Title" in downloaded xls or csv file "govgrants"

  @338999
  Scenario: Download as PDF- Admin- Config- Verify all fields are visible in downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I see "EGMS ID" on page "1" of "govgrants" pdf file

  @339000
  Scenario: Download as XLS/CSV - Admin- Config- Verify all fields are visible in downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as CSV" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I see "EGMS ID" in downloaded xls or csv file "govgrants"
    Then I see "Actions" in downloaded xls or csv file "govgrants"

  @339003
  Scenario: Download as PDF- PM- UI- Verify all fields are visible in downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "pm" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I see "Status" on page "1" of "govgrants" pdf file
    Then I see "Grant Title" on page "1" of "govgrants" pdf file
    Then I see "Subrecipient" on page "1" of "govgrants" pdf file
    Then I see "Project Period" on page "1" of "govgrants" pdf file
    Then I see "EGMS" on page "1" of "govgrants" pdf file

  @339004
  Scenario: Download as XLS/CSV - PM- UI- Verify all fields are visible in downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as CSV" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I see "Project Period" in downloaded xls or csv file "govgrants"

  @339001
  Scenario: Download as PDF- Admin- Config- Verify fields which are listed under Skip for export should not be visible in downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF)    | true              | ApiGeneratedId:1 |
      | Flex Table            | Skip Fields For Export | none              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF)    | true              | ActiveGrants       | Name                      |                            |
      | Flex Table:General    | Skip Fields For Export | NumberofAwards__c | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "# of Subawards" on page "1" of "govgrants" pdf file

  @339002
  Scenario: Download as XLS/CSV - Admin- Config- Verify fields which are listed under Skip for export should not be visible in downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export    | none              | ApiGeneratedId:1 |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export    | NumberofAwards__c | ActiveGrants       | Name                      |                            |
      | Flex Table:General    | Enable Export (XLS / CSV) | true              | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as CSV" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "# of Subawards" in downloaded xls or csv file "govgrants"

  @339005
  Scenario: Download as PDF- PM- UI- Verify fields which are listed under Skip for export should not be visible in downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export | none              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export | NumberofAwards__c | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "# of Subawards" on page "1" of "govgrants" pdf file

  @339006
  Scenario: Download as XLS/CSV - PM- UI- Verify fields which are listed under Skip for export should not be visible in downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export | none              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export | NumberofAwards__c | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as CSV" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "# of Subawards" in downloaded xls or csv file "govgrants"

  @339007
  Scenario: Download as PDF- SPI- UI- Verify all fields are visible in downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    When I click on "Download as PDF" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    And I download the file
    Then I see "Application Title" on page "1" of "govgrants" pdf file
    Then I see "Funding Opportunity" on page "1" of "govgrants" pdf file
    Then I see "Application Due" on page "1" of "govgrants" pdf file
    Then I see "Submitted On" on page "1" of "govgrants" pdf file
    Then I see "Owner" on page "1" of "govgrants" pdf file

  @339009
  Scenario: Download as XLS/CSV - SPI - UI- Verify all fields are visible in downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    When I click on "Download as CSV" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    And I download the file
    Then I see "Application Title" in downloaded xls or csv file "govgrants"
    Then I see "Owner" in downloaded xls or csv file "govgrants"

  @339010
  Scenario: Download as PDF- SPI- UI- Verify fields which are listed under Skip for export should not be visible in downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export | none              | ApiGeneratedId:1 |
      | Flex Table            | Enable Export (PDF)    | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export | Status__c     | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Export (PDF)    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    When I click on "Download as PDF" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    And I download the file
    Then I cannot see "Status" on page "1" of "govgrants" pdf file

  @339011
  Scenario: Download as XLS/CSV - SPI- UI- Verify fields which are listed under Skip for export should not be visible in downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export    | none              | ApiGeneratedId:1 |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export    | Status__c     | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    When I click on "Download as CSV" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    And I download the file
    Then I cannot see "Status" in downloaded xls or csv file "govgrants"

  @339012
  Scenario: Download as PDF- Admin- Config- Verify when click on download as PDF, Quick search, Advance filter and Pagination should not visible on downloaded file
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "quick search" on page "1" of "govgrants" pdf file
    Then I cannot see "pagination" on page "1" of "govgrants" pdf file
    Then I cannot see "Filter" on page "1" of "govgrants" pdf file

  @339013
  Scenario: Download as XLS/CSV - Admin- Config- Verify when click on download as XLS/CSV, Quick search, Advance filter and Pagination should not visible on downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as CSV" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "Quick search" in downloaded xls or csv file "govgrants"
    Then I cannot see "filter" in downloaded xls or csv file "govgrants"
    Then I cannot see "pagination" in downloaded xls or csv file "govgrants"

  @339015
  Scenario: Download as PDF- PM- UI- Verify when click on download as PDF, Quick search, Advance filter and Pagination should not visible on downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "quick search" on page "1" of "govgrants" pdf file
    Then I cannot see "pagination" on page "1" of "govgrants" pdf file
    Then I cannot see "Filter" on page "1" of "govgrants" pdf file

  @339016
  Scenario: Download as XLS/CSV - PM- UI- Verify when click on download as XLS/CSV, Quick search, Advance filter and Pagination should not visible on downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as CSV" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "Quick search" in downloaded xls or csv file "govgrants"
    Then I cannot see "filter" in downloaded xls or csv file "govgrants"
    Then I cannot see "pagination" in downloaded xls or csv file "govgrants"
    Then I softly do not see advance filter "#advfActiveGrants" of table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @339017
  Scenario: Download as PDF- SPI- UI- Verify when click on download as PDF, Quick search, Advance filter and Pagination should not visible on downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export | none              | ApiGeneratedId:1 |
      | Flex Table            | Enable Export (PDF)    | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export | Status__c     | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Export (PDF)    | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    When I click on "Download as PDF" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    And I download the file
    Then I cannot see "search" on page "1" of "govgrants" pdf file
    Then I cannot see "pagination" on page "1" of "govgrants" pdf file
    Then I cannot see "Filter" on page "1" of "govgrants" pdf file

  @339018
  Scenario: Download as XLS/CSV - SPI- UI- Verify when click on download as XLS/CSV, Quick search, Advance filter and Pagination should not visible on downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Skip Fields For Export    | none              | ApiGeneratedId:1 |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Skip Fields For Export    | Status__c     | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    When I click on "Download as CSV" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    And I download the file
    Then I cannot see "Quick search" in downloaded xls or csv file "govgrants"
    Then I cannot see "filter" in downloaded xls or csv file "govgrants"
    Then I cannot see "pagination" in downloaded xls or csv file "govgrants"

  @339019
  Scenario: Download as PDF- Admin- Config- Verify when click on download as PDF, Row level and Top level actions for flex table should not be visible under downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "Actions" on page "1" of "govgrants" pdf file

  @339020
  Scenario: Download as XLS/CSV - Admin- Config- Verify when click on download as XLS/CSV, Row level and Top level actions for flex table should not be visible under downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF)       | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF)       | true          | ActiveGrants          | Name                      |                            |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecipientApplications | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as CSV" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "Actions" in downloaded xls or csv file "govgrants"

  @339021
  Scenario: Download as PDF- PM- UI- Verify when click on download as PDF, Row level and Top level actions for flex table should not be visible under downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "Actions" on page "1" of "govgrants" pdf file

  @339022
  Scenario: Download as XLS/CSV - PM- UI- Verify when click on download as XLS/CSV, Row level and Top level actions for flex table should not be visible under downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF)       | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF)       | true          | ActiveGrants          | Name                      |                            |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecipientApplications | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as CSV" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I cannot see "Actions" in downloaded xls or csv file "govgrants"

  @339023
  Scenario: Download as PDF- SPI- UI- Verify when click on download as PDF, Row level and Top level actions for flex table should not be visible under downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    When I click on "Download as PDF" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    And I download the file
    Then I cannot see "Actions" on page "1" of "govgrants" pdf file

  @339024
  Scenario: Download as XLS/CSV - SPI- UI- Verify when click on download as XLS/CSV, Row level and Top level actions for flex table should not be visible under downloaded file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF)       | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF)       | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    When I click on "Download as CSV" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    And I download the file
    Then I cannot see "Actions" in downloaded xls or csv file "govgrants"

  @339025
  Scenario: Total- Admin- Config- Verify the Total of values under the column can be displayed in PDF file when we download as PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I see "151,000.00	" on page "3" of "govgrants" pdf file

  @339026
  Scenario: Total- Admin- Config- Verify the Total of values under the column can be displayed in PDF file when we download as PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Menu" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    When I click on "Download as PDF" button inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    And I download the file
    Then I see "$249,000.00" on page "3" of "govgrants" pdf file

  @339027
  Scenario: Total - SPI- UI- Verify the Total of values under the column can be displayed in PDF file when we download as PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF)       | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Export (XLS / CSV) | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF)       | true          | RecipientApplications | Name                      |                            |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on "Menu" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    When I click on "Download as PDF" button inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"
    And I download the file
    Then I see "$249,000.00" on page "3" of "govgrants" pdf file

########################Test suite: Help Config (Suite ID: 338447)###################################

  @339448
  Scenario: Associate Help Config- Admin- Config- Verify if admin can associate help config.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | none              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | Help text for Automation | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I hovering mouse on help text "ActiveGrantstooltip" icon
    And I pause execution for "10" seconds
    Then I see "Help text for Automation" shown as help text

  @339450
  Scenario: Create Help Config- Admin- Config- Verify if admin can configure new help config.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | none              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | Help text for Automation | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I hovering mouse on help text "ActiveGrantstooltip" icon
    And I pause execution for "10" seconds
    Then I see "Help text for Automation" shown as help text

  @339451
  Scenario: Help Config- SPI- UI- Verify if we are able to find help text under help option.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | none              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | Help text for Automation | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I hovering mouse on help text "GrantsListtooltip" icon
    Then I see "Help text for Automation" shown as help text

  @339453
  Scenario: Help Config- SPI- UI- Verify if we can find help option under menu.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | none              | ApiGeneratedId:1 |
      | Flex Table            | Enable Help      | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | Help text for Automation | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Help      | true                     | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I click on "Menu" button inside table id "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see "Help" option is getting displayed under Menu in table "---program:-:grantsFlexTableIdForSPIuser---"

  @339455
  Scenario: Help Config- PM- UI- Verify if we are able to find help text under help option.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | none              | ApiGeneratedId:1 |
      | Flex Table            | Enable Help      | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | Help text for Automation | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Help      | true                     | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "toggleFlexTablePrograms"
    When I hovering mouse on help text "Help" icon
    And I pause execution for "2" seconds
    Then I see "Help" help text displayed in table "toggleFlexTablePrograms"

  @339458
  Scenario: Help Config- PM- UI- Verify if we can find help option under menu.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | none              | ApiGeneratedId:1 |
      | Flex Table            | Enable Help      | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | Help text for Automation | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Help      | true                     | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on "Menu" button inside table id "toggleFlexTablePrograms"
    When I hovering mouse on help text "Help" icon
    Then I see "Help" help text displayed in table "toggleFlexTablePrograms"

    @339456
      Scenario: Help Config- Admin- Config- Verify if we are able to find help text under help option.
      Given I have "default" configuration as below:
        | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
        | Flex Table            | Header Help Text | none              | ApiGeneratedId:1 |
        | Flex Table            | Enable Help      | true              | ApiGeneratedId:1 |
      Given I setup test configuration as below:
        | configurationCategory | fieldName        | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
        | Flex Table:General    | Header Help Text | Help text for Automation | Programs           | Name                      |                            |
        | Flex Table:General    | Enable Help      | true                     | Programs           | Name                      |                            |
      When I login to "As a Grantor" app as "Admin" user
      When I setup my app as "As a Grantor"
      And I navigate to "Planning" tab
      When I click on "Menu" button inside table id "toggleFlexTablePrograms"
      Then I see "Help" option is getting displayed under Menu in table "toggleFlexTablePrograms"


  @339459
      Scenario: Help Config- Admin- Config- Verify if we can find help option under menu.
      Given I have "default" configuration as below:
        | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
        | Flex Table            | Header Help Text | none              | ApiGeneratedId:1 |
        | Flex Table            | Enable Help      | true              | ApiGeneratedId:1 |
      Given I setup test configuration as below:
        | configurationCategory | fieldName        | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
        | Flex Table:General    | Header Help Text | Help text for Automation | Programs           | Name                      |                            |
        | Flex Table:General    | Enable Help      | true                     | Programs           | Name                      |                            |
      When I login to "As a Grantor" app as "Admin" user
      When I setup my app as "As a Grantor"
      And I navigate to "Planning" tab
      When I click on "Menu" button inside table id "toggleFlexTablePrograms"
      Then I see "Help" option is getting displayed under Menu in table "toggleFlexTablePrograms"

############################Test suite: FLex table 1 (Suite ID: 334517)#########################

  @336187
  Scenario: Flex table-Admin-Config-To verify that user is able to render flex table on phase level
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    Then I see flex table with id "toggleFlexTableAppReviewList" is displayed

  @336172
  Scenario: Flex table-PM-UI-To verify that user is able to view rendered flex table on phase level
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    Then I see flex table with id "toggleFlexTableAppReviewList" is displayed

  @336173
  Scenario:Flex table-SPI-UI-To verify that user is able to view rendered flex table on phase level
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see flex table with id "toggleFlexTablepopupflextable" is displayed

  @336174
  Scenario: Flex table-Admin-Config-To verify that user is able to render flex table on Page layout - Page block
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    Then I see flex table with id "toggleFlexTableAnnouncementContacts" is displayed

  @336175
  Scenario: Flex table-PM-UI-To verify that user is able to view rendered flex table on Page layout - Page block
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    Then I see flex table with id "toggleFlexTableAnnouncementContacts" is displayed

  @336176
  Scenario: Flex table-SPI-UI-To verify that user is able to view rendered flex table on Page layout - Page block
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I perform quick search for "Automation Direct Grant"
    When I click on "View" icon for "Automation Direct Grant" inside table
    And I navigate to "Overview" sub tab
    Then I see flex table with id "toggleFlexTableRecipientsBudgetPeriod" is displayed

  @336184
  Scenario: Flex table-Admin-Config-To verify that user is able to render flex table on Sidebar
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    Then I see flex table with id "toggleFlexTablePrograms" is displayed

  @336185
  Scenario: Flex table-PM-Config-To verify that user is able to render flex table on Sidebar
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    Then I see flex table with id "toggleFlexTablePrograms" is displayed

  @336186
  Scenario: Flex table-SPI-UI-To verify that user is able to view rendered flex table on Sidebar
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Application Desk Reviews" content inside "Applications" subheader on left panel
    Then I see flex table with id "toggleFlexTableApplicationsSiteVisitReportsGrid" is displayed

  @335216
  Scenario: Flex table-Total records count-Admin-UI-To verify that Total records get changed on creating a new record or deleting/moving records
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I save the total record available from flex table id "---program:-:ProgramsFlexTableToggleId---" as "totalRecordCount"
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "7" seconds
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    Then I do not see "{SavedValue:totalRecordCount}" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @335220
  Scenario: Flex table-Total records count-PM-UI-To verify that Total records get changed on creating a new record or deleting/moving records
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I save the total record available from flex table id "---program:-:ProgramsFlexTableToggleId---" as "totalRecordCount"
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "7" seconds
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    Then I do not see "{SavedValue:totalRecordCount}" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @335193
  Scenario: Flex table-Pagination-Admin-UI-To verify that as considering newly created record (or deleted/moved), number of pages get changed, also in pagination text i.e. "Page 1 of n" get changed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Auto Index | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "5"
    And I save the total record from flex table id "---program:-:ProgramsFlexTableToggleId---" as "totalPageCount"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "10"
    Then I do not see "{SavedValue:totalPageCount}" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @335195
  Scenario: Flex table-Pagination-PM-UI-To verify that as considering newly created record (or deleted/moved), number of pages get changed, also in pagination text i.e. "Page 1 of n" get changed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Auto Index | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "5"
    And I save the total record from flex table id "---program:-:ProgramsFlexTableToggleId---" as "totalPageCount"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "10"
    Then I do not see "{SavedValue:totalPageCount}" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @335198
  Scenario: Flex table-Pagination-SPI-UI-To verify that as considering newly created record (or deleted/moved), number of pages get changed, also in pagination text i.e. "Page 1 of n" get changed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Auto Index          | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I select value inside table "---program:-:grantsFlexTableIdForSPIuser---" is "5"
    And I save the total record from flex table id "---program:-:grantsFlexTableIdForSPIuser---" as "totalPageCount"
    And I select value inside table "---program:-:grantsFlexTableIdForSPIuser---" is "10"
    Then I do not see "{SavedValue:totalPageCount}" page size inside table "---program:-:grantsFlexTableIdForSPIuser---"

    ######################Test suite: Advanced Filter (Suite ID: 338458)#########################
  @338592
  Scenario: Advanced Filter- Admin- Config- Verify Filter option should not available on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see Advance Filter box is displayed inside table id "toggleFlexTablePrograms" in flex table

  @338590
  Scenario: Advanced Filter- Admin- Config- Verify Filter option available on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see Advance Filter box is displayed inside table id "toggleFlexTablePrograms" in flex table

  @338595
  Scenario: Advanced Filter- PM- UI- Verify Filter option should not available on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | false         | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see Advance Filter box is displayed inside table id "toggleFlexTablePrograms" in flex table

  @338594
  Scenario: Advanced Filter- PM- UI- Verify Filter option available on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see Advance Filter box is displayed inside table id "toggleFlexTablePrograms" in flex table

  @338598
  Scenario: Advanced Filter- SPI- UI- Verify Filter option should not available on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | false         | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I do not see Advance Filter box is displayed inside table id "---program:-:grantsFlexTableIdForSPIuser---" in flex table

  @338596
  Scenario: Advanced Filter- SPI- UI- Verify Filter option available on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see Advance Filter box is displayed inside table id "---program:-:grantsFlexTableIdForSPIuser---" in flex table

  @338600
  Scenario: Advanced Filter- Admin- Config -Verify all fields name displayed under column name dropdown
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    And I click on "Column Name" after click advance filter
    Then I see dropdown value "EGMS ID" under field name "Column Name" inside flex table
    Then I see dropdown value "Program Name" under field name "Column Name" inside flex table
    Then I see dropdown value "Type" under field name "Column Name" inside flex table
    Then I see dropdown value "Internal Organization" under field name "Column Name" inside flex table
    Then I see dropdown value "Status" under field name "Column Name" inside flex table
    Then I see dropdown value "Funded Amount" under field name "Column Name" inside flex table
    Then I see dropdown value "Abbreviation" under field name "Column Name" inside flex table

  @338601
  Scenario: Advanced Filter- PM- UI -Verify all fields name displayed under column name dropdown
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    And I click on "Column Name" after click advance filter
    Then I see dropdown value "EGMS ID" under field name "Column Name" inside flex table
    Then I see dropdown value "Program Name" under field name "Column Name" inside flex table
    Then I see dropdown value "Type" under field name "Column Name" inside flex table
    Then I see dropdown value "Internal Organization" under field name "Column Name" inside flex table
    Then I see dropdown value "Status" under field name "Column Name" inside flex table
    Then I see dropdown value "Funded Amount" under field name "Column Name" inside flex table
    Then I see dropdown value "Abbreviation" under field name "Column Name" inside flex table

  @338602
  Scenario: Advanced Filter- SPI- UI -Verify all fields name displayed under column name dropdown
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I click on advance filter "#advfGrantsList" of table id "---program:-:grantsFlexTableIdForSPIuser---"
    And I click on "Column Name" after click advance filter
    Then I see dropdown value "EGMS ID" under field name "Column Name" inside flex table
    Then I see dropdown value "Grant Title" under field name "Column Name" inside flex table
    Then I see dropdown value "Grantor Organization" under field name "Column Name" inside flex table
    Then I see dropdown value "Project Period" under field name "Column Name" inside flex table
    Then I see dropdown value "# of Subawards" under field name "Column Name" inside flex table
    Then I see dropdown value "Subaward Amount" under field name "Column Name" inside flex table
    Then I see dropdown value "Active Subaward" under field name "Column Name" inside flex table
    Then I see dropdown value "Status" under field name "Column Name" inside flex table
    Then I see dropdown value "Budget Redirection Threshold" under field name "Column Name" inside flex table

  @338603
  Scenario: Advanced Filter- Admin- Config - Verify Operator list change with respect to column name (Data type)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    And I click on "Column Name" after click advance filter
    And I click on "Column Name" and select "EGMS ID"
    Then I see Operator list change with field "Contains"
    And I click on "Column Name" and select "Program Name"
    Then I see Operator list change with field "Contains"
    And I click on "Column Name" and select "Abbreviation"
    Then I see Operator list change with field "Contains"
    And I click on "Column Name" and select "Type"
    Then I see Operator list change with field "Equals to"
    And I click on "Column Name" and select "Internal Organization"
    Then I see Operator list change with field "Equals to"

  @338604
  Scenario: Advanced Filter- PM- UI - Verify Operator list change with respect to column name (Data type)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    And I click on "Column Name" and select "EGMS ID"
    Then I see Operator list change with field "Contains"
    And I click on "Column Name" and select "Program Name"
    Then I see Operator list change with field "Contains"
    And I click on "Column Name" and select "Abbreviation"
    Then I see Operator list change with field "Contains"
    And I click on "Column Name" and select "Type"
    Then I see Operator list change with field "Equals to"
    And I click on "Column Name" and select "Internal Organization"
    Then I see Operator list change with field "Equals to"

  @338606
  Scenario: Advanced Filter- SPI- UI - Verify Operator list change with respect to column name (Data type)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I click on advance filter "#advfGrantsList" of table id "---program:-:grantsFlexTableIdForSPIuser---"
    And I click on "Column Name" and select "EGMS ID"
    Then I see Operator list change with field "Contains"
    And I click on "Column Name" and select "Grantor Organization"
    Then I see Operator list change with field "Equals to"
    And I click on "Column Name" and select "Subaward Amount"
    Then I see Operator list change with field "Equals to"
    And I click on "Column Name" and select "Grant Title"
    Then I see Operator list change with field "Contains"
    And I click on "Column Name" and select "Status"
    Then I see Operator list change with field "Equals to"

  @338608
  Scenario: Advanced Filter- Admin- Config -Verify when we add filter criteria Add filter (+) button getting enabled to add more filters
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | EGMS ID | Contains | test1 |
#    And I click on "fa fa-plus" after click advance filter
    Then I see "fa fa-plus" button is enabled in flex table

  @338609
  Scenario: Advanced Filter- PM- UI -Verify when we add filter criteria Add filter (+) button getting enabled to add more filters
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | EGMS ID | Contains | test1 |
    Then I see "fa fa-plus" button is enabled in flex table

  @338610
  Scenario: Advanced Filter- SPI- UI - Verify when we add filter criteria Add filter (+) button getting enabled to add more filters
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I click on advance filter "#advfGrantsList" of table id "---program:-:grantsFlexTableIdForSPIuser---"
    When I enter advance filter values in table id "advfGrantsList"
      | EGMS ID | Contains | test1 |
    Then I see "fa fa-plus" button is enabled in flex table

  @338611
  Scenario: Advanced Filter- Admin- Config - Verify filter can be removed using Remove filter clause (×) button
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | EGMS ID | Contains | test1 |
    And I click on "fa fa-plus" after click advance filter
    Then I see filter "filter in filterDisplayList" is displayed
    And I click on "Remove Filter Clause" after click advance filter
    Then I do not see filter "filter in filterDisplayList" is displayed

  @338612
  Scenario: Advanced Filter- PM- UI - Verify filter can be removed using Remove filter clause (×) button
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | EGMS ID | Contains | test1 |
    And I click on "fa fa-plus" after click advance filter
    Then I see filter "filter in filterDisplayList" is displayed
    And I click on "Remove Filter Clause" after click advance filter
    Then I do not see filter "filter in filterDisplayList" is displayed

  @338614
  Scenario: Advanced Filter- SPI- UI - Verify filter can be removed using Remove filter clause (×) button
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I click on advance filter "#advfGrantsList" of table id "---program:-:grantsFlexTableIdForSPIuser---"
    When I enter advance filter values in table id "advfGrantsList"
      | EGMS ID | Contains | test1 |
    And I click on "fa fa-plus" after click advance filter
    Then I see filter "filter in filterDisplayList" is displayed
    And I click on "Remove Filter Clause" after click advance filter
    Then I do not see filter "filter in filterDisplayList" is displayed

  @338615
  Scenario: Advanced Filter- Admin- Config - Verify all filters can be removed using Clear All (×) button
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | EGMS ID | Contains | test1 |
    And I click on "fa fa-plus" after click advance filter
    When I enter advance filter values in table id "advfPrograms"
      | EGMS ID | Contains | test2 |
    And I click on "fa fa-plus" after click advance filter
    And I click on "Clear All" after click advance filter
    Then I do not see filter "filter in filterDisplayList" is displayed

  @338616
  Scenario: Advanced Filter- PM- UI - Verify all filters can be removed using Clear All (×) button
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | EGMS ID | Contains | test1 |
    And I click on "fa fa-plus" after click advance filter
    When I enter advance filter values in table id "advfPrograms"
      | EGMS ID | Contains | test2 |
    And I click on "fa fa-plus" after click advance filter
    And I click on "Clear All" after click advance filter
    Then I do not see filter "filter in filterDisplayList" is displayed

  @338618
  Scenario: Advanced Filter- SPI- UI – Verify all filters can be removed using Clear All (×) button
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I click on advance filter "#advfGrantsList" of table id "---program:-:grantsFlexTableIdForSPIuser---"
    When I enter advance filter values in table id "advfGrantsList"
      | EGMS ID | Contains | test1 |
    And I click on "fa fa-plus" after click advance filter
    When I enter advance filter values in table id "advfGrantsList"
      | EGMS ID | Contains | test2 |
    And I click on "fa fa-plus" after click advance filter
    And I click on "Clear All" after click advance filter
    Then I do not see filter "filter in filterDisplayList" is displayed

  @338619
  Scenario: Records description- Admin- Config- Verify when we apply ‘Advance filter’ description of records displayed on UI should modify accordingly (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program Name | Contains | Automation |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"
    And I click on "Clear All" after click advance filter
    When I enter advance filter values in table id "advfPrograms"
      | EGMS ID | Contains | PG-A11-2084 |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "toggleFlexTablePrograms"

  @338620
  Scenario: Records description - PM- UI- Verify when we apply ‘Advance filter’ description of records displayed on UI should modify accordingly (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program Name | Contains | Automation |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"
    And I click on "Clear All" after click advance filter
    When I enter advance filter values in table id "advfPrograms"
      | EGMS ID | Contains | PG-REI-2091 |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "toggleFlexTablePrograms"

  @338622
  Scenario: Records description - SPI- UI- Verify when we apply ‘Advance filter’ description of records displayed on UI should modify accordingly (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I click on advance filter "#advfGrantsList" of table id "---program:-:grantsFlexTableIdForSPIuser---"
    When I enter advance filter values in table id "advfGrantsList"
      | Grant Title | Contains | Testing |
    Then I see table contains "Showing 1 to 5" inside table id "---program:-:grantsFlexTableIdForSPIuser---"
    And I click on "Clear All" after click advance filter
    When I enter advance filter values in table id "advfGrantsList"
      | EGMS ID | Contains | GT-REI1-00001 |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:grantsFlexTableIdForSPIuser---"

  @338623
  Scenario: Advance filter - Admin- Config- Verify when we get records with ‘Advance filter’ and refresh the page Advance filter should cleared and all records should be displayed on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program Name | Contains | Automation |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"
    And I refresh the page
    Then I do not see filter "filter in filterDisplayList" is displayed

  @338624
  Scenario: Advance filter - PM- UI- Verify when we get records with ‘Advance filter’ and refresh the page Advance filter should cleared and all records should be displayed on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program Name | Contains | Automation |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"
    And I refresh the page
    Then I do not see filter "filter in filterDisplayList" is displayed
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"

  @338625
  Scenario: Advance filter - SPI- UI- Verify when we get records with ‘Advance filter’ and refresh the page Advance filter should cleared and all records should be displayed on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I click on advance filter "#advfGrantsList" of table id "---program:-:grantsFlexTableIdForSPIuser---"
    When I enter advance filter values in table id "advfGrantsList"
      | EGMS ID | Contains | GT-REI1-00001 |
    And I click on "fa fa-plus" after click advance filter
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:grantsFlexTableIdForSPIuser---"
    And I refresh the page
    Then I do not see filter "filter in filterDisplayList" is displayed
    Then I see table contains "Showing 1 to 5" inside table id "---program:-:grantsFlexTableIdForSPIuser---"

  @338626
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the date field with 'Greater than ' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program date | Greater than | 25/08/2023 |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"
    And I refresh the page
    Then I see filter "filter in filterDisplayList" is displayed
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"

  @338627
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the date field with 'Less than ' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program date | Less than | 25/08/2023 |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"
    And I refresh the page
    Then I see filter "filter in filterDisplayList" is displayed
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"

  @338628
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the date field with 'Greater than or equal to ' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program date | Greater than or equal to | 25/08/2023 |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"
    And I refresh the page
    Then I see filter "filter in filterDisplayList" is displayed
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"

  @338630
  Scenario: Flex Table :Admin:-To verify,advanced filter should work for the date field with 'Less than or equal to' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program date | Less than | 25/08/2023 |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"
    And I refresh the page
    Then I see filter "filter in filterDisplayList" is displayed
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"

  @338631
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the text field with 'Contains ' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program Name | Contains | Automation |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"
    And I click on "Clear All" after click advance filter
    When I enter advance filter values in table id "advfPrograms"
      | EGMS ID | Contains | PG-REI-2091 |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "toggleFlexTablePrograms"

  @338633
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the text field with 'Does not contains ' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | EGMS ID | Does not contains | Hi Automation |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"

  @338634
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the text field with 'Start with ' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program Name | Starts with | Automation |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"

  @338635
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the text field with 'End with  ' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program Name | Ends with | Testing |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"

  @338636
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the Picklist  field with 'Equal to  ' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Internal Organization | Equals to | SYSTEM |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"

  @338638
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the text field with 'Not equal to ' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Internal Organization | Equals to | SYSTEM |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"

  @338640
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the Currency field with 'Equal to' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Internal Organization | Equals to | SYSTEM |
    And I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"

  @338641
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the Currency field with 'Greater than ' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    When I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Funded Amount | Greater than | 1000 |
    When I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to 5" inside table id "toggleFlexTablePrograms"

  @338643
  Scenario:Flex Table :Admin:-To verify, advanced filter should work for the Currency field with 'Less than ' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    When I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Funded Amount | Less than | 100000 |
    When I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to" inside table id "toggleFlexTablePrograms"

  @338644
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the Currency field with 'Greater than or equal to ' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    When I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Funded Amount | Greater than or Equal to | 1000 |
    When I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to" inside table id "toggleFlexTablePrograms"

  @338645
  Scenario: Flex Table :Admin:-To verify,advanced filter should work for the Currency field with 'Less than or equal to operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    When I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Funded Amount | Less than or Equal to | 10000 |
    When I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to" inside table id "toggleFlexTablePrograms"

  @338648
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the Number  field with 'Equal to' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    When I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Funded Amount | Equals to | 5000 |
    When I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to" inside table id "toggleFlexTablePrograms"

  @338649
  Scenario: Flex Table :Admin:-To verify,advanced filter should work for the Number field with 'Greater than' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    When I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Funded Amount | Greater than | 5000 |
    When I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to" inside table id "toggleFlexTablePrograms"

  @338650
  Scenario: Admin:-To verify,advanced filter should work for the Number field with 'Less than' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    When I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Funded Amount | Less than | 5000 |
    When I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to" inside table id "toggleFlexTablePrograms"

  @338652
  Scenario: Flex Table :Admin:-To verify,advanced filter should work for the Number field with 'Greater than or equal to' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    When I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Funded Amount | Greater than | 5000 |
    When I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to" inside table id "toggleFlexTablePrograms"

  @338653
  Scenario: Flex Table :Admin:-To verify,  advanced filter should work for the Number field with 'Less than or equal to  ' operator
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Filter | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Filter | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    When I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Funded Amount | Less than or Equal to | 100000 |
    When I click on "fa fa-plus" after click advance filter
    Then I see table contains "Showing 1 to" inside table id "toggleFlexTablePrograms"

    #########################Test suite: UI (Suite ID: 336192)###############################

  @338494
  Scenario:Auto Index - Admin- Config- Verify index column (#) should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | false         | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I do not see flex table header equals "#" inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338495
  Scenario: Auto Index - PM- UI- Verify index column (#) should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | false         | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I do not see flex table header equals "#" inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338498
  Scenario: Auto Index - SPI- UI- Verify index column (#) should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | false         | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I do not see flex table header equals "#" inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @338505
  Scenario: Record Selection- Admin- Config- Verify Record Selection Column should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Record Selection | false         | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I do not see flex table header equals "Select All Check Box" inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338507
  Scenario: Record Selection- PM- UI- Verify Record Selection Column should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Record Selection | false         | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I do not see flex table header equals "Select All Check Box" inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338508
  Scenario: Record Selection- SPI- UI- Verify Record Selection Column should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Record Selection | false         | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I do not see flex table header equals "Select All Check Box" inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @338509
  Scenario: Record Selection- Admin- Config- Verify correct Record Selection Column Header displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Record Selection | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see flex table header equals "Select All Check Box" inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338511
  Scenario: Record Selection- PM- UI- Verify correct Record Selection Column Header displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Record Selection | true          | ActiveGrants       | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see flex table header equals "Select All Check Box" inside table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @338513
  Scenario: Record Selection- SPI- UI- Verify correct Record Selection Column Header displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Record Selection | true          | RecipientApplications | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see flex table header equals "Select All Check Box" inside table id "---program:-:toggleFlexTablepopupflextableForSPIuser---"

  @338514
  Scenario: Record Selection- Admin- Config- Verify Record Selection Column rendered on desired position on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @338516
  Scenario: Record Selection- PM- UI- Verify Record Selection Column rendered on desired position on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 5             | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @338517
  Scenario: Record Selection- SPI- UI- Verify Record Selection Column rendered on desired position on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:3 |
#      | Flex Table            | Record Selection Column Position | Left              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 5             | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | GrantsList         | Name                      |                            |
#      | Flex Table:General    | Record Selection Column Position | Left          | GrantsList         | Name                      |            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:grantsFlexTableIdForSPIuser---"

  @338518
  Scenario: Records description- Admin- Config- Verify correct description of records displayed on UI (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "5"
    Then I see table contains "Showing 1 to 5 of" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @338520
  Scenario: Records description - PM- UI- Verify correct description of records displayed on UI (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "5"
    Then I see table contains "Showing 1 to 5 of" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @338522
  Scenario: Records description - SPI- UI- Verify correct description of records displayed on UI (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index          | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size          | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection    | false             | ApiGeneratedId:3 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index          | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5             | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Record Selection    | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I select value inside table "---program:-:grantsFlexTableIdForSPIuser---" is "5"
    Then I see table contains "Showing 1 to 5 of" inside table id "---program:-:grantsFlexTableIdForSPIuser---"

  @338523
  Scenario: Page description- Admin- Config- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "---program:-:ProgramsFlexTableToggleId---"

  @338525
  Scenario: Page description - PM- UI- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "---program:-:ProgramsFlexTableToggleId---"

  @338526
  Scenario: Page description - SPI- UI- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index          | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size          | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection    | false             | ApiGeneratedId:3 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:4 |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index          | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5             | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Record Selection    | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I select value inside table "---program:-:grantsFlexTableIdForSPIuser---" is "5"
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "---program:-:grantsFlexTableIdForSPIuser---"

  @338528
  Scenario: Page description- Admin- Config- Verify when we get any quick search results Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Test"
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "---program:-:ProgramsFlexTableToggleId---"

  @338529
  Scenario: Page description - PM- UI- Verify when we get any quick search results Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Program For Test"
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "---program:-:ProgramsFlexTableToggleId---"

  @338531
  Scenario: Page description - SPI- UI- Verify when we get any quick search results Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index          | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size          | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection    | false             | ApiGeneratedId:3 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:4 |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index          | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5             | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Record Selection    | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I select value inside table "---program:-:grantsFlexTableIdForSPIuser---" is "5"
    When I perform quick search for "Automation"
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "---program:-:grantsFlexTableIdForSPIuser---"

  @338533
  Scenario: Page description- Admin- Config- Verify when we apply ‘Advance filter’ Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program Name | Contains | Automation |
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "---program:-:ProgramsFlexTableToggleId---"

  @338534
  Scenario: Page description - PM- UI- Verify when we apply ‘Advance filter’ Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I click on advance filter "#advfPrograms" of table id "toggleFlexTablePrograms"
    When I enter advance filter values in table id "advfPrograms"
      | Program Name | Contains | Automation |
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "---program:-:ProgramsFlexTableToggleId---"

  @338536
  Scenario: Page description - SPI- UI- Verify when we apply ‘Advance filter’ Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter     | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Filter     | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I click on advance filter "#advfGrantsList" of table id "toggleFlexTableGrantsList"
    When I enter advance filter values in table id "advfGrantsList"
      | Grantor Organization | Equals to | Test Automation Organization |
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "toggleFlexTableGrantsList"

  @338537
  Scenario: Page description- Admin- Config- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows) and we can toggle page using arrows
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "toggleFlexTablePrograms"
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "Next"
    Then I see page description is displayed "Page 2 of" with "Next" arrow inside table id "toggleFlexTablePrograms"

  @338539
  Scenario: Page description - PM- UI- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows) and we can toggle page using arrows
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "toggleFlexTablePrograms"
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "Next"
    Then I see page description is displayed "Page 2 of" with "Next" arrow inside table id "toggleFlexTablePrograms"

  @338540
  Scenario: Page description - SPI- UI- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows) and we can toggle page using arrows
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter     | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Filter     | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "toggleFlexTableGrantsList"
    And I click on page navigation arrow "toggleFlexTableGrantsList" for table id "Next"
    Then I see page description is displayed "Page 2 of" with "Next" arrow inside table id "toggleFlexTableGrantsList"

  @338542
  Scenario: Page description- Admin- Config- Verify we can toggle page using arrows Next arrow should get disabled on last page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Next" pagination arrow inside table id "toggleFlexTablePrograms"
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "Last"
    Then I do not see "Next" pagination arrow inside table id "toggleFlexTablePrograms"

  @338543
  Scenario: Page description - PM- UI- Verify we can toggle page using arrows Next arrow should get disabled on last page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Next" pagination arrow inside table id "toggleFlexTablePrograms"
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "Last"
    Then I do not see "Next" pagination arrow inside table id "toggleFlexTablePrograms"

  @338544
  Scenario: Page description - SPI- UI- Verify we can toggle page using arrows Next arrow should get disabled on last page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter     | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Filter     | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "Next" pagination arrow inside table id "toggleFlexTableGrantsList"
    And I click on page navigation arrow "toggleFlexTableGrantsList" for table id "Last"
    Then I do not see "Next" pagination arrow inside table id "toggleFlexTableGrantsList"

  @338545
  Scenario: Page description- Admin- Config- Verify we can toggle page using arrows Previous arrow should get disabled on First page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "Next"
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "First"
    Then I do not see "Previous" pagination arrow inside table id "toggleFlexTablePrograms"

  @338547
  Scenario: Page description - PM- UI- Verify we can toggle page using arrows Previous arrow should get disabled on First page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "Next"
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "First"
    Then I do not see "Previous" pagination arrow inside table id "toggleFlexTablePrograms"

  @338548
  Scenario: Page description - SPI- UI- Verify we can toggle page using arrows Previous arrow should get disabled on First page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter     | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Filter     | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click on page navigation arrow "toggleFlexTableGrantsList" for table id "Next"
    And I click on page navigation arrow "toggleFlexTableGrantsList" for table id "First"
    Then I do not see "Previous" pagination arrow inside table id "toggleFlexTableGrantsList"

  @338550
  Scenario: Page description- Admin- Config- Verify we can directly jump on last page using this arrow
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "Last"
    Then I do not see "Last" pagination arrow inside table id "toggleFlexTablePrograms"

  @338552
  Scenario: Page description - PM- UI- Verify we can directly jump on last page using this arrow
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "Last"
    Then I do not see "Last" pagination arrow inside table id "toggleFlexTablePrograms"

  @338553
  Scenario: Page description - SPI- UI- Verify we can directly jump on last page using this arrow
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter     | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Filter     | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click on page navigation arrow "toggleFlexTableGrantsList" for table id "Last"
    Then I do not see "Last" pagination arrow inside table id "toggleFlexTableGrantsList"

  @338555
  Scenario: Page description- Admin- Config- Verify we can directly jump on First page using this arrow
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "Last"
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "First"
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "toggleFlexTablePrograms"

  @338558
  Scenario: Page description - PM- UI- Verify we can directly jump on First page using this arrow
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "Last"
    And I click on page navigation arrow "toggleFlexTablePrograms" for table id "First"
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "toggleFlexTablePrograms"

  @338559
  Scenario: Page description - SPI- UI- Verify we can directly jump on First page using this arrow
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter     | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Filter     | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click on page navigation arrow "toggleFlexTableGrantsList" for table id "Last"
    And I click on page navigation arrow "toggleFlexTableGrantsList" for table id "First"
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "toggleFlexTableGrantsList"

  @338560
  Scenario: Total- Admin- Config- Verify the Total of values under the column can be displayed in the Table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Total Records:" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @338561
  Scenario: Total - PM- UI- Verify the Total of values under the column can be displayed in the Table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination          | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Total Records:" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @338562
  Scenario: Total - SPI- UI- Verify the Total of values under the column can be displayed in the Table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter     | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Filter     | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click on page navigation arrow "toggleFlexTableGrantsList" for table id "Last"

  @338566
  Scenario: Flex table-Total Records count-Admin-UI_To verify that on adding/creating a new record, Total Records count get changed i.e. increased
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I save the total record available from flex table id "---program:-:ProgramsFlexTableToggleId---" as "totalRecordCount"
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "7" seconds
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    When I click toggle button to select "Internal Programs - Draft"
    Then I do not see "{SavedValue:totalRecordCount}" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @338567
  Scenario: Flex table-Total Records count-PM-UI_To verify that on adding/creating a new record, Total Records count get changed i.e. increased
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I save the total record available from flex table id "---program:-:ProgramsFlexTableToggleId---" as "totalRecordCount"
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "7" seconds
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    When I click toggle button to select "Internal Programs - Draft"
    Then I do not see "{SavedValue:totalRecordCount}" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @338570
  Scenario: Flex table-Total Records count-Admin-UI_To verify that on deleting record, Total Records count get changed i.e. decreased
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I save the total record available from flex table id "---program:-:ProgramsFlexTableToggleId---" as "totalRecordCount"
    And I select value inside table "---program:-:programTableDivId---" is "50"
    When I click on "Delete" icon for "Automation Program For Test" inside table
    Then I do not see "{SavedValue:totalRecordCount}" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @338571
  Scenario: Flex table-Total Records count-PM-UI_To verify that on deleting record, Total Records count get changed i.e. decreased
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I save the total record available from flex table id "---program:-:ProgramsFlexTableToggleId---" as "totalRecordCount"
    And I select value inside table "---program:-:programTableDivId---" is "50"
    When I click on "Delete" icon for "Automation Program For Test" inside table
    Then I do not see "{SavedValue:totalRecordCount}" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @338573
  Scenario: Flex table-Auto Index Behavior-Admin-Config_To verify that on selecting auto index behavior - All Rows, all available rows on table get indexed irresepective of computed rows
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | true              | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination       | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 10            | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" to "10" Record Selection inside table id "---program:-:ProgramsFlexTableToggleId---"
    Then I see "1" to "10" indexing inside table id "---program:-:ProgramsFlexTableToggleId---"

  @338574
  Scenario: Flex table-Auto Index Behavior-PM-UI_To verify that on selecting auto index behavior - All Rows, all available rows on table get indexed irresepective of computed rows
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | true              | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination       | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 10            | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" to "10" Record Selection inside table id "---program:-:ProgramsFlexTableToggleId---"
    Then I see "1" to "10" indexing inside table id "---program:-:ProgramsFlexTableToggleId---"

  @338575
  Scenario: Flex table-Auto Index Behavior-SPI-UI_To verify that on selecting auto index behavior - All Rows, all available rows on table get indexed irresepective of computed rows
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | true              | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination       | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Record Selection | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 5             | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Pagination       | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "1" to "5" Record Selection inside table id "toggleFlexTableGrantsList"
    Then I see "1" to "5" indexing inside table id "toggleFlexTableGrantsList"

  @338581
  Scenario: Flex table-Auto Index Behavior-Admin-Config_To verify that on selecting auto index behavior - None, all available rows on table get indexed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | true              | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination       | true              | ApiGeneratedId:3 |
      | Flex Table            | Enable Record Selection | true              | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 10            | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" to "5" indexing inside table id "toggleFlexTableGrantsList"

  @338583
  Scenario: Flex table-Auto Index Behavior-PM-UI_To verify that on selecting auto index behavior - None, all available rows on table get indexed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index       | true              | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size       | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination       | true              | ApiGeneratedId:3 |
      | Flex Table            | Enable Record Selection | true              | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Default Page Size       | 10            | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Pagination       | true          | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true          | Programs           | Name                      |                            |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" to "5" indexing inside table id "toggleFlexTableGrantsList"

  @338584
  Scenario: Flex table-Auto Index Behavior-SPI-UI_To verify that on selecting auto index behavior - None, all available rows on table get indexed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | true              | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | GrantsList         | Name                      |                            |
      | Flex Table:General    | Default Page Size | 5             | GrantsList         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "1" to "5" indexing inside table id "toggleFlexTableGrantsList"

  @338462
  Scenario: Page Size- Admin- Config- Verify dropdown to select page size manually should not appear on UI
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    Then I see table id "toggleFlexTableAssociateProgramContacts" flex table render in modal view

  @336178
  Scenario: LWC-Flex table-Admin-Config-To verify that user is able to render flex table on Modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    Then I see table id "toggleFlexTableAssociateProgramContacts" flex table render in modal view

  @336180
  Scenario: Flex table-PM-UI-To verify that user is able to view rendered flex table on Modal
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    Then I see table id "toggleFlexTableAssociateProgramContacts" flex table render in modal view