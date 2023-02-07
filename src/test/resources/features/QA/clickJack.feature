clickjackScenarios @regression-test5
Business Need: clickjack Scenarios
  Test all clickjack based scenarios

  @208532
  Scenario: To verify, When user hover on bar in the new window then data will be displayed for admin  user
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on "Enhanced View" view icon inside "Enhanced Area" chart
    And I hover mouse over bar inside "Enhanced Area" chart
    Then I see "Total Amendments:" equal to "$6.00" inside "Enhanced Area" chart

  @208522
  Scenario: To verify , When user click on enhanced view on any chart  it will open in new window for admin user
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on "Enhanced View" view icon inside "Enhanced Dual Axes" chart
    Then I see new tab is opened

  @208523
  Scenario: To verify , When user click on enhanced view on any form it will open in new window for internal user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on "Enhanced View" view icon inside "Announcement status funding" chart
    Then I see new tab is opened

  @208524
  Scenario:To verify , When user click on enhanced view on any chart  it will open in new window for external user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    And I click on "Enhanced View" view icon inside "Grants Awarded" chart
    Then I see new tab is opened

  @208525
  Scenario: To verify , When user click on closed button on new window  then window will closed   for external user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    And I click on "Enhanced View" view icon inside "Grants Awarded" chart
    And I see new tab is opened
    And I pause execution for "5" seconds
    And I close current child window
    And I softly do not see new tab is opened

  @208526
  Scenario: To verify , When user click on closed button on new window  then window will closed   for admin user
    When I login as "Automation" user
    And I navigate to "Applications" tab
    And I click on "Enhanced View" view icon inside "Enhanced Funnel" chart
    And I see new tab is opened
    And I pause execution for "5" seconds
    And I close current child window
    And I softly do not see new tab is opened

  @208527
  Scenario: To verify, When user click on closed button on new window then window will closed for internal user
    When I login as "Automation-PM" user
    And I navigate to "Applications" tab
    And I click on "Enhanced View" view icon inside "Enhanced Funnel" chart
    And I see new tab is opened
    And I pause execution for "5" seconds
    And I close current child window
    Then I softly do not see new tab is opened

  @208528
  Scenario: To verify, When user click on show all data button on new window then data will be displayed for internal user
    When I login as "Automation-PM" user
    And I navigate to "Announcements" tab
    And I click on "Menu" view icon inside "Enhanced Pie" chart
    And I select "Show All Data" inside "Enhanced Pie" chart
    Then I see "Distribution of Announcements by Grant Type" modal is open with data

  @208529
  Scenario: To verify , When user click on show all data  button on new window  then data will be displayed for admin user
    When I login as "Automation" user
    And I navigate to "Applications" tab
    And I click on "Menu" view icon inside "Enhanced Funnel" chart
    And I select "Show All Data" inside "Enhanced Funnel" chart
    Then I see "List of Announcements by Status" modal is open with data

  @208530
  Scenario: To verify, When user click on show all data button on new window then data will be displayed for external user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    And I click on "Menu" view icon inside "Grants Awarded" chart
    And I select "Show All Data" inside "Grants Awarded" chart
    Then I see "Grants" modal is open with data

  @221428
  Scenario: When user open the enhanced view in the new window on new window  given chart name are displayed and on the phase level chart Title should be displayed for admin user
    When I login as "Automation" user
    And I navigate to "Applications" tab
    And I click on "Enhanced View" view icon inside "Enhanced Funnel" chart
    And I see new tab is opened
    Then I see "Enhanced_Funnel" modal is open with data

  @221429
  Scenario: When user open the enhanced view in the new window on new window given chart name are displayed and on the phase level chart Title should be displayed for internal user
    When I login as "Automation-PM" user
    And I navigate to "Announcements" tab
    And I click on "Enhanced View" view icon inside "Enhanced Pie" chart
    And I see new tab is opened
    Then I see "Enhanced Pie chart" modal is open with data

  @221430
  Scenario: When user open the enhanced view in the new window on new window  given chart name are displayed  and on the phase level chart Title should be displayed  for External user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    And I click on "Enhanced View" view icon inside "Grants Awarded" chart
    And I see new tab is opened
    Then I see "Grants Awarded" modal is open with data

  @221431
  Scenario: On Enhanced  view new window click on  "show all data" button then modal is opened with existing data on that modal quick search, is display & working as expected for admin user
    When I login as "Automation" user
    And I navigate to "Applications" tab
    And I click on "Enhanced View" view icon inside "Enhanced Funnel" chart
    And I see new tab is opened
    Then I see "Enhanced_Funnel" modal is open with data
    And I click on "Show All Data" button in modal
    And I enter "created" inside quick search
    Then I see Status column contains "Created" if search "created"

  @221432
  Scenario: On Enhanced  view new window click on  "show all data" button then modal is opened with existing data on that modal quick search, is display & working as expected for internal user
    When I login as "Automation-PM" user
    And I navigate to "Announcements" tab
    And I click on "Enhanced View" view icon inside "Enhanced Pie" chart
    And I see new tab is opened
    Then I see "Enhanced Pie chart" modal is open with data
    And I click on "Show All Data" button in modal
    And I enter "FOA for G" inside quick search
    Then All records contains "FOA for G" is show for user

  @221433
  Scenario: On Enhanced view new window click on "show all data" button then modal is opened with existing data on that modal quick search, is display & working as expected for External user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    And I click on "Enhanced View" view icon inside "Grants Awarded" chart
    And I click on "Show All Data" button in modal
    And I enter "FOA for G" inside quick search
    Then All records contains "FOA for G" is show for user

  @221435
  Scenario: On Enhanced  view new window click on  "show all data" button then modal is opened with existing data on that modal pagination is display & working as expected for internal user
    When I login as "Automation-PM" user
    And I navigate to "Announcements" tab
    And I click on "Enhanced View" view icon inside "Enhanced Pie" chart
    And I see new tab is opened
    Then I see "Enhanced Pie chart" modal is open with data
    And I click on "Show All Data" button in modal
    Then I can see pagination with button "First" for first page "Previous" for one page back "Next" for one page Next and "Last" for on last page in pagination

  @221436
  Scenario: On Enhanced  view new window click on  "show all data" button then modal is opened with existing data on that modal pagination is display & working as expected for admin user
    When I login as "Automation" user
    And I navigate to "Applications" tab
    And I click on "Enhanced View" view icon inside "Enhanced Funnel" chart
    And I see new tab is opened
    Then I see "Enhanced_Funnel" modal is open with data
    And I click on "Show All Data" button in modal
    Then I can see pagination with button "First" for first page "Previous" for one page back "Next" for one page Next and "Last" for on last page in pagination

  @221437
  Scenario: On Enhanced  view new window click on  "show all data" button then modal is opened with existing data on that modal show entries is display as expected for admin user
    When I login as "Automation" user
    And I navigate to "Applications" tab
    And I click on "Enhanced View" view icon inside "Enhanced Funnel" chart
    And I see new tab is opened
    Then I see "Enhanced_Funnel" modal is open with data
    And I click on "Show All Data" button in modal
    And I Select "10" value from dropdown
    And I pause execution for "3" seconds

  @221438
  Scenario: On Enhanced  view new window click on  "show all data" button then modal is opened with existing data on that modal show entries is display as expected for Internal user
    When I login as "Automation-PM" user
    And I navigate to "Announcements" tab
    And I click on "Enhanced View" view icon inside "Enhanced Pie" chart
    And I see new tab is opened
    Then I see "Enhanced Pie chart" modal is open with data
    And I click on "Show All Data" button in modal
    And I Select "10" value from dropdown
    And I pause execution for "3" seconds

  @221439
  Scenario: On Enhanced  view new window click on  "show all data" button then modal is opened with existing data on that modal show entries is display as expected for External user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    And I click on "Enhanced View" view icon inside "Grants Awarded" chart
    And I click on "Show All Data" button in modal
    And I Select "10" value from dropdown
    And I pause execution for "3" seconds

  @221441
  Scenario: On Enhanced  view new window click on  "show all data" button then modal is opened with existing data on that modal previous button is display & working  as expected for Internal user
    When I login as "Automation-PM" user
    And I navigate to "Announcements" tab
    And I click on "Enhanced View" view icon inside "Enhanced Pie" chart
    And I see new tab is opened
    Then I see "Enhanced Pie chart" modal is open with data
    And I click on "Show All Data" button in modal
    Then I can see pagination with button "First" for first page "Previous" for one page back "Next" for one page Next and "Last" for on last page in pagination

  @221442
  Scenario: On Enhanced  view new window click on  "show all data" button then modal is opened with existing data on that modal previous button  is display & working  as expected for Admin user
    When I login as "Automation" user
    And I navigate to "Applications" tab
    And I click on "Enhanced View" view icon inside "Enhanced Funnel" chart
    And I see new tab is opened
    Then I see "Enhanced_Funnel" modal is open with data
    And I click on "Show All Data" button in modal
    Then I can see pagination with button "First" for first page "Previous" for one page back "Next" for one page Next and "Last" for on last page in pagination

  @221443
  Scenario: On Enhanced  view new window click on  "show all data" button then modal is opened with existing data on that modal next button  is display & working  as expected for Admin user
    When I login as "Automation" user
    And I navigate to "Applications" tab
    And I click on "Enhanced View" view icon inside "Enhanced Funnel" chart
    And I see new tab is opened
    Then I see "Enhanced_Funnel" modal is open with data
    And I click on "Show All Data" button in modal
    Then I see "next" arrow is Displayed and Enabled on Pagination and click on button
    Then I see pagination contains "Page 2"

  @221444
  Scenario: On Enhanced view new window click on "show all data" button then modal is opened with existing data on that modal next button  is display & working  as expected for Internal user
    When I login as "Automation-PM" user
    And I navigate to "Announcements" tab
    And I click on "Enhanced View" view icon inside "Enhanced Pie" chart
    And I see new tab is opened
    Then I see "Enhanced Pie chart" modal is open with data
    And I click on "Show All Data" button in modal
    Then I see "next" arrow is Displayed and Enabled on Pagination and click on button
    Then I see pagination contains "Page 2"

  @221446
  Scenario: Admin  User see  X&Y axis name displayed as expected on enhanced view
    When I login as "Automation" user
    And I navigate to "HOME" tab
    And I click on "Enhanced View" view icon inside "Performance Tracking" chart
    And I see new tab is opened
    And I see "GrantPerformanceScatterClsBased" modal is open with data
    Then I can see "X" axis name displayed as "% of PoP Completed"
    Then I can see "Y" axis name displayed as "% of KPI achieved"

  @221447
  Scenario: Internal User see  X&Y axis name displayed as expected on enhanced view
    When I login as "Automation-PM" user
    And I navigate to "Announcements" tab
    And I click on "Enhanced View" view icon inside "Test" chart
    And I see new tab is opened
    Then I see "Announcemnenttest_1" modal is open with data
    Then I can see "X" axis name displayed as "(test) Total Amendments (@)"
    Then I can see "Y" axis name displayed as "($) Status ($)"

  @221448
  Scenario:Clickjack -External  User see  X&Y axis name displayed as expected on enhanced view
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    And I click on "Enhanced View" view icon inside "Grants Awarded" chart
    Then I can see "X" axis name displayed as "Total Awarded Amount"
    Then I can see "y" axis name displayed as "ID"
    Then I can see "y axis ID contain" axis name displayed as "a2E1C000002zjia"
    Then I can see "y axis ID contain" axis name displayed as "GT-GT-NI-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-GT911-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-tst-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-PHE-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-G0711-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-GNT_H-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-GRP-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-PHE-002"
    Then I can see "y axis ID contain" axis name displayed as "GT-GT09-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-CMAQ-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-GTRCP-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-final-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-GTDCP-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-GTDEM-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-GTHAP-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-dhp_f-001"
    Then I can see "y axis ID contain" axis name displayed as "GT-GT-1-001"

  @208531
  Scenario: To verify , When user hover on bar in the  new window  then data will be displayed   for external user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    And I click on "Enhanced View" view icon inside "Grants Awarded" chart
    And I hover mouse over bar inside "Grants Awarded" chart
    Then I see "Count:" equal to "600000" inside "Grants Awarded" chart

  @208533
  Scenario: To verify, When user hover on bar in the  new window  then data will be displayed for internal user
    When I login as "Automation-PM" user
    And I navigate to "Announcements" tab
    And I click on "Enhanced View" view icon inside "Enhanced Pie" chart
    And I hover mouse over bar inside "Enhanced Pie" chart
    Then I see "GT-GNT_H-001:" equal to "188" inside "Enhanced Pie chart" chart


  @221440
  Scenario:On Enhanced  view new window click on  "show all data" button then modal is opened with existing data on that modal previous button is display & working as expected for External user
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on "Enhanced View" view icon inside "Enhanced Area" chart
    And I see new tab is opened
    Then I see "Enhanced Area" modal is open with data
    And I click on "Show All Data" button in modal
    Then I see "next" arrow is Displayed and Enabled on Pagination and click on button
    Then I see pagination contains "Page 2 of"
    Then I see "Previous" arrow is Displayed and Enabled on Pagination and click on button
    Then I see pagination contains "Page 1 of"