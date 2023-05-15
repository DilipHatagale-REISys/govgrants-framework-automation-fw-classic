@US-295854 @regression-QA @Sprint-4-Year-2023 @Year-2023
Business Need: Test suite: User Story 295854: QA Only- Internal - Enhancement - Session Storage -Flex Grid Enhanced (Suite ID: 299606)

  @297622 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes the page size (Show entries) to 10, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 10. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I click on back arrow
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ScheduledActivitiesAllTableID---"

  @297623 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes the page size (Show entries) to 10, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 10. (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I click on back arrow
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ScheduledActivitiesAllTableID---"

  @297625 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes the page size (Show entries) to 10, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 10. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "10"
    And I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I click on back arrow
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297627 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes the page size (Show entries) to 20, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 20. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "20"
    And I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I click on back arrow
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:ScheduledActivitiesAllTableID---"

  @297629 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes the page size (Show entries) to 20, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 20. (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "20"
    And I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I click on back arrow
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:ScheduledActivitiesAllTableID---"

  @297630 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes the page size (Show entries) to 20, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 20. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "20"
    And I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I click on back arrow
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297642 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes the page size (Show entries) to 10 and refreshes the page then table should get open on the page size (Show entries) to 10. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ScheduledActivitiesAllTableID---"

  @297643 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes the page size (Show entries) to 10 and refreshes the page then table should get open on the page PM
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ScheduledActivitiesAllTableID---"

  @297644 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes the page size (Show entries) to 10 and refreshes the page then table should get open on the page size (Show entries) to 10. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "10"
    And I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297645 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes the page size (Show entries) to 20 and refreshes  the page then table should get open on the page size (Show entries) to 20. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "20"
    And I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:ScheduledActivitiesAllTableID---"

  @297646 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes the page size (Show entries) to 20 and refreshes  the page then table should get open on the page size (Show entries) to 20. (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "20"
    And I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:ScheduledActivitiesAllTableID---"

  @297647 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes the page size (Show entries) to 20 and refreshes  the page then table should get open on the page size (Show entries) to 20. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "20"
    And I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see show "20" Entries inside E-grid table
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297665 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to next, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to next.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see the text containing :
      | Page 2 of |

  @297666 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to next, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to next.(PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see the text containing :
      | Page 2 of |

  @297667 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to next, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to next.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see the text containing :
      | Page 2 of |

  @297668 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to Last, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Last.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Last"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see user on last pagination page "ActiveGrantsGridFlexToggle" table

  @297669 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to Last, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Last.(PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Last"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see user on last pagination page "ActiveGrantsGridFlexToggle" table

  @297670 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to Last, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Last.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Last"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see user on last pagination page "ActiveGrantsGrid_1FlexToggle" table

  @297671 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to Previous, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Previous.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Previous"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see "ActiveGrantsGridFlexToggle" table contains "Page 2 of"

  @297672 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to Previous, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Previous.(PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Previous"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see "ActiveGrantsGridFlexToggle" table contains "Page 2 of"

  @297673 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to Previous, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Previous.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Previous"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see "---program:-:ScheduledActivitiesAllTableIDForSPI---" table contains "Page 2 of"

  @297674 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to First, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to First.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I see "ActiveGrantsGridFlexToggle" table contains "Page 1 of"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 1 of"

  @297675 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to First, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to First.(PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I see "ActiveGrantsGridFlexToggle" table contains "Page 1 of"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 1 of"

  @297676 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to First, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to First.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I see "ActiveGrantsGrid_1FlexToggle" table contains "Page 1 of"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see "---program:-:ScheduledActivitiesAllTableIDForSPI---" table contains "Page 1 of"

  @297678 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to next and refreshes the page then table should get open on the page where pagination was set to next (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I refresh the page
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 3 of"

  @297679 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to next and refreshes the page then table should get open on the page where pagination was set to next (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I refresh the page
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 3 of"

  @297680 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to next and refreshes the page then table should get open on the page where pagination was set to next (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I refresh the page
    Then I see "---program:-:ScheduledActivitiesAllTableIDForSPI---" table contains "Page 3 of"

  @297681 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to Last and refreshes the page then table should get open on the page where pagination was set to Last.(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Last"
    And I refresh the page
    Then I see user on last pagination page "---program:-:ScheduledActivitiesAllTableID---" table

  @297682 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to Last and refreshes the page then table should get open on the page where pagination was set to Last.(PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Last"
    And I refresh the page
    Then I see user on last pagination page "---program:-:ScheduledActivitiesAllTableID---" table

  @297683 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to Last and refreshes the page then table should get open on the page where pagination was set to Last.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Last"
    And I refresh the page
    Then I see user on last pagination page "---program:-:ScheduledActivitiesAllTableIDForSPI---" table

  @297684 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to Previous and refreshes the page then table should get open on the page where pagination was set to Previous (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Previous"
    And I refresh the page
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 2 of"

  @297685 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to Previous and refreshes the page then table should get open on the page where pagination was set to Previous (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Previous"
    And I refresh the page
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 2 of"

  @297686 @dilip @sprint-4 @us-295854
  Scenario: To verify when user changes pagination to Previous and refreshes the page then table should get open on the page where pagination was set to Previous (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Previous"
    And I refresh the page
    Then I see "---program:-:ScheduledActivitiesAllTableIDForSPI---" table contains "Page 2 of"

  @297687
  Scenario: To verify when user changes pagination to First and refreshes the page then table should get open on the page where pagination was set to First (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Previous"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Previous"
    And I refresh the page
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 1 of"

  @297688
  Scenario: To verify when user changes pagination to First and refreshes the page then table should get open on the page where pagination was set to First (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Previous"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Previous"
    And I refresh the page
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 1 of"

  @297689
  Scenario: To verify when user changes pagination to First and refreshes the page then table should get open on the page where pagination was set to First (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Previous"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Previous"
    And I refresh the page
    Then I see "---program:-:ScheduledActivitiesAllTableIDForSPI---" table contains "Page 1 of"

  @297690
  Scenario: To verify when user searches any value in quick search field, click on row level view action and click on page back arrow then table should show the records of Quick search results (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"

  @297691
  Scenario: To verify when user searches any value in quick search field, click on row level view action and click on page back arrow then table should show the records of Quick search results (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"

  @297692
  Scenario: To verify when user searches any value in quick search field, click on row level view action and click on page back arrow then table should show the records of Quick search results (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297693
  Scenario: To verify when user searches any value in quick search field and refreshes the page then table should show the records of Quick search results (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"

  @297694
  Scenario: To verify when user searches any value in quick search field and refreshes the page then table should show the records of Quick search results (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"

  @297695
  Scenario: To verify when user searches any value in quick search field and refreshes the page then table should show the records of Quick search results (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297747
  Scenario: To verify when sort direction of data type-standard field is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-standard field (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297748
  Scenario: To verify when sort direction of data type-standard field is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-standard field (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297749
  Scenario: To verify when sort direction of data type-standard field is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-standard field (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297751
  Scenario: To verify when sort direction of data type-standard field is set in ascending order and refreshes the page then records should be in ascending order for data type-standard field (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297822
  Scenario: To verify when sort direction of data type-standard field is set in ascending order and refreshes the page then records should be in ascending order for data type-standard field (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297823
  Scenario: To verify when sort direction of data type-standard field is set in ascending order and refreshes the page then records should be in ascending order for data type-standard field (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297826
  Scenario: To verify when sort direction of data type-Text is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Text(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297828
  Scenario: To verify when sort direction of data type-Text is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Text(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297829 @297827
  Scenario Outline: To verify when sort direction of data type-Currency is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Currency (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Page Tabs Config      | Is Active           | false              | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction      | DESC               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 10                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active           | true           | Grantor State Program | Name                      | TAB-3262                   |
      | Flex Grid:General                   | Sort Direction      | ASC            | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Default Page Size   | 10              | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Pagination   | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Page Size    | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Grid:General                   | Display Field Names | <newFieldsApi> | ActiveGrantsGrid      |                           |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Total Original Grant Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Total Original Grant Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                 | defaultFieldsApi                                                                                                              |
      | ADMIN | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,TotalOriginalGrantAmount__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |
      | PM    | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,TotalOriginalGrantAmount__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |


  @297832
  Scenario: To verify when sort direction of data type-Text is set in ascending order and refreshes the page then records should be in ascending order for data type-Text(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297835
  Scenario: To verify when sort direction of data type-Text is set in ascending order and refreshes the page then records should be in ascending order for data type-Text(PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297836
  Scenario: To verify when sort direction of data type-Text is set in ascending order and refreshes the page then records should be in ascending order for data type-Text(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297838
  Scenario: To verify when sort direction of data type-Picklist is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Picklist (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297839
  Scenario: To verify when sort direction of data type-Picklist is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Picklist (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297840
  Scenario: To verify when sort direction of data type-Picklist is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Picklist (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297842
  Scenario: To verify when sort direction of data type-Picklist is set in ascending order and refreshes the page then records should be in ascending order for data type-Picklist (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297843
  Scenario: To verify when sort direction of data type-Picklist is set in ascending order and refreshes the page then records should be in ascending order for data type-Picklist (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297844
  Scenario: To verify when sort direction of data type-Picklist is set in ascending order and refreshes the page then records should be in ascending order for data type-Picklist (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Project Period" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Project Period" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297846
  Scenario: To verify when sort direction of data type-Lookup is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Lookup (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Internal Organization" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Internal Organization" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297848
  Scenario: To verify when sort direction of data type-Lookup is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Lookup (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Internal Organization" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Internal Organization" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297850
  Scenario: To verify when sort direction of data type-Lookup is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Lookup (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Internal Organization" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297851
  Scenario: To verify when sort direction of data type-Lookup is set in ascending order and refreshes the page then records should be in ascending order for data type-Lookup (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Internal Organization" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Internal Organization" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297854
  Scenario: To verify when sort direction of data type-Lookup is set in ascending order and refreshes the page then records should be in ascending order for data type-Lookup (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Internal Organization" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Internal Organization" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297855
  Scenario: To verify when sort direction of data type-Lookup is set in ascending order and refreshes the page then records should be in ascending order for data type-Lookup (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Internal Organization" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Internal Organization" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297858 @297861
  Scenario Outline: To verify when sort direction of data type-Number is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Number (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Page Tabs Config      | Is Active           | false              | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction      | DESC               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 10                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active           | true           | Grantor State Program | Name                      | TAB-3262                   |
      | Flex Grid:General                   | Sort Direction      | ASC            | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Default Page Size   | 5              | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Pagination   | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Page Size    | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Grid:General                   | Display Field Names | <newFieldsApi> | ActiveGrantsGrid      |                           |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Closeout Liquidation Days" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Closeout Liquidation Days" in table "---program:-:ScheduledActivitiesAllTableID---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                 | defaultFieldsApi                                                                                                              |
      | ADMIN | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,CloseoutLiquidationDays__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |
      | PM    | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,CloseoutLiquidationDays__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |

  @297862
  Scenario: To verify when sort direction of data type-Number is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Number (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297863 @297864
  Scenario Outline: To verify when sort direction of data type-Number is set in ascending order and refreshes the page then records should be in ascending order for data type-Number (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Page Tabs Config      | Is Active           | false              | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction      | DESC               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 10                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active           | true           | Grantor State Program | Name                      | TAB-3262                   |
      | Flex Grid:General                   | Sort Direction      | ASC            | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Default Page Size   | 5              | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Pagination   | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Page Size    | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Grid:General                   | Display Field Names | <newFieldsApi> | ActiveGrantsGrid      |                           |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Closeout Liquidation Days" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Closeout Liquidation Days" in table "---program:-:ScheduledActivitiesAllTableID---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                 | defaultFieldsApi                                                                                                              |
      | ADMIN | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,CloseoutLiquidationDays__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |
      | PM    | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,CloseoutLiquidationDays__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |

  @297866
  Scenario: To verify when sort direction of data type-Number is set in ascending order and refreshes the page then records should be in ascending order for data type-Number (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297867 @297868
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Date (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Page Tabs Config      | Is Active           | false              | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction      | DESC               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 10                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active           | true           | Grantor State Program | Name                      | TAB-3262                   |
      | Flex Grid:General                   | Sort Direction      | ASC            | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Default Page Size   | 5              | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Pagination   | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Page Size    | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Grid:General                   | Display Field Names | <newFieldsApi> | ActiveGrantsGrid      |                           |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                 | defaultFieldsApi                                                                                                              |
      | ADMIN | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,BudgetPeriodStartDate__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |
      | PM    | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,BudgetPeriodStartDate__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |

  @297870
  Scenario: To verify when sort direction of data type-Date is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Date (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297871 @297872
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order and refreshes the page then records should be in ascending order for data type-Date (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Page Tabs Config      | Is Active           | false              | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction      | DESC               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 10                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active           | true           | Grantor State Program | Name                      | TAB-3262                   |
      | Flex Grid:General                   | Sort Direction      | ASC            | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Default Page Size   | 5              | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Pagination   | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Page Size    | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Grid:General                   | Display Field Names | <newFieldsApi> | ActiveGrantsGrid      |                           |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Current Budget Period Start Date" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Current Budget Period Start Date" in table "---program:-:ScheduledActivitiesAllTableID---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                 | defaultFieldsApi                                                                                                              |
      | ADMIN | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,BudgetPeriodStartDate__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |
      | PM    | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,BudgetPeriodStartDate__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |

  @297873
  Scenario: To verify when sort direction of data type-Date is set in ascending order and refreshes the page then records should be in ascending order for data type-Date (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297875
  Scenario: To verify when sort direction of data type-date & time is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-date & time(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297876
  Scenario: To verify when sort direction of data type-date & time is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-date & time(PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297878
  Scenario: To verify when sort direction of data type-date & time is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-date & time(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297879
  Scenario: To verify when sort direction of data type-date & time is set in ascending order and refreshes the page then records should be in ascending order for data type-date & time(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297880
  Scenario: To verify when sort direction of data type-date & time is set in ascending order and refreshes the page then records should be in ascending order for data type-date & time(PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297882
  Scenario: To verify when sort direction of data type-date & time is set in ascending order and refreshes the page then records should be in ascending order for data type-date & time(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297883 @297884
  Scenario Outline: To verify when sort direction of data type-Percentage is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Percentage(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Page Tabs Config      | Is Active           | false              | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction      | DESC               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 10                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active           | true           | Grantor State Program | Name                      | TAB-3262                   |
      | Flex Grid:General                   | Sort Direction      | ASC            | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Default Page Size   | 5              | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Pagination   | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Page Size    | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Grid:General                   | Display Field Names | <newFieldsApi> | ActiveGrantsGrid      |                           |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Budget Redirection Threshold" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I click on back arrow
    Then I see "up" arrow is displayed inside "Budget Redirection Threshold" in table "---program:-:ScheduledActivitiesAllTableID---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                 | defaultFieldsApi                                                                                                              |
      | ADMIN | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,BudgetRedirectionThreshhold__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |
      | PM    | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,BudgetRedirectionThreshhold__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |

  @297885
  Scenario: To verify when sort direction of data type-Percentage is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Percentage(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297886 @297887
  Scenario Outline: To verify when sort direction of data type-Percentage is set in ascending order and refreshes the page then records should be in ascending order for data type-Percentage(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Page Tabs Config      | Is Active           | false              | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction      | DESC               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 10                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active           | true           | Grantor State Program | Name                      | TAB-3262                   |
      | Flex Grid:General                   | Sort Direction      | ASC            | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Default Page Size   | 5              | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Pagination   | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Page Size    | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Grid:General                   | Display Field Names | <newFieldsApi> | ActiveGrantsGrid      |                           |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Budget Redirection Threshold" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Budget Redirection Threshold" in table "---program:-:ScheduledActivitiesAllTableID---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                 | defaultFieldsApi                                                                                                              |
      | ADMIN | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,BudgetRedirectionThreshhold__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |
      | PM    | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,BudgetRedirectionThreshhold__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |

  @297888
  Scenario: To verify when sort direction of data type-Percentage is set in ascending order and refreshes the page then records should be in ascending order for data type-Percentage(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297889
  Scenario: To verify when sort direction of data type-Formula is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Formula (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Project Period" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Project Period" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297890
  Scenario: To verify when sort direction of data type-Formula is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Formula (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Project Period" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Project Period" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297900
  Scenario: To verify when sort direction of data type-Formula is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Formula (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Project Period" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Project Period" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297901
  Scenario: To verify when sort direction of data type-Formula is set in ascending order and refreshes the page then records should be in ascending order for data type-Formula (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Project Period" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Project Period" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297904
  Scenario: To verify when sort direction of data type-Formula is set in ascending order and refreshes the page then records should be in ascending order for data type-Formula (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Project Period" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Project Period" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297907
  Scenario: To verify when sort direction of data type-Formula is set in ascending order and refreshes the page then records should be in ascending order for data type-Formula (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Project Period" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Project Period" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297908 @297909
  Scenario Outline: To verify when sort direction of data type-Checkbox is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Checkbox(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Page Tabs Config      | Is Active           | false              | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction      | DESC               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 10                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active           | true           | Grantor State Program | Name                      | TAB-3262                   |
      | Flex Grid:General                   | Sort Direction      | ASC            | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Default Page Size   | 5              | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Pagination   | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Page Size    | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Grid:General                   | Display Field Names | <newFieldsApi> | ActiveGrantsGrid      |                           |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Final Fiscal Report Created" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Final Fiscal Report Created" in table "---program:-:ScheduledActivitiesAllTableID---"
    Examples:
      | User  | newFieldsApi                                                                                                                                              | defaultFieldsApi                                                                                                              |
      | ADMIN | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,FinalFiscalReportCreated__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |
      | PM    | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,FinalFiscalReportCreated__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |

  @297909
  Scenario: To verify when sort direction of data type-Checkbox is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Checkbox(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297911 @297912
  Scenario Outline: To verify when sort direction of data type-Checkbox is set in ascending order and refreshes the page then records should be in ascending order for data type-Checkbox(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Page Tabs Config      | Is Active           | false              | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction      | DESC               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 10                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active           | true           | Grantor State Program | Name                      | TAB-3262                   |
      | Flex Grid:General                   | Sort Direction      | ASC            | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Default Page Size   | 5              | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Pagination   | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Page Size    | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Grid:General                   | Display Field Names | <newFieldsApi> | ActiveGrantsGrid      |                           |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    Examples:
      | User  | newFieldsApi                                                                                                                                              | defaultFieldsApi                                                                                                              |
      | ADMIN | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,FinalFiscalReportCreated__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |
      | PM    | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,FinalFiscalReportCreated__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |

  @297913
  Scenario: To verify when sort direction of data type-Checkbox is set in ascending order and refreshes the page then records should be in ascending order for data type-Checkbox(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297914
  Scenario: To verify when sort direction of data type-Email is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Email (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297915
  Scenario: To verify when sort direction of data type-Email is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Email (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297916
  Scenario: To verify when sort direction of data type-Email is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Email (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297917
  Scenario: To verify when sort direction of data type-Email is set in ascending order and refreshes the page then records should be in ascending order for data type-Email (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297918
  Scenario: To verify when sort direction of data type-Email is set in ascending order and refreshes the page then records should be in ascending order for data type-Email (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297919
  Scenario: To verify when sort direction of data type-Email is set in ascending order and refreshes the page then records should be in ascending order for data type-Email (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297920
  Scenario Outline: To verify when sort direction of data type-Currency is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Currency (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Page Tabs Config      | Is Active           | false              | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction      | DESC               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 10                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active           | true           | Grantor State Program | Name                      | TAB-3262                   |
      | Flex Grid:General                   | Sort Direction      | ASC            | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Default Page Size   | 5              | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Pagination   | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Page Size    | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Grid:General                   | Display Field Names | <newFieldsApi> | ActiveGrantsGrid      |                           |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Total Obligated Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Total Obligated Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    Examples:
      | User  | newFieldsApi                                                                                                                                          | defaultFieldsApi                                                                                                              |
      | ADMIN | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,TotalObligatedAmount__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |
      #| PM    | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,TotalObligatedAmount__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |


  @297925
  Scenario Outline: To verify when sort direction of data type-Currency is set in ascending order and refreshes the page then records should be in ascending order for data type-Currency (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Page Tabs Config      | Is Active           | false              | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction      | DESC               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 10                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active           | true           | Grantor State Program | Name                      | TAB-3262                   |
      | Flex Grid:General                   | Sort Direction      | ASC            | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Default Page Size   | 5              | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Pagination   | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Page Size    | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Grid:General                   | Display Field Names | <newFieldsApi> | ActiveGrantsGrid      |                           |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Total Obligated Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Total Obligated Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    Examples:
      | User  | newFieldsApi                                                                                                                                          | defaultFieldsApi                                                                                                              |
      | ADMIN | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,TotalObligatedAmount__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |
      #| PM    | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,TotalObligatedAmount__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |


  @297921
  Scenario: To verify when sort direction of data type-Currency is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Currency (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297928
  Scenario Outline: To verify when sort direction of data type-Currency is set in ascending order and refreshes the page then records should be in ascending order for data type-Currency (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Page Tabs Config      | Is Active           | false              | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction      | DESC               | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 10                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active           | true           | Grantor State Program | Name                      | TAB-3262                   |
      | Flex Grid:General                   | Sort Direction      | ASC            | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Default Page Size   | 5              | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Pagination   | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Table:General                  | Enable Page Size    | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Grid:General                   | Display Field Names | <newFieldsApi> | ActiveGrantsGrid      |                           |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    Examples:
      | User | newFieldsApi                                                                                                                                          | defaultFieldsApi                                                                                                              |
      | PM   | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,TotalObligatedAmount__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |


  @297929
  Scenario: To verify when sort direction of data type-Currency is set in ascending order and refreshes the page then records should be in ascending order for data type-Currency (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297930
  Scenario: To verify when sort direction of data type-URL is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-URL (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297931
  Scenario: To verify when sort direction of data type-URL is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-URL (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297932
  Scenario: To verify when sort direction of data type-URL is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-URL (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297933
  Scenario: To verify when sort direction of data type-URL is set in ascending order and refreshes the page then records should be in ascending order for data type-URL (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297934
  Scenario: To verify when sort direction of data type-URL is set in ascending order and refreshes the page then records should be in ascending order for data type-URL (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297935
  Scenario: To verify when sort direction of data type-URL is set in ascending order and refreshes the page then records should be in ascending order for data type-URL (spi)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297937
  Scenario: To verify when sort direction-ascending order and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297938
  Scenario: To verify when sort direction-ascending order and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and sorting (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297941
  Scenario: To verify when sort direction-ascending order and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Grant Title" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Grant Title" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297943
  Scenario: To verify when sort direction-ascending order and searched any value in Quick search and  refreshes the page then table should restore search results and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297944
  Scenario: To verify when sort direction-ascending order and searched any value in Quick search and  refreshes the page then table should restore search results and sorting (pm)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297945
  Scenario: To verify when sort direction-ascending order and searched any value in Quick search and  refreshes the page then table should restore search results and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Grant Title" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Grant Title" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297946
  Scenario: To verify when page size is 10 and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and page size (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297948
  Scenario: To verify when page size is 10 and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and page size (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I select "Sort Ascending" order by clicking on arrow beside of "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Awarded Amount" in table "---program:-:ScheduledActivitiesAllTableID---"

  @297949
  Scenario: To verify when page size is 10 and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and page size (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    Then I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableIDForSPI---"


  @297950
  Scenario: To verify when page size is 10 and searched any value in Quick search and  refreshes the page then table should restore search results and page size (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"

  @297951
  Scenario: To verify when page size is 10 and searched any value in Quick search and  refreshes the page then table should restore search results and page size (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I quick search "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I refresh the page
    Then I see list contain "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"

  @297952
  Scenario: To verify when page size is 10 and searched any value in Quick search and  refreshes the page then table should restore search results and page size (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "10"
    And I quick search "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I refresh the page
    Then I see list contain "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    Then I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297954
  Scenario: To verify when Pagination is changed to next and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and Pagination ‘next’ (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I quick search "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see list contain "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "ActiveGrantsGridFlexToggle" table contains "Page 2 of"

  @297955
  Scenario: To verify when searched any value in Quick search, Pagination is changed to next and user clicks on row level view action and click on page back arrow then table should restore search results and Pagination ‘next’ (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I quick search "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see list contain "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "ActiveGrantsGridFlexToggle" table contains "Page 2 of"

  @297956
  Scenario: To verify when searched any value in Quick search, Pagination is changed to next and user clicks on row level view action and click on page back arrow then table should restore search results and Pagination ‘next’ (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I quick search "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see list contain "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    Then I see "---program:-:ScheduledActivitiesAllTableIDForSPI---" table contains "Page 2 of"

  @297957
  Scenario: To verify when searched any value in Quick search and Pagination is changed to next and  refreshes the page then table should restore search results and Pagination ‘next’ (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I quick search "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I refresh the page
    Then I see "ActiveGrantsGridFlexToggle" table contains "Page 2 of"

  @297958
  Scenario: To verify when searched any value in Quick search Pagination is changed to next and  refreshes the page then table should restore search results and Pagination ‘next’ (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I quick search "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I refresh the page
    Then I see "ActiveGrantsGridFlexToggle" table contains "Page 2 of"

  @297959
  Scenario: To verify when searched any value in Quick search , Pagination is changed to next  and  refreshes the page then table should restore search results and Pagination ‘next’ (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I quick search "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I refresh the page
    Then I see "---program:-:ScheduledActivitiesAllTableIDForSPI---" table contains "Page 2 of"

  @297960
  Scenario: To verify when Sort direction-ascending order and page size is 10, user clicks on row level view action and click on page back arrow then table should restore page size and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"

  @297961
  Scenario: To verify when Sort direction-ascending order and page size is 10 and  refreshes the page then table should restore page size and sorting (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"

  @297964
  Scenario: To verify when Sort direction-ascending order and page size is 10 and  refreshes the page then table should restore page size and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "10"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    Then I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297992
  Scenario: To verify when page size is 10, Pagination is changed to next and user clicks on row level view action and click on page back arrow then table should restore page size and Pagination(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 2 of"

  @297993
  Scenario: To verify when page size is 10, Pagination is changed to next and user clicks on row level view action and click on page back arrow then table should restore page size and Pagination(PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 2 of"

  @297994
  Scenario: To verify when page size is 10, Pagination is changed to next and user clicks on row level view action and click on page back arrow then table should restore page size and Pagination(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "10"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    Then I see "---program:-:ScheduledActivitiesAllTableIDForSPI---" table contains "Page 2 of"

  @297995
  Scenario: To verify when page size is 10 and  Pagination is changed to next and refreshes the page then table should restore page size and Pagination(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I refresh the page
    Then I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 2 of"

  @297996
  Scenario: To verify when page size is 10 and Pagination is changed to next and refreshes the page then table should restore page size and Pagination(PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I refresh the page
    Then I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 2 of"

  @297997
  Scenario: To verify when  page size is 10 and Pagination is changed to next and refreshes the page then table should restore page size and Pagination(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "10"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I refresh the page
    Then I see "---program:-:ScheduledActivitiesAllTableIDForSPI---" table contains "Page 2 of"
    Then I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297998
  Scenario: To verify when Sort direction-ascending order, Pagination is changed to next and user clicks on row level view action and click on page back arrow then table should restore Pagination and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 2 of"

  @297999
  Scenario: To verify when Sort direction-ascending order, Pagination is changed to next and user clicks on row level view action and click on page back arrow then table should restore Pagination and sorting (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 2 of"

  @298000
  Scenario: To verify when Sort direction-ascending order, Pagination is changed to next and  user clicks on row level view action and click on page back arrow then table should restore Pagination and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    Then I see "---program:-:ScheduledActivitiesAllTableIDForSPI---" table contains "Page 2 of"

  @298002
  Scenario: To verify when Sort direction-ascending order and Pagination is changed to next and  refreshes the page then table should restore Pagination and sorting (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 2 of"

  @298003
  Scenario: To verify when Sort direction-ascending order and  Pagination is changed to next and refreshes the page then table should restore Pagination and sorting (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 2 of"

  @298004
  Scenario: To verify when Sort direction-ascending order and Pagination is changed to next and  refreshes the page then table should restore Pagination and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    Then I see "---program:-:ScheduledActivitiesAllTableIDForSPI---" table contains "Page 2 of"

  @298005
  Scenario: To verify when Sort direction-ascending order and  Pagination is changed to next and refreshes the page then table should restore Pagination and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    Then I see "---program:-:ScheduledActivitiesAllTableIDForSPI---" table contains "Page 2 of"

  @298006
  Scenario: To verify when user changes page size and clicks on Reset Table then page size should set back to default value (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"

  @298007
  Scenario: To verify when user changes page size and clicks on Reset Table then page size should set back to default value (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"

  @298008
  Scenario: To verify when user changes page size and clicks on Reset Table then page size should set back to default value (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @298009
  Scenario: To verify when user changes pagination and clicks on Reset Table then pagination should set back to default value (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 1 of"

  @298010
  Scenario: To verify when user changes pagination and clicks on Reset Table then pagination should set back to default value (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I see "---program:-:ScheduledActivitiesAllTableID---" table contains "Page 1 of"

  @298011
  Scenario: To verify when user changes pagination and clicks on Reset Table then pagination should set back to default value (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I see "---program:-:ScheduledActivitiesAllTableIDForSPI---" table contains "Page 1 of"

  @298013
  Scenario: To verify when user changes sort direction and clicks on Reset Table then sort direction should set back to default value (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I pause execution for "10" seconds
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I do not see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @298014
  Scenario: To verify when user changes sort direction and clicks on Reset Table then sort direction should set back to default value (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I pause execution for "10" seconds
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I do not see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @298015
  Scenario: To verify when user changes sort direction and clicks on Reset Table then sort direction should set back to default value (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I pause execution for "10" seconds
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I do not see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @298016
  Scenario: To verify when user searches something in quick search and clicks on Reset Table then table records should set back to default value (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I quick search "GT-GA-00050" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    And I pause execution for "10" seconds
    Then I do not see list contain "GT-GA-00050" inside table "---program:-:ScheduledActivitiesAllTableID---"

  @298017
  Scenario: To verify when user searches something in quick search and clicks on Reset Table then table records should set back to default value (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I quick search "GT-GA-00050" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    And I pause execution for "1" seconds
    Then I do not see list contain "GT-GA-00050" inside table "---program:-:ScheduledActivitiesAllTableID---"

  @298018
  Scenario: To verify when user searches something in quick search and clicks on Reset Table then table records should set back to default value (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I quick search "GT-GA-00050" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I do not see list contain "GT-GA-00050" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @298019
  Scenario: To verify when user changes page size then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @298020
  Scenario: To verify when user changes page size then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @298021
  Scenario: To verify when user changes page size then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @298022
  Scenario: To verify when user changes pagination then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @298023
  Scenario: To   verify when user changes pagination then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @298024
  Scenario:To verify when user changes pagination then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @298025
  Scenario: To verify when user changes sort direction then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @298026
  Scenario: To verify when user changes sort direction then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @298027
  Scenario: To verify when user changes sort direction then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @298028
  Scenario: To verify when user searches something in quick search then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I quick search "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @298029
  Scenario: To verify when user searches something in quick search then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I quick search "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @298030
  Scenario: To verify when user searches something in quick search then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I quick search "Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    Then I can see the following message in table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @298032
  Scenario: To verify when user changes page size and clicks on Reset table then 'Table has been reset' message should display (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I can see the following message in table :
      | Table has been reset. |

  @298033
  Scenario: To verify when user changes page size and clicks on Reset table then 'Table has been reset' message should display (Admin)

    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I can see the following message in table :
      | Table has been reset. |

  @298036
  Scenario: To verify when user changes page size and clicks on Reset table then 'Table has been reset' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I click on menu inside "Grants - All"
    #And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I see the "Table has been reset." message after Reset Table

  @298037
  Scenario: To verify when user changes pagination and clicks on Reset table then 'Table has been reset' message should display (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I can see the following message in table :
      | Table has been reset. |

  @298038
  Scenario: To verify when user changes sort direction and clicks on Reset table then 'Table has been reset' message should display (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I can see the following message in table :
      | Table has been reset. |

  @298039
  Scenario: To verify when user changes sort direction and clicks on Reset table then 'Table has been reset' message should display (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I can see the following message in table :
      | Table has been reset. |

  @298040
  Scenario: To verify when user changes sort direction and clicks on Reset table then 'Table has been reset' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I can see the following message in table :
      | Table has been reset. |

  @298041
  Scenario: To verify when user searches something in quick search and clicks on Reset table then 'Table has been reset' message should display (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I can see the following message in table :
      | Table has been reset. |

  @298044
  Scenario: To verify when user searches something in quick search and clicks on Reset table then 'Table has been reset' message should display (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I can see the following message in table :
      | Table has been reset. |

  @298045
  Scenario: To verify when user searches something in quick search and clicks on Reset table then 'Table has been reset' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on menu inside "Grants - All"
    And I select "Reset Table" from parallel lines dropdown of "Grants - All"
    Then I can see the following message in table :
      | Table has been reset. |

  @298048
  Scenario: To verify when user changes the list view from Active to draft, changes the page size, click on All and again on draft then page size should be restored. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I click toggle button to select "Grants - Active"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "5"
    And I click toggle button to select "Grants - All"
    And I click toggle button to select "Grants - Active"
    Then I see "5" with page size dropdown at "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @298046
  Scenario: To verify when user changes the list view from active to draft, changes the page size, click on active and again on draft then page size should be restored. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I click toggle button to select "Grants - Active"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click toggle button to select "Grants - All"
    And I click toggle button to select "Grants - Active"
    Then I see "5" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"

  @298047
  Scenario: To verify when user changes the list view from active to draft, changes the page size, click on active and again on draft then page size should be restored. (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I click toggle button to select "Grants - Active"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "20"
    And I click toggle button to select "Grants - All"
    And I click toggle button to select "Grants - Active"
    Then I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"

  @298049
  Scenario: To verify when user changes the list view from active to draft, changes the pagination, click on active and again on draft then pagination should be restored. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I click toggle button to select "Grants - Draft"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click toggle button to select "Grants - Active"
    And I click toggle button to select "Grants - Draft"
    Then I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"

  @298050
  Scenario: To verify when user changes the list view from active to draft, changes the pagination, click on active and again on draft then pagination should be restored. (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I click toggle button to select "Grants - Draft"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "5"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableID---" for table id "Next"
    And I click toggle button to select "Grants - Active"
    And I click toggle button to select "Grants - Draft"
    Then I see "10" with page size dropdown at "---program:-:ScheduledActivitiesAllTableID---"

  @298051
  Scenario: To verify when user changes the list view from active to draft, changes the pagination, click on active and again on draft then pagination should be restored. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I click toggle button to select "Grants - Draft"
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "10"
    And I click on page navigation arrow "---program:-:ScheduledActivitiesAllTableIDForSPI---" for table id "Next"
    And I click toggle button to select "Grants - Active"
    And I click toggle button to select "Grants - Draft"
    Then I see "20" with page size dropdown at "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @298053
  Scenario: To verify when user changes the list view from active to draft, changes the sort direction click on active and again on draft then sort direction should be restored. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I click toggle button to select "Grants - Draft"
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click toggle button to select "Grants - Active"
    And I click toggle button to select "Grants - Draft"
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @298054
  Scenario: To verify when user changes the list view from active to draft, changes the sort direction click on active and again on draft then sort direction should be restored. (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I click toggle button to select "Grants - Draft"
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click toggle button to select "Grants - Active"
    And I click toggle button to select "Grants - Draft"
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableID---"

  @298055
  Scenario: To verify when user changes the list view from active to draft, changes the sort direction click on active and again on draft then sort direction should be restored. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I click toggle button to select "Grants - Draft"
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click toggle button to select "Grants - Active"
    And I click toggle button to select "Grants - Draft"
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @298056
  Scenario: To verify when user changes the list view from active to draft, searches something in quick search, click on active and again on draft then quick search results should be restored. (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I click toggle button to select "Grants - Draft"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click toggle button to select "Grants - Active"
    And I click toggle button to select "Grants - Draft"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"

  @298057
  Scenario: To verify when user changes the list view from active to draft, searches something in quick search, click on active and again on draft then quick search results should be restored. (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I click toggle button to select "Grants - Draft"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"
    And I click toggle button to select "Grants - Active"
    And I click toggle button to select "Grants - Draft"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableID---"

  @298058
  Scenario: To verify when user changes the list view from active to draft, searches something in quick search, click on active and again on draft then quick search results should be restored. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Automation Application"
    When I click on "View" icon for "Automation Application" inside table
    When I navigate to "Component testing " sub tab
    And I click toggle button to select "Grants - Draft"
    And I quick search "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click toggle button to select "Grants - Active"
    And I click toggle button to select "Grants - Draft"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---"


    ##################################################################################################

  @297883Test
  Scenario Outline: To verify when sort direction of data type-Percentage is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Percentage(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Page Tabs Config      | Is Active           | false              | ApiGeneratedId:0 |
#      | Flex Grid             | Sort Direction      | DESC               | ApiGeneratedId:1 |
#      | Flex Table            | Default Page Size   | 10                 | ApiGeneratedId:2 |
#      | Flex Table            | Enable Pagination   | true               | ApiGeneratedId:3 |
#      | Flex Table            | Enable Page Size    | true               | ApiGeneratedId:4 |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active           | true           | Grantor State Program | Name                      | TAB-3262                   |
#      | Flex Grid:General                   | Sort Direction      | ASC            | ActiveGrantsGrid      |                           |                            |
#      | Flex Table:General                  | Default Page Size   | 5              | ActiveGrantsGrid      |                           |                            |
#      | Flex Table:General                  | Enable Pagination   | true           | ActiveGrantsGrid      |                           |                            |
#      | Flex Table:General                  | Enable Page Size    | true           | ActiveGrantsGrid      |                           |                            |
      | Flex Grid:General                   | Display Field Names | <newFieldsApi> | ActiveGrantsGrid      |                           |                            |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "Budget Redirection Threshold" in table "---program:-:ScheduledActivitiesAllTableID---"
    And I click on "View" icon in "Grants - All" flex table for "1" record
    And I click on back arrow
    Then I see "up" arrow is displayed inside "Budget Redirection Threshold" in table "---program:-:ScheduledActivitiesAllTableID---"
    Examples:
      | User  | newFieldsApi                                                                                                                                                 | defaultFieldsApi                                                                                                              |
      | ADMIN | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,BudgetRedirectionThreshhold__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |
      | PM    | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c,BudgetRedirectionThreshhold__c | Name,ProjectTitle__c,ExternalOrganization__c,InternalOrganization__c,CurrentProjectPeriod__c,AmountAwardedToDate__c,Status__c |
