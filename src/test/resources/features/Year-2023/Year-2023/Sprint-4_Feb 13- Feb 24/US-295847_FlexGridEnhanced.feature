@US-295847-patch @regression-QA @Sprint-4-Year-2023 @Year-2023
Business Need: Test suite: User Story 295847: QA Only- Internal - Enhancement - Session Storage - Data Table Enhanced (Suite ID: 299605)

  @296791
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 10, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 10. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296864
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 10, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 10. (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296866
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 10, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 10. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "10"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @296867
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 20, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 20. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "20"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296868
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 20, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 20. (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "20"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296869
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 20, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to 20. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "20"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @296879
  Scenario: To verify when user changes the page size (Show entries) to All, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to All. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "All"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 33 of 33 records" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296881
  Scenario: To verify when user changes the page size (Show entries) to All, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to All. (PM)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "All"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 32 of 32 records" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296882
  Scenario: To verify when user changes the page size (Show entries) to All, click on row level view action and click on page back arrow then table should get open on the page size (Show entries) to All. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "All"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 26 of 26 records" inside table id "---program:-:SubawardTableIdForSPIuser---"


  @296887
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 10 and refreshes the page then table should get open on the page size (Show entries) to 10. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296889
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 10 and refreshes the page then table should get open on the page size (Show entries) to 10. (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296890
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 10 and refreshes the page then table should get open on the page size (Show entries) to 10. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "20"
    And I refresh the page
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @296892
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 20 and refreshes  the page then table should get open on the page size (Show entries) to 20. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "20"
    And I refresh the page
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296894
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 20 and refreshes  the page then table should get open on the page size (Show entries) to 20. (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "20"
    And I refresh the page
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296895
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 20 and refreshes  the page then table should get open on the page size (Show entries) to 20. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "20"
    And I refresh the page
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @296903
  Scenario: To verify when user changes the page size (Show entries) to All and refreshes the page then table should get open on the page size (Show entries) to All. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "All"
    And I refresh the page
    Then I see table contains "Showing 1 to 33 of 33 records" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296904
  Scenario: To verify when user changes the page size (Show entries) to All and refreshes the page then table should get open on the page size (Show entries) to All. (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "All"
    And I refresh the page
    Then I see table contains "Showing 1 to 24 of 24 records" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296905
  Scenario: To verify when user changes the page size (Show entries) to All and refreshes the page then table should get open on the page size (Show entries) to All. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "All"
    And I refresh the page
    Then I see table contains "Showing 1 to 26 of 26 records" inside table id "---program:-:SubawardTableIdForSPIuser---"


  @296907
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 10, click on row level 'Edit' action and click on page back arrow then table should get open on the page size (Show entries) to 10. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296923
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 10, click on another phase and again click on the same phase where page size was changed to 10 then table should get open on the page size (Show entries) to 10. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296925
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 10, click on another phase and again click on the same phase where page size was changed to 10 then table should get open on the page size (Show entries) to 10. (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296926
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 10, click on another phase and again click on the same phase where page size was changed to 10 then table should get open on the page size (Show entries) to 10. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "10"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @296927
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 20, click on the another phase and again click on the same phase where page size was changed to 20 then table should get open on the page size (Show entries) to 20.(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "20"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296928
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 20, click on the another phase and again click on the same phase where page size was changed to 20 then table should get open on the page size (Show entries) to 20.(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "20"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 20 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296929
  Scenario: Phase Level-E-table- To verify when user changes the page size (Show entries) to 20, click on the another phase and again click on the same phase where page size was changed to 20 then table should get open on the page size (Show entries) to 20.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "10"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @296936
  Scenario: To verify when user changes the page size (Show entries) to All, click on the another phase and again click on the same phase where page size was changed to All then table should get open on the page size (Show entries) to All.(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "All"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 33 of 33 records" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296937
  Scenario: To verify when user changes the page size (Show entries) to All, click on the another phase and again click on the same phase where page size was changed to All then table should get open on the page size (Show entries) to All.(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "All"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 24 of 24 records" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @296938
  Scenario: To verify when user changes the page size (Show entries) to All, click on the another phase and again click on the same phase where page size was changed to All then table should get open on the page size (Show entries) to All.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "All"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 26 of 26 records" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @296939
  Scenario: Phase Level-E-table- To verify when user changes pagination to next, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to next.(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @296940
  Scenario: Phase Level-E-table- To verify when user changes pagination to next, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to next.(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @296941
  Scenario: Phase Level-E-table- To verify when user changes pagination to next, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to next.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"

  @296942
  Scenario: Phase Level-E-table- To verify when user changes pagination to Last, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Last.(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Last"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see user on "Last" pagination page "---program:-:SubawardTableIdForAdminPM---" table

  @296943
  Scenario: Phase Level-E-table- To verify when user changes pagination to Last, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Last.(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Last"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see user on "Last" pagination page "---program:-:SubawardTableIdForAdminPM---" table

  @296944
  Scenario: Phase Level-E-table- To verify when user changes pagination to Last, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Last.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Last"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see user on "Last" pagination page "---program:-:SubawardTableIdForSPIuser---" table

  @296946
  Scenario: Phase Level-E-table- To verify when user changes pagination to Previous, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Previous.(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Previous"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 1 of"

  @296947
  Scenario: Phase Level-E-table- To verify when user changes pagination to Previous, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Previous.(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Previous"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 1 of"

  @296949
  Scenario: Phase Level-E-table- To verify when user changes pagination to Previous, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to Previous.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Previous"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 1 of"

  @296958
  Scenario: Phase Level-E-table- To verify when user changes pagination to First, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to First.(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "First"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see user on "First" pagination page "---program:-:SubawardTableIdForAdminPM---" table

  @296960
  Scenario: Phase Level-E-table- To verify when user changes pagination to First, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to First.(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "First"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see user on "First" pagination page "---program:-:SubawardTableIdForAdminPM---" table

  @296961
  Scenario: Phase Level-E-table- To verify when user changes pagination to First, click on row level view action and click on page back arrow then table should get open on the page where pagination was set to First.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "First"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see user on "First" pagination page "---program:-:SubawardTableIdForSPIuser---" table

  @296963
  Scenario: Phase Level-E-table- To verify when user changes pagination to next and refreshes the page then table should get open on the page where pagination was set to next (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I refresh the page
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @296965
  Scenario: Phase Level-E-table- To verify when user changes pagination to next and refreshes the page then table should get open on the page where pagination was set to next (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I refresh the page
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @296967
  Scenario: Phase Level-E-table- To verify when user changes pagination to next and refreshes the page then table should get open on the page where pagination was set to next (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I refresh the page
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"

  @296969
  Scenario: Phase Level-E-table- To verify when user changes pagination to Last and refreshes the page then table should get open on the page where pagination was set to Last.(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Last"
    And I refresh the page
    Then I see user on "Last" pagination page "---program:-:SubawardTableIdForAdminPM---" table

  @296971
  Scenario: Phase Level-E-table- To verify when user changes pagination to Last and refreshes the page then table should get open on the page where pagination was set to Last.(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Last"
    And I refresh the page
    Then I see user on "Last" pagination page "---program:-:SubawardTableIdForAdminPM---" table

  @296973
  Scenario: Phase Level-E-table- To verify when user changes pagination to Last and refreshes the page then table should get open on the page where pagination was set to Last.(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Last"
    And I refresh the page
    Then I see user on "Last" pagination page "---program:-:SubawardTableIdForSPIuser---" table

  @296976
  Scenario: Phase Level-E-table- To verify when user changes pagination to First and refreshes the page then table should get open on the page where pagination was set to First (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Last"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "First"
    And I refresh the page
    Then I see user on "First" pagination page "---program:-:SubawardTableIdForAdminPM---" table

  @296981
  Scenario: Phase Level-E-table- To verify when user changes pagination to Previous and refreshes the page then table should get open on the page where pagination was set to Previous (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Previous"
    And I refresh the page
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @296982
  Scenario: Phase Level-E-table- To verify when user changes pagination to Previous and refreshes the page then table should get open on the page where pagination was set to Previous (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Previous"
    And I refresh the page
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @296983
  Scenario: Phase Level-E-table- To verify when user changes pagination to Previous and refreshes the page then table should get open on the page where pagination was set to Previous (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Previous"
    And I refresh the page
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"

  @296986
  Scenario: Phase Level-E-table- To verify when user changes pagination to First and refreshes the page then table should get open on the page where pagination was set to First (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "First"
    And I refresh the page
    Then I see user on "First" pagination page "---program:-:SubawardTableIdForAdminPM---" table

  @296989
  Scenario: Phase Level-E-table- To verify when user changes pagination to First and refreshes the page then table should get open on the page where pagination was set to First (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "First"
    And I refresh the page
    Then I see user on "First" pagination page "---program:-:SubawardTableIdForSPIuser---" table

  @297016
  Scenario: Phase Level-E-table- To verify when user changes pagination to next, click on the another phase and again click on the same phase where pagination was set to next then table should get open on that page (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297017
  Scenario: Phase Level-E-table- To verify when user changes pagination to next, click on the another phase and again click on the same phase where pagination was set to next then table should get open on that page (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297018
  Scenario: Phase Level-E-table- To verify when user changes pagination to next, click on the another phase and again click on the same phase where pagination was set to next then table should get open on that page (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"

  @297019
  Scenario: Phase Level-E-table- To verify when user changes pagination to Last, click on the another phase and again click on the same phase where pagination was set to Last then table should get open on that page(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Last"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see user on "Last" pagination page "---program:-:SubawardTableIdForAdminPM---" table

  @297020
  Scenario: Phase Level-E-table- To verify when user changes pagination to Last, click on the another phase and again click on the same phase where pagination was set to Last then table should get open on that page(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Last"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see user on "Last" pagination page "---program:-:SubawardTableIdForAdminPM---" table

  @297021
  Scenario: Phase Level-E-table- To verify when user changes pagination to Last, click on the another phase and again click on the same phase where pagination was set to Last then table should get open on that page(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Last"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see user on "Last" pagination page "---program:-:SubawardTableIdForSPIuser---" table

  @297022
  Scenario: Phase Level-E-table- To verify when user changes pagination to Previous, click on the another phase and again click on the same phase where pagination was set to Previous then table should get open on that page(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Previous"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297025
  Scenario: Phase Level-E-table- To verify when user changes pagination to Previous, click on the another phase and again click on the same phase where pagination was set to Previous then table should get open on that page(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Previous"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297026
  Scenario: Phase Level-E-table- To verify when user changes pagination to Previous, click on the another phase and again click on the same phase where pagination was set to Previous then table should get open on that page(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "5"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Previous"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"

  @297030
  Scenario: Phase Level-E-table- To verify when user changes pagination to First, click on the another phase and again click on the same phase where pagination was set to First then table should get open on that page(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Last"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "First"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see user on "First" pagination page "---program:-:SubawardTableIdForAdminPM---" table

  @297032
  Scenario: Phase Level-E-table- To verify when user changes pagination to First, click on the another phase and again click on the same phase where pagination was set to First then table should get open on that page(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Last"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "First"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see user on "First" pagination page "---program:-:SubawardTableIdForAdminPM---" table

  @297033
  Scenario: Phase Level-E-table- To verify when user changes pagination to First, click on the another phase and again click on the same phase where pagination was set to First then table should get open on that page(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Last"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "First"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see user on "First" pagination page "---program:-:SubawardTableIdForSPIuser---" table

  @297034
  Scenario: Phase Level-E-table- To verify when user searches any value in quick search field, click on row level view action and click on page back arrow then table should show the records of Quick search results (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see list contain "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"

  @297035
  Scenario: Phase Level-E-table- To verify when user searches any value in quick search field, click on row level view action and click on page back arrow then table should show the records of Quick search results (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see list contain "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"

  @297036
  Scenario: Phase Level-E-table- To verify when user searches any value in quick search field, click on row level view action and click on page back arrow then table should show the records of Quick search results (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see list contain "Vrush Application" inside table "---program:-:SubawardTableIdForSPIuser---"

  @297041
  Scenario: Phase Level-E-table- To verify when user searches any value in quick search field and refreshes the page then table should show the records of Quick search results (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see list contain "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"

  @297043
  Scenario: Phase Level-E-table- To verify when user searches any value in quick search field and refreshes the page then table should show the records of Quick search results (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see list contain "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"

  @297045
  Scenario: Phase Level-E-table- To verify when user searches any value in quick search field and refreshes the page then table should show the records of Quick search results (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I refresh the page
    Then I see list contain "Vrush Application" inside table "---program:-:SubawardTableIdForSPIuser---"

  @297046
  Scenario: Phase Level-E-table- To verify when user searches any value in quick search field, click on the another phase and again click on the same phase where table was showing quick search results then table should show the records of Quick search results (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297049
  Scenario: Phase Level-E-table- To verify when user searches any value in quick search field, click on the another phase and again click on the same phase where table was showing quick search results then table should show the records of Quick search results (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297050
  Scenario: Phase Level-E-table- To verify when user searches any value in quick search field, click on the another phase and again click on the same phase where table was showing quick search results then table should show the records of Quick search results (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @297051
  Scenario:To verify when sort direction of data type-standard field is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-standard field (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"

  @297052
  Scenario: Phase Level-E-table- To verify when sort direction of data type-standard field is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-standard field (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"

  @297053
  Scenario: Phase Level-E-table- To verify when sort direction of data type-standard field is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-standard field (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"

  @297055
  Scenario:  To verify when sort direction of data type-Text is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Text(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"

  @297059
  Scenario: Phase Level-E-table- To verify when sort direction of data type-standard field is set in ascending order and refreshes the page then records should be in ascending order for data type-standard field (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"

  @297060
  Scenario: Phase Level-E-table- To verify when sort direction of data type-standard field is set in ascending order and refreshes the page then records should be in ascending order for data type-standard field (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"

  @297061
  Scenario: Phase Level-E-table- To verify when sort direction of data type-standard field is set in ascending order and refreshes the page then records should be in ascending order for data type-standard field (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"

  @297062
  Scenario: Phase Level-E-table- To verify when sort direction of data type-standard field is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"

  @297063
  Scenario: Phase Level-E-table- To verify when sort direction of data type-standard field is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"

  @297065
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Text is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Text(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Title" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Title" in table "---program:-:SubawardTableIdForAdminPM---"

  @297066
  Scenario: Phase Level-E-table- To verify when sort direction of data type-standard field is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(SP)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"

  @297068
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Text is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Text(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Title" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Title" in table "---program:-:SubawardTableIdForAdminPM---"

  @297078
  Scenario:  To verify when sort direction of data type-Text is set in ascending order and click on same phase then records should be in ascending order for data type-Text(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Title" in table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "Title" in table "---program:-:SubawardTableIdForAdminPM---"

  @297079
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Text is set in ascending order and refreshes the page then records should be in ascending order for data type-Text(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Title" in table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Title" in table "---program:-:SubawardTableIdForAdminPM---"

  @297080
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Text is set in ascending order and refreshes the page then records should be in ascending order for data type-Text(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Title" in table "---program:-:SubawardTableIdForSPIuser---"

  @297084
  Scenario: Phase Level-E-table- To verify when sort direction-ascending order and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and sorting (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Title" in table "---program:-:SubawardTableIdForAdminPM---"
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Title" in table "---program:-:SubawardTableIdForAdminPM---"

  @297085
  Scenario: Phase Level-E-table- To verify when sort direction-ascending order and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and sorting (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Title" in table "---program:-:SubawardTableIdForAdminPM---"
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Title" in table "---program:-:SubawardTableIdForAdminPM---"

  @297086
  Scenario: Phase Level-E-table- To verify when sort direction-ascending order and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"

  @297090
  Scenario: Phase Level-E-table- To verify when sort direction-ascending order and searched any value in Quick search and  refreshes the page then table should restore search results and sorting (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Title" in table "---program:-:SubawardTableIdForAdminPM---"
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Title" in table "---program:-:SubawardTableIdForAdminPM---"

  @297091
  Scenario: Phase Level-E-table- To verify when sort direction-ascending order and searched any value in Quick search and  refreshes the page then table should restore search results and sorting (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Title" in table "---program:-:SubawardTableIdForAdminPM---"
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Title" in table "---program:-:SubawardTableIdForAdminPM---"

  @297092
  Scenario: Phase Level-E-table- To verify when sort direction-ascending order and searched any value in Quick search and  refreshes the page then table should restore search results and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I quick search "Grant for Quick search testing" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"

  @297093
  Scenario: Phase Level-E-table- To verify when sort direction-ascending order and searched any value in Quick search ,click on the another phase and again click on the previous phase then table should restore search results and sorting (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Title" in table "---program:-:SubawardTableIdForAdminPM---"
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297094
  Scenario: Phase Level-E-table- To verify when sort direction-ascending order and searched any value in Quick search ,click on the another phase and again click on the previous phase then table should restore search results and sorting (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Title" in table "---program:-:SubawardTableIdForAdminPM---"
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297095
  Scenario: Phase Level-E-table- To verify when sort direction-ascending order and searched any value in Quick search ,click on the another phase and again click on the previous phase then table should restore search results and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I quick search "Grant for Quick search testing" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @297096
  Scenario: Phase Level-E-table- To verify when page size is 10 and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and page size (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"

  @297097
  Scenario: Phase Level-E-table- To verify when page size is 10 and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and page size (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"

  @297098
  Scenario: Phase Level-E-table- To verify when page size is 10 and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and page size (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForSPIuser---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForSPIuser---"

  @297102
  Scenario: Phase Level-E-table- To verify when page size is 10 and searched any value in Quick search and  refreshes the page then table should restore search results and page size (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"

  @297103
  Scenario: Phase Level-E-table- To verify when page size is 10 and searched any value in Quick search and  refreshes the page then table should restore search results and page size (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"

  @297104
  Scenario: Phase Level-E-table- To verify when page size is 10 and searched any value in Quick search and  refreshes the page then table should restore search results and page size (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForSPIuser---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForSPIuser---"

  @297105
  Scenario: Phase Level-E-table- To verify when page size is 10 and searched any value in Quick search ,click on the another phase and again click on the previous phase then table should restore search results and page size (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"

  @297106
  Scenario: Phase Level-E-table- To verify when page size is 10 and searched any value in Quick search ,click on the another phase and again click on the previous phase then table should restore search results and page size (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"

  @297107
  Scenario: Phase Level-E-table- To verify when page size is 10 and searched any value in Quick search ,click on the another phase and again click on the previous phase then table should restore search results and page size (SPI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "10"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForSPIuser---"
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForSPIuser---"

  @297108
  Scenario: Phase Level-E-table- To verify when Pagination is changed to next and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and Pagination ‘next’ (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "5"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297109
  Scenario:  To verify when Pagination is changed to next and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and Pagination ‘next’ (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "5"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297110
  Scenario: Phase Level-E-table- To verify when Pagination is changed to next and searched any value in Quick search, user clicks on row level view action and click on page back arrow then table should restore search results and Pagination ‘next’ (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "5"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForSPIuser---"
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"

  @297115
  Scenario: Phase Level-E-table- To verify when Pagination is changed to next and searched any value in Quick search ,click on the another phase and again click on the previous phase then table should restore search results and Pagination ‘next’ (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "5"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297116
  Scenario: Phase Level-E-table- To verify when searched any value in Quick search ,  Pagination is changed to next and  click on the another phase and again click on the previous phase then table should restore search results and Pagination ‘next’ (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "5"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297121
  Scenario: Phase Level-E-table- To verify when searched any value in Quick search , Pagination is changed to next and click on the another phase and again click on the previous phase then table should restore search results and Pagination ‘next’ (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "5"
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForSPIuser---"
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"

  @297122
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order and page size is 10, user clicks on row level view action and click on page back arrow then table should restore page size and sorting (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297124
  Scenario: Phase Level-E-table- To verify when searched any value in Quick search and Pagination is changed to next and refreshes the page then table should restore search results and Pagination ‘next’ (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I refresh the page
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297125
  Scenario: Phase Level-E-table- To verify when searched any value in Quick search and Pagination is changed to next and refreshes the page then table should restore search results and Pagination ‘next’ (PM)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I refresh the page
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297126
  Scenario: Phase Level-E-table- To verify when searched any value in Quick search Pagination is changed to next and  refreshes the page then table should restore search results and Pagination ‘next’ (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I refresh the page
    Then I see list contain "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForSPIuser---"
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"

  @297128
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order and page size is 10, user clicks on row level view action and click on page back arrow then table should restore page size and sorting (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297129
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order and page size is 10, user clicks on row level view action and click on page back arrow then table should restore page size and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "10"
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @297135
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order and page size is 10 and  refreshes the page then table should restore page size and sorting (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297136
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order and page size is 10 and  refreshes the page then table should restore page size and sorting (PM)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297137
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order and page size is 10 and  refreshes the page then table should restore page size and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "10"
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @297139
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order and page size is 10 ,click on the another phase and again click on the previous phase then table should restore page size and sorting (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297140
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order and page size is 10 ,click on the another phase and again click on the previous phase then table should restore page size and sorting (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297142
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order and page size is 10 ,click on the another phase and again click on the previous phase then table should restore page size and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "10"
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForSPIuser---"
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"

  @297144
  Scenario: Phase Level-E-table- To verify when Pagination is changed to next and page size is 10, user clicks on row level view action and click on page back arrow then table should restore page size and Pagination(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"
    Then I see table contains "Showing 11 to 20 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297145
  Scenario: Phase Level-E-table- To verify when Pagination is changed to next and page size is 10, user clicks on row level view action and click on page back arrow then table should restore page size and Pagination(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 11 to 20 of" inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297146
  Scenario: Phase Level-E-table- To verify when Pagination is changed to next and page size is 10, user clicks on row level view action and click on page back arrow then table should restore page size and Pagination(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "10"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"
    Then I see table contains "Showing 11 to 20 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @297151
  Scenario: Phase Level-E-table- To verify when Pagination is changed to next and page size is 10 ,click on the another phase and again click on the previous phase then table should restore page size and Pagination(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 1 of"

  @297152
  Scenario: Phase Level-E-table- To verify when Pagination is changed to next and page size is 10 ,click on the another phase and again click on the previous phase then table should restore page size and Pagination(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 1 of"

  @297153
  Scenario: Phase Level-E-table- To verify when Pagination is changed to next and page size is 10 ,click on the another phase and again click on the previous phase then table should restore page size and Pagination(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "10"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForSPIuser---"
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 1 of"

  @297154
  Scenario: Phase Level-E-table- To verify when Pagination is changed to next and page size is 10 and  refreshes the page then table should restore page size and Pagination(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I refresh the page
    Then I see table contains "Showing 11 to 20 of" inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297155
  Scenario: Phase Level-E-table- To verify when Pagination is changed to next and page size is 10 and  refreshes the page then table should restore page size and Pagination(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "10"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I refresh the page
    Then I see table contains "Showing 11 to 20 of" inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297156
  Scenario: Phase Level-E-table- To verify when Pagination is changed to next and page size is 10 and  refreshes the page then table should restore page size and Pagination(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "10"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I refresh the page
    Then I see table contains "Showing 11 to 20 of" inside table id "---program:-:SubawardTableIdForSPIuser---"
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"

  @297157
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order and Pagination is changed to next and , user clicks on row level view action and click on page back arrow then table should restore Pagination and sorting (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297158
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order,  Pagination is changed to next and user clicks on row level view action and click on page back arrow then table should restore Pagination and sorting (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297159
  Scenario: Phase Level-E-table- To verify when  Sort direction-ascending order Pagination is changed to next and user clicks on row level view action and click on page back arrow then table should restore Pagination and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"

  @297160
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order and Pagination is changed to next and refreshes the page then table should restore Pagination and sorting (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297161
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order and Pagination is changed to next and refreshes the page then table should restore Pagination and sorting (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297165
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order and  Pagination is changed to next and refreshes the page then table should restore Pagination and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"

  @297170
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order Pagination is changed to next and ,click on the another phase and again click on the previous phase then table should restore Pagination and sorting (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297171
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order Pagination is changed to next and ,click on the another phase and again click on the previous phase then table should restore Pagination and sorting (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297172
  Scenario: Phase Level-E-table- To verify when Sort direction-ascending order Pagination is changed to next and click on the another phase and again click on the previous phase then table should restore Pagination and sorting (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297292
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Picklist is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Picklist (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:SubawardTableIdForAdminPM---"

  @297293
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Picklist is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Picklist (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:SubawardTableIdForAdminPM---"

  @297294
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Picklist is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Picklist (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:SubawardTableIdForSPIuser---"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:SubawardTableIdForSPIuser---"

  @297301
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Picklist is set in ascending order and refreshes the page then records should be in ascending order for data type-Picklist (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:SubawardTableIdForAdminPM---"

  @297302
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Picklist is set in ascending order and refreshes the page then records should be in ascending order for data type-Picklist (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:SubawardTableIdForAdminPM---"

  @297303
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Picklist is set in ascending order and refreshes the page then records should be in ascending order for data type-Picklist (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:SubawardTableIdForSPIuser---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:SubawardTableIdForSPIuser---"

  @297304
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Picklist is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:SubawardTableIdForAdminPM---"

  @297305
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Picklist is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:SubawardTableIdForAdminPM---"

  @297309
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Picklist is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Status" in table "---program:-:SubawardTableIdForSPIuser---"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "Status" in table "---program:-:SubawardTableIdForSPIuser---"

    ########formula##########

  @297387 @Bug-344935 @wip
  Scenario: Phase Level-E-table- To verify when sort direction of data type-Formula is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Formula (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Budget Period" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Budget Period" in table "---program:-:SubawardTableIdForAdminPM---"

  @297390 @Bug-344935 @wip
  Scenario: To verify when sort direction of data type-Formula is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Formula (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Budget Period" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Budget Period" in table "---program:-:SubawardTableIdForAdminPM---"

  @297392 @Bug-344935 @wip
  Scenario: To verify when sort direction of data type-Formula is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Formula (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Budget Period" in table "---program:-:SubawardTableIdForSPIuser---"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Budget Period" in table "---program:-:SubawardTableIdForSPIuser---"

  @297399 @Bug-344935 @wip
  Scenario: To verify when sort direction of data type-Formula is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Budget Period" in table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "Budget Period" in table "---program:-:SubawardTableIdForAdminPM---"

  @297400 @Bug-344935 @wip
  Scenario: To verify when sort direction of data type-Formula is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Budget Period" in table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "Budget Period" in table "---program:-:SubawardTableIdForAdminPM---"

  @297402 @Bug-344935 @wip
  Scenario: To verify when sort direction of data type-Formula is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Budget Period" in table "---program:-:SubawardTableIdForSPIuser---"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "Budget Period" in table "---program:-:SubawardTableIdForSPIuser---"

  @297403 @Bug-344935 @wip
  Scenario: To verify when sort direction of data type-Formula is set in ascending order and refreshes the page then records should be in ascending order for data type-Formula (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Budget Period" in table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Budget Period" in table "---program:-:SubawardTableIdForAdminPM---"

  @297404 @Bug-344935 @wip
  Scenario: To verify when sort direction of data type-Formula is set in ascending order and refreshes the page then records should be in ascending order for data type-Formula (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Project Period" in table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Project Period" in table "---program:-:SubawardTableIdForAdminPM---"

  @297405 @Bug-344935 @wip
  Scenario: To verify when sort direction of data type-Formula is set in ascending order and refreshes the page then records should be in ascending order for data type-Formula (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Budget Period" in table "---program:-:SubawardTableIdForSPIuser---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Budget Period" in table "---program:-:SubawardTableIdForSPIuser---"

    ########------------Date-----------##########

  @297343
  Scenario Outline: Phase Level-E-table- To verify when sort direction of data type-Date is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Date (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantorRelatedAwards2 | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Award Issue Date" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Award Issue Date" in table "---program:-:SubawardTableIdForAdminPM---"
    Examples:
      | User  | newFieldsApi                                                                                                                                | defaultFieldsApi                                                                                                          |
      | Admin | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c,AwardIssueDate__c | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c |

  @297344
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Date (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantorRelatedAwards2 | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Award Issue Date" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Award Issue Date" in table "---program:-:SubawardTableIdForAdminPM---"
    Examples:
      | User | newFieldsApi                                                                                                                                | defaultFieldsApi                                                                                                          |
      | PM   | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c,AwardIssueDate__c | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c |

  @297345 @Bug-344935 @wip
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order, user clicks on row level view action and click on page back arrow then records should be in ascending order for data type-Date (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | RecipientsRelatedAwards2 | Name                      |                            |
    Given I am on "<User>" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Award Issue Date" in table "---program:-:SubawardTableIdForSPIuser---"
    And I click on "View" icon in "---program:-:SubawardTableIdForSPIuser---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "Award Issue Date" in table "---program:-:SubawardTableIdForSPIuser---"
    Examples:
      | User      | newFieldsApi                                                                                                                                | defaultFieldsApi                                                                                                          |
      | SUBPORTAL | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c,AwardIssueDate__c | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c |

  @297349
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order and refreshes the page then records should be in ascending order for data type-Date (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantorRelatedAwards2 | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Award Issue Date" in table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Award Issue Date" in table "---program:-:SubawardTableIdForAdminPM---"
    Examples:
      | User  | newFieldsApi                                                                                                                                | defaultFieldsApi                                                                                                          |
      | Admin | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c,AwardIssueDate__c | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c |

  @297351
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order and refreshes the page then records should be in ascending order for data type-Date (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantorRelatedAwards2 | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Award Issue Date" in table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Award Issue Date" in table "---program:-:SubawardTableIdForAdminPM---"
    Examples:
      | User | newFieldsApi                                                                                                                                | defaultFieldsApi                                                                                                          |
      | PM   | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c,AwardIssueDate__c | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c |

  @297352 @Bug-344935 @wip
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order and refreshes the page then records should be in ascending order for data type-Date (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | RecipientsRelatedAwards2 | Name                      |                            |
    Given I am on "<User>" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Award Issue Date" in table "---program:-:SubawardTableIdForSPIuser---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "Award Issue Date" in table "---program:-:SubawardTableIdForSPIuser---"
    Examples:
      | User      | newFieldsApi                                                                                                                                | defaultFieldsApi                                                                                                          |
      | SUBPORTAL | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c,AwardIssueDate__c | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c |

  @297355
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantorRelatedAwards2 | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Award Issue Date" in table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "Award Issue Date" in table "---program:-:SubawardTableIdForAdminPM---"
    Examples:
      | User  | newFieldsApi                                                                                                                                | defaultFieldsApi                                                                                                          |
      | Admin | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c,AwardIssueDate__c | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c |

  @297356
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | GrantorRelatedAwards2 | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Award Issue Date" in table "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Planning" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "Award Issue Date" in table "---program:-:SubawardTableIdForAdminPM---"
    Examples:
      | User | newFieldsApi                                                                                                                                | defaultFieldsApi                                                                                                          |
      | PM   | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c,AwardIssueDate__c | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c |


  @297358 @Bug-344935 @wip
  Scenario Outline: To verify when sort direction of data type-Date is set in ascending order,click on the another phase and again click on the same phase where sort direction set as ascending order then records should be in ascending order(SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newFieldsApi> | RecipientsRelatedAwards2 | Name                      |                            |
    Given I am on "<User>" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "Award Issue Date" in table "---program:-:SubawardTableIdForSPIuser---"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see "up" arrow is displayed inside "Award Issue Date" in table "---program:-:SubawardTableIdForSPIuser---"
    Examples:
      | User      | newFieldsApi                                                                                                                                | defaultFieldsApi                                                                                                          |
      | SUBPORTAL | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c,AwardIssueDate__c | Name,GrantAwardName__c,BudgetPeriod__r.SupportYear__c,BudgetStartEndDate__c,AmountAwarded__c,Status__c,AmendmentNumber__c |


###############reset table#################

  @297466
  Scenario: To verify when user changes page size and clicks on Reset Table then page size should set back to default value (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "5"
    When I click on "Menu" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    When I click on "Reset Table" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297467
  Scenario: To verify when user changes page size and clicks on Reset Table then page size should set back to default value (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "5"
    When I click on "Menu" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    When I click on "Reset Table" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"


  @297468
  Scenario: To verify when user changes page size and clicks on Reset Table then page size should set back to default value (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "5"
    When I click on "Menu" button inside table id "---program:-:SubawardTableIdForSPIuser---"
    When I click on "Reset Table" button inside table id "---program:-:SubawardTableIdForSPIuser---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @297469
  Scenario: To verify when user changes pagination and clicks on Reset Table then pagination should set back to default value (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    When I click on "Menu" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    When I click on "Reset Table" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 1 of"

  @297470
  Scenario: To verify when user changes pagination and clicks on Reset Table then pagination should set back to default value (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    When I click on "Menu" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    When I click on "Reset Table" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 1 of"

  @297471
  Scenario: To verify when user changes pagination and clicks on Reset Table then pagination should set back to default value (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    When I click on "Menu" button inside table id "---program:-:SubawardTableIdForSPIuser---"
    When I click on "Reset Table" button inside table id "---program:-:SubawardTableIdForSPIuser---"
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 1 of"

  @297472
  Scenario: To verify when user changes sort direction and clicks on Reset Table then sort direction should set back to default value (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    When I click on "Menu" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    When I click on "Reset Table" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I do not see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"

  @297473
  Scenario: To verify when user changes sort direction and clicks on Reset Table then sort direction should set back to default value (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    When I click on "Menu" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    When I click on "Reset Table" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I do not see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"

  @297474
  Scenario: To verify when user changes sort direction and clicks on Reset Table then sort direction should set back to default value (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    When I click on "Menu" button inside table id "---program:-:SubawardTableIdForSPIuser---"
    When I click on "Reset Table" button inside table id "---program:-:SubawardTableIdForSPIuser---"
    Then I do not see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"

  @297475
  Scenario: To verify when user searches something in quick search and clicks on Reset Table then table records should set back to default value (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:SubawardTableIdForAdminPM---"
    And I click on menu inside "Subawards  - Active"
    When I click on "Menu" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    When I click on "Reset Table" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297476
  Scenario: To verify when user searches something in quick search and clicks on Reset Table then table records should set back to default value (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:SubawardTableIdForAdminPM---"
    And I click on menu inside "Subawards  - Active"
    When I click on "Menu" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    When I click on "Reset Table" button inside table id "---program:-:SubawardTableIdForAdminPM---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297477
  Scenario: To verify when user searches something in quick search and clicks on Reset Table then table records should set back to default value (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForSPIuser---"
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:SubawardTableIdForSPIuser---"
    When I click on "Menu" button inside table id "---program:-:SubawardTableIdForSPIuser---"
    When I click on "Reset Table" button inside table id "---program:-:SubawardTableIdForSPIuser---"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @297481
  Scenario: To verify when user changes page size then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "5"
    Then I see the following message in "---program:-:SubawardTableIdForAdminPM---" table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @297482
  Scenario: To verify when user changes page size then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "5"
    Then I see the following message in "---program:-:SubawardTableIdForAdminPM---" table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @297483
  Scenario: To verify when user changes page size then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "5"
    Then I see the following message in "---program:-:SubawardTableIdForSPIuser---" table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @297484
  Scenario: verify when user changes pagination then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    Then I see the following message in "---program:-:SubawardTableIdForAdminPM---" table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @297485
  Scenario: verify when user changes pagination then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    Then I see the following message in "---program:-:SubawardTableIdForAdminPM---" table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @297486
  Scenario: To verify when user changes pagination then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    Then I see the following message in "---program:-:SubawardTableIdForSPIuser---" table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @297487
  Scenario: To verify when user changes sort direction then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see the following message in "---program:-:SubawardTableIdForAdminPM---" table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @297488
  Scenario: To verify when user changes sort direction then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    Then I see the following message in "---program:-:SubawardTableIdForAdminPM---" table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @297490
  Scenario: To verify when user changes sort direction then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    Then I see the following message in "---program:-:SubawardTableIdForSPIuser---" table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @297491
  Scenario: To verify when user searches something in quick search then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    Then I see the following message in "---program:-:SubawardTableIdForAdminPM---" table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @297492
  Scenario: To verify when user searches something in quick search then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (PM)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    Then I see the following message in "---program:-:SubawardTableIdForAdminPM---" table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @297493
  Scenario: To verify when user searches something in quick search then Click ‘Reset Table’ under the menu icon to refresh the table’s default values. ' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForSPIuser---"
    Then I see the following message in "---program:-:SubawardTableIdForSPIuser---" table :
      | Click ‘Reset Table’ under the menu icon to refresh the table’s default values |

  @297499
  Scenario: To verify when user changes page size and clicks on "Reset Table" then 'Table has been reset.' message should display (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "5"
    And I click on "Reset Table" from parallel lines dropdown of Menu "Subawards - Active"
    Then I softly see the following messages in the page details contains:
      | Table has been reset. |

  @297500
  Scenario: To verify when user changes page size and clicks on "Reset Table" then "Table has been reset." message should display (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "5"
    And I click on "Reset Table" from parallel lines dropdown of Menu "Subawards - Active"
    Then I softly see the following messages in the page details contains:
      | Table has been reset. |

  @297501
  Scenario: To verify when user changes page size and clicks on "Reset Table" then "Table has been reset." message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "5"
    And I click on "Reset Table" from parallel lines dropdown of Menu "Subawards - Active"
    Then I softly see the following messages in the page details contains:
      | Table has been reset. |

  @297504
  Scenario: To verify when user changes pagination and clicks on "Reset Table" then "Table has been reset." message should display (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on "Reset Table" from parallel lines dropdown of Menu "Subawards - Active"
    Then I softly see the following messages in the page details contains:
      | Table has been reset. |

  @297505
  Scenario: To verify when user changes pagination and clicks on "Reset Table" then "Table has been reset." message should display (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on "Reset Table" from parallel lines dropdown of Menu "Subawards - Active"
    Then I softly see the following messages in the page details contains:
      | Table has been reset. |

  @297510
  Scenario: To verify when user changes pagination and clicks on clicks on 'Reset Table' then 'Table has been reset.' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on "Reset Table" from parallel lines dropdown of Menu "Subawards - Active"
    Then I softly see the following messages in the page details contains:
      | Table has been reset. |

  @297511
  Scenario: To verify when user changes sort direction and clicks on 'Reset Table' then 'Table has been reset.' message should display (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "Reset Table" from parallel lines dropdown of Menu "Subawards - Active"
    Then I softly see the following messages in the page details contains:
      | Table has been reset. |

  @297512
  Scenario: To verify when user changes sort direction and clicks on 'Reset Table' then 'Table has been reset.' message should display (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "Reset Table" from parallel lines dropdown of Menu "Subawards - Active"
    Then I softly see the following messages in the page details contains:
      | Table has been reset. |

  @297513
  Scenario: To verify when user changes sort direction and clicks on 'Reset Table' then 'Table has been reset.' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I click on "Reset Table" from parallel lines dropdown of Menu "Subawards - Active"
    Then I softly see the following messages in the page details contains:
      | Table has been reset. |

  @297514
  Scenario: To verify when user searches something in quick search and clicks on 'Reset Table' then 'Table has been reset.' message should display (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "Reset Table" from parallel lines dropdown of Menu "Subawards - Active"
    Then I softly see the following messages in the page details contains:
      | Table has been reset. |

  @297515
  Scenario: To verify when user searches something in quick search and clicks on 'Reset Table' then 'Table has been reset.' message should display (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on "Reset Table" from parallel lines dropdown of Menu "Subawards - Active"
    Then I softly see the following messages in the page details contains:
      | Table has been reset. |

  @297516
  Scenario: To verify when user searches something in quick search and clicks on 'Reset Table' then 'Table has been reset.' message should display (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Testing Grant for Automation" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I click on "Reset Table" from parallel lines dropdown of Menu "Subawards - Active"
    Then I softly see the following messages in the page details contains:
      | Table has been reset. |

  @297517
  Scenario: To verify when user changes the list view and clicks on 'Reset Table' then 'Table has been reset.' message should display (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    And I click on "Reset Table" from parallel lines dropdown of Menu "Subawards  - All"
    Then I softly see the following messages in the page details contains:
      | Table has been reset. |

  @297522
  Scenario: To verify when user changes the list view from active to All, changes the page size, click on active and again on All then page size should be restored. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "5"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - Active"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    Then I see table contains "Showing 1 to 5 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297523
  Scenario: To verify when user changes the list view from active to All, changes the page size, click on active and again on All then page size should be restored. (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    And I select value inside table "---program:-:SubawardTableIdForAdminPM---" is "5"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - Active"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    Then I see table contains "Showing 1 to 5 of" inside table id "---program:-:SubawardTableIdForAdminPM---"

  @297524
  Scenario: To verify when user changes the list view from active to All, changes the page size, click on active and again on All then page size should be restored. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on toggle button inside table "---program:-:SubawardTableIdForSPIuser---" to select "Subawards  - All"
    And I select value inside table "---program:-:SubawardTableIdForSPIuser---" is "5"
    And I click on toggle button inside table "---program:-:SubawardTableIdForSPIuser---" to select "Subawards - Closed"
    And I click on toggle button inside table "---program:-:SubawardTableIdForSPIuser---" to select "Subawards  - All"
    Then I see table contains "Showing 1 to 5 of" inside table id "---program:-:SubawardTableIdForSPIuser---"

  @297525
  Scenario: To verify when user changes the list view from active to All, changes the pagination, click on active and again on All then pagination should be restored. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards - Closed"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297528
  Scenario: To verify when user changes the list view from active to All, changes the pagination, click on Rejected and again on All then pagination should be restored. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I pause execution for "10" seconds
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards - Rejected"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297529
  Scenario: To verify when user changes the list view from active to All, changes the pagination, click on Rejected and again on All then pagination should be restored. (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I pause execution for "10" seconds
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards - Rejected"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297530
  Scenario: To verify when user changes the list view from active to All, changes the pagination, click on Rejected and again on All then pagination should be restored. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on toggle button inside table "---program:-:SubawardTableIdForSPIuser---" to select "Subawards  - All"
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I click on toggle button inside table "---program:-:SubawardTableIdForSPIuser---" to select "Subawards - Closed"
    And I click on toggle button inside table "---program:-:SubawardTableIdForSPIuser---" to select "Subawards  - All"
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"

  @297531
  Scenario: To verify when user changes the list view from active to All, changes the sort direction click on active and again on All then sort direction should be restored. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards - Rejected"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"

  @297532
  Scenario: To verify when user changes the list view from active to All, changes the sort direction click on Rejected and again on All then sort direction should be restored. (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards - Rejected"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"

  @297533
  Scenario: To verify when user changes the list view from active to All, changes the sort direction click on Rejected and again on All then sort direction should be restored. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on toggle button inside table "---program:-:SubawardTableIdForSPIuser---" to select "Subawards  - All"
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I click on toggle button inside table "---program:-:SubawardTableIdForSPIuser---" to select "Subawards - Closed"
    And I click on toggle button inside table "---program:-:SubawardTableIdForSPIuser---" to select "Subawards  - All"
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"

  @297534
  Scenario: To verify when user changes the list view from active to All, searches something in quick search, click on Closed and again on All then quick search results should be restored. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards - Rejected"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    Then I see list contain "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"

  @297535
  Scenario: To verify when user changes the list view from active to All, searches something in quick search, click on closed and again on All then quick search results should be restored. (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards - Rejected"
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    Then I see list contain "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"

  @297536
  Scenario: To verify when user changes the list view from active to All, searches something in quick search, click on closed and again on All then quick search results should be restored. (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on toggle button inside table "---program:-:SubawardTableIdForSPIuser---" to select "Subawards  - All"
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I click on toggle button inside table "---program:-:SubawardTableIdForSPIuser---" to select "Subawards - Closed"
    And I click on toggle button inside table "---program:-:SubawardTableIdForSPIuser---" to select "Subawards  - All"
    Then I see list contain "Vrush Application" inside table "---program:-:SubawardTableIdForSPIuser---"

  @297537
  Scenario: To verify when user changes the list view and clicks on another phase and again click on the same phase then list view value should be restored. (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I pause execution for "15" seconds
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on toggle button inside table "---program:-:SubawardTableIdForAdminPM---" to select "Subawards  - All"
    And I navigate to "Applications" tab
    And I navigate to "Grants" tab
    And I pause execution for "15" seconds
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see list view "Subawards  - All" displayed inside table "---program:-:SubawardTableIdForAdminPM---"

  @297555
  Scenario: To verify when user changes pagination to Next and refreshes the page then table should get open on the page where pagination was set to Next (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I refresh the page
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297556
  Scenario: To verify when user changes pagination to Next and refreshes the page then table should get open on the page where pagination was set to Next (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I refresh the page
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297557
  Scenario: To verify when user changes pagination to Next and refreshes the page then table should get open on the page where pagination was set to Next (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForSPIuser---" for table id "Next"
    And I refresh the page
    Then I see "---program:-:SubawardTableIdForSPIuser---" table contains "Page 2 of"

  @297558
  Scenario: To verify when user changes pagination to Next, click on row level View action and click on close icon of modal then table should get open on the page where pagination was set to Next (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click on page navigation arrow "---program:-:SubawardTableIdForAdminPM---" for table id "Next"
    And I refresh the page
    Then I see "---program:-:SubawardTableIdForAdminPM---" table contains "Page 2 of"

  @297561
  Scenario: To verify when user changes Sort direction to Ascending and refreshes the page then records should be resorted in ascending  (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"

  @297562
  Scenario: To verify when user changes Sort direction to Ascending and refreshes the page then records should be resorted in ascending  (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"

  @297563
  Scenario: To verify when user changes Sort direction to Ascending and refreshes the page then records should be restored in ascending  (SPI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"
    And I refresh the page
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForSPIuser---"

  @297567
  Scenario: To verify when user searches any value in Quick search and refreshes the page then records should be restored to quick search results (Admin)
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see list contain "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"


  @297568
  Scenario: To verify when user searches any value in Quick search and refreshes the page then records should be restored to quick search results (PM)
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"
    And I refresh the page
    Then I see list contain "Vrush Application" inside table "---program:-:SubawardTableIdForAdminPM---"

  @297569
  Scenario: To verify when user searches any value in Quick search and refreshes the page then records should be restored to quick search results (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I quick search "Vrush Application" inside table "---program:-:SubawardTableIdForSPIuser---"
    And I refresh the page
    Then I see list contain "Vrush Application" inside table "---program:-:SubawardTableIdForSPIuser---"

  @297574
  Scenario:To verify when user changes page size to 10 and refreshes the page then records should be restored to page size to 10 (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "fa fa-eye" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ScheduledActivitiesAllTableID---"

  @297575
  Scenario: Record level-E-table-To verify when user changes page size to 10 and refreshes the page then records should be restored to page size to 10 (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "fa fa-eye" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ScheduledActivitiesAllTableID---"

  @297576
  Scenario: To verify when user changes page size to 10 and refreshes the page then records should be restored to page size to 10 (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | TAB-3264                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "10"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297577
  Scenario: To verify when user changes page size to 10, click on row level View action and click on close icon of modal then records should be resorted to page size to 10 (Admin)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "fa fa-eye" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    And I click on "View" icon in "---program:-:DataTableEnhanceTableIDforContactsTable---" flex table for "1" record
    And I click modal button "Close"
    And I click on "Close" button inside tabel header "DataTableEnhanceProgramContacts"
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"

  @297578
  Scenario: To verify when user changes page size to 10, click on row level View action and navigate back then records should be resorted to page size to 10 (PM)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-3262                   |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "fa fa-eye" icon in flex table for first draft record
    When I navigate to "Component testing " sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableID---" is "10"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ScheduledActivitiesAllTableID---"

  @297579
  Scenario: To verify when user changes page size to 10, click on row level View action and click on close icon of modal then records should be resorted to page size to 10 (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | TAB-3264                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Component testing" sub tab
    And I select value inside table "---program:-:ScheduledActivitiesAllTableIDForSPI---" is "10"
    And I refresh the page
    Then I see table contains "Showing 1 to 10 of" inside table id "---program:-:ScheduledActivitiesAllTableIDForSPI---"

  @297588
  Scenario: Record level-E-table-To verify when user changes Sort direction to Ascending, click on row level View action and click on close icon of modal then records should be resorted in ascending  (SPI)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Recipient ApplicationView | Name                      | TAB-3264                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Component testing " sub tab
    And I select "Sort Ascending" order by clicking on arrow beside of "EGMS ID" in table "---program:-:ScheduledActivitiesAllTableIDForSPI---"
    And I click on "View" icon in "---program:-:SubawardTableIdForAdminPM---" flex table for "1" record
    And I navigate to back
    Then I see "up" arrow is displayed inside "EGMS ID" in table "---program:-:SubawardTableIdForAdminPM---"