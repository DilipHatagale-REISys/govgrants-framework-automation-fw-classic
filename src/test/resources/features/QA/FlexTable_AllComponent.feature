@FlexTable_AllComponent-ComponentClassic @regression-QA @FlexTable_AllComponent
Business Need: FlexTable_AllComponent Scenarios flextable UI,flextable Interface,Quick Search
  Test all SendEmail component based scenarios
  As a configuration manager I make different configurational changes in FlexTable_AllComponent component and will validate them.

  ############Test suite: Flex Table UI (Suite ID: 334515)############

  @334978  @dilip
  Scenario: Flex table-Page size-Admin-Config-To verify that on enabling page size, "Show entries" block displayed at bottom (left side) of flex table
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Entries" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @334979 @dilip
  Scenario: Flex table-Page size-PM-UI-To verify that on enabling page size, "Show entries" block displayed at bottom (left side) of flex table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Entries" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @334980 @dilip
  Scenario: Flex table-Page size-SPI-UI-To verify that on enabling page size, "Show entries" block displayed at bottom (left side) of flex table
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see "Entries" page size inside table "---program:-:toggleFlexTablepopupflextableTableId---"

  @334981 @dilip
  Scenario: Flex table-Page size-Admin-Config-To verify that on disabling page size, "Show entries" block not displayed at bottom (left side) of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Page Size | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Page Size | false         | Programs           | Name                      |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Entries" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @334984 @dilip
  Scenario: Flex table-Page size-PM-UI-To verify that on disabling page size, "Show entries" block not displayed at bottom (left side) of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Page Size | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Page Size | false         | Programs           | Name                      |                            |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Entries" page size inside table "---program:-:ProgramsFlexTableToggleId---"


  @334986 @dilip
  Scenario: Flex table-Total Records count-Admin-Config-To verify that on enabling Total records count, value of total record count displayed at bottom of flex table
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Total Records:" text-allignment is "center" in table id "---program:-:ProgramsFlexTableToggleId---"

  @334988 @dilip
  Scenario: Flex table-Total Records count-PM-UI-To verify that on enabling Total records count, value of total record count displayed at bottom of flex table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Total Records:" text-allignment is "center" in table id "---program:-:ProgramsFlexTableToggleId---"

  @334989 @dilip
  Scenario: Flex table-Total Records count-SPI-UI-To verify that on enabling Total records count, value of total record count displayed at bottom of flex table
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see "Total Records:" text-allignment is "center" in table id "---program:-:toggleFlexTablepopupflextableTableId---"

  @334990 @dilip
  Scenario: Flex table-Total Records count-Admin-Config-To verify that on disabling Total records count, value of total record count not displayed at bottom of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | false         | Programs           | Name                      |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Total Records" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @334993 @dilip
  Scenario: Flex table-Total Records count-PM-UI-To verify that on disabling Total records count, value of total record count not displayed at bottom of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | false         | Programs           | Name                      |                            |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Total Records" page size inside table "---program:-:ProgramsFlexTableToggleId---"

  @334995 @dilip
  Scenario:Flex table-Pagination-Admin-Config-To verify that on enabling Pagination, respective pagination block/component displayed at right side(on top and bottom) of flex table
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Page 1 of" text-allignment is "right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @334997 @dilip
  Scenario: Flex table-Pagination-PM-UI-To verify that on enabling Pagination, respective pagination block/component displayed at right side(on top and bottom) of flex table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Page 1 of" text-allignment is "right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @334999 @dilip
  Scenario: Flex table-Pagination-SPI-UI-To verify that on enabling Pagination, respective pagination block/component displayed at right side(on top and bottom) of flex table
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see "Page 1 of" text-allignment is "right" in table id "---program:-:toggleFlexTablepopupflextableTableId---"

  @335000 @dilip
  Scenario:Flex table-Pagination-Admin-Config-To verify that on disabling Pagination, respective pagination block/component not displayed at right side(on top and bottom) of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | false         | Programs           | Name                      |                            |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "---program:-:toggleFlexTableActiveFundingOpportunitiesAll---" table contains "Page 1 of"

  @335001 @dilip
  Scenario: Flex table-Pagination-PM-UI-To verify that on disabling Pagination, respective pagination block/component not displayed at right side(on top and bottom) of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Pagination | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Pagination | false         | Programs           | Name                      |                            |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "---program:-:toggleFlexTableActiveFundingOpportunitiesAll---" table contains "Page 1 of"


  @335004 @dilip
  Scenario: Flex table-Default page size-Admin-Config-To verify that number provided in "Default page size" field, that many records displayed on UI on a page.
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335006 @dilip
  Scenario: Flex table-Default page size-PM-UI-To verify that number provided in "Default page size" field, that many records displayed on UI on a page.
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335007 @dilip
  Scenario: Flex table-Default page size-SPI-UI-To verify that number provided in "Default page size" field, that many records displayed on UI on a page.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see table contains "Showing 1 to 5 of" inside table id "---program:-:toggleFlexTablepopupflextableTableId---"

  @335008 @dilip
  Scenario: Flex table-Default page size-Admin-Config-To verify that if user not provided any number in "Default page size" field, then by default 20 records displayed on a page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Default Page Size | 20            | Programs           | Name                      |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335010 @dilip
  Scenario: Flex table-Default page size-PM-UI-To verify that if user not provided any number in "Default page size" field, then by default 20 records displayed on a page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Default Page Size | 20            | Programs           | Name                      |                            |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335017 @dilip
  Scenario: Flex table-Auto Index-Admin-Config-To verify that on enabling auto index, Index column get displayed to the left of flex table, and all records get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "#" in flex table header "---program:-:ProgramsFlexTableToggleId---"

  @335019 @dilip
  Scenario: Flex table-Auto Index-PM-UI-To verify that on enabling auto index, Index column get displayed to the left of flex table, and all records get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "#" in flex table header "---program:-:ProgramsFlexTableToggleId---"

  @335022 @dilip
  Scenario: Flex table-Auto Index-Admin-Config-To verify that on disabling auto index, Index column not get displayed to the left of flex table, and all records not get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | false         | Programs           | Name                      |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "#" in flex table header "---program:-:ProgramsFlexTableToggleId---"

  @335024 @dilip
  Scenario: Flex table-Auto Index-PM-UI-To verify that on disabling auto index, Index column not get displayed to the left of flex table, and all records not get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | false         | Programs           | Name                      |                            |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "#" in flex table header "---program:-:ProgramsFlexTableToggleId---"

  @335028 @dilip
  Scenario: Flex table-Auto Index Behavior-Admin-Config-To verify that on selecting auto index behavior-All Rows, all the rows in flex table get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "10" with page size dropdown at "---program:-:ProgramsFlexTableToggleId---"

  @335030 @dilip
  Scenario: Flex table-Auto Index Behavior-PM-UI-To verify that on selecting auto index behavior-All Rows, all the rows in flex table get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs           | Name                      |                            |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "10" with page size dropdown at "---program:-:ProgramsFlexTableToggleId---"

  @335040
  Scenario: Flex table-Auto Index Behavior-Admin-Config-To verify that on selecting auto index behavior-None, all the rows in flex table get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs              | Name                      |                            |
      | Flex Table:General    | Default Page Size | 10            | RecipientApplications | Name                      |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" to "10" indexing inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335043 @dilip
  Scenario: Flex table-Auto Index Behavior-PM-UI-To verify that on selecting auto index behavior-None, all the rows in flex table get indexes
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs              | Name                      |                            |
      | Flex Table:General    | Default Page Size | 10            | RecipientApplications | Name                      |                            |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" to "10" indexing inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335049 @dilip
  Scenario: Flex table-Enable Record Selection-Admin-Config-To verify that on enabling record selection, a Record selection column displayed on flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs              | Name                      |                            |
      | Flex Table:General    | Default Page Size | 10            | RecipientApplications | Name                      |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" to "10" Record Selection inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335052 @dilip
  Scenario: Flex table-Enable Record Selection-PM-UI-To verify that on enabling record selection, a Record selection column displayed on flex table.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Auto Index | false             | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size | 5                 | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Auto Index | true          | Programs              | Name                      |                            |
      | Flex Table:General    | Default Page Size | 10            | RecipientApplications | Name                      |                            |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "1" to "10" Record Selection inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335055 @dilip
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
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "1" to "10" Record Selection inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335059 @dilip
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
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "1" to "10" Record Selection inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335063 @dilip
  Scenario: Flex table-Record Selection Column Position-Admin-Config-To verify that on selecting Record selection column position - Left, Record selection column displayed to the left side of flex table
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @335066 @dilip
  Scenario: Flex table-Record Selection Column Position-PM-UI-To verify that on selecting Record selection column position - Left, Record selection column displayed to the left side of flex table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @335070 @dilip
  Scenario: Flex table-Record Selection Column Position-Admin-Config-To verify that on selecting Record selection column position - Right, Record selection column displayed to the right side of flex table
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "== 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @335072 @dilip
  Scenario: Flex table-Record Selection Column Position-PM-UI-To verify that on selecting Record selection column position - Right, Record selection column displayed to the right side of flex table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "== 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @335076 @dilip
  Scenario: Flex table-Record Selection Column Position-Admin-Config-To verify that on selecting Record selection column position - None, Record selection column displayed to the left side of flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                        | fieldOrignalValue | filterId         |
      | Flex Table            | Record Selection Column Header   | Demo text         | ApiGeneratedId:0 |
      | Flex Table            | Record Selection Column Position |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Record Selection Column Header   | Demo text     | Programs           | Name                      |                            |
      | Flex Table:General    | Record Selection Column Position | None          | Programs           | Name                      |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @335080 @dilip
  Scenario: Flex table-Record Selection Column Position-PM-UI-To verify that on selecting Record selection column position - None, Record selection column displayed to the left side of flex table
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:ProgramsFlexTableToggleId---"

  @335088 @dilip
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
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Menu" action is displayed at the "---program:-:ProgramsFlexTableToggleId---" modal

  @335089 @dilip
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
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see "Menu" action is displayed at the "---program:-:ProgramsFlexTableToggleId---" modal

  @335116 @dilip
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
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Menu" action is displayed at the "---program:-:ProgramsFlexTableToggleId---" modal

  @335119 @dilip
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
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Menu" action is displayed at the "---program:-:ProgramsFlexTableToggleId---" modal

  @335124 @dilip
  Scenario: Flex table-Page size-Admin-UI-To verify that user is able to change page size by clicking on Show Entries block
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I select value inside table "---program:-:toggleFlexTableIdForAdminPM---" is "20"
    Then I see table contains "Showing 1 to 20" inside table id "---program:-:toggleFlexTableIdForAdminPM---"

  @335126 @dilip
  Scenario: Flex table-Page size-PM-UI-To verify that user is able to change page size by clicking on Show Entries block
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "20"
    Then I see table contains "Showing 1 to 20" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335128 @dilip
  Scenario: Flex table-Page size-SPI-UI-To verify that user is able to change page size by clicking on Show Entries block
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I select value inside table "---program:-:grantsFlexTableIdForSPIuser---" is "10"
    Then I see table contains "Showing 1 to 10" inside table id "---program:-:grantsFlexTableIdForSPIuser---"

  @335129 @dilip
  Scenario: Flex table-Page size-Admin-UI-To verify that different page sizes are available in Show Entries block
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "20"
    Then I see table contains "Showing 1 to 20" inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "5"
    Then I see table contains "Showing 1 to 5" inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "10"
    Then I see table contains "Showing 1 to 10" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335131 @dilip
  Scenario: Flex table-Page size-PM-UI-To verify that different page sizes  are available in Show Entries block
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "10"
    Then I see table contains "Showing 1 to 10" inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "20"
    Then I see table contains "Showing 1 to 20" inside table id "---program:-:ProgramsFlexTableToggleId---"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "50"
    Then I see table contains "Showing 1 to 50" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335134 @dilip
  Scenario: Flex table-Page size-SPI-UI-To verify that different page sizes are available in Show Entries block
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "5"
    Then I see table contains "Showing 1 to" inside table id "---program:-:toggleFlexTablepopupflextableTableId---"
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "10"
    Then I see table contains "Showing 1 to" inside table id "---program:-:toggleFlexTablepopupflextableTableId---"

  @335137 @dilip
  Scenario: Flex table-Page size-Admin-UI-To verify that on selecting All page size, all available records displayed on a page
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "All"
    Then I see table contains "Showing 1 to 99 of 99 records" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335139 @dilip
  Scenario: Flex table-Page size-PM-UI-To verify that on selecting All page size, all available records displayed on a page
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "All"
    Then I see table contains "Showing 1 to 81 of 81 records" inside table id "---program:-:ProgramsFlexTableToggleId---"

  @335148 @dilip
  Scenario: Flex table-Page size-SPI-UI-To verify that on selecting All page size, all available records displayed on a page
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I select value inside table "---program:-:toggleFlexTablepopupflextableTableId---" is "All"
    Then I see table contains "Showing 1 to 7 of 7 records" inside table id "---program:-:toggleFlexTablepopupflextableTableId---"

  @335150 @dilip
  Scenario: Flex table-Page size-Admin-UI-To verify that on changing page size, number of Pages(or Pagination block) also get changed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:ProgramsFlexTableToggleId---" for table id "Next"
    Then I see "---program:-:ProgramsFlexTableToggleId---" table contains "Page 2 of"

  @335151 @dilip
  Scenario: Flex table-Page size-PM-UI-To verify that on changing page size, number of Pages(or Pagination block) also get changed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:ProgramsFlexTableToggleId---" for table id "Next"
    Then I see "---program:-:ProgramsFlexTableToggleId---" table contains "Page 2 of"

  @335154 @dilip
  Scenario: Flex table-Page size-SPI-UI-To verify that on changing page size, number of Pages(or Pagination block) also get changed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Next"
    Then I see "---program:-:toggleFlexTablepopupflextableTableId---" table contains "Page 2 of"

  @335158 @dilip
  Scenario: Flex table-Pagination-Admin-UI-To verify that on clicking on last (arrow) in pagination block, it get navigated to last page of flex table
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:ProgramsFlexTableToggleId---" for table id "Last"
    Then I see user on "Last" pagination page "---program:-:ProgramsFlexTableToggleId---" table

  @335159 @dilip
  Scenario: Flex table-Pagination-PM-UI-To verify that on clicking on last (arrow) in pagination block, it get navigated to last page of flex table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:ProgramsFlexTableToggleId---" for table id "Last"
    Then I see user on "Last" pagination page "---program:-:ProgramsFlexTableToggleId---" table

  @335163 @dilip
  Scenario: Flex table-Pagination-SPI-UI-To verify that on clicking on last (arrow) in pagination block, it get navigated to last page of flex table
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "Last"
    Then I see user on "Last" pagination page "---program:-:toggleFlexTablepopupflextableTableId---" table

  @335174 @dilip
  Scenario: Flex table-Pagination-Admin-UI-To verify that on clicking on First (arrow) in pagination block, it get navigated to first page of flex table
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:ProgramsFlexTableToggleId---" for table id "First"
    Then I see user on "First" pagination page "---program:-:ProgramsFlexTableToggleId---" table

  @335177 @dilip
  Scenario: Flex table-Pagination-PM-UI-To verify that on clicking on First (arrow) in pagination block, it get navigated to first page of flex table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on page navigation arrow "---program:-:ProgramsFlexTableToggleId---" for table id "First"
    Then I see user on "First" pagination page "---program:-:ProgramsFlexTableToggleId---" table

  @335180 @dilip
  Scenario: Flex table-Pagination-SPI-UI-To verify that on clicking on First (arrow) in pagination block, it get navigated to first page of flex table
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click on page navigation arrow "---program:-:toggleFlexTablepopupflextableTableId---" for table id "First"
    Then I see user on "First" pagination page "---program:-:toggleFlexTablepopupflextableTableId---" table

  @335200 @dilip
  Scenario: LWC-Flex table-Page Size-Admin-UI-To verify that on changing page size (by clicking on Show entries block), text of "Showing 1 to n of x records" get changed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "---program:-:ProgramsFlexTableToggleId---" table contains "Page 1 of 20"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "10"
    Then I see "---program:-:ProgramsFlexTableToggleId---" table contains "Page 1 of 10"

  @335205 @dilip
  Scenario: Flex table-Page Size-PM-UI-To verify that on changing page size (by clicking on Show entries block), text of "Showing 1 to n of x records" get changed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "---program:-:ProgramsFlexTableToggleId---" table contains "Page 1 of 17"
    And I select value inside table "---program:-:ProgramsFlexTableToggleId---" is "10"
    Then I see "---program:-:ProgramsFlexTableToggleId---" table contains "Page 1 of 9"

  @335212 @dilip
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
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334652
  Scenario: Flex table-Quick Search-PM-UI-To verify that on enabling Quick search, it displayed on top of the flex table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334654
  Scenario: Flex table-Quick Search-SPI-UI-To verify that on enabling Quick search, it displayed on top of the flex table
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see "quick-search" is displayed on table id "---program:-:grantsFlexTableIdForSPIuser---"

  @334659
  Scenario: Flex table-Quick Search-Admin-UI-To verify that user is able to search for text field (i.e. Text data type)
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I quick search "Vrush Application" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "Vrush Application" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334660
  Scenario: Flex table-Quick Search-PM-UI-To verify that user is able to search for text field (i.e. Text data type)
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I quick search "Vrush Application" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "Vrush Application" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334661
  Scenario: Flex table-Quick Search-SPI-UI-To verify that user is able to search for text field (i.e. Text data type)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I quick search "Vrush Application" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "Vrush Application" inside table "---program:-:grantsFlexTableIdForSPIuser---"

  @334663
  Scenario: Flex table-Quick Search-Admin-UI-To verify that user is able to search for long text field
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334664
  Scenario: Flex table-Quick Search-PM-UI-To verify that user is able to search for long text field
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I quick search "Testing Grant for" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:GrantsFlexTableIdForAdminAndPMuser---"

  @334666
  Scenario: Flex table-Quick Search-SPI-UI-To verify that user is able to search for long text field
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I quick search "Test Automation" inside table "---program:-:grantsFlexTableIdForSPIuser---"
    Then I see list contain "Test Automation Organization" inside table "---program:-:grantsFlexTableIdForSPIuser---"

