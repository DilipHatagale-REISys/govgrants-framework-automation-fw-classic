@US-295847 @regression-QA @Sprint-4-Year-2023 @Year-2023
Business Need: Test suite: User Story 295847: QA Only- Internal - Enhancement - Session Storage - Data Table Enhanced (Suite ID: 299605)

  @296791
  Scenario: To verify when user changes the page size (Show entries) to 10, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 10. (Admin)
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I click on "View" icon in "Subawards  - Active" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296864
  Scenario: To verify when user changes the page size (Show entries) to 10, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 10. (PM)
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I click on "View" icon in "Subawards  - Active" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296866
  Scenario: To verify when user changes the page size (Show entries) to 10, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 10. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "10"
    And I click on "View" icon in "Subawards  - Active" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @296867
  Scenario: To verify when user changes the page size (Show entries) to 20, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 20. (Admin)
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "20"
    And I click on "View" icon in "Subawards  - Active" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296868
  Scenario: To verify when user changes the page size (Show entries) to 20, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 20. (PM)
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "20"
    And I click on "View" icon in "Subawards  - Active" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296869
  Scenario: To verify when user changes the page size (Show entries) to 20, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 20. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "RecipientsRelatedAwards2FlexToggle" is "20"
    And I click on "View" icon in "Subawards  - Active" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @296887
  Scenario: To verify when user changes the page size (Show entries) to 10 and refreshes the page then table should get open on the page size (Show entries) to 10. (Admin)
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296889
  Scenario: To verify when user changes the page size (Show entries) to 10 and refreshes the page then table should get open on the page size (Show entries) to 10. (PM)
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296890
  Scenario: To verify when user changes the page size (Show entries) to 10 and refreshes the page then table should get open on the page size (Show entries) to 10. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "RecipientsRelatedAwards2FlexToggle" is "20"
    And I refresh the page
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @296892
  Scenario: To verify when user changes the page size (Show entries) to 20 and refreshes  the page then table should get open on the page size (Show entries) to 20. (Admin)
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "20"
    And I refresh the page
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296894
  Scenario: To verify when user changes the page size (Show entries) to 20 and refreshes  the page then table should get open on the page size (Show entries) to 20. (PM)
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "20"
    And I refresh the page
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296895
  Scenario: To verify when user changes the page size (Show entries) to 20 and refreshes  the page then table should get open on the page size (Show entries) to 20. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "20"
    And I refresh the page
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @296907
  Scenario: To verify when user changes the page size (Show entries) to 10, click on row level 'Edit' action and click on page back arrow then table should get open on the page size (Show entries) to 10. (Admin)
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I click on "View" icon in "Subawards  - Active" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296923
  Scenario: To verify when user changes the page size (Show entries) to 10, click on another phase and again click on the same phase where page size was changed to 10 then table should get open on the page size (Show entries) to 10. (Admin)
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab