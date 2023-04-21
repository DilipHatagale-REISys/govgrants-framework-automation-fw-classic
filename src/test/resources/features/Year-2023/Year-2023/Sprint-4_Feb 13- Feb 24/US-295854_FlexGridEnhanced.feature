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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
    And I click on back arrow
    Then I see show "10" Entries inside E-grid table

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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
    And I click on back arrow
    Then I see show "10" Entries inside E-grid table

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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
    And I click on back arrow
    Then I see show "10" Entries inside E-grid table

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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
    And I click on back arrow
    Then I see show "20" Entries inside E-grid table

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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
    And I click on back arrow
    Then I see show "20" Entries inside E-grid table

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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
    And I click on back arrow
    Then I see show "20" Entries inside E-grid table

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
    Then I see show "10" Entries inside E-grid table

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
    Then I see show "10" Entries inside E-grid table

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
    Then I see show "10" Entries inside E-grid table

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
    Then I see show "20" Entries inside E-grid table

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
    Then I see show "20" Entries inside E-grid table

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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
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
    And I click on "View" icon in "Scheduled Activities - All" flex table for "1" record
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