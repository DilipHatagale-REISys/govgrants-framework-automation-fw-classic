@FlexTable_QA-Component @regression-QA @FlexTable
Business Need: FlexTable Component Scenarios
  Test all FlexTable component based scenarios
  As a configuration manager i make different configurational changes in FlexTable component and will validate them.


###FlextableExport
  @267756 @Admin_FlextableExport_ToverifyThatAfterManipulatingModeAlertNotGetDisplayed @dilip @sprint-21
  Scenario: Admin_FlextableExport_To verify that after manipulating mode, alert not get displayed
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "mode parameter"
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "mode parameter"
    And I enter this "%3balert('PLEX%20Rocks')%2f%2f909" script after "mode parameter"
    Then I do not see alert popup box

  @267768 @PM_FlextableExport_ToVerifythataftermanipulatingmodeAlertnotgetdisplayed @dilip @sprint-21
  Scenario:PM_FlextableExport_To verify that after manipulating mode, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "mode parameter"
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "mode parameter"
    And I enter this "%3balert('PLEX%20Rocks')%2f%2f909" script after "mode parameter"
    Then I do not see alert popup box

  @267771 @SPI_FlextableExport_ToverifyThatAfterManipulatingModeAlertNotGetDisplayed @dilip @sprint-21
  Scenario:SPI_FlextableExport_To verify that after manipulating mode, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "mode parameter"
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "mode parameter"
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "mode parameter"
    Then I do not see alert popup box

  @267773 @Admin_FlextableExport_ToverifyThatAfterManipulatingFlexTableParamAlertNotGetDisplayed @dilip @sprint-21
  Scenario:Admin_FlextableExport_To verify that after manipulating flexTableParam, alert not get displayed
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "flexTableParam"
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "flexTableParam"
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "flexTableParam"
    Then I do not see alert popup box

  @267775 @PM_FlextableExport_ToVerifyThatAfterManipulatingFlexTableParamAlertNotGetDisplayed @dilip @sprint-21
  Scenario:PM_FlextableExport_To verify that after manipulating flexTableParam, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "flexTableParam"
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "flexTableParam"
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "flexTableParam"
    Then I do not see alert popup box

  @267776 @SPI_FlextableExport_ToVerifyThatAfterManipulatingFlexTableParamAlertNotGetDisplayed @dilip @sprint-21
  Scenario:SPI_FlextableExport_To verify that after manipulating flexTableParam, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "flexTableParam" for SPI User
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "flexTableParam" for SPI User
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "flexTableParam" for SPI User
    Then I do not see alert popup box

  @267779 @Admin_FlextableExport_ToverifyThatAfterManipulatingPageBlockIdAlertNotGetDisplayed @dilip @sprint-21
  Scenario:Admin_FlextableExport_To verify that after manipulating pageBlockId, alert not get displayed
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "pageBlockId"
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "pageBlockId"
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "pageBlockId"
    Then I do not see alert popup box

  @267782 @PM_FlextableExport_ToVerifyThatAfterManipulatingPageBlockId,alertnotgetdisplayed @dilip @sprint-21
  Scenario:PM_FlextableExport_To verify that after manipulating pageBlockId, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "pageBlockId"
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "pageBlockId"
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "pageBlockId"
    Then I do not see alert popup box

  @267787 @SPI_FlextableExport_ToVerifyThatAfterManipulatingPageBlockIdAlertNotGetDisplayed @dilip @sprint-21
  Scenario:SPI_FlextableExport_To verify that after manipulating pageBlockId, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "pageBlockId" for SPI User
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "pageBlockId" for SPI User
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "pageBlockId" for SPI User
    Then I do not see alert popup box

  @267789 @Admin_FlextableExport_ToverifyThatAfterManipulatingAgencyIdAlertNotGetdisplayed @dilip @sprint-21
  Scenario:Admin_FlextableExport_To verify that after manipulating Agency Id, alert not get displayed
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "Agency Id"
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "Agency Id"
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "Agency Id"
    Then I do not see alert popup box

  @267790 @PM_FlextableExport_ToVerifyThatAfterManipulatingAgencyIdAlertNotGetDisplayed @dilip @sprint-21
  Scenario:PM_FlextableExport_To verify that after manipulating Agency Id, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "Agency Id"
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "Agency Id"
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "Agency Id"
    Then I do not see alert popup box

  @267791 @SPI_FlextableExport_ToVerifyThatAfterManipulatingAgencyIdAlertNotGetDisplayed
  Scenario:SPI_FlextableExport_To verify that after manipulating Agency Id, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "Agency Id" for SPI User
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "Agency Id" for SPI User
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "Agency Id" for SPI User
    Then I do not see alert popup box

  @267792 @Admin_FlextableExport_ToVerifyThatAfterManipulatingApplicationIdAlertNotGetDisplayed @dilip @sprint-21
  Scenario:Admin_FlextableExport_To verify that after manipulating Application Id, alert not get displayed
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "application Id"
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "application Id"
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "application Id"
    Then I do not see alert popup box

  @267794 @PM_FlextableExport_ToVerifyThatAfterManipulatingApplicationIdAlertNotGetDisplayed @dilip @sprint-21
  Scenario: PM_FlextableExport_To verify that after manipulating Application Id, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "application Id"
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "application Id"
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "application Id"
    Then I do not see alert popup box

  @267796 @SPI_FlextableExport_ToVerifyThatAfterManipulatingApplicationIdAlertNotGetDisplayed @dilip @sprint-21
  Scenario: SPI_FlextableExport_To verify that after manipulating application Id, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "application Id" for SPI User
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "application Id" for SPI User
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "application Id" for SPI User
    Then I do not see alert popup box

  @267797 @Admin_FlextableExport_ToVerifyThatAfterManipulatingParentOwnerIdAlertNotGetDisplayed @dilip @sprint-21
  Scenario:Admin_FlextableExport_To verify that after manipulating parentOwner Id, alert not get displayed
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Overview" sub tab
    When I pause execution for "5" seconds
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "parentOwner Id"
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "parentOwner Id"
    And I enter this "'%3balert('PLEX%20Rocks')%2f%2f909" script after "parentOwner Id"
    Then I do not see alert popup box

